X-GM-THRID: 6883539581978804224
X-Received: by 2002:ac8:4b51:: with SMTP id e17mr4302707qts.15.1602867645062;
        Fri, 16 Oct 2020 10:00:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ae9:d802:: with SMTP id u2ls1493502qkf.5.gmail; Fri, 16 Oct
 2020 10:00:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwg9cjx+YaqmEhM2tfXWz0+9Bjoq0+c+VdigWCnytXz4S9kcer1DoEUc0oiZa8GNRYPMbW+
X-Received: by 2002:a37:a9cf:: with SMTP id s198mr4830733qke.216.1602867643457;
        Fri, 16 Oct 2020 10:00:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602867643; cv=none;
        d=google.com; s=arc-20160816;
        b=nbJM4Vp6cGExODKZcvVI4QRAabeq5teES7y5ENNpA4/hwm0wKqwOMlLTsCN3h7Lpxg
         Ne0EWCkIB2ThA6X0g1i8IfuZ3PixmHvGqhTYuG+VTWSc7IYMtMWJKLHQU181qJ93lvJH
         VcK78pDx+MK2NrLPoMpF+v/kEz03GPZDSJ/k7J9V86V4eRXcIaM/qgI0iJlN0/ap3OD6
         jDSjS6i5ofwFKjgQyUCS60evMTH0gbvbMqxZXiC1RYBcDw2gDkkd9bMwarGT76fMUOK1
         KzMglu+HcNCQJ8s52ye9UJ9NiLLwV3JfGYN+DngFW+vU/Octet7C8O6nNw4Eam2F5zNT
         0wXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KDEwZLyE0/GE3v1clZdkLUH98AvnjhpLbX8wd4PFCGw=;
        b=zwdDyiyCZHVCRqmWljT824GRBajHfhdipegw6TFmnuw22sBoDs4B3gnkY4JtHYbRKP
         TIRx5sycF4V50a+Xk/UdNnoHTl6lylc+PqHGJnYlQyC4Mv1mn10DsF1ndWDZaVeCgQTg
         t5zqXpBa+ieebd7Dgcio7STAPG1DwBNE1lhxErt17O3kykCwwCEilcRWhJFIlp2itnM5
         9loasJ4D8U4PKjcXLKdPTqp9ncazEnjTTfuY2A0ZYh4++qnU8F0s5O3U7JvwSlrLuvn4
         mX8dXsLEs4HTu0SenCpLPRq4OUbGT/zC9ZqrRWiwWrzxEJNsQZEpaFLd7nW9oqMQMRP3
         b3SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GE6WuasB;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id z205si191098qkb.1.2020.10.16.10.00.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 10:00:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GE6WuasB;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id j8so1845751pjy.5
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2020 10:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=KDEwZLyE0/GE3v1clZdkLUH98AvnjhpLbX8wd4PFCGw=;
        b=GE6WuasBYzoQ+Wsx3JOCDIv2Kfk0SodHOqxQGi4DOaysHXcVbFzXtq0aW7sH2K/lCQ
         DgRCDnzbxg8E88fF4sTp6EZKTOFuYqbx6UkZaVYHkkOBlU6vNOcMgKD5gPZzyiAAWx4W
         tIszAaXpODI4WVGEvQK8YYEHegagA17c/mhF9/Bn3VzM6vMHghQ6lj+dXSDQ5KUsLYJ9
         H3ZuFOy/5faEehoOSZnHRbSzAGA8Xy7G4H4Ak/CHuoAnIRwe8s9Doc9jbl6as/5aooiK
         ungOmw8mhgnPjha06d7E8lbCFd/nWtP1zGDyToMeGu9lkLY5p+/GpCt4KUMVs3kjk0G7
         YuYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=KDEwZLyE0/GE3v1clZdkLUH98AvnjhpLbX8wd4PFCGw=;
        b=TCm2fVXbZYw1UxIylZNnGay+Heg5BTDeDWKcg+dAOMBLK8p68vT9HhD+S22kWXAY89
         qRAaXsOSf2yJVkXW0BAxDIPWHLEfbgKq6V8Ofz0ALhVyNYZm7g+fWmPMOAu2+JJWsMZ2
         lz6xbFBM4DhTWva+jfydGO+wSxwC3f7awg/b2GUvKLVwmghO/hpgTdysZXOmcw1wi+mO
         FHfQfxINpnvjqI186EQAPs33Ue5VHdZVdcADD480ZInncMVticEqAvI/8EbhEuI1RtPF
         d86TvoqETfwhjPCMyFYurnELHcU0WVGtTVTKtrllQ4BxIuKfvN465UAHmV8wBnEig0jE
         Wr7w==
X-Gm-Message-State: AOAM533pbU7ia/qZPLT3BfZAoG8yDebW3EsvzvsI2IBz9OLi+pSSgVJ+
	rre25tkkPRLHWEGovT9jo1Y=
X-Received: by 2002:a17:902:8eca:b029:d2:4276:1b2d with SMTP id x10-20020a1709028ecab02900d242761b2dmr5021977plo.17.1602867642598;
        Fri, 16 Oct 2020 10:00:42 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id v10sm3600835pjf.34.2020.10.16.10.00.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2020 10:00:42 -0700 (PDT)
