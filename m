X-GM-THRID: 6330925606572654592
X-Received: by 10.46.1.225 with SMTP id f94mr2987073lji.8.1474278561808;
        Mon, 19 Sep 2016 02:49:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.33.139 with SMTP id h11ls445186lji.54.gmail; Mon, 19 Sep
 2016 02:49:19 -0700 (PDT)
X-Received: by 10.25.130.147 with SMTP id e141mr99356lfd.16.1474278559665;
        Mon, 19 Sep 2016 02:49:19 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a126si1367714wmd.1.2016.09.19.02.49.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 02:49:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,361,1470693600"; 
   d="scan'208";a="193889220"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Sep 2016 11:49:19 +0200
Date: Mon, 19 Sep 2016 11:49:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v3 2/6] staging: ks7010: Remove braces
 following single statement blocks
In-Reply-To: <CAKG5xWizCzdeFj4cLg1Ghs=90uu-8XK1Rvnam5qMxQr7L9PfaA@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609191148480.3203@hadrien>
References: <cover.1474032241.git.karniksayli1995@gmail.com> <38a21c2a1b3bc3476860cfe2080ef85816569e7f.1474032241.git.karniksayli1995@gmail.com> <alpine.DEB.2.10.1609181302420.3238@hadrien>
 <CAKG5xWizCzdeFj4cLg1Ghs=90uu-8XK1Rvnam5qMxQr7L9PfaA@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 19 Sep 2016, sayli karnik wrote:

> On Sun, Sep 18, 2016 at 4:32 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Sun, 18 Sep 2016, sayli karnik wrote:
> >
> >> The patch removes braces {} for single statement blocks, as suggested by
> >> checkpatch.pl.
> >
> > Why do you add blank lines everywhere?
> >
> I thought it was better that way, even checkpatch.pl did not complain.
> Should I amend it?

I guess blank lines are a matter of taste, and if you think it looks
better then no problem :)

julia

