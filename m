X-GM-THRID: 6949230853681577984
X-Received: by 2002:a17:90b:2341:: with SMTP id ms1mr15297094pjb.167.1618006516622;
        Fri, 09 Apr 2021 15:15:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8748:: with SMTP id g8ls2690041pfo.8.gmail; Fri, 09 Apr
 2021 15:15:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzvpVMBKFbkQtTAzwfXJ6LN9t6T3y6f0HjyDdKQKrhhs2nui0WTP45Du8Ag7FMDH8Wcu4nM
X-Received: by 2002:a05:6a00:1c77:b029:241:5c43:8cf5 with SMTP id s55-20020a056a001c77b02902415c438cf5mr14582825pfw.10.1618006515439;
        Fri, 09 Apr 2021 15:15:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618006515; cv=none;
        d=google.com; s=arc-20160816;
        b=c1QCL80rBu9pWTbyafoj68xwZuFyIQKqnf/iQP6oD+YIcD99NLNPVnM4XWrvZCR9e7
         7TznycPjhZDlXxMeLnZy4NnDIboNWRc2G+iLD7C4vn5OGcMNy74cZqPgTVTpHtrqVcvW
         hZTbbkV+7ODNiyHtOpdPwH1nNAPYtkwiGqQ5Nk5/eNr7mID0VAAKOSmhSiNd4ByrTUvL
         B2053BxOaY1+3TV7SngCtxrl8n9COHtoR2xV2nd0jH0GjJMZpaBtTRBP3Aekgkzbg3kQ
         G40sc+4uGPYYrJNtDe2ZTmlxidEXOON+E/BASlmZiuxmR3Q11hLvZsqydL25YsNKFn6s
         dCHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ORmmZNYrozUgIOjVYWEJY0rIfU4KKHuMFNUcu4DTNWk=;
        b=a9EHc2jL9qLoSIk7dmrKfGD93vUM/Q+uCMT4G7vHljUSMz8kfZh3Aqb/9vgMQmk228
         pHcuIokixJ+u81df9HeAspfhWMj2/bnNBlc5CCGXQBUxWwiN9oeIB1nQBkDbubgoqgLN
         lhMwhQoDyAtTK9IyViGqikSSYmgx8PHPlgJ1nFcDqv+Leob5X5jf/yUz+HcTdQD27QqE
         v6A/ms0ab0ip2jYy6cfKa2vOnvOV5p0jjrdnE/fv2yuSG29PTv4W1uPMGgg+8RqfKgXz
         gNdIW9wNS0rfeKdMmks6156nCsO+hk0UyqZ7xRYUNw/262tZy25Dmwa6mWuoYjKgmtkB
         I2SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E0DdH7Cs;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id g23si476663pfu.3.2021.04.09.15.15.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 15:15:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E0DdH7Cs;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x102d.google.com with SMTP id b8-20020a17090a5508b029014d0fbe9b64so5637907pji.5
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 15:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ORmmZNYrozUgIOjVYWEJY0rIfU4KKHuMFNUcu4DTNWk=;
        b=E0DdH7Cs3bNXaGFtUpLzusWHIneoEdcjp9aL3zzpLUYVH6/gAPpS9y8/cef8KyeWCg
         ydGpBkWWguEQYA4AtnmgmCp1ZWUD5DfRI7MNt4IsjU5ZWVzHvTe9uu4QuzD6t5soe9Vy
         THvjkYyfOmEDSQjdC2G7gkDaTgM9e5UGd1JwIZS+1jzEJQHh56k0UWaRlZ+ntHKcrcXo
         10AVN7R+K1KEzNXVz/+SBP3nO2gDQ9e87c116cDMaP5dpX4ILIIYbx9CMNGq52RU7q4V
         PVhAMvvl/QerlEzGwZC5FEuwJ5weMj4N4IIBwWNFUR6zIT2ugnVVP4XPhLH+aQ/MbIIT
         8XhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ORmmZNYrozUgIOjVYWEJY0rIfU4KKHuMFNUcu4DTNWk=;
        b=G1/6lKG6DwpsMtDb4AZnXDrd3SDONNjWN3FO+CPaR4kVKyrd9FmQ92cVI2xFNfvOVB
         Q/D7WwS9e0MnY0OMDWyv6drIOIWTyGv4DDlZNXUziI/ZpAnpDAPDwlgJnQVkSAr10H+n
         n72aVnGkMgGV0BMi/p8B92Lm8zfkpV5TYDNuFh20AuijN+Jg223DM6vjrSRVstW6mhJD
         7zAsmyJgFmvYZmjLf82VUkqA423YsGDZ9X1f4CWrOJmYX0egn+RKlXcZggO5gM/20XY6
         RnqHWk3QLHbQEyrG0cKsg8W0y+kLjQOW9GnYH1z5PQPOEPWjvJIvII15ofwqSVuGG8dp
         13kA==
