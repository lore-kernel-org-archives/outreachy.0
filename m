X-GM-THRID: 6671334644654276608
X-Received: by 2002:a6b:8f0a:: with SMTP id r10mr8454070iod.22.1553295431515;
        Fri, 22 Mar 2019 15:57:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:186:: with SMTP id 128ls3120263itk.4.canary-gmail; Fri,
 22 Mar 2019 15:57:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxonpG8gNkygBCZZWqtdkZFs6h2SAKKDV2OuXo1kocEDEIttrYWtoYMWpXmOG1uWSp7gV4G
X-Received: by 2002:a24:d9d0:: with SMTP id p199mr3541726itg.104.1553295430647;
        Fri, 22 Mar 2019 15:57:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553295430; cv=none;
        d=google.com; s=arc-20160816;
        b=z/MniDkLzq00agJChYMFj3ht+lBbVDh2B0KQbjEdTOrZECBkMKGFLIO2fsZ1l2y/41
         zy7+GUZFxWsmJagMR84VLZG5m8ZBwLG+UdE/EcKB2pvIWpjmuXwnQOoqJY9QHjWcHavg
         Z/wJcRwj5FbJ6NP6ZBCQdLUxqOpu4eI468vF8/mNXVLtYQlhAk6SKYd7MZEwdZPFpwvb
         WVRH14xfAwfhrc+kVJ0wdzCB2m7TPIFhBwZeinc0aJg+CqGWHFJapnNa26u7uzwsSJss
         +sV61QRl8wlY37yTmrBHQe8kDqpjD+fuIOgsfjSrNyUwMI5JVpBG/ciNxzXxgdmhU7Yj
         YuRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=TmC9Z9zs0lCUN+o0CtEKxAIvIy27oNJRNIY5D23uAcc=;
        b=gSxNi9YPMTJ0ANDJ7SQKKM3GXGyXLFz0n5ZfSD9lW69h3b1+IDdE3uD/5ILfpCYrQi
         0tKMTkbfeQcIYl/xyB9hXfaHP5p41oZMkEAQRqsUOZZZTNSNUquVa1amdfNGscdNz0pc
         nwsdv01rec9vlJgvQOZQVSsbZ8A0BChSMGkHaDdlNhpZPPvXlP22odigxPDkLBwU1D2n
         8SEiq8ym+JzpIzlIISvISAakD35R351USLzEtFrTViRIcgg1rc9yJHJGlC2INE/BNh2/
         uFJBY8REGlr94CAWK38TVbhWoh2d8ceudLhd4G9H679RksLwydf9K90KLB83eiIuj6f9
         kLhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jUSdg5wM;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::234 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com. [2607:f8b0:4864:20::234])
        by gmr-mx.google.com with ESMTPS id e74si754728ite.1.2019.03.22.15.57.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 15:57:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::234 as permitted sender) client-ip=2607:f8b0:4864:20::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jUSdg5wM;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::234 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x234.google.com with SMTP id i21so2927962oib.11
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Mar 2019 15:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=TmC9Z9zs0lCUN+o0CtEKxAIvIy27oNJRNIY5D23uAcc=;
        b=jUSdg5wMtNbqYC4uWeWpRv1IH0a/p4bxeyhC0Ve9BAwxQRICbxS3DTkF/MUo0/+/6N
         kuJ/he3JDIkfiqwVUC+KEAkEpnYYzoVYv0tzkWxnvae1wUOB/woDNajWm3sGF5KMhtmn
         aN6V1eRAB9zdmvMReEg78DxY0k+F5UP7jRHm8nghGxiTAb2LQHH77fGKEZxE4UQarDdn
         Lb/q2KlXlB5yuuoKGxmICGDcVCShwPINPC3jBFEZ3/5zbbkLVzfaUnXjX80rWWLEYoou
         ISSCW4jFDoIpsfqGrdKNXew8watLdcQJAlTaT/NboPIVTS6B20/blcBf3HZ06/jdLlD8
         QdSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=TmC9Z9zs0lCUN+o0CtEKxAIvIy27oNJRNIY5D23uAcc=;
        b=epKVgGtetUGhaNoXqYzcQD0l8+HMt//4OvxVWWKdNBcznh6sn5bdSD4252mfLfgtIw
         Qh5sKIEq2jY2sQRV8xzFz1NMNJvWpxFMGpK0OrL/5aXQ58Bhr9WWFTzHMR22GVFwdc8a
         U57VqOnyWbM8Ub5Qt3QC+WMN9unwxPtv+MuKMZF6dtM3MaWDpc6yB7twIlW70xv9s8U8
         It/YsK9eZPUMYdkmR7gV7EFcOqjTdb/YJsK8f5inaQZRQ6HTZGhKEFJ+ri2f6H28Xt++
         zxpQKsjxypmhErLcw/RgTDmN/E2NAESyEsNd0AIRWYwmQBLHBMb4/JsdNMVb9NnedSBB
         BkDw==
