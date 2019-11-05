X-GM-THRID: 6755718813793124352
X-Received: by 2002:a5b:e87:: with SMTP id z7mr26317797ybr.469.1572941288764;
        Tue, 05 Nov 2019 00:08:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:abb2:: with SMTP id v47ls3164598ybi.0.gmail; Tue, 05 Nov
 2019 00:08:07 -0800 (PST)
X-Google-Smtp-Source: APXvYqxAPIJvqrHZM8vL2bngYndD21qBxCyB9QC7zS+vVuvt8xmZCTdgYgwpXGxwy4cnfFdTMRpa
X-Received: by 2002:a25:6b10:: with SMTP id g16mr27333434ybc.48.1572941287137;
        Tue, 05 Nov 2019 00:08:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572941287; cv=none;
        d=google.com; s=arc-20160816;
        b=jldEDpI/9H0KNdRor5BE4xlNEDEsPad/viCAy2yBRvZ0MM4FbyFpAyf6nPvtKhYsRK
         uGCzdwaosFw99Tq+HkecUcrIB+sCa/+7E3ts0UCnlf0q6JB3zDzqhYcqaXPxHwJmY4cN
         3jmMKsR4ytC0aCMYhGGw6q0XWhbcmRuc2Fzx+bHdWNMthb2mn+jl0iyW922ovCI42Qex
         lIPWJGT6XR25f2E9HKKZJHmNYLEJJqx5BpMu0To1qZH5X6T5zNDzv1HO5euku3IP3JzC
         zMUCbo7qzR5D3EDldttbwwEWWLx7P/M6G2EruiZUNdDNl7COa1xVM+dHCsmdrZPQeAHN
         ZiJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RgNgQC5hM6P+raqOUlxTjXRpjKQnVCQoRyay8P4Cj+g=;
        b=AvofINzW/WJjcw/kIHQZ1pj93TT/HjUoSFwNaxGOanRnhEkmwYJFdzBU/d5l3YDSA4
         pZKrVGEHrM2DLhyMIughk/UNFtAVoJT3Oa0ym/FZOPMU+XpoK4hED3JwPhxNYfMNppGJ
         bFpWCbylK0aoNgI8KOlFVcWaO9yHIbhPThsNO/8f+0AlbAdBdF+pz3ATflSmhGk0HSwp
         JGjrJOTVtsiReE4YuukFqo+7699h6cxXoiZjFm/vKA14jbRxz7Z+Jhf4KMOn4s2z0h4w
         wwsBKFbAr2ISeTmUPZSoSUqY9OfIfVRbHe5ZPsL2TGXCFVcEJK6/AN/IxH6S040l0Fh8
         2r9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="N1ANl/bU";
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nachukannan@gmail.com>
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id v135si1121077ywa.0.2019.11.05.00.08.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 00:08:07 -0800 (PST)
Received-SPF: pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="N1ANl/bU";
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x842.google.com with SMTP id y10so21360230qto.3
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 00:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RgNgQC5hM6P+raqOUlxTjXRpjKQnVCQoRyay8P4Cj+g=;
        b=N1ANl/bUAhyrWOTdRKr8TUDorcp9ISHU2p1yaa0oQQXgrNiE1cusHE93I/L0/SDt8k
         lfKtzFFEWwV56aPmztgGYu+ymR+b5Ijv9g3CFIy1tMXCt+UZx6a+fcpbpfiJF49BGQOP
         fpdWXzx9CC7kCObJ8bT+EPiv3JGhEc1sVjbCHTci31LIULp8qdNWQBIyK9zIAWcF/Brw
         sitEMwLuRXta/Fqrjn1GNkGljL4Nw7dvbDwQebb0Gim3xhrdS53bEVv5NslchrMY0E4K
         UDsDIscuuhu+6HdX3eWyyzvUMRGOB+LddmOOeknQEM7yus/sK4RpWQnuIn7O+d6Z1jC7
         7diw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RgNgQC5hM6P+raqOUlxTjXRpjKQnVCQoRyay8P4Cj+g=;
        b=s/1c7IXMBrEKvyNuKkL9bHs69Hhbe7H59m0W00Z5DilyXuLHff2h4kv919iifVVkiB
         x0oTmQOXJp66UsIMmDLbSsdOFPskHyZdRB5q5hDS/JF/CRaITr2fDT0ufB4CtIuPH3hd
         Qlb4wtjQ2FZDD8wWyy9ieAE6MM0EE0WKoshRuXT9waULgeEIyJj9Z7zEiL/quFxHhJ0Q
         2IaO3PWM59EqsfSeN8LBm2QSdBKChLaFv6Zv3o4Lg7qI0DNY4ibbMXx2est0kNy1VP3M
         wFw3vfHGHI6sAiQwPdsHXd0sbhXdbBYjmJ9PGo1ljrMn8WvWma8zZQOGWNHD6tKYm1Xp
         gd4A==