X-Gm-Message-State: AOAM531D+xkQI/BwZxJmf154wxwd+V7xyo/xQWxca+/Es5X/PAPJ0Sfx
	Xtz+skzUt4U1gtROaB/P93g=
X-Received: by 2002:a17:902:904b:b029:e5:5cc5:877d with SMTP id w11-20020a170902904bb02900e55cc5877dmr15371136plz.50.1618006514971;
        Fri, 09 Apr 2021 15:15:14 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id g15sm3157198pjd.2.2021.04.09.15.15.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 15:15:14 -0700 (PDT)
Date: Sat, 10 Apr 2021 03:45:09 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] staging: media: zoran: remove
 and add comments; align code
Message-ID: <YHDR7VxighihfZd5@kali>
References: <YHCgnP6Jr6TbjwUy@kali>
 <alpine.DEB.2.22.394.2104092209200.23056@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2104092209200.23056@hadrien>

On Fri, Apr 09, 2021 at 10:12:12PM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 10 Apr 2021, Mitali Borkar wrote:
> 
> > Removed comments from the same line and added them to new line above the
> > blocks, aligned everything properly by using tabs to make code neater
> > and improve readability.
> >
> > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > ---
> >  drivers/staging/media/zoran/zr36057.h | 293 ++++++++++++++------------
> >  1 file changed, 162 insertions(+), 131 deletions(-)
> >
> > diff --git a/drivers/staging/media/zoran/zr36057.h b/drivers/staging/media/zoran/zr36057.h
> > index 93075459f910..198d344a8879 100644
> > --- a/drivers/staging/media/zoran/zr36057.h
> > +++ b/drivers/staging/media/zoran/zr36057.h
> > @@ -12,145 +12,176 @@
> >
> >  /* Zoran ZR36057 registers */
> >
> > -#define ZR36057_VFEHCR          0x000	/* Video Front End, Horizontal Configuration Register */
> > -#define ZR36057_VFEHCR_HS_POL             BIT(30)
> > -#define ZR36057_VFEHCR_H_START           10
> > +/* Video Front End, Horizontal Configuration Register */
> > +#define ZR36057_VFEHCR			0x000
> > +#define ZR36057_VFEHCR_HS_POL			BIT(30)
> 
> It looks like the alignment didn't work out here?  Check that the use of
> tabs is the same as on the nearby lines.
>
Do I need to align BIT(30), 10, 0x000 and rest in same column or should I
align them separately?