X-Gm-Message-State: APjAAAU0W1ipxksKCuAmCaiQFs8lvcG9KxX2rciuJDrqrX91vevALs7Y
	tOv5PPqV7vuEyPr0xQEv6kk=
X-Received: by 2002:aca:a88c:: with SMTP id r134mr3717637oie.139.1553295430328;
        Fri, 22 Mar 2019 15:57:10 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:25c4:3243:c335:9f7b])
        by smtp.gmail.com with ESMTPSA id l125sm3670728oif.0.2019.03.22.15.57.09
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 22 Mar 2019 15:57:09 -0700 (PDT)
Date: Fri, 22 Mar 2019 17:57:07 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: media: davinci_vpfe: Drop
 macros
Message-ID: <20190322225705.GA9278@madhuleo>
References: <20190322214534.24852-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1903222307510.2433@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1903222307510.2433@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Mar 22, 2019 at 11:13:12PM +0100, Julia Lawall wrote:
> 
> 
> On Fri, 22 Mar 2019, Madhumitha Prabakaran wrote:
> 
> > Drop macros instead use functions set_bit() and clear_bit directly.
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> >
> > ---
> > Changes in v3:
> > - Drop inline functions and use functions
> >
> > Changes in v2:
> > - Convert macros into inline functions
> > ---
> >  .../staging/media/davinci_vpfe/dm365_ipipeif.c   | 16 ++++++++--------
> >  .../staging/media/davinci_vpfe/dm365_ipipeif.h   |  2 --
> >  2 files changed, 8 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> > index 4380e0a8e6dc..81010bc19f0e 100644
> > --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> > +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> > @@ -296,14 +296,14 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
> >  		case MEDIA_BUS_FMT_YUYV8_1X16:
> >  		case MEDIA_BUS_FMT_UYVY8_2X8:
> >  		case MEDIA_BUS_FMT_Y8_1X8:
> > -			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > -			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> > +			clear_bit(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > +			set_bit(val, IPIPEIF_CFG2_YUV16_SHIFT);
> 
> I don't think that the arguments are in the right order.  And one of the
> arguments does not have the right type.  When I try to compile the result
> of applying this patch, it gives a lot of errors.  You should ensure that
> a patch doesn't give errors or warnings before submitting it.

Perhaps, in menuconfig, I couldn't able to configure particular driver.
So, when I build it, it showed no error. I assume, I don't have support
for that driver. 

thanks
> 
> julia
> 
> >  			ipipeif_write(val, ipipeif_base_addr, IPIPEIF_CFG2);
> >  			break;
> >
> >  		default:
> > -			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > -			RESETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> > +			clear_bit(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > +			clear_bit(val, IPIPEIF_CFG2_YUV16_SHIFT);
> >  			ipipeif_write(val, ipipeif_base_addr, IPIPEIF_CFG2);
> >  			break;
> >  		}
> > @@ -344,16 +344,16 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
> >  		switch (isif_port_if) {
> >  		case MEDIA_BUS_FMT_YUYV8_1X16:
> >  		case MEDIA_BUS_FMT_YUYV10_1X20:
> > -			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > -			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> > +			clear_bit(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > +			set_bit(val, IPIPEIF_CFG2_YUV16_SHIFT);
> >  			break;
> >
> >  		case MEDIA_BUS_FMT_YUYV8_2X8:
> >  		case MEDIA_BUS_FMT_UYVY8_2X8:
> >  		case MEDIA_BUS_FMT_Y8_1X8:
> >  		case MEDIA_BUS_FMT_YUYV10_2X10:
> > -			SETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > -			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
> > +			set_bit(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > +			set_bit(val, IPIPEIF_CFG2_YUV16_SHIFT);
> >  			val |= IPIPEIF_CBCR_Y << IPIPEIF_CFG2_YUV8P_SHIFT;
> >  			break;
> >
> > diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> > index 4685d64016de..4d126fc871f3 100644
> > --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> > +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
> > @@ -166,8 +166,6 @@ struct vpfe_ipipeif_device {
> >  #define IPIPEIF_RSZ_MIN			16
> >  #define IPIPEIF_RSZ_MAX			112
> >  #define IPIPEIF_RSZ_CONST		16
> > -#define SETBIT(reg, bit)   (reg = ((reg) | ((0x00000001)<<(bit))))
> > -#define RESETBIT(reg, bit) (reg = ((reg) & (~(0x00000001<<(bit)))))
> >
> >  #define IPIPEIF_ADOFS_LSB_MASK		0x1ff
> >  #define IPIPEIF_ADOFS_LSB_SHIFT		5
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190322214534.24852-1-madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

