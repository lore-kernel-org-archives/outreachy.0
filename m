X-GM-THRID: 6329558000960798720
X-Received: by 10.28.208.134 with SMTP id h128mr2471999wmg.1.1473755721056;
        Tue, 13 Sep 2016 01:35:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.145.1 with SMTP id t1ls34573lfd.12.gmail; Tue, 13 Sep 2016
 01:35:20 -0700 (PDT)
X-Received: by 10.25.42.197 with SMTP id q188mr3367947lfq.7.1473755720456;
        Tue, 13 Sep 2016 01:35:20 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y7si1445543wmd.0.2016.09.13.01.35.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 01:35:20 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,327,1470693600"; 
   d="scan'208";a="192944992"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Sep 2016 10:35:19 +0200
Date: Tue, 13 Sep 2016 10:35:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: ks7010: Remove the explicit
 NULL comparison
In-Reply-To: <CAKG5xWi2jK35G+Va7NU4_Q8_jNgbanJozASquzpwxDug7SB6MA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609131033430.3355@hadrien>
References: <20160912211728.GA13970@sayli-HP-15-Notebook-PC> <alpine.DEB.2.10.1609122320590.3549@hadrien> <CAKG5xWi2jK35G+Va7NU4_Q8_jNgbanJozASquzpwxDug7SB6MA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Tue, 13 Sep 2016, sayli karnik wrote:

> One way to do reduce the ugliness of the casts is to use typedefs to
> structures, but they certainly deteriorate readability according to
> Documentation/CodingStyle.

No definitely no typedefs!

> Anyway since a void * is implicitly casted to other types, should I
> remove the casts and send a separate patch for that?

The casts are just not needed at all.  It would be great to make a new
patch for that.  However, if Greg hasn't applied your previous one, which
you can check by updating your staging tree, you would need to make a
series, with the original patch and the new one, so that Greg knows in
what order to apply them.

julia

