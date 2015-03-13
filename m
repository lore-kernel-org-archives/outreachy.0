X-GM-THRID: 7913154281472
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d335c0b66309892f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.43.16.70 with SMTP id px6mr43841455icb.28.1426265134827;
        Fri, 13 Mar 2015 09:45:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.80.229 with SMTP id u5ls775279obx.23.gmail; Fri, 13 Mar
 2015 09:45:34 -0700 (PDT)
X-Received: by 10.182.29.102 with SMTP id j6mr46588684obh.46.1426265134512;
        Fri, 13 Mar 2015 09:45:34 -0700 (PDT)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-vc0-x235.google.com (mail-vc0-x235.google.com. [2607:f8b0:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id xs4si40729vdb.3.2015.03.13.09.45.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 09:45:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400c:c03::235 as permitted sender) client-ip=2607:f8b0:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400c:c03::235 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vc0-f181.google.com with SMTP id hq12so8158695vcb.12
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 09:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-type;
        bh=enkx/hvplX5/ZZ/TMKfMYFVFmjkMhOIRDtLQxzrZSXM=;
        b=cSrB7+RSusXn8Z19+3rYDA5ORfn/eqf0YYYDRBbx3gyPUOnn/lgiOmrkbqIYLKAxFa
         Yi10LSrj5ZJKP5wdS/MhMEZ4fCshaMtVqvcNKxG8ubC7tglvHUhDeDuMEQLadBxmq13S
         aK/XgJQT9wQFCK/0cXt+lW6FGKTOPx+44rga0fhUgfBNS8DUIg0Mm0U5NFThcJOZBxdJ
         gCmbnkFIDub7L9FGVUotLDrdh+02CY2Cmwpjw+3Iy/Zn/yXIDmpCeQgNE4vU+Tzq39h6
         3b3KdYLbbBUp0lebhn7VFUgY7WD+klLsndJrMidoKH/ND8Sw1Px3BMp5hKubRDHHOyld
         hUtg==
X-Received: by 10.52.36.39 with SMTP id n7mr13012544vdj.2.1426265134248; Fri,
 13 Mar 2015 09:45:34 -0700 (PDT)
MIME-Version: 1.0
References: <1426263453-26331-1-git-send-email-somyaanand214@gmail.com>
 <1426263453-26331-4-git-send-email-somyaanand214@gmail.com> <alpine.DEB.2.10.1503131732570.3275@hadrien>
In-Reply-To: <alpine.DEB.2.10.1503131732570.3275@hadrien>
From: Somya Anand <somyaanand214@gmail.com>
Date: Fri, 13 Mar 2015 16:45:33 +0000
Message-ID: <CANPzvBDnHUj3TN-eVeNhvhcpritSpK3GUL8E=gKV2G1vRE9CQg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/4] Staging: lustre: Iterate list
 using list_for_each_entry
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=20cf307c9deaaeba6c05112e3a76

--20cf307c9deaaeba6c05112e3a76
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 13, 2015 at 10:05 PM Julia Lawall <julia.lawall@lip6.fr> wrote:

> On Fri, 13 Mar 2015, Somya Anand wrote:
>
> > Code using doubly linked list is iterated generally  using list_empty and
> > list_entry functions, but it can be better written using
> list_for_each_entry
> > macro.
> >
> > This patch replaces the while loop containing list_empty and list_entry
> with
> > list_for_each_entry, making sure to keep the logic of code intact. This
> > transformation is done by using the following coccinelle script.
> >
> > @@
> > expression E1;
> > identifier I1, I2;
> > type T;
> > iterator name list_for_each_entry;
> > @@
> >
> > - while (list_empty(&E1) == 0) {
> > + list_for_each_entry (I1, &E1, I2) {
> >         ...when != T *I1;
> > -       I1 = list_entry(E1.next, T, I2);
> >     ...
> > }
> >
> > Signed-off-by: Somya Anand <somyaanand214@gmail.com>
> > ---
> >  .../staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c    |  4 +--
> >  .../staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c | 15 +++--------
> >  .../staging/lustre/lnet/klnds/socklnd/socklnd.c    |  8 ++----
> >  .../staging/lustre/lnet/klnds/socklnd/socklnd_cb.c |  9 ++-----
> >  .../lustre/lnet/klnds/socklnd/socklnd_proto.c      |  3 +--
> >  drivers/staging/lustre/lnet/lnet/api-ni.c          | 14 +++-------
> >  drivers/staging/lustre/lnet/lnet/config.c          |  4 +--
> >  drivers/staging/lustre/lnet/lnet/lib-move.c        |  7 ++---
> >  drivers/staging/lustre/lnet/lnet/lib-msg.c         |  4 +--
> >  drivers/staging/lustre/lnet/lnet/lib-ptl.c         |  4 +--
> >  drivers/staging/lustre/lnet/lnet/peer.c            |  4 +--
> >  drivers/staging/lustre/lnet/lnet/router.c          |  8 ++----
> >  drivers/staging/lustre/lnet/selftest/conrpc.c      |  3 +--
> >  drivers/staging/lustre/lnet/selftest/console.c     | 25
> +++++------------
> >  drivers/staging/lustre/lnet/selftest/framework.c   | 20 ++++----------
> >  drivers/staging/lustre/lnet/selftest/rpc.c         |  5 +---
> >  drivers/staging/lustre/lustre/libcfs/workitem.c    |  4 +--
> >  drivers/staging/lustre/lustre/llite/llite_rmtacl.c |  8 ++----
> >  .../lustre/lustre/obdclass/lprocfs_status.c        |  8 ++----
> >  .../staging/lustre/lustre/obdclass/lustre_peer.c   |  4 +--
> >  drivers/staging/lustre/lustre/osc/osc_cache.c      | 11 +++-----
> >  drivers/staging/lustre/lustre/osc/osc_page.c       |  4 +--
> >  drivers/staging/lustre/lustre/ptlrpc/pinger.c      |  5 +---
> >  drivers/staging/lustre/lustre/ptlrpc/sec_gc.c      |  4 +--
> >  drivers/staging/lustre/lustre/ptlrpc/service.c     | 31
> +++++-----------------
> >  25 files changed, 54 insertions(+), 162 deletions(-)
> >
> > diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> > index 109f44c..5988048 100644
> > --- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> > +++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
> > @@ -1896,9 +1896,7 @@ kiblnd_destroy_pmr_pool(kib_pool_t *pool)
> >
> >       LASSERT(pool->po_allocated == 0);
> >
> > -     while (!list_empty(&pool->po_free_list)) {
> > -             pmr = list_entry(pool->po_free_list.next,
> > -                                  kib_phys_mr_t, pmr_list);
> > +     list_for_each_entry(pmr, &pool->po_free_list, pmr_list) {
>
> I think that you would need list_for_each_entry_safe, because you are
> deleting an element.
>
 Yeah, I will do that.

> I would suggest not doing so many cases, and explaining more carefully in
> the commit message why the transformation is correct.  "making sure to
> keep the logic of code intact" doesn't help the reader understand what you
> have done.
>
 Okay, I will try to write a better commit log as you suggest.

Thanks

--
Somya

>
> julia
>
>
> >
> >               LASSERT(pmr->pmr_mr == NULL);
> >               list_del(&pmr->pmr_list);
> > diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
> b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
> > index c762dbe..ae00e7a 100644
> > --- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
> > +++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c
> > @@ -1941,9 +1941,7 @@ kiblnd_handle_early_rxs(kib_conn_t *conn)
> >       LASSERT(conn->ibc_state >= IBLND_CONN_ESTABLISHED);
> >
> >       write_lock_irqsave(&kiblnd_data.kib_global_lock, flags);
> > -     while (!list_empty(&conn->ibc_early_rxs)) {
> > -             rx = list_entry(conn->ibc_early_rxs.next,
> > -                                 kib_rx_t, rx_list);
> > +     list_for_each_entry(rx, &conn->ibc_early_rxs, rx_list) {
> >               list_del(&rx->rx_list);
> >               write_unlock_irqrestore(&kiblnd_data.kib_global_lock,
> flags);
> >
> > @@ -2150,8 +2148,7 @@ kiblnd_connreq_done(kib_conn_t *conn, int status)
> >
> >       /* Schedule blocked txs */
> >       spin_lock(&conn->ibc_lock);
> > -     while (!list_empty(&txs)) {
> > -             tx = list_entry(txs.next, kib_tx_t, tx_list);
> > +     list_for_each_entry(tx, &txs, tx_list) {
> >               list_del(&tx->tx_list);
> >
> >               kiblnd_queue_tx_locked(tx, conn);
> > @@ -3080,9 +3077,7 @@ kiblnd_check_conns(int idx)
> >       /* Handle timeout by closing the whole
> >        * connection. We can only be sure RDMA activity
> >        * has ceased once the QP has been modified. */
> > -     while (!list_empty(&closes)) {
> > -             conn = list_entry(closes.next,
> > -                                   kib_conn_t, ibc_connd_list);
> > +     list_for_each_entry(conn, &closes, ibc_connd_list) {
> >               list_del(&conn->ibc_connd_list);
> >               kiblnd_close_conn(conn, -ETIMEDOUT);
> >               kiblnd_conn_decref(conn);
> > @@ -3091,9 +3086,7 @@ kiblnd_check_conns(int idx)
> >       /* In case we have enough credits to return via a
> >        * NOOP, but there were no non-blocking tx descs
> >        * free to do it last time... */
> > -     while (!list_empty(&checksends)) {
> > -             conn = list_entry(checksends.next,
> > -                                   kib_conn_t, ibc_connd_list);
> > +     list_for_each_entry(conn, &checksends, ibc_connd_list) {
> >               list_del(&conn->ibc_connd_list);
> >               kiblnd_check_sends(conn);
> >               kiblnd_conn_decref(conn);
> > diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> > index f815bb8..5adf6c4 100644
> > --- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> > +++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
> > @@ -997,7 +997,6 @@ ksocknal_connecting(ksock_peer_t *peer, __u32
> ipaddr)
> >       ksock_route_t   *route;
> >
> >       list_for_each_entry(route, &peer->ksnp_routes, ksnr_list) {
> > -
> >               if (route->ksnr_ipaddr == ipaddr)
> >                       return route->ksnr_connecting;
> >       }
> > @@ -1531,9 +1530,7 @@ ksocknal_finalize_zcreq(ksock_conn_t *conn)
> >
> >       spin_unlock(&peer->ksnp_lock);
> >
> > -     while (!list_empty(&zlist)) {
> > -             tx = list_entry(zlist.next, ksock_tx_t, tx_zc_list);
> > -
> > +     list_for_each_entry(tx, &zlist, tx_zc_list) {
> >               list_del(&tx->tx_zc_list);
> >               ksocknal_tx_decref(tx);
> >       }
> > @@ -2234,8 +2231,7 @@ ksocknal_free_buffers(void)
> >               list_del_init(&ksocknal_data.ksnd_idle_noop_txs);
> >               spin_unlock(&ksocknal_data.ksnd_tx_lock);
> >
> > -             while (!list_empty(&zlist)) {
> > -                     tx = list_entry(zlist.next, ksock_tx_t, tx_list);
> > +             list_for_each_entry(tx, &zlist, tx_list) {
> >                       list_del(&tx->tx_list);
> >                       LIBCFS_FREE(tx, tx->tx_desc_size);
> >               }
> > diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
> b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
> > index 92760fe..931237b 100644
> > --- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
> > +++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_cb.c
> > @@ -2318,10 +2318,7 @@ ksocknal_flush_stale_txs(ksock_peer_t *peer)
> >
> >       write_lock_bh(&ksocknal_data.ksnd_global_lock);
> >
> > -     while (!list_empty (&peer->ksnp_tx_queue)) {
> > -             tx = list_entry (peer->ksnp_tx_queue.next,
> > -                                  ksock_tx_t, tx_list);
> > -
> > +     list_for_each_entry(tx, &peer->ksnp_tx_queue, tx_list) {
> >               if (!cfs_time_aftereq(cfs_time_current(),
> >                                     tx->tx_deadline))
> >                       break;
> > @@ -2556,9 +2553,7 @@ ksocknal_reaper (void *arg)
> >
> >               /* reschedule all the connections that stalled with
> ENOMEM... */
> >               nenomem_conns = 0;
> > -             while (!list_empty (&enomem_conns)) {
> > -                     conn = list_entry (enomem_conns.next,
> > -                                            ksock_conn_t, ksnc_tx_list);
> > +             list_for_each_entry(conn, &enomem_conns, ksnc_tx_list) {
> >                       list_del (&conn->ksnc_tx_list);
> >
> >                       sched = conn->ksnc_scheduler;
> > diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c
> b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c
> > index 8596581..711f0c9 100644
> > --- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c
> > +++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd_proto.c
> > @@ -440,8 +440,7 @@ ksocknal_handle_zcack(ksock_conn_t *conn, __u64
> cookie1, __u64 cookie2)
> >
> >       spin_unlock(&peer->ksnp_lock);
> >
> > -     while (!list_empty(&zlist)) {
> > -             tx = list_entry(zlist.next, ksock_tx_t, tx_zc_list);
> > +     list_for_each_entry(tx, &zlist, tx_zc_list) {
> >               list_del(&tx->tx_zc_list);
> >               ksocknal_tx_decref(tx);
> >       }
> > diff --git a/drivers/staging/lustre/lnet/lnet/api-ni.c
> b/drivers/staging/lustre/lnet/lnet/api-ni.c
> > index faceb95..7543711 100644
> > --- a/drivers/staging/lustre/lnet/lnet/api-ni.c
> > +++ b/drivers/staging/lustre/lnet/lnet/api-ni.c
> > @@ -923,9 +923,7 @@ lnet_shutdown_lndnis(void)
> >       the_lnet.ln_shutdown = 1;       /* flag shutdown */
> >
> >       /* Unlink NIs from the global table */
> > -     while (!list_empty(&the_lnet.ln_nis)) {
> > -             ni = list_entry(the_lnet.ln_nis.next,
> > -                                 lnet_ni_t, ni_list);
> > +     list_for_each_entry(ni, &the_lnet.ln_nis, ni_list) {
> >               /* move it to zombie list and nobody can find it anymore */
> >               list_move(&ni->ni_list, &the_lnet.ln_nis_zombie);
> >               lnet_ni_decref_locked(ni, 0);   /* drop ln_nis' ref */
> > @@ -963,12 +961,10 @@ lnet_shutdown_lndnis(void)
> >       /* Now wait for the NI's I just nuked to show up on ln_zombie_nis
> >        * and shut them down in guaranteed thread context */
> >       i = 2;
> > -     while (!list_empty(&the_lnet.ln_nis_zombie)) {
> > +     list_for_each_entry(ni, &the_lnet.ln_nis_zombie, ni_list) {
> >               int     *ref;
> >               int     j;
> >
> > -             ni = list_entry(the_lnet.ln_nis_zombie.next,
> > -                                 lnet_ni_t, ni_list);
> >               list_del_init(&ni->ni_list);
> >               cfs_percpt_for_each(ref, j, ni->ni_refs) {
> >                       if (*ref == 0)
> > @@ -1044,8 +1040,7 @@ lnet_startup_lndnis(void)
> >       if (rc != 0)
> >               goto failed;
> >
> > -     while (!list_empty(&nilist)) {
> > -             ni = list_entry(nilist.next, lnet_ni_t, ni_list);
> > +     list_for_each_entry(ni, &nilist, ni_list) {
> >               lnd_type = LNET_NETTYP(LNET_NIDNET(ni->ni_nid));
> >
> >               LASSERT(libcfs_isknown_lnd(lnd_type));
> > @@ -1155,8 +1150,7 @@ lnet_startup_lndnis(void)
> >   failed:
> >       lnet_shutdown_lndnis();
> >
> > -     while (!list_empty(&nilist)) {
> > -             ni = list_entry(nilist.next, lnet_ni_t, ni_list);
> > +     list_for_each_entry(ni, &nilist, ni_list) {
> >               list_del(&ni->ni_list);
> >               lnet_ni_free(ni);
> >       }
> > diff --git a/drivers/staging/lustre/lnet/lnet/config.c
> b/drivers/staging/lustre/lnet/lnet/config.c
> > index af171e2..0986b36 100644
> > --- a/drivers/staging/lustre/lnet/lnet/config.c
> > +++ b/drivers/staging/lustre/lnet/lnet/config.c
> > @@ -1011,9 +1011,7 @@ lnet_match_networks(char **networksp, char
> *ip2nets, __u32 *ipaddrs, int nip)
> >       len = 0;
> >       rc = 0;
> >
> > -     while (!list_empty(&raw_entries)) {
> > -             tb = list_entry(raw_entries.next, lnet_text_buf_t,
> > -                                 ltb_list);
> > +     list_for_each_entry(tb, &raw_entries, ltb_list) {
> >
> >               strncpy(source, tb->ltb_text, sizeof(source)-1);
> >               source[sizeof(source)-1] = 0;
> > diff --git a/drivers/staging/lustre/lnet/lnet/lib-move.c
> b/drivers/staging/lustre/lnet/lnet/lib-move.c
> > index 0f53c76..b1baf8b 100644
> > --- a/drivers/staging/lustre/lnet/lnet/lib-move.c
> > +++ b/drivers/staging/lustre/lnet/lnet/lib-move.c
> > @@ -90,9 +90,7 @@ lnet_fail_nid(lnet_nid_t nid, unsigned int threshold)
> >
> >       lnet_net_unlock(0);
> >
> > -     while (!list_empty(&cull)) {
> > -             tp = list_entry(cull.next, lnet_test_peer_t, tp_list);
> > -
> > +     list_for_each_entry(tp, &cull, tp_list) {
> >               list_del(&tp->tp_list);
> >               LIBCFS_FREE(tp, sizeof(*tp));
> >       }
> > @@ -147,8 +145,7 @@ fail_peer(lnet_nid_t nid, int outgoing)
> >
> >       lnet_net_unlock(0);
> >
> > -     while (!list_empty(&cull)) {
> > -             tp = list_entry(cull.next, lnet_test_peer_t, tp_list);
> > +     list_for_each_entry(tp, &cull, tp_list) {
> >               list_del(&tp->tp_list);
> >
> >               LIBCFS_FREE(tp, sizeof(*tp));
> > diff --git a/drivers/staging/lustre/lnet/lnet/lib-msg.c
> b/drivers/staging/lustre/lnet/lnet/lib-msg.c
> > index a46ccbf..14417d9 100644
> > --- a/drivers/staging/lustre/lnet/lnet/lib-msg.c
> > +++ b/drivers/staging/lustre/lnet/lnet/lib-msg.c
> > @@ -510,9 +510,7 @@ lnet_finalize(lnet_ni_t *ni, lnet_msg_t *msg, int
> status)
> >
> >       container->msc_finalizers[my_slot] = current;
> >
> > -     while (!list_empty(&container->msc_finalizing)) {
> > -             msg = list_entry(container->msc_finalizing.next,
> > -                                  lnet_msg_t, msg_list);
> > +     list_for_each_entry(msg, &container->msc_finalizing, msg_list) {
> >
> >               list_del(&msg->msg_list);
> >
> > diff --git a/drivers/staging/lustre/lnet/lnet/lib-ptl.c
> b/drivers/staging/lustre/lnet/lnet/lib-ptl.c
> > index 3ba0da9..6b0c63f 100644
> > --- a/drivers/staging/lustre/lnet/lnet/lib-ptl.c
> > +++ b/drivers/staging/lustre/lnet/lnet/lib-ptl.c
> > @@ -733,9 +733,7 @@ lnet_ptl_cleanup(struct lnet_portal *ptl)
> >               mhash = mtable->mt_mhash;
> >               /* cleanup ME */
> >               for (j = 0; j < LNET_MT_HASH_SIZE + 1; j++) {
> > -                     while (!list_empty(&mhash[j])) {
> > -                             me = list_entry(mhash[j].next,
> > -                                                 lnet_me_t, me_list);
> > +                     list_for_each_entry(me, &mhash[j], me_list) {
> >                               CERROR("Active ME %p on exit\n", me);
> >                               list_del(&me->me_list);
> >                               lnet_me_free(me);
> > diff --git a/drivers/staging/lustre/lnet/lnet/peer.c
> b/drivers/staging/lustre/lnet/lnet/peer.c
> > index c93ae85..76cbc12 100644
> > --- a/drivers/staging/lustre/lnet/lnet/peer.c
> > +++ b/drivers/staging/lustre/lnet/lnet/peer.c
> > @@ -153,9 +153,7 @@ lnet_peer_tables_cleanup(void)
> >
> >               lnet_net_unlock(i);
> >
> > -             while (!list_empty(&deathrow)) {
> > -                     lp = list_entry(deathrow.next,
> > -                                         lnet_peer_t, lp_hashlist);
> > +             list_for_each_entry(lp, &deathrow, lp_hashlist) {
> >                       list_del(&lp->lp_hashlist);
> >                       LIBCFS_FREE(lp, sizeof(*lp));
> >               }
> > diff --git a/drivers/staging/lustre/lnet/lnet/router.c
> b/drivers/staging/lustre/lnet/lnet/router.c
> > index c0a6aeb..0f4ce0b 100644
> > --- a/drivers/staging/lustre/lnet/lnet/router.c
> > +++ b/drivers/staging/lustre/lnet/lnet/router.c
> > @@ -1145,9 +1145,7 @@ lnet_prune_rc_data(int wait_unlink)
> >
> >               lnet_net_unlock(LNET_LOCK_EX);
> >
> > -             while (!list_empty(&head)) {
> > -                     rcd = list_entry(head.next,
> > -                                          lnet_rc_data_t, rcd_list);
> > +             list_for_each_entry(rcd, &head, rcd_list) {
> >                       list_del_init(&rcd->rcd_list);
> >                       lnet_destroy_rc_data(rcd);
> >               }
> > @@ -1294,11 +1292,9 @@ lnet_rtrpool_free_bufs(lnet_rtrbufpool_t *rbp)
> >       LASSERT(list_empty(&rbp->rbp_msgs));
> >       LASSERT(rbp->rbp_credits == rbp->rbp_nbuffers);
> >
> > -     while (!list_empty(&rbp->rbp_bufs)) {
> > +     list_for_each_entry(rb, &rbp->rbp_bufs, rb_list) {
> >               LASSERT(rbp->rbp_credits > 0);
> >
> > -             rb = list_entry(rbp->rbp_bufs.next,
> > -                                 lnet_rtrbuf_t, rb_list);
> >               list_del(&rb->rb_list);
> >               lnet_destroy_rtrbuf(rb, npages);
> >               nbuffers++;
> > diff --git a/drivers/staging/lustre/lnet/selftest/conrpc.c
> b/drivers/staging/lustre/lnet/selftest/conrpc.c
> > index 77f02b7..27473c8 100644
> > --- a/drivers/staging/lustre/lnet/selftest/conrpc.c
> > +++ b/drivers/staging/lustre/lnet/selftest/conrpc.c
> > @@ -1364,8 +1364,7 @@ lstcon_rpc_cleanup_wait(void)
> >
> >       spin_unlock(&console_session.ses_rpc_lock);
> >
> > -     while (!list_empty(&zlist)) {
> > -             crpc = list_entry(zlist.next, lstcon_rpc_t, crp_link);
> > +     list_for_each_entry(crpc, &zlist, crp_link) {
> >
> >               list_del(&crpc->crp_link);
> >               LIBCFS_FREE(crpc, sizeof(lstcon_rpc_t));
> > diff --git a/drivers/staging/lustre/lnet/selftest/console.c
> b/drivers/staging/lustre/lnet/selftest/console.c
> > index 2b5f53c..da7c2d2 100644
> > --- a/drivers/staging/lustre/lnet/selftest/console.c
> > +++ b/drivers/staging/lustre/lnet/selftest/console.c
> > @@ -334,9 +334,7 @@ lstcon_group_move(lstcon_group_t *old,
> lstcon_group_t *new)
> >  {
> >       lstcon_ndlink_t *ndl;
> >
> > -     while (!list_empty(&old->grp_ndl_list)) {
> > -             ndl = list_entry(old->grp_ndl_list.next,
> > -                                  lstcon_ndlink_t, ndl_link);
> > +     list_for_each_entry(ndl, &old->grp_ndl_list, ndl_link) {
> >               lstcon_group_ndlink_move(old, new, ndl);
> >       }
> >  }
> > @@ -1090,9 +1088,7 @@ lstcon_batch_destroy(lstcon_batch_t *bat)
> >
> >       list_del(&bat->bat_link);
> >
> > -     while (!list_empty(&bat->bat_test_list)) {
> > -             test = list_entry(bat->bat_test_list.next,
> > -                                   lstcon_test_t, tes_link);
> > +     list_for_each_entry(test, &bat->bat_test_list, tes_link) {
> >               LASSERT(list_empty(&test->tes_trans_list));
> >
> >               list_del(&test->tes_link);
> > @@ -1106,17 +1102,13 @@ lstcon_batch_destroy(lstcon_batch_t *bat)
> >
> >       LASSERT(list_empty(&bat->bat_trans_list));
> >
> > -     while (!list_empty(&bat->bat_cli_list)) {
> > -             ndl = list_entry(bat->bat_cli_list.next,
> > -                                  lstcon_ndlink_t, ndl_link);
> > +     list_for_each_entry(ndl, &bat->bat_cli_list, ndl_link) {
> >               list_del_init(&ndl->ndl_link);
> >
> >               lstcon_ndlink_release(ndl);
> >       }
> >
> > -     while (!list_empty(&bat->bat_srv_list)) {
> > -             ndl = list_entry(bat->bat_srv_list.next,
> > -                                  lstcon_ndlink_t, ndl_link);
> > +     list_for_each_entry(ndl, &bat->bat_srv_list, ndl_link) {
> >               list_del_init(&ndl->ndl_link);
> >
> >               lstcon_ndlink_release(ndl);
> > @@ -1835,17 +1827,12 @@ lstcon_session_end(void)
> >       console_session.ses_feats_updated = 0;
> >
> >       /* destroy all batches */
> > -     while (!list_empty(&console_session.ses_bat_list)) {
> > -             bat = list_entry(console_session.ses_bat_list.next,
> > -                                  lstcon_batch_t, bat_link);
> > -
> > +     list_for_each_entry(bat, &console_session.ses_bat_list, bat_link) {
> >               lstcon_batch_destroy(bat);
> >       }
> >
> >       /* destroy all groups */
> > -     while (!list_empty(&console_session.ses_grp_list)) {
> > -             grp = list_entry(console_session.ses_grp_list.next,
> > -                                  lstcon_group_t, grp_link);
> > +     list_for_each_entry(grp, &console_session.ses_grp_list, grp_link) {
> >               LASSERT(grp->grp_ref == 1);
> >
> >               lstcon_group_put(grp);
> > diff --git a/drivers/staging/lustre/lnet/selftest/framework.c
> b/drivers/staging/lustre/lnet/selftest/framework.c
> > index a93a90d..82db462 100644
> > --- a/drivers/staging/lustre/lnet/selftest/framework.c
> > +++ b/drivers/staging/lustre/lnet/selftest/framework.c
> > @@ -621,16 +621,12 @@ sfw_destroy_test_instance(sfw_test_instance_t
> *tsi)
> >       LASSERT(list_empty(&tsi->tsi_active_rpcs));
> >       LASSERT(!sfw_test_active(tsi));
> >
> > -     while (!list_empty(&tsi->tsi_units)) {
> > -             tsu = list_entry(tsi->tsi_units.next,
> > -                                  sfw_test_unit_t, tsu_list);
> > +     list_for_each_entry(tsu, &tsi->tsi_units, tsu_list) {
> >               list_del(&tsu->tsu_list);
> >               LIBCFS_FREE(tsu, sizeof(*tsu));
> >       }
> >
> > -     while (!list_empty(&tsi->tsi_free_rpcs)) {
> > -             rpc = list_entry(tsi->tsi_free_rpcs.next,
> > -                                  srpc_client_rpc_t, crpc_list);
> > +     list_for_each_entry(rpc, &tsi->tsi_free_rpcs, crpc_list) {
> >               list_del(&rpc->crpc_list);
> >               LIBCFS_FREE(rpc, srpc_client_rpc_size(rpc));
> >       }
> > @@ -649,9 +645,7 @@ sfw_destroy_batch(sfw_batch_t *tsb)
> >       LASSERT(!sfw_batch_active(tsb));
> >       LASSERT(list_empty(&tsb->bat_list));
> >
> > -     while (!list_empty(&tsb->bat_tests)) {
> > -             tsi = list_entry(tsb->bat_tests.next,
> > -                                  sfw_test_instance_t, tsi_list);
> > +     list_for_each_entry(tsi, &tsb->bat_tests, tsi_list) {
> >               list_del_init(&tsi->tsi_list);
> >               sfw_destroy_test_instance(tsi);
> >       }
> > @@ -668,9 +662,7 @@ sfw_destroy_session(sfw_session_t *sn)
> >       LASSERT(list_empty(&sn->sn_list));
> >       LASSERT(sn != sfw_data.fw_session);
> >
> > -     while (!list_empty(&sn->sn_batches)) {
> > -             batch = list_entry(sn->sn_batches.next,
> > -                                    sfw_batch_t, bat_list);
> > +     list_for_each_entry(batch, &sn->sn_batches, bat_list) {
> >               list_del_init(&batch->bat_list);
> >               sfw_destroy_batch(batch);
> >       }
> > @@ -1790,9 +1782,7 @@ sfw_shutdown(void)
> >               srpc_wait_service_shutdown(sv);
> >       }
> >
> > -     while (!list_empty(&sfw_data.fw_tests)) {
> > -             tsc = list_entry(sfw_data.fw_tests.next,
> > -                                  sfw_test_case_t, tsc_list);
> > +     list_for_each_entry(tsc, &sfw_data.fw_tests, tsc_list) {
> >
> >               srpc_wait_service_shutdown(tsc->tsc_srv_service);
> >
> > diff --git a/drivers/staging/lustre/lnet/selftest/rpc.c
> b/drivers/staging/lustre/lnet/selftest/rpc.c
> > index 080788a..49a9991 100644
> > --- a/drivers/staging/lustre/lnet/selftest/rpc.c
> > +++ b/drivers/staging/lustre/lnet/selftest/rpc.c
> > @@ -222,10 +222,7 @@ srpc_service_fini(struct srpc_service *svc)
> >
> >               LASSERT(list_empty(&scd->scd_rpc_active));
> >
> > -             while (!list_empty(&scd->scd_rpc_free)) {
> > -                     rpc = list_entry(scd->scd_rpc_free.next,
> > -                                          struct srpc_server_rpc,
> > -                                          srpc_list);
> > +             list_for_each_entry(rpc, &scd->scd_rpc_free, srpc_list) {
> >                       list_del(&rpc->srpc_list);
> >                       LIBCFS_FREE(rpc, sizeof(*rpc));
> >               }
> > diff --git a/drivers/staging/lustre/lustre/libcfs/workitem.c
> b/drivers/staging/lustre/lustre/libcfs/workitem.c
> > index c4afaea..98953c3 100644
> > --- a/drivers/staging/lustre/lustre/libcfs/workitem.c
> > +++ b/drivers/staging/lustre/lustre/libcfs/workitem.c
> > @@ -467,9 +467,7 @@ cfs_wi_shutdown (void)
> >               }
> >               spin_unlock(&cfs_wi_data.wi_glock);
> >       }
> > -     while (!list_empty(&cfs_wi_data.wi_scheds)) {
> > -             sched = list_entry(cfs_wi_data.wi_scheds.next,
> > -                                    struct cfs_wi_sched, ws_list);
> > +     list_for_each_entry(sched, &cfs_wi_data.wi_scheds, ws_list) {
> >               list_del(&sched->ws_list);
> >               LIBCFS_FREE(sched, sizeof(*sched));
> >       }
> > diff --git a/drivers/staging/lustre/lustre/llite/llite_rmtacl.c
> b/drivers/staging/lustre/lustre/llite/llite_rmtacl.c
> > index f4da156..68cb421 100644
> > --- a/drivers/staging/lustre/lustre/llite/llite_rmtacl.c
> > +++ b/drivers/staging/lustre/lustre/llite/llite_rmtacl.c
> > @@ -170,9 +170,7 @@ void rct_fini(struct rmtacl_ctl_table *rct)
> >
> >       spin_lock(&rct->rct_lock);
> >       for (i = 0; i < RCE_HASHES; i++)
> > -             while (!list_empty(&rct->rct_entries[i])) {
> > -                     rce = list_entry(rct->rct_entries[i].next,
> > -                                          struct rmtacl_ctl_entry,
> rce_list);
> > +             list_for_each_entry(rce, &rct->rct_entries[i], rce_list) {
> >                       rce_free(rce);
> >               }
> >       spin_unlock(&rct->rct_lock);
> > @@ -289,9 +287,7 @@ void et_fini(struct eacl_table *et)
> >
> >       spin_lock(&et->et_lock);
> >       for (i = 0; i < EE_HASHES; i++)
> > -             while (!list_empty(&et->et_entries[i])) {
> > -                     ee = list_entry(et->et_entries[i].next,
> > -                                         struct eacl_entry, ee_list);
> > +             list_for_each_entry(ee, &et->et_entries[i], ee_list) {
> >                       ee_free(ee);
> >               }
> >       spin_unlock(&et->et_lock);
> > diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> > index c171c6c..31d7e18 100644
> > --- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> > +++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
> > @@ -1018,9 +1018,7 @@ void lprocfs_free_per_client_stats(struct
> obd_device *obd)
> >
> >       /* we need extra list - because hash_exit called to early */
> >       /* not need locking because all clients is died */
> > -     while (!list_empty(&obd->obd_nid_stats)) {
> > -             stat = list_entry(obd->obd_nid_stats.next,
> > -                                   struct nid_stat, nid_list);
> > +     list_for_each_entry(stat, &obd->obd_nid_stats, nid_list) {
> >               list_del_init(&stat->nid_list);
> >               cfs_hash_del(hash, &stat->nid, &stat->nid_hash);
> >               lprocfs_free_client_stats(stat);
> > @@ -1646,9 +1644,7 @@ int lprocfs_nid_stats_clear_write(struct file
> *file, const char *buffer,
> >       cfs_hash_cond_del(obd->obd_nid_stats_hash,
> >                         lprocfs_nid_stats_clear_write_cb, &free_list);
> >
> > -     while (!list_empty(&free_list)) {
> > -             client_stat = list_entry(free_list.next, struct nid_stat,
> > -                                          nid_list);
> > +     list_for_each_entry(client_stat, &free_list, nid_list) {
> >               list_del_init(&client_stat->nid_list);
> >               lprocfs_free_client_stats(client_stat);
> >       }
> > diff --git a/drivers/staging/lustre/lustre/obdclass/lustre_peer.c
> b/drivers/staging/lustre/lustre/obdclass/lustre_peer.c
> > index 64b2f35..87b649b 100644
> > --- a/drivers/staging/lustre/lustre/obdclass/lustre_peer.c
> > +++ b/drivers/staging/lustre/lustre/obdclass/lustre_peer.c
> > @@ -170,9 +170,7 @@ int class_del_uuid(const char *uuid)
> >               return -EINVAL;
> >       }
> >
> > -     while (!list_empty(&deathrow)) {
> > -             data = list_entry(deathrow.next, struct uuid_nid_data,
> > -                                   un_list);
> > +     list_for_each_entry(data, &deathrow, un_list) {
> >               list_del(&data->un_list);
> >
> >               CDEBUG(D_INFO, "del uuid %s %s/%d\n",
> > diff --git a/drivers/staging/lustre/lustre/osc/osc_cache.c
> b/drivers/staging/lustre/lustre/osc/osc_cache.c
> > index 7022ed4..6ab5c85 100644
> > --- a/drivers/staging/lustre/lustre/osc/osc_cache.c
> > +++ b/drivers/staging/lustre/lustre/osc/osc_cache.c
> > @@ -1884,9 +1884,7 @@ static int get_write_extents(struct osc_object
> *obj, struct list_head *rpclist)
> >       unsigned int max_pages = cli->cl_max_pages_per_rpc;
> >
> >       LASSERT(osc_object_is_locked(obj));
> > -     while (!list_empty(&obj->oo_hp_exts)) {
> > -             ext = list_entry(obj->oo_hp_exts.next, struct osc_extent,
> > -                                  oe_link);
> > +     list_for_each_entry(ext, &obj->oo_hp_exts, oe_link) {
> >               LASSERT(ext->oe_state == OES_CACHE);
> >               if (!try_to_add_extent_for_io(cli, ext, rpclist,
> &page_count,
> >                                             &max_pages))
> > @@ -1896,9 +1894,7 @@ static int get_write_extents(struct osc_object
> *obj, struct list_head *rpclist)
> >       if (page_count == max_pages)
> >               return page_count;
> >
> > -     while (!list_empty(&obj->oo_urgent_exts)) {
> > -             ext = list_entry(obj->oo_urgent_exts.next,
> > -                                  struct osc_extent, oe_link);
> > +     list_for_each_entry(ext, &obj->oo_urgent_exts, oe_link) {
> >               if (!try_to_add_extent_for_io(cli, ext, rpclist,
> &page_count,
> >                                             &max_pages))
> >                       return page_count;
> > @@ -2682,10 +2678,9 @@ again:
> >
> >       osc_list_maint(cli, obj);
> >
> > -     while (!list_empty(&list)) {
> > +     list_for_each_entry(ext, &list, oe_link) {
> >               int rc;
> >
> > -             ext = list_entry(list.next, struct osc_extent, oe_link);
> >               list_del_init(&ext->oe_link);
> >
> >               /* extent may be in OES_ACTIVE state because inode mutex
> > diff --git a/drivers/staging/lustre/lustre/osc/osc_page.c
> b/drivers/staging/lustre/lustre/osc/osc_page.c
> > index 76ba58b..c9c4839 100644
> > --- a/drivers/staging/lustre/lustre/osc/osc_page.c
> > +++ b/drivers/staging/lustre/lustre/osc/osc_page.c
> > @@ -672,14 +672,12 @@ int osc_lru_shrink(struct client_obd *cli, int
> target)
> >       client_obd_list_lock(&cli->cl_lru_list_lock);
> >       atomic_inc(&cli->cl_lru_shrinkers);
> >       maxscan = min(target << 1, atomic_read(&cli->cl_lru_in_list));
> > -     while (!list_empty(&cli->cl_lru_list)) {
> > +     list_for_each_entry(opg, &cli->cl_lru_list, ops_lru) {
> >               struct cl_page *page;
> >
> >               if (--maxscan < 0)
> >                       break;
> >
> > -             opg = list_entry(cli->cl_lru_list.next, struct osc_page,
> > -                                  ops_lru);
> >               page = cl_page_top(opg->ops_cl.cpl_page);
> >               if (cl_page_in_use_noref(page)) {
> >                       list_move_tail(&opg->ops_lru, &cli->cl_lru_list);
> > diff --git a/drivers/staging/lustre/lustre/ptlrpc/pinger.c
> b/drivers/staging/lustre/lustre/ptlrpc/pinger.c
> > index 9dbda93..bdff3fe 100644
> > --- a/drivers/staging/lustre/lustre/ptlrpc/pinger.c
> > +++ b/drivers/staging/lustre/lustre/ptlrpc/pinger.c
> > @@ -610,10 +610,7 @@ static int ping_evictor_main(void *arg)
> >                * lose the last ref on the export.  If they've already
> been
> >                * removed from the list, we won't find them here. */
> >               spin_lock(&obd->obd_dev_lock);
> > -             while (!list_empty(&obd->obd_exports_timed)) {
> > -                     exp = list_entry(obd->obd_exports_timed.next,
> > -                                          struct obd_export,
> > -                                          exp_obd_chain_timed);
> > +             list_for_each_entry(exp, &obd->obd_exports_timed,
> exp_obd_chain_timed) {
> >                       if (expire_time > exp->exp_last_request_time) {
> >                               class_export_get(exp);
> >                               spin_unlock(&obd->obd_dev_lock);
> > diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c
> b/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c
> > index 81de68e..265c5c1 100644
> > --- a/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c
> > +++ b/drivers/staging/lustre/lustre/ptlrpc/sec_gc.c
> > @@ -124,9 +124,7 @@ static void sec_process_ctx_list(void)
> >
> >       spin_lock(&sec_gc_ctx_list_lock);
> >
> > -     while (!list_empty(&sec_gc_ctx_list)) {
> > -             ctx = list_entry(sec_gc_ctx_list.next,
> > -                                  struct ptlrpc_cli_ctx, cc_gc_chain);
> > +     list_for_each_entry(ctx, &sec_gc_ctx_list, cc_gc_chain) {
> >               list_del_init(&ctx->cc_gc_chain);
> >               spin_unlock(&sec_gc_ctx_list_lock);
> >
> > diff --git a/drivers/staging/lustre/lustre/ptlrpc/service.c
> b/drivers/staging/lustre/lustre/ptlrpc/service.c
> > index 8e61421..90bf1d5 100644
> > --- a/drivers/staging/lustre/lustre/ptlrpc/service.c
> > +++ b/drivers/staging/lustre/lustre/ptlrpc/service.c
> > @@ -1463,9 +1463,7 @@ static int ptlrpc_at_check_timed(struct
> ptlrpc_service_part *svcpt)
> >
> >       /* we took additional refcount so entries can't be deleted from
> list, no
> >        * locking is needed */
> > -     while (!list_empty(&work_list)) {
> > -             rq = list_entry(work_list.next, struct ptlrpc_request,
> > -                                 rq_timed_list);
> > +     list_for_each_entry(rq, &work_list, rq_timed_list) {
> >               list_del_init(&rq->rq_timed_list);
> >
> >               if (ptlrpc_at_send_early_reply(rq) == 0)
> > @@ -2572,9 +2570,7 @@ static void ptlrpc_svcpt_stop_threads(struct
> ptlrpc_service_part *svcpt)
> >
> >       wake_up_all(&svcpt->scp_waitq);
> >
> > -     while (!list_empty(&svcpt->scp_threads)) {
> > -             thread = list_entry(svcpt->scp_threads.next,
> > -                                     struct ptlrpc_thread, t_link);
> > +     list_for_each_entry(thread, &svcpt->scp_threads, t_link) {
> >               if (thread_is_stopped(thread)) {
> >                       list_del(&thread->t_link);
> >                       list_add(&thread->t_link, &zombie);
> > @@ -2592,9 +2588,7 @@ static void ptlrpc_svcpt_stop_threads(struct
> ptlrpc_service_part *svcpt)
> >
> >       spin_unlock(&svcpt->scp_lock);
> >
> > -     while (!list_empty(&zombie)) {
> > -             thread = list_entry(zombie.next,
> > -                                     struct ptlrpc_thread, t_link);
> > +     list_for_each_entry(thread, &zombie, t_link) {
> >               list_del(&thread->t_link);
> >               OBD_FREE_PTR(thread);
> >       }
> > @@ -2929,9 +2923,7 @@ ptlrpc_service_purge_all(struct ptlrpc_service
> *svc)
> >                       break;
> >
> >               spin_lock(&svcpt->scp_rep_lock);
> > -             while (!list_empty(&svcpt->scp_rep_active)) {
> > -                     rs = list_entry(svcpt->scp_rep_active.next,
> > -                                         struct ptlrpc_reply_state,
> rs_list);
> > +             list_for_each_entry(rs, &svcpt->scp_rep_active, rs_list) {
> >                       spin_lock(&rs->rs_lock);
> >                       ptlrpc_schedule_difficult_reply(rs);
> >                       spin_unlock(&rs->rs_lock);
> > @@ -2941,10 +2933,7 @@ ptlrpc_service_purge_all(struct ptlrpc_service
> *svc)
> >               /* purge the request queue.  NB No new replies (rqbds
> >                * all unlinked) and no service threads, so I'm the only
> >                * thread noodling the request queue now */
> > -             while (!list_empty(&svcpt->scp_req_incoming)) {
> > -                     req = list_entry(svcpt->scp_req_incoming.next,
> > -                                          struct ptlrpc_request,
> rq_list);
> > -
> > +             list_for_each_entry(req, &svcpt->scp_req_incoming,
> rq_list) {
> >                       list_del(&req->rq_list);
> >                       svcpt->scp_nreqs_incoming--;
> >                       ptlrpc_server_finish_request(svcpt, req);
> > @@ -2965,18 +2954,12 @@ ptlrpc_service_purge_all(struct ptlrpc_service
> *svc)
> >               /* Now free all the request buffers since nothing
> >                * references them any more... */
> >
> > -             while (!list_empty(&svcpt->scp_rqbd_idle)) {
> > -                     rqbd = list_entry(svcpt->scp_rqbd_idle.next,
> > -                                           struct
> ptlrpc_request_buffer_desc,
> > -                                           rqbd_list);
> > +             list_for_each_entry(rqbd, &svcpt->scp_rqbd_idle,
> rqbd_list) {
> >                       ptlrpc_free_rqbd(rqbd);
> >               }
> >               ptlrpc_wait_replies(svcpt);
> >
> > -             while (!list_empty(&svcpt->scp_rep_idle)) {
> > -                     rs = list_entry(svcpt->scp_rep_idle.next,
> > -                                         struct ptlrpc_reply_state,
> > -                                         rs_list);
> > +             list_for_each_entry(rs, &svcpt->scp_rep_idle, rs_list) {
> >                       list_del(&rs->rs_list);
> >                       OBD_FREE_LARGE(rs, svc->srv_max_reply_size);
> >               }
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/
> msgid/outreachy-kernel/1426263453-26331-4-git-send-
> email-somyaanand214%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>

--20cf307c9deaaeba6c05112e3a76
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote">On Fri, Mar 13, 2015 at=
 10:05 PM Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr">julia.la=
wall@lip6.fr</a>&gt; wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Fri, 13 Ma=
r 2015, Somya Anand wrote:<br>
<br>
&gt; Code using doubly linked list is iterated generally=C2=A0 using list_e=
mpty and<br>
&gt; list_entry functions, but it can be better written using list_for_each=
_entry<br>
&gt; macro.<br>
&gt;<br>
&gt; This patch replaces the while loop containing list_empty and list_entr=
y with<br>
&gt; list_for_each_entry, making sure to keep the logic of code intact. Thi=
s<br>
&gt; transformation is done by using the following coccinelle script.<br>
&gt;<br>
&gt; @@<br>
&gt; expression E1;<br>
&gt; identifier I1, I2;<br>
&gt; type T;<br>
&gt; iterator name list_for_each_entry;<br>
&gt; @@<br>
&gt;<br>
&gt; - while (list_empty(&amp;E1) =3D=3D 0) {<br>
&gt; + list_for_each_entry (I1, &amp;E1, I2) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0...when !=3D T *I1;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0I1 =3D list_entry(E1.next, T, I2);<br>
&gt;=C2=A0 =C2=A0 =C2=A0...<br>
&gt; }<br>
&gt;<br>
&gt; Signed-off-by: Somya Anand &lt;<a href=3D"mailto:somyaanand214@gmail.c=
om" target=3D"_blank">somyaanand214@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 .../staging/lustre/lnet/klnds/<u></u>o2iblnd/o2iblnd.c=C2=A0 =C2=
=A0 |=C2=A0 4 +--<br>
&gt;=C2=A0 .../staging/lustre/lnet/klnds/<u></u>o2iblnd/o2iblnd_cb.c | 15 +=
++--------<br>
&gt;=C2=A0 .../staging/lustre/lnet/klnds/<u></u>socklnd/socklnd.c=C2=A0 =C2=
=A0 |=C2=A0 8 ++----<br>
&gt;=C2=A0 .../staging/lustre/lnet/klnds/<u></u>socklnd/socklnd_cb.c |=C2=
=A0 9 ++-----<br>
&gt;=C2=A0 .../lustre/lnet/klnds/socklnd/<u></u>socklnd_proto.c=C2=A0 =C2=
=A0 =C2=A0 |=C2=A0 3 +--<br>
&gt;=C2=A0 drivers/staging/lustre/lnet/<u></u>lnet/api-ni.c=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 | 14 +++-------<br>
&gt;=C2=A0 drivers/staging/lustre/lnet/<u></u>lnet/config.c=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 |=C2=A0 4 +--<br>
&gt;=C2=A0 drivers/staging/lustre/lnet/<u></u>lnet/lib-move.c=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 7 ++---<br>
&gt;=C2=A0 drivers/staging/lustre/lnet/<u></u>lnet/lib-msg.c=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0|=C2=A0 4 +--<br>
&gt;=C2=A0 drivers/staging/lustre/lnet/<u></u>lnet/lib-ptl.c=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0|=C2=A0 4 +--<br>
&gt;=C2=A0 drivers/staging/lustre/lnet/<u></u>lnet/peer.c=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 4 +--<br>
&gt;=C2=A0 drivers/staging/lustre/lnet/<u></u>lnet/router.c=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 |=C2=A0 8 ++----<br>
&gt;=C2=A0 drivers/staging/lustre/lnet/<u></u>selftest/conrpc.c=C2=A0 =C2=
=A0 =C2=A0 |=C2=A0 3 +--<br>
&gt;=C2=A0 drivers/staging/lustre/lnet/<u></u>selftest/console.c=C2=A0 =C2=
=A0 =C2=A0| 25 +++++------------<br>
&gt;=C2=A0 drivers/staging/lustre/lnet/<u></u>selftest/framework.c=C2=A0 =
=C2=A0| 20 ++++----------<br>
&gt;=C2=A0 drivers/staging/lustre/lnet/<u></u>selftest/rpc.c=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0|=C2=A0 5 +---<br>
&gt;=C2=A0 drivers/staging/lustre/lustre/<u></u>libcfs/workitem.c=C2=A0 =C2=
=A0 |=C2=A0 4 +--<br>
&gt;=C2=A0 drivers/staging/lustre/lustre/<u></u>llite/llite_rmtacl.c |=C2=
=A0 8 ++----<br>
&gt;=C2=A0 .../lustre/lustre/obdclass/<u></u>lprocfs_status.c=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 8 ++----<br>
&gt;=C2=A0 .../staging/lustre/lustre/<u></u>obdclass/lustre_peer.c=C2=A0 =
=C2=A0|=C2=A0 4 +--<br>
&gt;=C2=A0 drivers/staging/lustre/lustre/<u></u>osc/osc_cache.c=C2=A0 =C2=
=A0 =C2=A0 | 11 +++-----<br>
&gt;=C2=A0 drivers/staging/lustre/lustre/<u></u>osc/osc_page.c=C2=A0 =C2=A0=
 =C2=A0 =C2=A0|=C2=A0 4 +--<br>
&gt;=C2=A0 drivers/staging/lustre/lustre/<u></u>ptlrpc/pinger.c=C2=A0 =C2=
=A0 =C2=A0 |=C2=A0 5 +---<br>
&gt;=C2=A0 drivers/staging/lustre/lustre/<u></u>ptlrpc/sec_gc.c=C2=A0 =C2=
=A0 =C2=A0 |=C2=A0 4 +--<br>
&gt;=C2=A0 drivers/staging/lustre/lustre/<u></u>ptlrpc/service.c=C2=A0 =C2=
=A0 =C2=A0| 31 +++++-----------------<br>
&gt;=C2=A0 25 files changed, 54 insertions(+), 162 deletions(-)<br>
&gt;<br>
&gt; diff --git a/drivers/staging/lustre/lnet/<u></u>klnds/o2iblnd/o2iblnd.=
c b/drivers/staging/lustre/lnet/<u></u>klnds/o2iblnd/o2iblnd.c<br>
&gt; index 109f44c..5988048 100644<br>
&gt; --- a/drivers/staging/lustre/lnet/<u></u>klnds/o2iblnd/o2iblnd.c<br>
&gt; +++ b/drivers/staging/lustre/lnet/<u></u>klnds/o2iblnd/o2iblnd.c<br>
&gt; @@ -1896,9 +1896,7 @@ kiblnd_destroy_pmr_pool(kib_<u></u>pool_t *pool)=
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0LASSERT(pool-&gt;po_allocated =3D=3D 0);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;pool-&gt;po_free_<u></u>l=
ist)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pmr =3D list_entry(po=
ol-&gt;po_free_list.<u></u>next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kib_phys_mr_t, pmr_list);=
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(pmr, &amp;pool-&gt;po_free_li=
st, pmr_list) {<br>
<br>
I think that you would need list_for_each_entry_safe, because you are<br>
deleting an element.<br></blockquote><div>=C2=A0Yeah, I will do that.=C2=A0=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">
I would suggest not doing so many cases, and explaining more carefully in<b=
r>
the commit message why the transformation is correct.=C2=A0 &quot;making su=
re to<br>
keep the logic of code intact&quot; doesn&#39;t help the reader understand =
what you<br>
have done.<br></blockquote><div>=C2=A0Okay, I will try to write a better co=
mmit log as you suggest.</div><div><br></div><div>Thanks=C2=A0</div><div><b=
r></div><div>--</div><div>Somya=C2=A0</div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
julia<br>
<br>
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LASSERT(pmr-&gt;=
pmr_mr =3D=3D NULL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(&amp;pm=
r-&gt;pmr_list);<br>
&gt; diff --git a/drivers/staging/lustre/lnet/<u></u>klnds/o2iblnd/o2iblnd_=
cb.c b/drivers/staging/lustre/lnet/<u></u>klnds/o2iblnd/o2iblnd_cb.c<br>
&gt; index c762dbe..ae00e7a 100644<br>
&gt; --- a/drivers/staging/lustre/lnet/<u></u>klnds/o2iblnd/o2iblnd_cb.c<br=
>
&gt; +++ b/drivers/staging/lustre/lnet/<u></u>klnds/o2iblnd/o2iblnd_cb.c<br=
>
&gt; @@ -1941,9 +1941,7 @@ kiblnd_handle_early_rxs(kib_<u></u>conn_t *conn)=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0LASSERT(conn-&gt;ibc_state &gt;=3D IBLND_CON=
N_ESTABLISHED);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0write_lock_irqsave(&amp;kiblnd_<u></u>data.k=
ib_global_lock, flags);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;conn-&gt;ibc_early_<u></u=
>rxs)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rx =3D list_entry(con=
n-&gt;ibc_early_<u></u>rxs.next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kib_rx_t, rx_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(rx, &amp;conn-&gt;ibc_early_r=
xs, rx_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(&amp;rx=
-&gt;rx_list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0write_unlock_irq=
restore(&amp;<u></u>kiblnd_data.kib_global_lock, flags);<br>
&gt;<br>
&gt; @@ -2150,8 +2148,7 @@ kiblnd_connreq_done(kib_conn_t *conn, int status=
)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Schedule blocked txs */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_lock(&amp;conn-&gt;ibc_lock);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;txs)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tx =3D list_entry(txs=
.next, kib_tx_t, tx_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(tx, &amp;txs, tx_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(&amp;tx=
-&gt;tx_list);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kiblnd_queue_tx_=
locked(tx, conn);<br>
&gt; @@ -3080,9 +3077,7 @@ kiblnd_check_conns(int idx)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Handle timeout by closing the whole<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * connection. We can only be sure RDMA acti=
vity<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * has ceased once the QP has been modified.=
 */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;closes)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0conn =3D list_entry(c=
loses.next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kib_conn_t, ibc_con=
nd_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(conn, &amp;closes, ibc_connd_=
list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(&amp;co=
nn-&gt;ibc_connd_<u></u>list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kiblnd_close_con=
n(conn, -ETIMEDOUT);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kiblnd_conn_decr=
ef(conn);<br>
&gt; @@ -3091,9 +3086,7 @@ kiblnd_check_conns(int idx)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* In case we have enough credits to return =
via a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * NOOP, but there were no non-blocking tx d=
escs<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * free to do it last time... */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;checksends)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0conn =3D list_entry(c=
hecksends.next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kib_conn_t, ibc_con=
nd_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(conn, &amp;checksends, ibc_co=
nnd_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(&amp;co=
nn-&gt;ibc_connd_<u></u>list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kiblnd_check_sen=
ds(conn);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0kiblnd_conn_decr=
ef(conn);<br>
&gt; diff --git a/drivers/staging/lustre/lnet/<u></u>klnds/socklnd/socklnd.=
c b/drivers/staging/lustre/lnet/<u></u>klnds/socklnd/socklnd.c<br>
&gt; index f815bb8..5adf6c4 100644<br>
&gt; --- a/drivers/staging/lustre/lnet/<u></u>klnds/socklnd/socklnd.c<br>
&gt; +++ b/drivers/staging/lustre/lnet/<u></u>klnds/socklnd/socklnd.c<br>
&gt; @@ -997,7 +997,6 @@ ksocknal_connecting(ksock_<u></u>peer_t *peer, __u=
32 ipaddr)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0ksock_route_t=C2=A0 =C2=A0*route;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each_entry(route, &amp;peer-&gt;ksn=
p_routes, ksnr_list) {<br>
&gt; -<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (route-&gt;ks=
nr_ipaddr =3D=3D ipaddr)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return route-&gt;ksnr_connecting;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -1531,9 +1530,7 @@ ksocknal_finalize_zcreq(ksock_<u></u>conn_t *con=
n)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_unlock(&amp;peer-&gt;ksnp_lock);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;zlist)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tx =3D list_entry(zli=
st.next, ksock_tx_t, tx_zc_list);<br>
&gt; -<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(tx, &amp;zlist, tx_zc_list) {=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(&amp;tx=
-&gt;tx_zc_list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ksocknal_tx_decr=
ef(tx);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -2234,8 +2231,7 @@ ksocknal_free_buffers(void)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del_init(&a=
mp;ksocknal_data.<u></u>ksnd_idle_noop_txs);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0spin_unlock(&amp=
;ksocknal_data.<u></u>ksnd_tx_lock);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while (!list_empty(&a=
mp;zlist)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0tx =3D list_entry(zlist.next, ksock_tx_t, tx_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each_entry(t=
x, &amp;zlist, tx_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0list_del(&amp;tx-&gt;tx_list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0LIBCFS_FREE(tx, tx-&gt;tx_desc_size);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; diff --git a/drivers/staging/lustre/lnet/<u></u>klnds/socklnd/socklnd_=
cb.c b/drivers/staging/lustre/lnet/<u></u>klnds/socklnd/socklnd_cb.c<br>
&gt; index 92760fe..931237b 100644<br>
&gt; --- a/drivers/staging/lustre/lnet/<u></u>klnds/socklnd/socklnd_cb.c<br=
>
&gt; +++ b/drivers/staging/lustre/lnet/<u></u>klnds/socklnd/socklnd_cb.c<br=
>
&gt; @@ -2318,10 +2318,7 @@ ksocknal_flush_stale_txs(<u></u>ksock_peer_t *p=
eer)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0write_lock_bh(&amp;ksocknal_data.<u></u>ksnd=
_global_lock);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty (&amp;peer-&gt;ksnp_tx_queue))=
 {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tx =3D list_entry (pe=
er-&gt;ksnp_tx_queue.next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ksock_tx_t, tx_list);<br>
&gt; -<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(tx, &amp;peer-&gt;ksnp_tx_que=
ue, tx_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!cfs_time_af=
tereq(cfs_time_<u></u>current(),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tx-&gt;tx_dea=
dline))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0break;<br>
&gt; @@ -2556,9 +2553,7 @@ ksocknal_reaper (void *arg)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* reschedule al=
l the connections that stalled with ENOMEM... */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0nenomem_conns =
=3D 0;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while (!list_empty (&=
amp;enomem_conns)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0conn =3D list_entry (enomem_conns.next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ksock_conn_t, ksnc_tx_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each_entry(c=
onn, &amp;enomem_conns, ksnc_tx_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0list_del (&amp;conn-&gt;ksnc_tx_list);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0sched =3D conn-&gt;ksnc_scheduler;<br>
&gt; diff --git a/drivers/staging/lustre/lnet/<u></u>klnds/socklnd/socklnd_=
proto.c b/drivers/staging/lustre/lnet/<u></u>klnds/socklnd/socklnd_proto.c<=
br>
&gt; index 8596581..711f0c9 100644<br>
&gt; --- a/drivers/staging/lustre/lnet/<u></u>klnds/socklnd/socklnd_proto.c=
<br>
&gt; +++ b/drivers/staging/lustre/lnet/<u></u>klnds/socklnd/socklnd_proto.c=
<br>
&gt; @@ -440,8 +440,7 @@ ksocknal_handle_zcack(ksock_<u></u>conn_t *conn, _=
_u64 cookie1, __u64 cookie2)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_unlock(&amp;peer-&gt;ksnp_lock);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;zlist)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tx =3D list_entry(zli=
st.next, ksock_tx_t, tx_zc_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(tx, &amp;zlist, tx_zc_list) {=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(&amp;tx=
-&gt;tx_zc_list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ksocknal_tx_decr=
ef(tx);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; diff --git a/drivers/staging/lustre/lnet/<u></u>lnet/api-ni.c b/driver=
s/staging/lustre/lnet/<u></u>lnet/api-ni.c<br>
&gt; index faceb95..7543711 100644<br>
&gt; --- a/drivers/staging/lustre/lnet/<u></u>lnet/api-ni.c<br>
&gt; +++ b/drivers/staging/lustre/lnet/<u></u>lnet/api-ni.c<br>
&gt; @@ -923,9 +923,7 @@ lnet_shutdown_lndnis(void)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0the_lnet.ln_shutdown =3D 1;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0/* flag shutdown */<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Unlink NIs from the global table */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;the_lnet.ln_nis)<u></u>) =
{<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ni =3D list_entry(the=
_lnet.ln_nis.<u></u>next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lnet_ni_t, ni_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(ni, &amp;the_lnet.ln_nis, ni_=
list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* move it to zo=
mbie list and nobody can find it anymore */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_move(&amp;n=
i-&gt;ni_list, &amp;the_lnet.ln_nis_zombie);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lnet_ni_decref_l=
ocked(ni, 0);=C2=A0 =C2=A0/* drop ln_nis&#39; ref */<br>
&gt; @@ -963,12 +961,10 @@ lnet_shutdown_lndnis(void)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Now wait for the NI&#39;s I just nuked to=
 show up on ln_zombie_nis<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * and shut them down in guaranteed thread c=
ontext */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0i =3D 2;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;the_lnet.ln_nis_<u></u>zo=
mbie)) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(ni, &amp;the_lnet.ln_nis_zomb=
ie, ni_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int=C2=A0 =C2=A0=
 =C2=A0*ref;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int=C2=A0 =C2=A0=
 =C2=A0j;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ni =3D list_entry(the=
_lnet.ln_nis_<u></u>zombie.next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lnet_ni_t, ni_list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del_init(&a=
mp;ni-&gt;ni_list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cfs_percpt_for_e=
ach(ref, j, ni-&gt;ni_refs) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (*ref =3D=3D 0)<br>
&gt; @@ -1044,8 +1040,7 @@ lnet_startup_lndnis(void)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (rc !=3D 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0goto failed;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;nilist)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ni =3D list_entry(nil=
ist.next, lnet_ni_t, ni_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(ni, &amp;nilist, ni_list) {<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lnd_type =3D LNE=
T_NETTYP(LNET_NIDNET(ni-&gt;<u></u>ni_nid));<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LASSERT(libcfs_i=
sknown_lnd(<u></u>lnd_type));<br>
&gt; @@ -1155,8 +1150,7 @@ lnet_startup_lndnis(void)<br>
&gt;=C2=A0 =C2=A0failed:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0lnet_shutdown_lndnis();<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;nilist)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ni =3D list_entry(nil=
ist.next, lnet_ni_t, ni_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(ni, &amp;nilist, ni_list) {<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(&amp;ni=
-&gt;ni_list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lnet_ni_free(ni)=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; diff --git a/drivers/staging/lustre/lnet/<u></u>lnet/config.c b/driver=
s/staging/lustre/lnet/<u></u>lnet/config.c<br>
&gt; index af171e2..0986b36 100644<br>
&gt; --- a/drivers/staging/lustre/lnet/<u></u>lnet/config.c<br>
&gt; +++ b/drivers/staging/lustre/lnet/<u></u>lnet/config.c<br>
&gt; @@ -1011,9 +1011,7 @@ lnet_match_networks(char **networksp, char *ip2n=
ets, __u32 *ipaddrs, int nip)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0len =3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D 0;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;raw_entries)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tb =3D list_entry(raw=
_entries.next, lnet_text_buf_t,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ltb_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(tb, &amp;raw_entries, ltb_lis=
t) {<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0strncpy(source, =
tb-&gt;ltb_text, sizeof(source)-1);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0source[sizeof(so=
urce)-1] =3D 0;<br>
&gt; diff --git a/drivers/staging/lustre/lnet/<u></u>lnet/lib-move.c b/driv=
ers/staging/lustre/lnet/<u></u>lnet/lib-move.c<br>
&gt; index 0f53c76..b1baf8b 100644<br>
&gt; --- a/drivers/staging/lustre/lnet/<u></u>lnet/lib-move.c<br>
&gt; +++ b/drivers/staging/lustre/lnet/<u></u>lnet/lib-move.c<br>
&gt; @@ -90,9 +90,7 @@ lnet_fail_nid(lnet_nid_t nid, unsigned int threshold=
)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0lnet_net_unlock(0);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;cull)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tp =3D list_entry(cul=
l.next, lnet_test_peer_t, tp_list);<br>
&gt; -<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(tp, &amp;cull, tp_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(&amp;tp=
-&gt;tp_list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LIBCFS_FREE(tp, =
sizeof(*tp));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -147,8 +145,7 @@ fail_peer(lnet_nid_t nid, int outgoing)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0lnet_net_unlock(0);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;cull)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tp =3D list_entry(cul=
l.next, lnet_test_peer_t, tp_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(tp, &amp;cull, tp_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(&amp;tp=
-&gt;tp_list);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LIBCFS_FREE(tp, =
sizeof(*tp));<br>
&gt; diff --git a/drivers/staging/lustre/lnet/<u></u>lnet/lib-msg.c b/drive=
rs/staging/lustre/lnet/<u></u>lnet/lib-msg.c<br>
&gt; index a46ccbf..14417d9 100644<br>
&gt; --- a/drivers/staging/lustre/lnet/<u></u>lnet/lib-msg.c<br>
&gt; +++ b/drivers/staging/lustre/lnet/<u></u>lnet/lib-msg.c<br>
&gt; @@ -510,9 +510,7 @@ lnet_finalize(lnet_ni_t *ni, lnet_msg_t *msg, int =
status)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0container-&gt;msc_finalizers[my_<u></u>slot]=
 =3D current;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;container-&gt;msc_<u></u>=
finalizing)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0msg =3D list_entry(co=
ntainer-&gt;msc_<u></u>finalizing.next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lnet_msg_t, msg_list);<br=
>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(msg, &amp;container-&gt;msc_f=
inalizing, msg_list) {<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(&amp;ms=
g-&gt;msg_list);<br>
&gt;<br>
&gt; diff --git a/drivers/staging/lustre/lnet/<u></u>lnet/lib-ptl.c b/drive=
rs/staging/lustre/lnet/<u></u>lnet/lib-ptl.c<br>
&gt; index 3ba0da9..6b0c63f 100644<br>
&gt; --- a/drivers/staging/lustre/lnet/<u></u>lnet/lib-ptl.c<br>
&gt; +++ b/drivers/staging/lustre/lnet/<u></u>lnet/lib-ptl.c<br>
&gt; @@ -733,9 +733,7 @@ lnet_ptl_cleanup(struct lnet_portal *ptl)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mhash =3D mtable=
-&gt;mt_mhash;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* cleanup ME */=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for (j =3D 0; j =
&lt; LNET_MT_HASH_SIZE + 1; j++) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0while (!list_empty(&amp;mhash[j])) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0me =3D list_entry(mhash[j].next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lnet_me_t, me_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0list_for_each_entry(me, &amp;mhash[j], me_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CERROR(&quot;Active ME %p on exit\=
n&quot;, me);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(&amp;me-&gt;me_list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lnet_me_free(me);<br>
&gt; diff --git a/drivers/staging/lustre/lnet/<u></u>lnet/peer.c b/drivers/=
staging/lustre/lnet/<u></u>lnet/peer.c<br>
&gt; index c93ae85..76cbc12 100644<br>
&gt; --- a/drivers/staging/lustre/lnet/<u></u>lnet/peer.c<br>
&gt; +++ b/drivers/staging/lustre/lnet/<u></u>lnet/peer.c<br>
&gt; @@ -153,9 +153,7 @@ lnet_peer_tables_cleanup(void)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lnet_net_unlock(=
i);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while (!list_empty(&a=
mp;deathrow)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0lp =3D list_entry(deathrow.next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0lnet_peer_t, lp_hashlist);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each_entry(l=
p, &amp;deathrow, lp_hashlist) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0list_del(&amp;lp-&gt;lp_hashlist);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0LIBCFS_FREE(lp, sizeof(*lp));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; diff --git a/drivers/staging/lustre/lnet/<u></u>lnet/router.c b/driver=
s/staging/lustre/lnet/<u></u>lnet/router.c<br>
&gt; index c0a6aeb..0f4ce0b 100644<br>
&gt; --- a/drivers/staging/lustre/lnet/<u></u>lnet/router.c<br>
&gt; +++ b/drivers/staging/lustre/lnet/<u></u>lnet/router.c<br>
&gt; @@ -1145,9 +1145,7 @@ lnet_prune_rc_data(int wait_unlink)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lnet_net_unlock(=
LNET_LOCK_EX);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while (!list_empty(&a=
mp;head)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0rcd =3D list_entry(head.next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 lnet_rc_data_t, rcd_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each_entry(r=
cd, &amp;head, rcd_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0list_del_init(&amp;rcd-&gt;rcd_list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0lnet_destroy_rc_data(rcd);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -1294,11 +1292,9 @@ lnet_rtrpool_free_bufs(lnet_<u></u>rtrbufpool_t=
 *rbp)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0LASSERT(list_empty(&amp;rbp-&gt;rbp_<u></u>m=
sgs));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0LASSERT(rbp-&gt;rbp_credits =3D=3D rbp-&gt;r=
bp_nbuffers);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;rbp-&gt;rbp_bufs)) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(rb, &amp;rbp-&gt;rbp_bufs, rb=
_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LASSERT(rbp-&gt;=
rbp_credits &gt; 0);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rb =3D list_entry(rbp=
-&gt;rbp_bufs.next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lnet_rtrbuf_t, rb_list);<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(&amp;rb=
-&gt;rb_list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lnet_destroy_rtr=
buf(rb, npages);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0nbuffers++;<br>
&gt; diff --git a/drivers/staging/lustre/lnet/<u></u>selftest/conrpc.c b/dr=
ivers/staging/lustre/lnet/<u></u>selftest/conrpc.c<br>
&gt; index 77f02b7..27473c8 100644<br>
&gt; --- a/drivers/staging/lustre/lnet/<u></u>selftest/conrpc.c<br>
&gt; +++ b/drivers/staging/lustre/lnet/<u></u>selftest/conrpc.c<br>
&gt; @@ -1364,8 +1364,7 @@ lstcon_rpc_cleanup_wait(void)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_unlock(&amp;console_session.<u></u>ses_=
rpc_lock);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;zlist)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0crpc =3D list_entry(z=
list.next, lstcon_rpc_t, crp_link);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(crpc, &amp;zlist, crp_link) {=
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(&amp;cr=
pc-&gt;crp_link);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LIBCFS_FREE(crpc=
, sizeof(lstcon_rpc_t));<br>
&gt; diff --git a/drivers/staging/lustre/lnet/<u></u>selftest/console.c b/d=
rivers/staging/lustre/lnet/<u></u>selftest/console.c<br>
&gt; index 2b5f53c..da7c2d2 100644<br>
&gt; --- a/drivers/staging/lustre/lnet/<u></u>selftest/console.c<br>
&gt; +++ b/drivers/staging/lustre/lnet/<u></u>selftest/console.c<br>
&gt; @@ -334,9 +334,7 @@ lstcon_group_move(lstcon_<u></u>group_t *old, lstc=
on_group_t *new)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0lstcon_ndlink_t *ndl;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;old-&gt;grp_ndl_<u></u>li=
st)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ndl =3D list_entry(ol=
d-&gt;grp_ndl_list.<u></u>next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lstcon_ndlink_t, ndl_link=
);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(ndl, &amp;old-&gt;grp_ndl_lis=
t, ndl_link) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lstcon_group_ndl=
ink_move(old, new, ndl);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 }<br>
&gt; @@ -1090,9 +1088,7 @@ lstcon_batch_destroy(lstcon_<u></u>batch_t *bat)=
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(&amp;bat-&gt;bat_link);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;bat-&gt;bat_test_<u></u>l=
ist)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0test =3D list_entry(b=
at-&gt;bat_test_list.<u></u>next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lstcon_test_t, tes_=
link);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(test, &amp;bat-&gt;bat_test_l=
ist, tes_link) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LASSERT(list_emp=
ty(&amp;test-&gt;tes_<u></u>trans_list));<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(&amp;te=
st-&gt;tes_link);<br>
&gt; @@ -1106,17 +1102,13 @@ lstcon_batch_destroy(lstcon_<u></u>batch_t *ba=
t)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0LASSERT(list_empty(&amp;bat-&gt;bat_<u></u>t=
rans_list));<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;bat-&gt;bat_cli_<u></u>li=
st)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ndl =3D list_entry(ba=
t-&gt;bat_cli_list.<u></u>next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lstcon_ndlink_t, ndl_link=
);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(ndl, &amp;bat-&gt;bat_cli_lis=
t, ndl_link) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del_init(&a=
mp;ndl-&gt;ndl_link);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lstcon_ndlink_re=
lease(ndl);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;bat-&gt;bat_srv_<u></u>li=
st)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ndl =3D list_entry(ba=
t-&gt;bat_srv_list.<u></u>next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lstcon_ndlink_t, ndl_link=
);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(ndl, &amp;bat-&gt;bat_srv_lis=
t, ndl_link) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del_init(&a=
mp;ndl-&gt;ndl_link);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lstcon_ndlink_re=
lease(ndl);<br>
&gt; @@ -1835,17 +1827,12 @@ lstcon_session_end(void)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0console_session.ses_feats_<u></u>updated =3D=
 0;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* destroy all batches */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;console_session.<u></u>se=
s_bat_list)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bat =3D list_entry(co=
nsole_session.<u></u>ses_bat_list.next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lstcon_batch_t, bat_link)=
;<br>
&gt; -<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(bat, &amp;console_session.ses=
_bat_list, bat_link) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lstcon_batch_des=
troy(bat);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* destroy all groups */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;console_session.<u></u>se=
s_grp_list)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0grp =3D list_entry(co=
nsole_session.<u></u>ses_grp_list.next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lstcon_group_t, grp_link)=
;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(grp, &amp;console_session.ses=
_grp_list, grp_link) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LASSERT(grp-&gt;=
grp_ref =3D=3D 1);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lstcon_group_put=
(grp);<br>
&gt; diff --git a/drivers/staging/lustre/lnet/<u></u>selftest/framework.c b=
/drivers/staging/lustre/lnet/<u></u>selftest/framework.c<br>
&gt; index a93a90d..82db462 100644<br>
&gt; --- a/drivers/staging/lustre/lnet/<u></u>selftest/framework.c<br>
&gt; +++ b/drivers/staging/lustre/lnet/<u></u>selftest/framework.c<br>
&gt; @@ -621,16 +621,12 @@ sfw_destroy_test_instance(sfw_<u></u>test_instan=
ce_t *tsi)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0LASSERT(list_empty(&amp;tsi-&gt;tsi_<u></u>a=
ctive_rpcs));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0LASSERT(!sfw_test_active(tsi))<u></u>;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;tsi-&gt;tsi_units)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tsu =3D list_entry(ts=
i-&gt;tsi_units.<u></u>next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sfw_test_unit_t, tsu_list=
);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(tsu, &amp;tsi-&gt;tsi_units, =
tsu_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(&amp;ts=
u-&gt;tsu_list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LIBCFS_FREE(tsu,=
 sizeof(*tsu));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;tsi-&gt;tsi_free_<u></u>r=
pcs)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rpc =3D list_entry(ts=
i-&gt;tsi_free_rpcs.<u></u>next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 srpc_client_rpc_t, crpc_l=
ist);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(rpc, &amp;tsi-&gt;tsi_free_rp=
cs, crpc_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(&amp;rp=
c-&gt;crpc_list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LIBCFS_FREE(rpc,=
 srpc_client_rpc_size(rpc));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -649,9 +645,7 @@ sfw_destroy_batch(sfw_batch_t *tsb)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0LASSERT(!sfw_batch_active(tsb)<u></u>);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0LASSERT(list_empty(&amp;tsb-&gt;bat_<u></u>l=
ist));<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;tsb-&gt;bat_tests)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tsi =3D list_entry(ts=
b-&gt;bat_tests.<u></u>next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sfw_test_instance_t, tsi_=
list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(tsi, &amp;tsb-&gt;bat_tests, =
tsi_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del_init(&a=
mp;tsi-&gt;tsi_list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sfw_destroy_test=
_instance(tsi)<u></u>;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -668,9 +662,7 @@ sfw_destroy_session(sfw_<u></u>session_t *sn)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0LASSERT(list_empty(&amp;sn-&gt;sn_<u></u>lis=
t));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0LASSERT(sn !=3D sfw_data.fw_session);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;sn-&gt;sn_batches)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0batch =3D list_entry(=
sn-&gt;sn_batches.<u></u>next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sfw_batch_t, bat_l=
ist);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(batch, &amp;sn-&gt;sn_batches=
, bat_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del_init(&a=
mp;batch-&gt;bat_<u></u>list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sfw_destroy_batc=
h(batch);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -1790,9 +1782,7 @@ sfw_shutdown(void)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0srpc_wait_servic=
e_shutdown(sv)<u></u>;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;sfw_data.fw_<u></u>tests)=
) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tsc =3D list_entry(sf=
w_data.fw_tests.<u></u>next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sfw_test_case_t, tsc_list=
);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(tsc, &amp;sfw_data.fw_tests, =
tsc_list) {<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0srpc_wait_servic=
e_shutdown(<u></u>tsc-&gt;tsc_srv_service);<br>
&gt;<br>
&gt; diff --git a/drivers/staging/lustre/lnet/<u></u>selftest/rpc.c b/drive=
rs/staging/lustre/lnet/<u></u>selftest/rpc.c<br>
&gt; index 080788a..49a9991 100644<br>
&gt; --- a/drivers/staging/lustre/lnet/<u></u>selftest/rpc.c<br>
&gt; +++ b/drivers/staging/lustre/lnet/<u></u>selftest/rpc.c<br>
&gt; @@ -222,10 +222,7 @@ srpc_service_fini(struct srpc_service *svc)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LASSERT(list_emp=
ty(&amp;scd-&gt;scd_<u></u>rpc_active));<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while (!list_empty(&a=
mp;scd-&gt;scd_rpc_<u></u>free)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0rpc =3D list_entry(scd-&gt;scd_rpc_free.<u></u>next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 struct srpc_server_rpc,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 srpc_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each_entry(r=
pc, &amp;scd-&gt;scd_rpc_free, srpc_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0list_del(&amp;rpc-&gt;srpc_list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0LIBCFS_FREE(rpc, sizeof(*rpc));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; diff --git a/drivers/staging/lustre/<u></u>lustre/libcfs/workitem.c b/=
drivers/staging/lustre/<u></u>lustre/libcfs/workitem.c<br>
&gt; index c4afaea..98953c3 100644<br>
&gt; --- a/drivers/staging/lustre/<u></u>lustre/libcfs/workitem.c<br>
&gt; +++ b/drivers/staging/lustre/<u></u>lustre/libcfs/workitem.c<br>
&gt; @@ -467,9 +467,7 @@ cfs_wi_shutdown (void)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0spin_unlock(&amp=
;cfs_wi_data.wi_<u></u>glock);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;cfs_wi_data.wi_<u></u>sch=
eds)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sched =3D list_entry(=
cfs_wi_data.wi_<u></u>scheds.next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct cfs_wi_sche=
d, ws_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(sched, &amp;cfs_wi_data.wi_sc=
heds, ws_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(&amp;sc=
hed-&gt;ws_list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LIBCFS_FREE(sche=
d, sizeof(*sched));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; diff --git a/drivers/staging/lustre/<u></u>lustre/llite/llite_rmtacl.c=
 b/drivers/staging/lustre/<u></u>lustre/llite/llite_rmtacl.c<br>
&gt; index f4da156..68cb421 100644<br>
&gt; --- a/drivers/staging/lustre/<u></u>lustre/llite/llite_rmtacl.c<br>
&gt; +++ b/drivers/staging/lustre/<u></u>lustre/llite/llite_rmtacl.c<br>
&gt; @@ -170,9 +170,7 @@ void rct_fini(struct rmtacl_ctl_table *rct)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_lock(&amp;rct-&gt;rct_lock);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; RCE_HASHES; i++)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while (!list_empty(&a=
mp;rct-&gt;rct_<u></u>entries[i])) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0rce =3D list_entry(rct-&gt;rct_entries[i]<u></u>.next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 struct rmtacl_ctl_entry, rce_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each_entry(r=
ce, &amp;rct-&gt;rct_entries[i], rce_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0rce_free(rce);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_unlock(&amp;rct-&gt;rct_lock);<br>
&gt; @@ -289,9 +287,7 @@ void et_fini(struct eacl_table *et)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_lock(&amp;et-&gt;et_lock);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0for (i =3D 0; i &lt; EE_HASHES; i++)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while (!list_empty(&a=
mp;et-&gt;et_entries[<u></u>i])) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0ee =3D list_entry(et-&gt;et_entries[i].<u></u>next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0struct eacl_entry, ee_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each_entry(e=
e, &amp;et-&gt;et_entries[i], ee_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0ee_free(ee);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_unlock(&amp;et-&gt;et_lock);<br>
&gt; diff --git a/drivers/staging/lustre/<u></u>lustre/obdclass/lprocfs_<u>=
</u>status.c b/drivers/staging/lustre/<u></u>lustre/obdclass/lprocfs_<u></u=
>status.c<br>
&gt; index c171c6c..31d7e18 100644<br>
&gt; --- a/drivers/staging/lustre/<u></u>lustre/obdclass/lprocfs_<u></u>sta=
tus.c<br>
&gt; +++ b/drivers/staging/lustre/<u></u>lustre/obdclass/lprocfs_<u></u>sta=
tus.c<br>
&gt; @@ -1018,9 +1018,7 @@ void lprocfs_free_per_client_stats(<u></u>struct=
 obd_device *obd)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* we need extra list - because hash_exit ca=
lled to early */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* not need locking because all clients is d=
ied */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;obd-&gt;obd_nid_<u></u>st=
ats)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0stat =3D list_entry(o=
bd-&gt;obd_nid_stats.<u></u>next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct nid_stat, ni=
d_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(stat, &amp;obd-&gt;obd_nid_st=
ats, nid_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del_init(&a=
mp;stat-&gt;nid_list)<u></u>;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cfs_hash_del(has=
h, &amp;stat-&gt;nid, &amp;stat-&gt;nid_hash);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lprocfs_free_cli=
ent_stats(<u></u>stat);<br>
&gt; @@ -1646,9 +1644,7 @@ int lprocfs_nid_stats_clear_write(<u></u>struct =
file *file, const char *buffer,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0cfs_hash_cond_del(obd-&gt;obd_<u></u>nid_sta=
ts_hash,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0lprocfs_nid_stats_clear_write_<u></u>cb, &amp;free_list=
);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;free_list)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0client_stat =3D list_=
entry(free_list.next, struct nid_stat,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 nid_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(client_<u></u>stat, &amp;free=
_list, nid_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del_init(&a=
mp;client_stat-&gt;<u></u>nid_list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lprocfs_free_cli=
ent_stats(<u></u>client_stat);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; diff --git a/drivers/staging/lustre/<u></u>lustre/obdclass/lustre_peer=
.c b/drivers/staging/lustre/<u></u>lustre/obdclass/lustre_peer.c<br>
&gt; index 64b2f35..87b649b 100644<br>
&gt; --- a/drivers/staging/lustre/<u></u>lustre/obdclass/lustre_peer.c<br>
&gt; +++ b/drivers/staging/lustre/<u></u>lustre/obdclass/lustre_peer.c<br>
&gt; @@ -170,9 +170,7 @@ int class_del_uuid(const char *uuid)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -EINVAL;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;deathrow)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0data =3D list_entry(d=
eathrow.next, struct uuid_nid_data,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0un_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(data, &amp;deathrow, un_list)=
 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(&amp;da=
ta-&gt;un_list);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0CDEBUG(D_INFO, &=
quot;del uuid %s %s/%d\n&quot;,<br>
&gt; diff --git a/drivers/staging/lustre/<u></u>lustre/osc/osc_cache.c b/dr=
ivers/staging/lustre/<u></u>lustre/osc/osc_cache.c<br>
&gt; index 7022ed4..6ab5c85 100644<br>
&gt; --- a/drivers/staging/lustre/<u></u>lustre/osc/osc_cache.c<br>
&gt; +++ b/drivers/staging/lustre/<u></u>lustre/osc/osc_cache.c<br>
&gt; @@ -1884,9 +1884,7 @@ static int get_write_extents(struct osc_object *=
obj, struct list_head *rpclist)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int max_pages =3D cli-&gt;cl_max_pa=
ges_per_rpc;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0LASSERT(osc_object_is_locked(<u></u>obj));<b=
r>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;obj-&gt;oo_hp_exts)<u></u=
>) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ext =3D list_entry(ob=
j-&gt;oo_hp_exts.<u></u>next, struct osc_extent,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 oe_link);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(ext, &amp;obj-&gt;oo_hp_exts,=
 oe_link) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0LASSERT(ext-&gt;=
oe_state =3D=3D OES_CACHE);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!try_to_add_=
extent_for_io(<u></u>cli, ext, rpclist, &amp;page_count,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0&amp;max_pages))<br>
&gt; @@ -1896,9 +1894,7 @@ static int get_write_extents(struct osc_object *=
obj, struct list_head *rpclist)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (page_count =3D=3D max_pages)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return page_coun=
t;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;obj-&gt;oo_urgent_<u></u>=
exts)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ext =3D list_entry(ob=
j-&gt;oo_urgent_<u></u>exts.next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct osc_extent, oe_lin=
k);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(ext, &amp;obj-&gt;oo_urgent_e=
xts, oe_link) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!try_to_add_=
extent_for_io(<u></u>cli, ext, rpclist, &amp;page_count,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0&amp;max_pages))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return page_count;<br>
&gt; @@ -2682,10 +2678,9 @@ again:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0osc_list_maint(cli, obj);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;list)) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(ext, &amp;list, oe_link) {<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int rc;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ext =3D list_entry(li=
st.next, struct osc_extent, oe_link);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del_init(&a=
mp;ext-&gt;oe_link);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* extent may be=
 in OES_ACTIVE state because inode mutex<br>
&gt; diff --git a/drivers/staging/lustre/<u></u>lustre/osc/osc_page.c b/dri=
vers/staging/lustre/<u></u>lustre/osc/osc_page.c<br>
&gt; index 76ba58b..c9c4839 100644<br>
&gt; --- a/drivers/staging/lustre/<u></u>lustre/osc/osc_page.c<br>
&gt; +++ b/drivers/staging/lustre/<u></u>lustre/osc/osc_page.c<br>
&gt; @@ -672,14 +672,12 @@ int osc_lru_shrink(struct client_obd *cli, int t=
arget)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0client_obd_list_lock(&amp;cli-&gt;cl_<u></u>=
lru_list_lock);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0atomic_inc(&amp;cli-&gt;cl_lru_<u></u>shrink=
ers);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0maxscan =3D min(target &lt;&lt; 1, atomic_re=
ad(&amp;cli-&gt;cl_lru_in_<u></u>list));<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;cli-&gt;cl_lru_<u></u>lis=
t)) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(opg, &amp;cli-&gt;cl_lru_list=
, ops_lru) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct cl_page *=
page;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (--maxscan &l=
t; 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0break;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0opg =3D list_entry(cl=
i-&gt;cl_lru_list.<u></u>next, struct osc_page,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ops_lru);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0page =3D cl_page=
_top(opg-&gt;ops_cl.cpl_<u></u>page);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (cl_page_in_u=
se_noref(page)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0list_move_tail(&amp;opg-&gt;ops_lru, &amp;cli-&gt;cl_lru_list)=
;<br>
&gt; diff --git a/drivers/staging/lustre/<u></u>lustre/ptlrpc/pinger.c b/dr=
ivers/staging/lustre/<u></u>lustre/ptlrpc/pinger.c<br>
&gt; index 9dbda93..bdff3fe 100644<br>
&gt; --- a/drivers/staging/lustre/<u></u>lustre/ptlrpc/pinger.c<br>
&gt; +++ b/drivers/staging/lustre/<u></u>lustre/ptlrpc/pinger.c<br>
&gt; @@ -610,10 +610,7 @@ static int ping_evictor_main(void *arg)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * lose the last=
 ref on the export.=C2=A0 If they&#39;ve already been<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * removed from =
the list, we won&#39;t find them here. */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0spin_lock(&amp;o=
bd-&gt;obd_dev_lock);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while (!list_empty(&a=
mp;obd-&gt;obd_<u></u>exports_timed)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0exp =3D list_entry(obd-&gt;obd_exports_<u></u>timed.next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 struct obd_export,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 exp_obd_chain_timed);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each_entry(e=
xp, &amp;obd-&gt;obd_exports_timed, exp_obd_chain_timed) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (expire_time &gt; exp-&gt;exp_last_request_time) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0class_export_get(exp);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0spin_unlock(&amp;obd-&gt;obd_dev_<=
u></u>lock);<br>
&gt; diff --git a/drivers/staging/lustre/<u></u>lustre/ptlrpc/sec_gc.c b/dr=
ivers/staging/lustre/<u></u>lustre/ptlrpc/sec_gc.c<br>
&gt; index 81de68e..265c5c1 100644<br>
&gt; --- a/drivers/staging/lustre/<u></u>lustre/ptlrpc/sec_gc.c<br>
&gt; +++ b/drivers/staging/lustre/<u></u>lustre/ptlrpc/sec_gc.c<br>
&gt; @@ -124,9 +124,7 @@ static void sec_process_ctx_list(void)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_lock(&amp;sec_gc_ctx_list_<u></u>lock);=
<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;sec_gc_ctx_list)<u></u>) =
{<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ctx =3D list_entry(se=
c_gc_ctx_list.<u></u>next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct ptlrpc_cli_ctx, cc=
_gc_chain);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(ctx, &amp;sec_gc_ctx_list, cc=
_gc_chain) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del_init(&a=
mp;ctx-&gt;cc_gc_<u></u>chain);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0spin_unlock(&amp=
;sec_gc_ctx_list_<u></u>lock);<br>
&gt;<br>
&gt; diff --git a/drivers/staging/lustre/<u></u>lustre/ptlrpc/service.c b/d=
rivers/staging/lustre/<u></u>lustre/ptlrpc/service.c<br>
&gt; index 8e61421..90bf1d5 100644<br>
&gt; --- a/drivers/staging/lustre/<u></u>lustre/ptlrpc/service.c<br>
&gt; +++ b/drivers/staging/lustre/<u></u>lustre/ptlrpc/service.c<br>
&gt; @@ -1463,9 +1463,7 @@ static int ptlrpc_at_check_timed(struct ptlrpc_s=
ervice_part *svcpt)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0/* we took additional refcount so entries ca=
n&#39;t be deleted from list, no<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 * locking is needed */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;work_list)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rq =3D list_entry(wor=
k_list.next, struct ptlrpc_request,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rq_timed_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(rq, &amp;work_list, rq_timed_=
list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del_init(&a=
mp;rq-&gt;rq_timed_<u></u>list);<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ptlrpc_at_se=
nd_early_reply(<u></u>rq) =3D=3D 0)<br>
&gt; @@ -2572,9 +2570,7 @@ static void ptlrpc_svcpt_stop_threads(<u></u>str=
uct ptlrpc_service_part *svcpt)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0wake_up_all(&amp;svcpt-&gt;scp_waitq)<u></u>=
;<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;svcpt-&gt;scp_<u></u>thre=
ads)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0thread =3D list_entry=
(svcpt-&gt;scp_threads.<u></u>next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct ptlrp=
c_thread, t_link);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(thread, &amp;svcpt-&gt;scp_th=
reads, t_link) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (thread_is_st=
opped(thread)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0list_del(&amp;thread-&gt;t_link);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0list_add(&amp;thread-&gt;t_link, &amp;zombie);<br>
&gt; @@ -2592,9 +2588,7 @@ static void ptlrpc_svcpt_stop_threads(<u></u>str=
uct ptlrpc_service_part *svcpt)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0spin_unlock(&amp;svcpt-&gt;scp_lock);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0while (!list_empty(&amp;zombie)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0thread =3D list_entry=
(zombie.next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct ptlrp=
c_thread, t_link);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0list_for_each_entry(thread, &amp;zombie, t_link) =
{<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_del(&amp;th=
read-&gt;t_link);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0OBD_FREE_PTR(thr=
ead);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; @@ -2929,9 +2923,7 @@ ptlrpc_service_purge_all(<u></u>struct ptlrpc_se=
rvice *svc)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0break;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0spin_lock(&amp;s=
vcpt-&gt;scp_rep_<u></u>lock);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while (!list_empty(&a=
mp;svcpt-&gt;scp_rep_<u></u>active)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0rs =3D list_entry(svcpt-&gt;scp_rep_<u></u>active.next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0struct ptlrpc_reply_state, rs_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each_entry(r=
s, &amp;svcpt-&gt;scp_rep_active, rs_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0spin_lock(&amp;rs-&gt;rs_lock);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0ptlrpc_schedule_difficult_<u></u>reply(rs);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0spin_unlock(&amp;rs-&gt;rs_lock);<br>
&gt; @@ -2941,10 +2933,7 @@ ptlrpc_service_purge_all(<u></u>struct ptlrpc_s=
ervice *svc)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* purge the req=
uest queue.=C2=A0 NB No new replies (rqbds<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * all unlinked)=
 and no service threads, so I&#39;m the only<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * thread noodli=
ng the request queue now */<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while (!list_empty(&a=
mp;svcpt-&gt;scp_req_<u></u>incoming)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0req =3D list_entry(svcpt-&gt;scp_req_<u></u>incoming.next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 struct ptlrpc_request, rq_list);<br>
&gt; -<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each_entry(r=
eq, &amp;svcpt-&gt;scp_req_incoming, rq_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0list_del(&amp;req-&gt;rq_list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0svcpt-&gt;scp_nreqs_incoming--;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0ptlrpc_server_finish_request(<u></u>svcpt, req);<br>
&gt; @@ -2965,18 +2954,12 @@ ptlrpc_service_purge_all(<u></u>struct ptlrpc_=
service *svc)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Now free all =
the request buffers since nothing<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * references th=
em any more... */<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while (!list_empty(&a=
mp;svcpt-&gt;scp_rqbd_<u></u>idle)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0rqbd =3D list_entry(svcpt-&gt;scp_rqbd_<u></u>idle.next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0struct ptlrpc_request_buffer_desc,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0rqbd_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each_entry(r=
qbd, &amp;svcpt-&gt;scp_rqbd_idle, rqbd_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0ptlrpc_free_rqbd(rqbd);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ptlrpc_wait_repl=
ies(svcpt);<br>
&gt;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while (!list_empty(&a=
mp;svcpt-&gt;scp_rep_<u></u>idle)) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0rs =3D list_entry(svcpt-&gt;scp_rep_<u></u>idle.next,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0struct ptlrpc_reply_state,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0rs_list);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0list_for_each_entry(r=
s, &amp;svcpt-&gt;scp_rep_idle, rs_list) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0list_del(&amp;rs-&gt;rs_list);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0OBD_FREE_LARGE(rs, svc-&gt;srv_max_reply_size);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; --<br>
&gt; 1.9.1<br>
&gt;<br>
&gt; --<br>
&gt; You received this message because you are subscribed to the Google Gro=
ups &quot;outreachy-kernel&quot; group.<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send=
 an email to <a href=3D"mailto:outreachy-kernel%2Bunsubscribe@googlegroups.=
com" target=3D"_blank">outreachy-kernel+unsubscribe@<u></u>googlegroups.com=
</a>.<br>
&gt; To post to this group, send email to <a href=3D"mailto:outreachy-kerne=
l@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegroups.<u></u>=
com</a>.<br>
&gt; To view this discussion on the web visit <a href=3D"https://groups.goo=
gle.com/d/msgid/outreachy-kernel/1426263453-26331-4-git-send-email-somyaana=
nd214%40gmail.com" target=3D"_blank">https://groups.google.com/d/<u></u>msg=
id/outreachy-kernel/<u></u>1426263453-26331-4-git-send-<u></u>email-somyaan=
and214%40gmail.<u></u>com</a>.<br>
&gt; For more options, visit <a href=3D"https://groups.google.com/d/optout"=
 target=3D"_blank">https://groups.google.com/d/<u></u>optout</a>.<br>
&gt;<br>
</blockquote></div></div>

--20cf307c9deaaeba6c05112e3a76--