X-Gm-Message-State: APjAAAWAFHEO4pg+jtH4nMnir30nVegZTIF248haPi4CvSSxLyLoSR+m
	Cq01H0X6+iDLszEVxYVCpjzDIfh35WvfqmV8J99Y49PR
X-Received: by 2002:a0c:814d:: with SMTP id 71mr26238954qvc.220.1572941286593;
 Tue, 05 Nov 2019 00:08:06 -0800 (PST)
MIME-Version: 1.0
References: <1572940458-109252-1-git-send-email-nachukannan@gmail.com> <alpine.DEB.2.21.1911050905350.2548@hadrien>
In-Reply-To: <alpine.DEB.2.21.1911050905350.2548@hadrien>
From: Nachammai Karuppiah <nachukannan@gmail.com>
Date: Tue, 5 Nov 2019 03:07:54 -0500
Message-ID: <CAMOCsdvcb_X2ebOzW0E8H1Xvuwxvwi5Xtbn6rHcuf8uB3HPszw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: qlge: Avoid NULL comparison
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Tue, Nov 5, 2019 at 3:06 AM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Mon, 4 Nov 2019, Nachammai Karuppiah wrote:
>
> > Replace NULL comparison with boolean negation. Issue found using checkpatch.pl
> >
> > Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
>
> I saw this just after my ack.  I assume you didn't change anything in the
> code...

No, just changed the commit message.

Thanks,
Nachammai

