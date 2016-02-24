X-GM-THRID: 6254947752904491008
X-Received: by 10.25.39.2 with SMTP id n2mr5168523lfn.10.1456350302087;
        Wed, 24 Feb 2016 13:45:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.46.199 with SMTP id u190ls7080wmu.49.gmail; Wed, 24 Feb
 2016 13:45:01 -0800 (PST)
X-Received: by 10.28.45.151 with SMTP id t145mr15601wmt.6.1456350301544;
        Wed, 24 Feb 2016 13:45:01 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 141si6624wmy.2.2016.02.24.13.45.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 13:45:01 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,494,1449529200"; 
   d="scan'208";a="165880650"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Feb 2016 22:45:00 +0100
Date: Wed, 24 Feb 2016 22:45:00 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rdma: hfi1: Fix return
 type
In-Reply-To: <20160224195224.GA21237@Karyakshetra>
Message-ID: <alpine.DEB.2.02.1602242232210.2072@localhost6.localdomain6>
References: <20160224195224.GA21237@Karyakshetra>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 25 Feb 2016, Bhaktipriya Shridhar wrote:

> This function can return negative values (-ENODEV). Hence its type has
> been replaced from unsigned int to signed int.
> 
> The only occurrence of this function is in structure file_operations
> snoop_file_ops as .poll = hfi1_snoop_poll

Doesn't this give a compiler error, because the poll field is declared as 
being a function with return type unsigned int?

Whether the negative value is valid ultimately depends on where it is 
consumed.  I don't know where it is consumed for hfi1_snoop_poll, but 
below are the places that I could find that a file_operations poll value 
is called.  Some seem to be for specific drivers.  For the ones that look 
more generic, such as ep_item_poll in fs/eventpoll.c, the result is 
immediately bit anded with some other value, with no check for an error 
value.  So it looks like giving an error code could produce unexpected 
results.

julia

(in the following - indicates a line of interest, not a suggestion to 
remove something.)