> Thanks!
>
> On Tue, Sep 13, 2016 at 2:52 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Tue, 13 Sep 2016, sayli karnik wrote:
> >
> >> The patch removes the explicit null comparisons entirely for the ks7010 driver.
> >> This was detected by checkpatch.pl
> >
> > It's orthogonal to the change you have made here, but there are a lot of
> > ugly casts on the calls to kmalloc.  Since kmalloc returns a void * type,
> > its result can be implicitly casted to other types via an assignment.
> >
> > julia
> >
> >> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> >> ---
> >>  drivers/staging/ks7010/ks7010_sdio.c | 14 +++++++-------
> >>  drivers/staging/ks7010/ks_hostif.c   | 30 +++++++++++++++---------------
> >>  drivers/staging/ks7010/ks_wlan_net.c |  2 +-
> >>  3 files changed, 23 insertions(+), 23 deletions(-)
> >>
> >> diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
> >> index b7337fd..129e203 100644
> >> --- a/drivers/staging/ks7010/ks7010_sdio.c
> >> +++ b/drivers/staging/ks7010/ks7010_sdio.c
> >> @@ -268,7 +268,7 @@ static int enqueue_txdev(struct ks_wlan_private *priv, unsigned char *p,
> >>
> >>       if (priv->dev_state < DEVICE_STATE_BOOT) {
> >>               kfree(p);
> >> -             if (complete_handler != NULL)
> >> +             if (complete_handler)
> >>                       (*complete_handler) (arg1, arg2);
> >>               return 1;
> >>       }
> >> @@ -277,7 +277,7 @@ static int enqueue_txdev(struct ks_wlan_private *priv, unsigned char *p,
> >>               /* in case of buffer overflow */
> >>               DPRINTK(1, "tx buffer overflow\n");
> >>               kfree(p);
> >> -             if (complete_handler != NULL)
> >> +             if (complete_handler)
> >>                       (*complete_handler) (arg1, arg2);
> >>               return 1;
> >>       }
> >> @@ -349,7 +349,7 @@ static void tx_device_task(void *dev)
> >>
> >>               }
> >>               kfree(sp->sendp);       /* allocated memory free */
> >> -             if (sp->complete_handler != NULL)       /* TX Complete */
> >> +             if (sp->complete_handler)       /* TX Complete */
> >>                       (*sp->complete_handler) (sp->arg1, sp->arg2);
> >>               inc_txqhead(priv);
> >>
> >> @@ -696,7 +696,7 @@ static void trx_device_exit(struct ks_wlan_private *priv)
> >>       while (cnt_txqbody(priv) > 0) {
> >>               sp = &priv->tx_dev.tx_dev_buff[priv->tx_dev.qhead];
> >>               kfree(sp->sendp);       /* allocated memory free */
> >> -             if (sp->complete_handler != NULL)       /* TX Complete */
> >> +             if (sp->complete_handler)       /* TX Complete */
> >>                       (*sp->complete_handler) (sp->arg1, sp->arg2);
> >>               inc_txqhead(priv);
> >>       }
> >> @@ -1029,7 +1029,7 @@ static int ks7010_sdio_probe(struct sdio_func *func,
> >>
> >>       /* private memory allocate */
> >>       netdev = alloc_etherdev(sizeof(*priv));
> >> -     if (netdev == NULL) {
> >> +     if (!netdev) {
> >>               printk(KERN_ERR "ks7010 : Unable to alloc new net device\n");
> >>               goto error_release_irq;
> >>       }
> >> @@ -1146,7 +1146,7 @@ static void ks7010_sdio_remove(struct sdio_func *func)
> >>
> >>       card = sdio_get_drvdata(func);
> >>
> >> -     if (card == NULL)
> >> +     if (!card)
> >>               return;
> >>
> >>       DPRINTK(1, "priv = card->priv\n");
> >> @@ -1168,7 +1168,7 @@ static void ks7010_sdio_remove(struct sdio_func *func)
> >>                       struct hostif_stop_request_t *pp;
> >>                       pp = (struct hostif_stop_request_t *)
> >>                           kzalloc(hif_align_size(sizeof(*pp)), GFP_KERNEL);
> >> -                     if (pp == NULL) {
> >> +                     if (!pp) {
> >>                               DPRINTK(3, "allocate memory failed..\n");
> >>                               return; /* to do goto ni suru */
> >>                       }
> >> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> >> index a8822fe..f32ce5a 100644
> >> --- a/drivers/staging/ks7010/ks_hostif.c
> >> +++ b/drivers/staging/ks7010/ks_hostif.c
> >> @@ -1176,7 +1176,7 @@ int hostif_data_request(struct ks_wlan_private *priv, struct sk_buff *packet)
> >>           kmalloc(hif_align_size(sizeof(*pp) + 6 + packet_len + 8),
> >>                   KS_WLAN_MEM_FLAG);
> >>
> >> -     if (pp == NULL) {
> >> +     if (!pp) {
> >>               DPRINTK(3, "allocate memory failed..\n");
> >>               dev_kfree_skb(packet);
> >>               return -2;
> >> @@ -1315,7 +1315,7 @@ void hostif_mib_get_request(struct ks_wlan_private *priv,
> >>       /* make primitive */
> >>       pp = (struct hostif_mib_get_request_t *)
> >>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> >> -     if (pp == NULL) {
> >> +     if (!pp) {
> >>               DPRINTK(3, "allocate memory failed..\n");
> >>               return;
> >>       }
> >> @@ -1346,7 +1346,7 @@ void hostif_mib_set_request(struct ks_wlan_private *priv,
> >>       /* make primitive */
> >>       pp = (struct hostif_mib_set_request_t *)
> >>           kmalloc(hif_align_size(sizeof(*pp) + size), KS_WLAN_MEM_FLAG);
> >> -     if (pp == NULL) {
> >> +     if (!pp) {
> >>               DPRINTK(3, "allocate memory failed..\n");
> >>               return;
> >>       }
> >> @@ -1376,7 +1376,7 @@ void hostif_start_request(struct ks_wlan_private *priv, unsigned char mode)
> >>       /* make primitive */
> >>       pp = (struct hostif_start_request_t *)
> >>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> >> -     if (pp == NULL) {
> >> +     if (!pp) {
> >>               DPRINTK(3, "allocate memory failed..\n");
> >>               return;
> >>       }
> >> @@ -1404,7 +1404,7 @@ void hostif_ps_adhoc_set_request(struct ks_wlan_private *priv)
> >>       /* make primitive */
> >>       pp = (struct hostif_ps_adhoc_set_request_t *)
> >>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> >> -     if (pp == NULL) {
> >> +     if (!pp) {
> >>               DPRINTK(3, "allocate memory failed..\n");
> >>               return;
> >>       }
> >> @@ -1448,7 +1448,7 @@ void hostif_infrastructure_set_request(struct ks_wlan_private *priv)
> >>       /* make primitive */
> >>       pp = (struct hostif_infrastructure_set_request_t *)
> >>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> >> -     if (pp == NULL) {
> >> +     if (!pp) {
> >>               DPRINTK(3, "allocate memory failed..\n");
> >>               return;
> >>       }
> >> @@ -1515,7 +1515,7 @@ void hostif_infrastructure_set2_request(struct ks_wlan_private *priv)
> >>       /* make primitive */
> >>       pp = (struct hostif_infrastructure_set2_request_t *)
> >>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> >> -     if (pp == NULL) {
> >> +     if (!pp) {
> >>               DPRINTK(3, "allocate memory failed..\n");
> >>               return;
> >>       }
> >> @@ -1585,7 +1585,7 @@ void hostif_adhoc_set_request(struct ks_wlan_private *priv)
> >>       /* make primitive */
> >>       pp = (struct hostif_adhoc_set_request_t *)
> >>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> >> -     if (pp == NULL) {
> >> +     if (!pp) {
> >>               DPRINTK(3, "allocate memory failed..\n");
> >>               return;
> >>       }
> >> @@ -1631,7 +1631,7 @@ void hostif_adhoc_set2_request(struct ks_wlan_private *priv)
> >>       /* make primitive */
> >>       pp = (struct hostif_adhoc_set2_request_t *)
> >>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> >> -     if (pp == NULL) {
> >> +     if (!pp) {
> >>               DPRINTK(3, "allocate memory failed..\n");
> >>               return;
> >>       }
> >> @@ -1679,7 +1679,7 @@ void hostif_stop_request(struct ks_wlan_private *priv)
> >>       /* make primitive */
> >>       pp = (struct hostif_stop_request_t *)
> >>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> >> -     if (pp == NULL) {
> >> +     if (!pp) {
> >>               DPRINTK(3, "allocate memory failed..\n");
> >>               return;
> >>       }
> >> @@ -1702,7 +1702,7 @@ void hostif_phy_information_request(struct ks_wlan_private *priv)
> >>       /* make primitive */
> >>       pp = (struct hostif_phy_information_request_t *)
> >>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> >> -     if (pp == NULL) {
> >> +     if (!pp) {
> >>               DPRINTK(3, "allocate memory failed..\n");
> >>               return;
> >>       }
> >> @@ -1734,7 +1734,7 @@ void hostif_power_mngmt_request(struct ks_wlan_private *priv,
> >>       /* make primitive */
> >>       pp = (struct hostif_power_mngmt_request_t *)
> >>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> >> -     if (pp == NULL) {
> >> +     if (!pp) {
> >>               DPRINTK(3, "allocate memory failed..\n");
> >>               return;
> >>       }
> >> @@ -1761,7 +1761,7 @@ void hostif_sleep_request(struct ks_wlan_private *priv, unsigned long mode)
> >>               /* make primitive */
> >>               pp = (struct hostif_sleep_request_t *)
> >>                   kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> >> -             if (pp == NULL) {
> >> +             if (!pp) {
> >>                       DPRINTK(3, "allocate memory failed..\n");
> >>                       return;
> >>               }
> >> @@ -1795,7 +1795,7 @@ void hostif_bss_scan_request(struct ks_wlan_private *priv,
> >>       /* make primitive */
> >>       pp = (struct hostif_bss_scan_request_t *)
> >>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> >> -     if (pp == NULL) {
> >> +     if (!pp) {
> >>               DPRINTK(3, "allocate memory failed..\n");
> >>               return;
> >>       }
> >> @@ -1852,7 +1852,7 @@ void hostif_mic_failure_request(struct ks_wlan_private *priv,
> >>       /* make primitive */
> >>       pp = (struct hostif_mic_failure_request_t *)
> >>           kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> >> -     if (pp == NULL) {
> >> +     if (!pp) {
> >>               DPRINTK(3, "allocate memory failed..\n");
> >>               return;
> >>       }
> >> diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
> >> index 1e21eb1..8462c98 100644
> >> --- a/drivers/staging/ks7010/ks_wlan_net.c
> >> +++ b/drivers/staging/ks7010/ks_wlan_net.c
> >> @@ -3366,7 +3366,7 @@ int ks_wlan_start_xmit(struct sk_buff *skb, struct net_device *dev)
> >>
> >>       DPRINTK(3, "in_interrupt()=%ld\n", in_interrupt());
> >>
> >> -     if (skb == NULL) {
> >> +     if (!skb) {
> >>               printk(KERN_ERR "ks_wlan:  skb == NULL!!!\n");
> >>               return 0;
> >>       }
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160912211728.GA13970%40sayli-HP-15-Notebook-PC.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKG5xWi2jK35G%2BVa7NU4_Q8_jNgbanJozASquzpwxDug7SB6MA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

