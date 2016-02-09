X-GM-THRID: 6249291499959222272
X-Received: by 10.31.15.11 with SMTP id 11mr32449453vkp.3.1455026562114;
        Tue, 09 Feb 2016 06:02:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.37 with SMTP id j37ls2320116iod.32.gmail; Tue, 09 Feb
 2016 06:02:41 -0800 (PST)
X-Received: by 10.98.0.132 with SMTP id 126mr21119671pfa.2.1455026561618;
        Tue, 09 Feb 2016 06:02:41 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x235.google.com (mail-qg0-x235.google.com. [2607:f8b0:400d:c04::235])
        by gmr-mx.google.com with ESMTPS id g136si430761ywb.5.2016.02.09.06.02.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 06:02:41 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::235 as permitted sender) client-ip=2607:f8b0:400d:c04::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::235 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x235.google.com with SMTP id y89so66892719qge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 06:02:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=kJs/KfROzt+fH5P6DqwFcQ9HigcCRza/zW0BVPnorzw=;
        b=r07EgMpL0YGmZpHtZEl8ZbLFVPJI8G5HIOY+6w4FMqu/fsKm2yluvAjsBszVk2TDpq
         jP8hnE/f6Q969Oy9AQaF/7Q85gjkGOEEeGZYf7MAfZt1QhnQSePohXNtvhh6lYiFVUzc
         YWitECzfQEjk9zQ28Wvf3FdBmpFKOr/wQmnpKbd4b2WfDbAQ4Q/e6jqePcuuflO42xTO
         JMasXJDq9wugbLMcw0P5rbsSNGWsFhzLDSEDAa1uOwW7QIso1WgEuYt4CDDFHbL2eIGu
         i06ab8ciMtguzciY90/UWRY6Qs8q809WKkoVGGBXRa3DsLGH8sS8M9K/F3rk3cYzbNdd
         NbdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=kJs/KfROzt+fH5P6DqwFcQ9HigcCRza/zW0BVPnorzw=;
        b=jRghw05jbsEjGCd1lzY6xcL7NwLN0aRkNHstwjnQNbPkH2V6t7nTdcXAkf0HVN5ahc
         8x2Ma+1J+pJmHidv63NQOq8CjOnawFy0YhDYYTdqqjgCJkOPVZuhprG+jgpeKH7Iywqw
         tPKOCr3jwCJH4WHb5GzLIRjQasy+DBwcO/KlSMbcz424pwSIZ8xIWWQjQWMGX4qUQIfy
         oDbxirfU5tEETo6uR8+l4+alzoEgcjDKptDXnnn+WMDXhQkK6/EehW8qBtnhTro/6kHm
         6gDfTm0Via81BtWOeOkuwW1oviq2xoc9Dc6ENalvuWpJ/XHRcm2f0c2W2btsLsZCCYtT
         yxEA==
X-Gm-Message-State: AG10YOTaLaNCW4qY8nyWikO4YkYAsTRLCx+7ewZTQq1JhN2KwcOeZIKsFeV6wgyHrhDvIg==
X-Received: by 10.140.28.52 with SMTP id 49mr40819495qgy.36.1455026561421;
        Tue, 09 Feb 2016 06:02:41 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id z132sm15906413qka.14.2016.02.09.06.02.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 06:02:40 -0800 (PST)
Date: Tue, 9 Feb 2016 14:02:04 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: unisys: Remove parentheses around right hand side
 of assignment
Message-ID: <20160209190204.GA6095@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove parentheses on the right hand side of assignment as they are not
needed. Semantic patch used:

@@
expression a, b, c, d;
@@

(
  a = (c == d)
|
  a = 
- (
  b
- )
)
Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/unisys/visorbus/visorchannel.c  | 4 ++--
 drivers/staging/unisys/visorhba/visorhba_main.c | 4 ++--
 drivers/staging/unisys/visornic/visornic_main.c | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/unisys/visorbus/visorchannel.c b/drivers/staging/unisys/visorbus/visorchannel.c
index 891b8db..a80d72c 100644
--- a/drivers/staging/unisys/visorbus/visorchannel.c
+++ b/drivers/staging/unisys/visorbus/visorchannel.c
@@ -461,7 +461,7 @@ signalinsert_inner(struct visorchannel *channel, u32 queue, void *msg)
 	if (!sig_read_header(channel, queue, &sig_hdr))
 		return false;
 
-	sig_hdr.head = ((sig_hdr.head + 1) % sig_hdr.max_slots);
+	sig_hdr.head = (sig_hdr.head + 1) % sig_hdr.max_slots;
 	if (sig_hdr.head == sig_hdr.tail) {
 		sig_hdr.num_overflows++;
 		visorchannel_write(channel,
@@ -521,7 +521,7 @@ visorchannel_signalqueue_slots_avail(struct visorchannel *channel, u32 queue)
 	tail = sig_hdr.tail;
 	if (head < tail)
 		head = head + sig_hdr.max_slots;
-	slots_used = (head - tail);
+	slots_used = head - tail;
 	slots_avail = sig_hdr.max_signals - slots_used;
 	return (int)slots_avail;
 }
diff --git a/drivers/staging/unisys/visorhba/visorhba_main.c b/drivers/staging/unisys/visorhba/visorhba_main.c
index 202bfab..5a78409 100644
--- a/drivers/staging/unisys/visorhba/visorhba_main.c
+++ b/drivers/staging/unisys/visorhba/visorhba_main.c
@@ -323,9 +323,9 @@ static int forward_taskmgmt_command(enum task_mgmt_types tasktype,
 		goto err_del_scsipending_ent;
 
 	if (tasktype == TASK_MGMT_ABORT_TASK)
-		scsicmd->result = (DID_ABORT << 16);
+		scsicmd->result = DID_ABORT << 16;
 	else
-		scsicmd->result = (DID_RESET << 16);
+		scsicmd->result = DID_RESET << 16;
 
 	scsicmd->scsi_done(scsicmd);
 
diff --git a/drivers/staging/unisys/visornic/visornic_main.c b/drivers/staging/unisys/visornic/visornic_main.c
index 9b3eb95..a6786ec 100644
--- a/drivers/staging/unisys/visornic/visornic_main.c
+++ b/drivers/staging/unisys/visornic/visornic_main.c
@@ -1029,7 +1029,7 @@ visornic_set_multi(struct net_device *netdev)
 			cmdrsp->net.type = NET_RCV_PROMISC;
 			cmdrsp->net.enbdis.context = netdev;
 			cmdrsp->net.enbdis.enable =
-				(netdev->flags & IFF_PROMISC);
+				netdev->flags & IFF_PROMISC;
 			visorchannel_signalinsert(devdata->dev->visorchannel,
 						  IOCHAN_TO_IOPART,
 						  cmdrsp);
@@ -1766,7 +1766,7 @@ static int visornic_probe(struct visor_device *dev)
 	}
 
 	netdev->netdev_ops = &visornic_dev_ops;
-	netdev->watchdog_timeo = (5 * HZ);
+	netdev->watchdog_timeo = 5 * HZ;
 	SET_NETDEV_DEV(netdev, &dev->device);
 
 	/* Get MAC adddress from channel and read it into the device. */
-- 
2.5.0


