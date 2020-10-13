X-GM-THRID: 6883028084998537216
X-Received: by 2002:a0c:8dc4:: with SMTP id u4mr19827956qvb.34.1602600092517;
        Tue, 13 Oct 2020 07:41:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:34b:: with SMTP id t11ls49692qkm.4.gmail; Tue, 13
 Oct 2020 07:41:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyzcojJSDHABlNIOobEZrDjQVz5/XdipAXmV7ecaVWclsxGbjgQNUSSN6qanKKQi6VkBMOw
X-Received: by 2002:a37:7183:: with SMTP id m125mr252750qkc.237.1602600090988;
        Tue, 13 Oct 2020 07:41:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602600090; cv=none;
        d=google.com; s=arc-20160816;
        b=ikQa/1OeKtOqZE4k7Z0++c2AGOqz0ZTYmPxmjjS1rC15RB22UHg2FMWdiFgzZDKrtn
         NIRM13YJL2pRfQb7ds28GXN3j6YYSKqUChly6H8xLxxE/Wug1As0q0RfhVfbsWU4npF4
         VYDu8Y0uvoZjs0m2gh3NkJYDL1TEf5I7xYlg/3wBdx/NVaAW/jrYsfLntCCunbHMUCWZ
         er9GUyZevJ28Ns3RJD+EN5ZEQirEFid0OWh015PdLMCt7s1KOwjDWj6XKpimAbplz6Oz
         cvTnVCtBn8I2TGFyxsGmZr9emrj9x+7mFLBUuHPT+uOK7rDkGWlBEq8Gtfek0ZGGXY4K
         afww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ZUHQ2eJfNnZbMU4K/hWxj89KYPS8zzWZRF81XGzKXz4=;
        b=Fyiv50iTs9O2CJi/7a7OMgoYyhAiYt1EnvYwmEQbhXSw0Uiutmk8A1v6fKs1j2owBa
         79vSW8Hemy5+phDhUk/7p4Oh4HuqbTlE5ywKcvWUZ9Dloy1DpDqq5KZyD/Ll3eU43IjD
         c3MHyIr/gNqaHUz0LL6Jm8vT49CW+Zwlufc1mCBbKr4fqEqZ2iru36lrDnGeKPvO0H4m
         O2aV+7UCQfJdtvr0e5B1Pcv7BnO8Vc1xe9OwTQZLyuGyrZ5ap/G0BDe8SghI0zULQN4o
         gC5Z6YocAdFtRZSkvlltCjvxaUMkJ7vGIy31/qDXQG+zNX7/Q0cNhTqywCWEuXp9Xz4S
         5Ubg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X7fVLFP7;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id l15si2633qtb.0.2020.10.13.07.41.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Oct 2020 07:41:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X7fVLFP7;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id b26so16877253pff.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2020 07:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ZUHQ2eJfNnZbMU4K/hWxj89KYPS8zzWZRF81XGzKXz4=;
        b=X7fVLFP7MyK9lZl5OyvsTUWYfANOkpUPRp/0/35VwnFfAZ9R9z53f9T0Mr6qgQF6yv
         wr6hB5WRPooqmq8FCVd2hzr35nRDe/ItWkrMJv5I2sLDlKC8tH/Bf1PcvSLigTdFOmHT
         ABiMw6RRtxp8DD9sXqp2kYL13WvhJGQrVBseWNp9p1eJGjIDppFzNbK0oN5GU7ja+gtV
         pdMxtgRpeqJlHLRR090vxFPTgd/PUx/9zZ9gz2BeQg24avgBID0sN1Vd5+EBriZNmCwq
         T2SPHpq8OossK1B6s4bLIQ90ScqG42fIEQk27Tf0DG/bNrhzFHVWEx7kbxm2NhuX4OUc
         6P9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ZUHQ2eJfNnZbMU4K/hWxj89KYPS8zzWZRF81XGzKXz4=;
        b=p9IiRQ4//kBBoKDR0cw/lgEFGDrQdM3LSkJkhw7IU/gBYEuZhCLcQfCxygIn5edCFk
         5Wm6Ot6nHdB90AcQXhYT9CQbyOOz2J9W1xByIpBK+wKgYvRyM1/m+GVkXPnFWbOtQzup
         IJWcGJcRzXJOIUJute0U65nMnUzdHGAZ/3B7WsGv8xb3nZ8wYtj1S6QVwdWqC1S2kwiK
         aFlszspZysMk35p/nEVDFTQ2591VMUcANj8GZmhiGmAKyNdiEgUVMwKdjyrWFq8TUxjq
         +A5BvFmdFezg916e/nhimo+4aIArMC4MV+TFOSU48V/cbckiE+sXg6VnrODcrJ2LP+qC
         BOGQ==