> > +#define ZR36057_VFEHCR_H_START		10
> >  #define ZR36057_VFEHCR_H_END		0
> >  #define ZR36057_VFEHCR_HMASK		0x3ff
> >
> > -#define ZR36057_VFEVCR          0x004	/* Video Front End, Vertical Configuration Register */
> > -#define ZR36057_VFEVCR_VS_POL             BIT(30)
> > -#define ZR36057_VFEVCR_V_START           10
> > +/* Video Front End, Vertical Configuration Register */
> > +#define ZR36057_VFEVCR			0x004
> > +#define ZR36057_VFEVCR_VS_POL			BIT(30)
> > +#define ZR36057_VFEVCR_V_START		10
> >  #define ZR36057_VFEVCR_V_END		0
> >  #define ZR36057_VFEVCR_VMASK		0x3ff
> >
> > -#define ZR36057_VFESPFR         0x008	/* Video Front End, Scaler and Pixel Format Register */
> > -#define ZR36057_VFESPFR_EXT_FL            BIT(26)
> > -#define ZR36057_VFESPFR_TOP_FIELD         BIT(25)
> > -#define ZR36057_VFESPFR_VCLK_POL          BIT(24)
> > -#define ZR36057_VFESPFR_H_FILTER         21
> > -#define ZR36057_VFESPFR_HOR_DCM          14
> > -#define ZR36057_VFESPFR_VER_DCM          8
> > -#define ZR36057_VFESPFR_DISP_MODE        6
> > -#define ZR36057_VFESPFR_YUV422          (0 << 3)
> > -#define ZR36057_VFESPFR_RGB888          BIT(3)
> > -#define ZR36057_VFESPFR_RGB565          (2 << 3)
> > -#define ZR36057_VFESPFR_RGB555          (3 << 3)
> > -#define ZR36057_VFESPFR_ERR_DIF          BIT(2)
> > -#define ZR36057_VFESPFR_PACK24          BIT(1)
> > -#define ZR36057_VFESPFR_LITTLE_ENDIAN    BIT(0)
> > -
> > -#define ZR36057_VDTR            0x00c	/* Video Display "Top" Register */
> > -
> > -#define ZR36057_VDBR            0x010	/* Video Display "Bottom" Register */
> > -
> > -#define ZR36057_VSSFGR          0x014	/* Video Stride, Status, and Frame Grab Register */
> > -#define ZR36057_VSSFGR_DISP_STRIDE       16
> > -#define ZR36057_VSSFGR_VID_OVF            BIT(8)
> > -#define ZR36057_VSSFGR_SNAP_SHOT          BIT(1)
> > -#define ZR36057_VSSFGR_FRAME_GRAB         BIT(0)
> > -
> > -#define ZR36057_VDCR            0x018	/* Video Display Configuration Register */
> > -#define ZR36057_VDCR_VID_EN               BIT(31)
> > -#define ZR36057_VDCR_MIN_PIX             24
> > -#define ZR36057_VDCR_TRITON              BIT(24)
> > -#define ZR36057_VDCR_VID_WIN_HT           12
> > -#define ZR36057_VDCR_VID_WIN_WID          0
> > -
> > -#define ZR36057_MMTR            0x01c	/* Masking Map "Top" Register */
> > -
> > -#define ZR36057_MMBR            0x020	/* Masking Map "Bottom" Register */
> > -
> > -#define ZR36057_OCR             0x024	/* Overlay Control Register */
> > -#define ZR36057_OCR_OVL_ENABLE            BIT(15)
> > -#define ZR36057_OCR_MASK_STRIDE          0
> > -
> > -#define ZR36057_SPGPPCR         0x028	/* System, PCI, and General Purpose Pins Control Register */
> > -#define ZR36057_SPGPPCR_SOFT_RESET	 BIT(24)
> > -
> > -#define ZR36057_GPPGCR1         0x02c	/* General Purpose Pins and GuestBus Control Register (1) */
> > -
> > -#define ZR36057_MCSAR           0x030	/* MPEG Code Source Address Register */
> > -
> > -#define ZR36057_MCTCR           0x034	/* MPEG Code Transfer Control Register */
> > -#define ZR36057_MCTCR_COD_TIME            BIT(30)
> > -#define ZR36057_MCTCR_C_EMPTY             BIT(29)
> > -#define ZR36057_MCTCR_C_FLUSH             BIT(28)
> > +/* Video Front End, Scaler and Pixel Format Register */
> > +#define ZR36057_VFESPFR			0x008
> > +#define ZR36057_VFESPFR_EXT_FL			BIT(26)
> > +#define ZR36057_VFESPFR_TOP_FIELD		BIT(25)
> > +#define ZR36057_VFESPFR_VCLK_POL		BIT(24)
> > +#define ZR36057_VFESPFR_H_FILTER	21
> > +#define ZR36057_VFESPFR_HOR_DCM		14
> > +#define ZR36057_VFESPFR_VER_DCM		8
> > +#define ZR36057_VFESPFR_DISP_MODE	6
> 
> The above four lines also look odd.
> 
> > +#define ZR36057_VFESPFR_YUV422			(0 << 3)
> > +#define ZR36057_VFESPFR_RGB888			BIT(3)
> 
> Was there really a BIT in the original code, or is this a patch against
> your previous patch?
>
No, I added BIT(3), originally it was (1<<3).