>
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
>
>
> > ---
> > Changes in v2:
> >   - Make the commit message more clearer.
> >
> >  drivers/staging/qlge/qlge_dbg.c  |  4 ++--
> >  drivers/staging/qlge/qlge_main.c | 18 +++++++++---------
> >  2 files changed, 11 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> > index 019b7e6..83f34ca 100644
> > --- a/drivers/staging/qlge/qlge_dbg.c
> > +++ b/drivers/staging/qlge/qlge_dbg.c
> > @@ -1649,7 +1649,7 @@ void ql_dump_wqicb(struct wqicb *wqicb)
> >
> >  void ql_dump_tx_ring(struct tx_ring *tx_ring)
> >  {
> > -     if (tx_ring == NULL)
> > +     if (!tx_ring)
> >               return;
> >       pr_err("===================== Dumping tx_ring %d ===============\n",
> >              tx_ring->wq_id);
> > @@ -1741,7 +1741,7 @@ static const char *qlge_rx_ring_type_name(struct rx_ring *rx_ring)
> >
> >  void ql_dump_rx_ring(struct rx_ring *rx_ring)
> >  {
> > -     if (rx_ring == NULL)
> > +     if (!rx_ring)
> >               return;
> >       pr_err("===================== Dumping rx_ring %d ===============\n",
> >              rx_ring->cq_id);
> > diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
> > index 6f6b4c0..6ad4515 100644
> > --- a/drivers/staging/qlge/qlge_main.c
> > +++ b/drivers/staging/qlge/qlge_main.c
> > @@ -1588,7 +1588,7 @@ static void ql_process_mac_rx_skb(struct ql_adapter *qdev,
> >       skb = sbq_desc->p.skb;
> >       /* Allocate new_skb and copy */
> >       new_skb = netdev_alloc_skb(qdev->ndev, length + NET_IP_ALIGN);
> > -     if (new_skb == NULL) {
> > +     if (!new_skb) {
> >               rx_ring->rx_dropped++;
> >               return;
> >       }
> > @@ -1792,7 +1792,7 @@ static struct sk_buff *ql_build_rx_skb(struct ql_adapter *qdev,
> >                        */
> >                       lbq_desc = ql_get_curr_lchunk(qdev, rx_ring);
> >                       skb = netdev_alloc_skb(qdev->ndev, length);
> > -                     if (skb == NULL) {
> > +                     if (!skb) {
> >                               netif_printk(qdev, probe, KERN_DEBUG, qdev->ndev,
> >                                            "No skb available, drop the packet.\n");
> >                               return NULL;
> > @@ -2663,7 +2663,7 @@ static int ql_alloc_shadow_space(struct ql_adapter *qdev)
> >       qdev->rx_ring_shadow_reg_area =
> >               pci_zalloc_consistent(qdev->pdev, PAGE_SIZE,
> >                                     &qdev->rx_ring_shadow_reg_dma);
> > -     if (qdev->rx_ring_shadow_reg_area == NULL) {
> > +     if (!qdev->rx_ring_shadow_reg_area) {
> >               netif_err(qdev, ifup, qdev->ndev,
> >                         "Allocation of RX shadow space failed.\n");
> >               return -ENOMEM;
> > @@ -2672,7 +2672,7 @@ static int ql_alloc_shadow_space(struct ql_adapter *qdev)
> >       qdev->tx_ring_shadow_reg_area =
> >               pci_zalloc_consistent(qdev->pdev, PAGE_SIZE,
> >                                     &qdev->tx_ring_shadow_reg_dma);
> > -     if (qdev->tx_ring_shadow_reg_area == NULL) {
> > +     if (!qdev->tx_ring_shadow_reg_area) {
> >               netif_err(qdev, ifup, qdev->ndev,
> >                         "Allocation of TX shadow space failed.\n");
> >               goto err_wqp_sh_area;
> > @@ -2724,14 +2724,14 @@ static int ql_alloc_tx_resources(struct ql_adapter *qdev,
> >           pci_alloc_consistent(qdev->pdev, tx_ring->wq_size,
> >                                &tx_ring->wq_base_dma);
> >
> > -     if ((tx_ring->wq_base == NULL) ||
> > +     if (!tx_ring->wq_base ||
> >           tx_ring->wq_base_dma & WQ_ADDR_ALIGN)
> >               goto pci_alloc_err;
> >
> >       tx_ring->q =
> >           kmalloc_array(tx_ring->wq_len, sizeof(struct tx_ring_desc),
> >                         GFP_KERNEL);
> > -     if (tx_ring->q == NULL)
> > +     if (!tx_ring->q)
> >               goto err;
> >
> >       return 0;
> > @@ -2778,7 +2778,7 @@ static void ql_free_sbq_buffers(struct ql_adapter *qdev, struct rx_ring *rx_ring
> >       for (i = 0; i < QLGE_BQ_LEN; i++) {
> >               struct qlge_bq_desc *sbq_desc = &rx_ring->sbq.queue[i];
> >
> > -             if (sbq_desc == NULL) {
> > +             if (!sbq_desc) {
> >                       netif_err(qdev, ifup, qdev->ndev,
> >                                 "sbq_desc %d is NULL.\n", i);
> >                       return;
> > @@ -2899,7 +2899,7 @@ static int ql_alloc_rx_resources(struct ql_adapter *qdev,
> >           pci_alloc_consistent(qdev->pdev, rx_ring->cq_size,
> >                                &rx_ring->cq_base_dma);
> >
> > -     if (rx_ring->cq_base == NULL) {
> > +     if (!rx_ring->cq_base) {
> >               netif_err(qdev, ifup, qdev->ndev, "rx_ring alloc failed.\n");
> >               return -ENOMEM;
> >       }
> > @@ -4485,7 +4485,7 @@ static int ql_init_device(struct pci_dev *pdev, struct net_device *ndev,
> >       if (qlge_mpi_coredump) {
> >               qdev->mpi_coredump =
> >                       vmalloc(sizeof(struct ql_mpi_coredump));
> > -             if (qdev->mpi_coredump == NULL) {
> > +             if (!qdev->mpi_coredump) {
> >                       err = -ENOMEM;
> >                       goto err_out2;
> >               }
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1572940458-109252-1-git-send-email-nachukannan%40gmail.com.
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1911050905350.2548%40hadrien.