X-Gm-Message-State: AOAM5316pIzbbl1Psn/4MZpwNVW93kcyPJ624HVKKBy6XaOcFqhHH/Tx
	3PT7FKz83IYmVO+er54FOSNPHxFP21wc3w==
X-Received: by 2002:a63:4b26:: with SMTP id y38mr14879821pga.342.1602600090638;
        Tue, 13 Oct 2020 07:41:30 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id k9sm22122345pfc.96.2020.10.13.07.41.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2020 07:41:30 -0700 (PDT)
Date: Tue, 13 Oct 2020 20:11:23 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Cc: outreachy-kernel@googlegroups.com,
	Steve Longerbeam <slongerbeam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] staging: media: imx: remove
 unnecessary variable use
Message-ID: <20201013144123.GA41828@ubuntu204>
References: <f484d024b14104cff4f54bad3da52151847a0b28.1602593826.git.mh12gx2825@gmail.com>
 <5fcd93b57b9232f38fd6d7bc4f685de7ed827628.1602593826.git.mh12gx2825@gmail.com>
 <CAK-LDbJL71n+XUzaqaZ7x4Aifd316M1FTv2jPrMx01gcrn1yGg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK-LDbJL71n+XUzaqaZ7x4Aifd316M1FTv2jPrMx01gcrn1yGg@mail.gmail.com>

On Tue, Oct 13, 2020 at 07:23:46PM +0530, Vaishali Thakkar wrote:
> On Tue, Oct 13, 2020 at 6:39 PM Deepak R Varma <mh12gx2825@gmail.com> wrote:
> >
> > Variable vc_num usage is unnecessary as it used only once. Instead, the
> > value can directly be used in place of the variable.
> 
> There is something off with this commit log[e.g. missing words etc].
> Probably you can reorganize the words like 'Use of variable
> vc_num is unnecessary here because it is being used only once.
> The value can be used directly.'
> 
> How did you find this? If checkpatch.pl was used for it,
> you should give it a credit in the commit log.
> 
> Also, [unrelated to this change] Greg doesn't pick patches
> for drivers/staging/media so as mentioned in the
> announcement email, you should avoid sending patches
> in media subsystem during the contribution period of Outreachy
> as we can't be sure that they'll be picked up during the timeline
> of a program.
> 

Thank you for the review and comments. I will update and resend the
patch.

Also, my apologies for missing the message about /media specific patches in 
the announcement email. However, since I have already made the change and you 
all have provided feedback, I would like to go ahead with this patch
submission. However, I will avoid any further patch for this driver set
for now.

Thank you again.
Deepak.


> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> >
> > ---
> >  Changes since v1:
> >     - Implement feedback from Julia to be exact with the patch description
> >
> >  drivers/staging/media/imx/imx-media-csi.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
> > index 9320e3974d86..db77fef07654 100644
> > --- a/drivers/staging/media/imx/imx-media-csi.c
> > +++ b/drivers/staging/media/imx/imx-media-csi.c
> > @@ -1123,7 +1123,6 @@ static int csi_link_validate(struct v4l2_subdev *sd,
> >         priv->upstream_ep = upstream_ep;
> >         is_csi2 = !is_parallel_bus(&upstream_ep);
> >         if (is_csi2) {
> > -               int vc_num = 0;
> >                 /*
> >                  * NOTE! It seems the virtual channels from the mipi csi-2
> >                  * receiver are used only for routing by the video mux's,
> > @@ -1131,7 +1130,7 @@ static int csi_link_validate(struct v4l2_subdev *sd,
> >                  * enters the CSI's however, they are treated internally
> >                  * in the IPU as virtual channel 0.
> >                  */
> > -               ipu_csi_set_mipi_datatype(priv->csi, vc_num,
> > +               ipu_csi_set_mipi_datatype(priv->csi, 0,
> >                                           &priv->format_mbus[CSI_SINK_PAD]);
> >         }
> >
> > --
> > 2.25.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/5fcd93b57b9232f38fd6d7bc4f685de7ed827628.1602593826.git.mh12gx2825%40gmail.com.
> 
> 
> 
> --
> Vaishali
> http://vaishalithakkar.in/