> > +#define ZR36057_VFESPFR_RGB565			(2 << 3)
> > +#define ZR36057_VFESPFR_RGB555			(3 << 3)
> > +#define ZR36057_VFESPFR_ERR_DIF			BIT(2)
> > +#define ZR36057_VFESPFR_PACK24			BIT(1)
> > +#define ZR36057_VFESPFR_LITTLE_ENDIAN		BIT(0)
> > +
> > +/* Video Display "Top" Register */
> > +#define ZR36057_VDTR			0x00c
> > +
> > +/* Video Display "Bottom" Register */
> > +#define ZR36057_VDBR			0x010
> > +
> > +/* Video Stride, Status, and Frame Grab Register */
> > +#define ZR36057_VSSFGR			0x014
> > +#define ZR36057_VSSFGR_DISP_STRIDE	16
> > +#define ZR36057_VSSFGR_VID_OVF			BIT(8)
> > +#define ZR36057_VSSFGR_SNAP_SHOT		BIT(1)
> > +#define ZR36057_VSSFGR_FRAME_GRAB		BIT(0)
> > +
> > +/* Video Display Configuration Register */
> > +#define ZR36057_VDCR			0x018
> > +#define ZR36057_VDCR_VID_EN			BIT(31)
> > +#define ZR36057_VDCR_MIN_PIX		24
> > +#define ZR36057_VDCR_TRITON			BIT(24)
> > +#define ZR36057_VDCR_VID_WIN_HT		12
> 
> These don't look well aligned either.
> 
> Please check on the rest.
>
Yes Ma'am, I am rechecking this.