Date: Fri, 16 Oct 2020 22:30:36 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Cc: Outreachy <outreachy-kernel@googlegroups.com>,
	Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: qlge: remove extra blank
 lines
Message-ID: <20201016170036.GA36559@ubuntu204>
References: <20201015031946.GA16455@ubuntu204>
 <CAK-LDbJpBYPDfpnww=QVSqTvAzzp4gju7udbJsHarQ8eAiWotQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK-LDbJpBYPDfpnww=QVSqTvAzzp4gju7udbJsHarQ8eAiWotQ@mail.gmail.com>

On Thu, Oct 15, 2020 at 02:14:14PM +0530, Vaishali Thakkar wrote:
> On Thu, Oct 15, 2020 at 8:49 AM Deepak R Varma <mh12gx2825@gmail.com> wrote:
> >
> > Remove unnecessary blank lines as per the coding style guidelines.
> > Issue reported by checkpatch script.
> 
> It seems like your mail client [or maybe you] is adding an
> extra blank line after signed-off-by. You should fix that in
> your setting. Other than that, the change looks fine to me.
> 

That was me. I will take care going forward.
Thank you.

Deepak.

> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> 
> Reviewed-by: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
> 
> > ---
> > Changes since v1:
> >    - Correct typo in the patch description.
> >
> >  drivers/staging/qlge/qlge_main.c | 9 ---------
> >  1 file changed, 9 deletions(-)
> >
> > diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
> > index cb19cd35d0da..406374a5a431 100644
> > --- a/drivers/staging/qlge/qlge_main.c
> > +++ b/drivers/staging/qlge/qlge_main.c
> > @@ -756,7 +756,6 @@ static int ql_get_8012_flash_params(struct ql_adapter *qdev)
> >                                   "Error reading flash.\n");
> >                         goto exit;
> >                 }
> > -
> >         }
> >
> >         status = ql_validate_flash(qdev,
> > @@ -1225,7 +1224,6 @@ static void ql_unmap_send(struct ql_adapter *qdev,
> >                                                      maplen), DMA_TO_DEVICE);
> >                 }
> >         }
> > -
> >  }
> >
> >  /* Map the buffers for this transmit.  This will return
> > @@ -1339,7 +1337,6 @@ static int ql_map_send(struct ql_adapter *qdev,
> >                 dma_unmap_addr_set(&tx_ring_desc->map[map_idx], mapaddr, map);
> >                 dma_unmap_len_set(&tx_ring_desc->map[map_idx], maplen,
> >                                   skb_frag_size(frag));
> > -
> >         }
> >         /* Save the number of segments we've mapped. */
> >         tx_ring_desc->map_cnt = map_idx;
> > @@ -2103,7 +2100,6 @@ static int ql_clean_outbound_rx_ring(struct rx_ring *rx_ring)
> >         struct tx_ring *tx_ring;
> >         /* While there are entries in the completion queue. */
> >         while (prod != rx_ring->cnsmr_idx) {
> > -
> >                 netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
> >                              "cq_id = %d, prod = %d, cnsmr = %d\n",
> >                              rx_ring->cq_id, prod, rx_ring->cnsmr_idx);
> > @@ -2111,7 +2107,6 @@ static int ql_clean_outbound_rx_ring(struct rx_ring *rx_ring)
> >                 net_rsp = (struct ob_mac_iocb_rsp *)rx_ring->curr_entry;
> >                 rmb();
> >                 switch (net_rsp->opcode) {
> > -
> >                 case OPCODE_OB_MAC_TSO_IOCB:
> >                 case OPCODE_OB_MAC_IOCB:
> >                         ql_process_mac_tx_intr(qdev, net_rsp);
> > @@ -2150,7 +2145,6 @@ static int ql_clean_inbound_rx_ring(struct rx_ring *rx_ring, int budget)
> >
> >         /* While there are entries in the completion queue. */
> >         while (prod != rx_ring->cnsmr_idx) {
> > -
> >                 netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
> >                              "cq_id = %d, prod = %d, cnsmr = %d\n",
> >                              rx_ring->cq_id, prod, rx_ring->cnsmr_idx);
> > @@ -2462,7 +2456,6 @@ static irqreturn_t qlge_isr(int irq, void *dev_id)
> >
> >  static int ql_tso(struct sk_buff *skb, struct ob_mac_tso_iocb_req *mac_iocb_ptr)
> >  {
> > -
> >         if (skb_is_gso(skb)) {
> >                 int err;
> >                 __be16 l3_proto = vlan_get_protocol(skb);
> > @@ -2869,7 +2862,6 @@ static void ql_free_rx_resources(struct ql_adapter *qdev,
> >  static int ql_alloc_rx_resources(struct ql_adapter *qdev,
> >                                  struct rx_ring *rx_ring)
> >  {
> > -
> >         /*
> >          * Allocate the completion queue for this rx_ring.
> >          */
> > @@ -3798,7 +3790,6 @@ static int ql_wol(struct ql_adapter *qdev)
> >
> >  static void ql_cancel_all_work_sync(struct ql_adapter *qdev)
> >  {
> > -
> >         /* Don't kill the reset worker thread if we
> >          * are in the process of recovery.
> >          */
> > --
> > 2.25.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201015031946.GA16455%40ubuntu204.
> 
> 
> 
> -- 
> Vaishali
> http://vaishalithakkar.in/