>
> thanks
> sayli
>
> > julia
> >
> >> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> >> ---
> >>  drivers/staging/ks7010/ks7010_sdio.c | 38 +++++++++++++++++-------------------
> >>  1 file changed, 18 insertions(+), 20 deletions(-)
> >>
> >> diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
> >> index b993804..8e1f68a 100644
> >> --- a/drivers/staging/ks7010/ks7010_sdio.c
> >> +++ b/drivers/staging/ks7010/ks7010_sdio.c
> >> @@ -157,9 +157,9 @@ void ks_wlan_hw_wakeup_request(struct ks_wlan_private *priv)
> >>               rw_data = WAKEUP_REQ;
> >>               retval =
> >>                   ks7010_sdio_write(priv, WAKEUP, &rw_data, sizeof(rw_data));
> >> -             if (retval) {
> >> +             if (retval)
> >>                       DPRINTK(1, " error : WAKEUP=%02X\n", rw_data);
> >> -             }
> >> +
> >>               DPRINTK(4, "wake up : WAKEUP=%02X\n", rw_data);
> >>               priv->last_wakeup = jiffies;
> >>               ++priv->wakeup_count;
> >> @@ -398,9 +398,8 @@ static void rx_event_task(unsigned long dev)
> >>               hostif_receive(priv, rp->data, rp->size);
> >>               inc_rxqhead(priv);
> >>
> >> -             if (cnt_rxqbody(priv) > 0) {
> >> +             if (cnt_rxqbody(priv) > 0)
> >>                       tasklet_schedule(&priv->ks_wlan_hw.rx_bh_task);
> >> -             }
> >>       }
> >>  }
> >>
> >> @@ -426,9 +425,8 @@ static void ks_wlan_hw_rx(void *dev, uint16_t size)
> >>       retval =
> >>           ks7010_sdio_read(priv, DATA_WINDOW, &rx_buffer->data[0],
> >>                            hif_align_size(size));
> >> -     if (retval) {
> >> +     if (retval)
> >>               goto error_out;
> >> -     }
> >>
> >>       /* length check */
> >>       if (size > 2046 || size == 0) {
> >> @@ -443,9 +441,9 @@ static void ks_wlan_hw_rx(void *dev, uint16_t size)
> >>               retval =
> >>                   ks7010_sdio_write(priv, READ_STATUS, &read_status,
> >>                                     sizeof(read_status));
> >> -             if (retval) {
> >> +             if (retval)
> >>                       DPRINTK(1, " error : READ_STATUS=%02X\n", read_status);
> >> -             }
> >> +
> >>               goto error_out;
> >>       }
> >>
> >> @@ -459,9 +457,9 @@ static void ks_wlan_hw_rx(void *dev, uint16_t size)
> >>       retval =
> >>           ks7010_sdio_write(priv, READ_STATUS, &read_status,
> >>                             sizeof(read_status));
> >> -     if (retval) {
> >> +     if (retval)
> >>               DPRINTK(1, " error : READ_STATUS=%02X\n", read_status);
> >> -     }
> >> +
> >>       DPRINTK(4, "READ_STATUS=%02X\n", read_status);
> >>
> >>       if (atomic_read(&priv->psstatus.confirm_wait)) {
> >> @@ -545,9 +543,9 @@ static void ks7010_rw_function(struct work_struct *work)
> >>               ks_wlan_hw_rx((void *)priv,
> >>                             (uint16_t) (((rw_data & RSIZE_MASK) << 4)));
> >>       }
> >> -     if ((rw_data & WSTATUS_MASK)) {
> >> +     if ((rw_data & WSTATUS_MASK))
> >>               tx_device_task((void *)priv);
> >> -     }
> >> +
> >>       _ks_wlan_hw_power_save(priv);
> >>
> >>   err_out:
> >> @@ -884,9 +882,9 @@ static void ks7010_card_init(struct ks_wlan_private *priv)
> >>               DPRINTK(1, "wait time out!! SME_START\n");
> >>       }
> >>
> >> -     if (priv->mac_address_valid && priv->version_size) {
> >> +     if (priv->mac_address_valid && priv->version_size)
> >>               priv->dev_state = DEVICE_STATE_PREINIT;
> >> -     }
> >> +
> >>
> >>       hostif_sme_enqueue(priv, SME_GET_EEPROM_CKSUM);
> >>
> >> @@ -1029,9 +1027,9 @@ static int ks7010_sdio_probe(struct sdio_func *func,
> >>       init_completion(&priv->ks_wlan_hw.ks7010_sdio_wait);
> >>       priv->ks_wlan_hw.read_buf = NULL;
> >>       priv->ks_wlan_hw.read_buf = kmalloc(RX_DATA_SIZE, GFP_KERNEL);
> >> -     if (!priv->ks_wlan_hw.read_buf) {
> >> +     if (!priv->ks_wlan_hw.read_buf)
> >>               goto error_free_netdev;
> >> -     }
> >> +
> >>       priv->dev_state = DEVICE_STATE_PREBOOT;
> >>       priv->net_dev = netdev;
> >>       priv->firmware_version[0] = '\0';
> >> @@ -1067,9 +1065,9 @@ static int ks7010_sdio_probe(struct sdio_func *func,
> >>       sdio_claim_host(func);
> >>       ret = ks7010_sdio_write(priv, INT_PENDING, &rw_data, sizeof(rw_data));
> >>       sdio_release_host(func);
> >> -     if (ret) {
> >> +     if (ret)
> >>               DPRINTK(1, " error : INT_PENDING=%02X\n", rw_data);
> >> -     }
> >> +
> >>       DPRINTK(4, " clear Interrupt : INT_PENDING=%02X\n", rw_data);
> >>
> >>       /* enable ks7010sdio interrupt (INT_GCR_B|INT_READ_STATUS|INT_WRITE_STATUS) */
> >> @@ -1077,9 +1075,9 @@ static int ks7010_sdio_probe(struct sdio_func *func,
> >>       sdio_claim_host(func);
> >>       ret = ks7010_sdio_write(priv, INT_ENABLE, &rw_data, sizeof(rw_data));
> >>       sdio_release_host(func);
> >> -     if (ret) {
> >> +     if (ret)
> >>               DPRINTK(1, " error : INT_ENABLE=%02X\n", rw_data);
> >> -     }
> >> +
> >>       DPRINTK(4, " enable Interrupt : INT_ENABLE=%02X\n", rw_data);
> >>       priv->dev_state = DEVICE_STATE_BOOT;
> >>
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/38a21c2a1b3bc3476860cfe2080ef85816569e7f.1474032241.git.karniksayli1995%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKG5xWizCzdeFj4cLg1Ghs%3D90uu-8XK1Rvnam5qMxQr7L9PfaA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