> julia
> 
> 
> > +#define ZR36057_VDCR_VID_WIN_WID	0
> > +
> > +/* Masking Map "Top" Register */
> > +#define ZR36057_MMTR			0x01c
> > +
> > +/* Masking Map "Bottom" Register */
> > +#define ZR36057_MMBR			0x020
> > +
> > +/* Overlay Control Register */
> > +#define ZR36057_OCR			0x024
> > +#define ZR36057_OCR_OVL_ENABLE			BIT(15)
> > +#define ZR36057_OCR_MASK_STRIDE		0
> > +
> > +/* System, PCI, and General Purpose Pins Control Register */
> > +#define ZR36057_SPGPPCR			0x028
> > +#define ZR36057_SPGPPCR_SOFT_RESET		BIT(24)
> > +
> > +/* General Purpose Pins and GuestBus Control Register (1) */
> > +#define ZR36057_GPPGCR1			0x02c
> > +
> > +/* MPEG Code Source Address Register */
> > +#define ZR36057_MCSAR			0x030
> > +
> > +/* MPEG Code Transfer Control Register */
> > +#define ZR36057_MCTCR			0x034
> > +#define ZR36057_MCTCR_COD_TIME			BIT(30)
> > +#define ZR36057_MCTCR_C_EMPTY			BIT(29)
> > +#define ZR36057_MCTCR_C_FLUSH			BIT(28)
> >  #define ZR36057_MCTCR_COD_GUEST_ID	20
> >  #define ZR36057_MCTCR_COD_GUEST_REG	16
> >
> > -#define ZR36057_MCMPR           0x038	/* MPEG Code Memory Pointer Register */
> > -
> > -#define ZR36057_ISR             0x03c	/* Interrupt Status Register */
> > -#define ZR36057_ISR_GIRQ1                BIT(30)
> > -#define ZR36057_ISR_GIRQ0                BIT(29)
> > -#define ZR36057_ISR_COD_REP_IRQ            BIT(28)
> > -#define ZR36057_ISR_JPEG_REP_IRQ           BIT(27)
> > -
> > -#define ZR36057_ICR             0x040	/* Interrupt Control Register */
> > -#define ZR36057_ICR_GIRQ1                BIT(30)
> > -#define ZR36057_ICR_GIRQ0                BIT(29)
> > -#define ZR36057_ICR_COD_REP_IRQ            BIT(28)
> > -#define ZR36057_ICR_JPEG_REP_IRQ           BIT(27)
> > -#define ZR36057_ICR_INT_PIN_EN             BIT(24)
> > -
> > -#define ZR36057_I2CBR           0x044	/* I2C Bus Register */
> > -#define ZR36057_I2CBR_SDA		 BIT(1)
> > -#define ZR36057_I2CBR_SCL		 BIT(0)
> > -
> > -#define ZR36057_JMC             0x100	/* JPEG Mode and Control */
> > -#define ZR36057_JMC_JPG                  BIT(31)
> > -#define ZR36057_JMC_JPG_EXP_MODE          (0 << 29)
> > -#define ZR36057_JMC_JPG_CMP_MODE           BIT(29)
> > -#define ZR36057_JMC_MJPG_EXP_MODE         (2 << 29)
> > -#define ZR36057_JMC_MJPG_CMP_MODE         (3 << 29)
> > -#define ZR36057_JMC_RTBUSY_FB            BIT(6)
> > -#define ZR36057_JMC_GO_EN                BIT(5)
> > -#define ZR36057_JMC_SYNC_MSTR             BIT(4)
> > -#define ZR36057_JMC_FLD_PER_BUFF         BIT(3)
> > -#define ZR36057_JMC_VFIFO_FB             BIT(2)
> > -#define ZR36057_JMC_CFIFO_FB             BIT(1)
> > -#define ZR36057_JMC_STLL_LIT_ENDIAN       BIT(0)
> > -
> > -#define ZR36057_JPC             0x104	/* JPEG Process Control */
> > -#define ZR36057_JPC_P_RESET              BIT(7)
> > -#define ZR36057_JPC_COD_TRNS_EN            BIT(5)
> > -#define ZR36057_JPC_ACTIVE               BIT(0)
> > -
> > -#define ZR36057_VSP             0x108	/* Vertical Sync Parameters */
> > -#define ZR36057_VSP_VSYNC_SIZE           16
> > -#define ZR36057_VSP_FRM_TOT              0
> > -
> > -#define ZR36057_HSP             0x10c	/* Horizontal Sync Parameters */
> > -#define ZR36057_HSP_HSYNC_START          16
> > -#define ZR36057_HSP_LINE_TOT             0
> > -
> > -#define ZR36057_FHAP            0x110	/* Field Horizontal Active Portion */
> > -#define ZR36057_FHAP_NAX                16
> > -#define ZR36057_FHAP_PAX                0
> > -
> > -#define ZR36057_FVAP            0x114	/* Field Vertical Active Portion */
> > -#define ZR36057_FVAP_NAY                16
> > -#define ZR36057_FVAP_PAY                0
> > -
> > -#define ZR36057_FPP             0x118	/* Field Process Parameters */
> > -#define ZR36057_FPP_ODD_EVEN             BIT(0)
> > -
> > -#define ZR36057_JCBA            0x11c	/* JPEG Code Base Address */
> > -
> > -#define ZR36057_JCFT            0x120	/* JPEG Code FIFO Threshold */
> > -
> > -#define ZR36057_JCGI            0x124	/* JPEG Codec Guest ID */
> > -#define ZR36057_JCGI_JPE_GUEST_ID         4
> > -#define ZR36057_JCGI_JPE_GUEST_REG        0
> > -
> > -#define ZR36057_GCR2            0x12c	/* GuestBus Control Register (2) */
> > -
> > -#define ZR36057_POR             0x200	/* Post Office Register */
> > -#define ZR36057_POR_PO_PEN                BIT(25)
> > -#define ZR36057_POR_PO_TIME               BIT(24)
> > -#define ZR36057_POR_PO_DIR                BIT(23)
> > -
> > -#define ZR36057_STR             0x300	/* "Still" Transfer Register */
> > +/* MPEG Code Memory Pointer Register */
> > +#define ZR36057_MCMPR			0x038
> > +
> > +/* Interrupt Status Register */
> > +#define ZR36057_ISR			0x03c
> > +#define ZR36057_ISR_GIRQ1			BIT(30)
> > +#define ZR36057_ISR_GIRQ0			BIT(29)
> > +#define ZR36057_ISR_COD_REP_IRQ			BIT(28)
> > +#define ZR36057_ISR_JPEG_REP_IRQ		BIT(27)
> > +
> > +/* Interrupt Control Register */
> > +#define ZR36057_ICR			0x040
> > +#define ZR36057_ICR_GIRQ1			BIT(30)
> > +#define ZR36057_ICR_GIRQ0			BIT(29)
> > +#define ZR36057_ICR_COD_REP_IRQ			BIT(28)
> > +#define ZR36057_ICR_JPEG_REP_IRQ		BIT(27)
> > +#define ZR36057_ICR_INT_PIN_EN			BIT(24)
> > +
> > +/* I2C Bus Register */
> > +#define ZR36057_I2CBR			0x044
> > +#define ZR36057_I2CBR_SDA			BIT(1)
> > +#define ZR36057_I2CBR_SCL			BIT(0)
> > +
> > +/* JPEG Mode and Control */
> > +#define ZR36057_JMC			0x100
> > +#define ZR36057_JMC_JPG				BIT(31)
> > +#define ZR36057_JMC_JPG_EXP_MODE		(0 << 29)
> > +#define ZR36057_JMC_JPG_CMP_MODE		BIT(29)
> > +#define ZR36057_JMC_MJPG_EXP_MODE		(2 << 29)
> > +#define ZR36057_JMC_MJPG_CMP_MODE		(3 << 29)
> > +#define ZR36057_JMC_RTBUSY_FB			BIT(6)
> > +#define ZR36057_JMC_GO_EN			BIT(5)
> > +#define ZR36057_JMC_SYNC_MSTR			BIT(4)
> > +#define ZR36057_JMC_FLD_PER_BUFF		BIT(3)
> > +#define ZR36057_JMC_VFIFO_FB			BIT(2)
> > +#define ZR36057_JMC_CFIFO_FB			BIT(1)
> > +#define ZR36057_JMC_STLL_LIT_ENDIAN		BIT(0)
> > +
> > +/* JPEG Process Control */
> > +#define ZR36057_JPC			0x104
> > +#define ZR36057_JPC_P_RESET			BIT(7)
> > +#define ZR36057_JPC_COD_TRNS_EN			BIT(5)
> > +#define ZR36057_JPC_ACTIVE			BIT(0)
> > +
> > +/* Vertical Sync Parameters */
> > +#define ZR36057_VSP			0x108
> > +#define ZR36057_VSP_VSYNC_SIZE		16
> > +#define ZR36057_VSP_FRM_TOT		0
> > +
> > +/* Horizontal Sync Parameters */
> > +#define ZR36057_HSP			0x10c
> > +#define ZR36057_HSP_HSYNC_START		16
> > +#define ZR36057_HSP_LINE_TOT		0
> > +
> > +/* Field Horizontal Active Portion */
> > +#define ZR36057_FHAP			0x110
> > +#define ZR36057_FHAP_NAX		16
> > +#define ZR36057_FHAP_PAX		0
> > +
> > +/* Field Vertical Active Portion */
> > +#define ZR36057_FVAP			0x114
> > +#define ZR36057_FVAP_NAY		16
> > +#define ZR36057_FVAP_PAY		0
> > +
> > +/* Field Process Parameters */
> > +#define ZR36057_FPP			0x118
> > +#define ZR36057_FPP_ODD_EVEN			BIT(0)
> > +
> > +/* JPEG Code Base Address */
> > +#define ZR36057_JCBA			0x11c
> > +
> > +/* JPEG Code FIFO Threshold */
> > +#define ZR36057_JCFT			0x120
> > +
> > +/* JPEG Codec Guest ID */
> > +#define ZR36057_JCGI			0x124
> > +#define ZR36057_JCGI_JPE_GUEST_ID	4
> > +#define ZR36057_JCGI_JPE_GUEST_REG	0
> > +
> > +/* GuestBus Control Register (2) */
> > +#define ZR36057_GCR2			0x12c
> > +
> > +/* Post Office Register */
> > +#define ZR36057_POR			0x200
> > +#define ZR36057_POR_PO_PEN			BIT(25)
> > +#define ZR36057_POR_PO_TIME			BIT(24)
> > +#define ZR36057_POR_PO_DIR			BIT(23)
> > +
> > +/* "Still" Transfer Register */
> > +#define ZR36057_STR			0x300
> >
> >  #endif
> > --
> > 2.30.2
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/YHCgnP6Jr6TbjwUy%40kali.
> >