diff -u -p /var/linuxes/linux-next/drivers/vfio/virqfd.c /tmp/nothing/drivers/vfio/virqfd.c
--- /var/linuxes/linux-next/drivers/vfio/virqfd.c
+++ /tmp/nothing/drivers/vfio/virqfd.c
@@ -166,7 +166,6 @@ int vfio_virqfd_enable(void *opaque,
 	init_waitqueue_func_entry(&virqfd->wait, virqfd_wakeup);
 	init_poll_funcptr(&virqfd->pt, virqfd_ptable_queue_proc);
 
-	events = irqfd.file->f_op->poll(irqfd.file, &virqfd->pt);
 
 	/*
 	 * Check if there was an event already pending on the eventfd
diff -u -p /var/linuxes/linux-next/drivers/staging/comedi/drivers/serial2002.c /tmp/nothing/drivers/staging/comedi/drivers/serial2002.c
--- /var/linuxes/linux-next/drivers/staging/comedi/drivers/serial2002.c
+++ /tmp/nothing/drivers/staging/comedi/drivers/serial2002.c
@@ -129,7 +129,6 @@ static void serial2002_tty_read_poll_wai
 		long elapsed;
 		int mask;
 
-		mask = f->f_op->poll(f, &table.pt);
 		if (mask & (POLLRDNORM | POLLRDBAND | POLLIN |
 			    POLLHUP | POLLERR)) {
 			break;
diff -u -p /var/linuxes/linux-next/drivers/vhost/vhost.c /tmp/nothing/drivers/vhost/vhost.c
--- /var/linuxes/linux-next/drivers/vhost/vhost.c
+++ /tmp/nothing/drivers/vhost/vhost.c
@@ -169,7 +169,6 @@ int vhost_poll_start(struct vhost_poll *
 	if (poll->wqh)
 		return 0;
 
-	mask = file->f_op->poll(file, &poll->table);
 	if (mask)
 		vhost_poll_wakeup(&poll->wait, 0, 0, (void *)mask);
 	if (mask & POLLERR) {
diff -u -p /var/linuxes/linux-next/fs/eventpoll.c /tmp/nothing/fs/eventpoll.c
--- /var/linuxes/linux-next/fs/eventpoll.c
+++ /tmp/nothing/fs/eventpoll.c
@@ -802,7 +802,6 @@ static inline unsigned int ep_item_poll(
 {
 	pt->_key = epi->event.events;
 
-	return epi->ffd.file->f_op->poll(epi->ffd.file, pt) & epi->event.events;
 }
 
 static int ep_read_events_proc(struct eventpoll *ep, struct list_head *head,
diff -u -p /var/linuxes/linux-next/fs/select.c /tmp/nothing/fs/select.c
--- /var/linuxes/linux-next/fs/select.c
+++ /tmp/nothing/fs/select.c
@@ -764,7 +764,6 @@ static inline unsigned int do_pollfd(str
 			if (f.file->f_op->poll) {
 				pwait->_key = pollfd->events|POLLERR|POLLHUP;
 				pwait->_key |= busy_flag;
-				mask = f.file->f_op->poll(f.file, pwait);
 				if (mask & busy_flag)
 					*can_busy_poll = true;
 			}
diff -u -p /var/linuxes/linux-next/fs/aio.c /tmp/nothing/fs/aio.c
--- /var/linuxes/linux-next/fs/aio.c
+++ /tmp/nothing/fs/aio.c
@@ -1679,7 +1679,6 @@ static long aio_thread_op_poll(struct ai
 		mask = DEFAULT_POLLMASK;
 		if (file->f_op && file->f_op->poll) {
 			table.pt._key = events;
-			mask = file->f_op->poll(file, &table.pt);
 		}
 		/* Mask out unneeded events. */
 		mask &= events;
diff -u -p /var/linuxes/linux-next/mm/memcontrol.c /tmp/nothing/mm/memcontrol.c
--- /var/linuxes/linux-next/mm/memcontrol.c
+++ /tmp/nothing/mm/memcontrol.c
@@ -3881,7 +3881,6 @@ static ssize_t memcg_write_event_control
 	if (ret)
 		goto out_put_css;
 
-	efile.file->f_op->poll(efile.file, &event->pt);
 
 	spin_lock(&memcg->event_list_lock);
 	list_add(&event->list, &memcg->event_list);
diff -u -p /var/linuxes/linux-next/net/9p/trans_fd.c /tmp/nothing/net/9p/trans_fd.c
--- /var/linuxes/linux-next/net/9p/trans_fd.c
+++ /tmp/nothing/net/9p/trans_fd.c
@@ -242,12 +242,10 @@ p9_fd_poll(struct p9_client *client, str
 	if (!ts->wr->f_op->poll)
 		return -EIO;
 
-	ret = ts->rd->f_op->poll(ts->rd, pt);
 	if (ret < 0)
 		return ret;
 
 	if (ts->rd != ts->wr) {
-		n = ts->wr->f_op->poll(ts->wr, pt);
 		if (n < 0)
 			return n;
 		ret = (ret & ~POLLOUT) | (n & ~POLLIN);
diff -u -p /var/linuxes/linux-next/virt/kvm/eventfd.c /tmp/nothing/virt/kvm/eventfd.c
--- /var/linuxes/linux-next/virt/kvm/eventfd.c
+++ /tmp/nothing/virt/kvm/eventfd.c
@@ -397,7 +397,6 @@ kvm_irqfd_assign(struct kvm *kvm, struct
 	 * Check if there was an event already pending on the eventfd
 	 * before we registered, and trigger it as if we didn't miss it.
 	 */
-	events = f.file->f_op->poll(f.file, &irqfd->pt);
 
 	if (events & POLLIN)
 		schedule_work(&irqfd->inject);

