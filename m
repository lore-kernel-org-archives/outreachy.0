X-GM-THRID: 6948889025177452544
X-Received: by 2002:a5d:9401:: with SMTP id v1mr402025ion.101.1617981084599;
        Fri, 09 Apr 2021 08:11:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6e02:1bca:: with SMTP id x10ls915875ilv.7.gmail; Fri, 09
 Apr 2021 08:11:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxvjpr9sXyQ3PE4v1LlHhW0mtzmqv20iXz7Fnwp8KZSrFb5v7zDlz5BHBpoRO+9J4CWORxd
X-Received: by 2002:a05:6e02:dd1:: with SMTP id l17mr10880509ilj.173.1617981082660;
        Fri, 09 Apr 2021 08:11:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617981082; cv=none;
        d=google.com; s=arc-20160816;
        b=ngVBsuksOc4QXxGI2ygaK0Wfq76xQXFThWzdnCveanIMven2rAnY0oPJjAoEgWLJZj
         5zFe5UA9vrUyfbQSRmhLkj7XbK8141zLQyP+aoGZ1Oa/7pZPbDPe1yWvmr0kKmLx7wBR
         66ltPRlzRTarqqmK5vWgMGSbST/FytIFUWxfDefYxfhs/s3HZeqfztWomBMqNdEJtKl9
         YWUiSuyaaPvwHzkiOhCmG9gffNkFhpbb7ZoE6lFl8t58MFik5tYMkXUPz/R3ydB4nz6I
         1Mh7zaqeG6/llL9c5EYFDAJuC6au8C8Z1VpLdtKYDqEvc4D5DQUhlp4ZP20QB9E3y44z
         X83w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VwUEOjH92oEmqBKxM4cMkLQe6zVpWnWnVa3MdaDyiVA=;
        b=cF64u7UntLJ2lB/t6vYtiYdlIC/h0Sr/iY9dlyK+NQsybxYjV8tOBYJJxrjRr/okHt
         ym54sPBQa5HkMKvQOQlD1LTvTxhc40/481pKiudXQYhy8ZgY9KH+eaY5Cgr4ue/qnj+F
         hfC4dK52xRUXGbFry1hOkx74mQybL2k+YBpzOBIyfl82b3wEeeYiQhdHCvHr3zYWr4SP
         yPLSxvV4wUkYhZKpRBzwwo1s+a8DHDg9IEyzUKMGgGVj1Zibhz38cXUHdDZxGI8yjTX2
         FY/Zo23X8zsck6Xn10y9fq7UUr8AiVyXBbHCdhak7cFGahXEUEEEigrnqLD8ngoIK7gX
         Nxcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t+KI1fbe;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id n13si165230iop.3.2021.04.09.08.11.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 08:11:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t+KI1fbe;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1036.google.com with SMTP id nh5so3031395pjb.5
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 08:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=VwUEOjH92oEmqBKxM4cMkLQe6zVpWnWnVa3MdaDyiVA=;
        b=t+KI1fbe9X4IP5EGG6zIQ2ul1lnbw29irRB7xkpOExmizGzlI7gt9i76FYU48kKvB5
         vrLLN7tEnKskpxcHd9fR2SsZeprUCUD0HuVAlw5G/+s5b+wuDgUATqyk2k0kL/K44rpv
         E9qlT8CtGb40jqKe1Cj/Q1J4UzEHKr8GILTCmMDSLhORZQRR6iSKd6UzvKvOrccrZ0tl
         dyBszdSs6FOCp/8E2kfCbTSAzlFEdlbYV3umSDlTrqf3z8aPoPbh5Eb3JkpW6Mlf5oBi
         mInmwgd5/ZoSRSnVr7dbSQQfBwIkhN1xrrhYcAhAxahVvB7hAsjNtGNg2Zae+Iw1C3mJ
         k4+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=VwUEOjH92oEmqBKxM4cMkLQe6zVpWnWnVa3MdaDyiVA=;
        b=Z9gvfLz/fbiGm6I8eftJmGZYmowaQrx1C9q+nSo05cxW/iHNPqQpdNz2riQP+WSkLq
         2eZUtqqrpGxBbZJUbYUN/K0zFDWXu13OK5KnQGc3POwQFlKLmevflKzsp9kWg5Zmk3Pe
         knIwNf8w3zs/hf1flEZfrTCrUrFhzNQuHWtNl+cCiTPCsrtbHiVZ1vMsPdmwV0y2mBMv
         0miwnFSjNhKNqJE923YO0niYgDT7kDQv8J+gn4wC1OrMJJUBNPR66o6lzfWhQyqXJK0X
         A+0oKUZGN6CNsjZ1dOlNMcBOgGfDEY115xm8ejkWZqjA62AvRd3jAYec7y6DtftmQx5O
         tHwQ==
X-Gm-Message-State: AOAM531l2G2D4uzBaB33jb+N41XlWnzbMun/aCYoZl5mGbwpTGbxZqcq
	QrlCU2q9oHapw8XiXuIQm+w=
X-Received: by 2002:a17:902:da81:b029:e5:de44:af5b with SMTP id j1-20020a170902da81b02900e5de44af5bmr13397777plx.27.1617981081975;
        Fri, 09 Apr 2021 08:11:21 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id x2sm3371705pgb.89.2021.04.09.08.11.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 08:11:21 -0700 (PDT)
Date: Fri, 9 Apr 2021 20:41:14 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: Re: [PATCH 1/2] media: zoran: add spaces around '<<'
Message-ID: <YHBukmdxSiRc+K6I@kali>
References: <cover.1617912177.git.mitaliborkar810@gmail.com>
 <8e8ac690d97478f7cbb9b91d46ef7a95e4444e5f.1617912177.git.mitaliborkar810@gmail.com>
 <f196d8ff-e8bf-360e-ee7b-cd2dcafd9742@xs4all.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f196d8ff-e8bf-360e-ee7b-cd2dcafd9742@xs4all.nl>

On Fri, Apr 09, 2021 at 09:23:22AM +0200, Hans Verkuil wrote:
> Hi Mitali,
> 
> On 08/04/2021 22:38, Mitali Borkar wrote:
> > Added spaces around '<<' operator to improve readability and meet linux
> > kernel coding style.
> > Reported by checkpatch
> > 
> > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > ---
> >  drivers/staging/media/zoran/zr36057.h | 14 +++++++-------
> >  1 file changed, 7 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/staging/media/zoran/zr36057.h b/drivers/staging/media/zoran/zr36057.h
> > index 71b651add35a..a2a75fd9f535 100644
> > --- a/drivers/staging/media/zoran/zr36057.h
> > +++ b/drivers/staging/media/zoran/zr36057.h
> > @@ -30,13 +30,13 @@
> >  #define ZR36057_VFESPFR_HOR_DCM          14
> >  #define ZR36057_VFESPFR_VER_DCM          8
> >  #define ZR36057_VFESPFR_DISP_MODE        6
> > -#define ZR36057_VFESPFR_YUV422          (0<<3)
> > -#define ZR36057_VFESPFR_RGB888          (1<<3)
> > -#define ZR36057_VFESPFR_RGB565          (2<<3)
> > -#define ZR36057_VFESPFR_RGB555          (3<<3)
> > -#define ZR36057_VFESPFR_ERR_DIF          (1<<2)
> > -#define ZR36057_VFESPFR_PACK24          (1<<1)
> > -#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1<<0)
> > +#define ZR36057_VFESPFR_YUV422          (0 << 3)
> > +#define ZR36057_VFESPFR_RGB888          (1 << 3)
> > +#define ZR36057_VFESPFR_RGB565          (2 << 3)
> > +#define ZR36057_VFESPFR_RGB555          (3 << 3)
> > +#define ZR36057_VFESPFR_ERR_DIF          (1 << 2)
> > +#define ZR36057_VFESPFR_PACK24          (1 << 1)
> > +#define ZR36057_VFESPFR_LITTLE_ENDIAN    (1 << 0)
> >  
> >  #define ZR36057_VDTR            0x00c	/* Video Display "Top" Register */
> >  
> > 
> 
> I looked at that header and it is very messy.
> 
> Can you make two new patches? The first aligns every nicely, e.g. this:
> 
> #define ZR36057_VFEHCR          0x000   /* Video Front End, Horizontal Configuration Register */
> #define ZR36057_VFEHCR_HS_POL             BIT(30)
> #define ZR36057_VFEHCR_H_START           10
> #define ZR36057_VFEHCR_H_END            0
> #define ZR36057_VFEHCR_HMASK            0x3ff
> 
> should become:
> 
> /* Video Front End, Horizontal Configuration Register */
> #define ZR36057_VFEHCR			0x000
> #define ZR36057_VFEHCR_HS_POL		BIT(30)
> #define ZR36057_VFEHCR_H_START		10
> #define ZR36057_VFEHCR_H_END		0
> #define ZR36057_VFEHCR_HMASK		0x3ff
> 
> Same for all the other register blocks. Use tabs to do the alignment
> instead of spaces, as is currently the case.
>
Okay Sir, will do this.

> The second patch can replace the (0<<3) etc. to BIT(0).
>
Sir may I know how to write (2<<3) in BIT() form? Like I am still
learning and not sure how to convert this. Should it be BIT(2)? But this
is only possible for (1<<nr), PLease help me out. 

Thanks.

> That would be a nice cleanup of this rather messy header.
> 
> Thanks!
> 
> 	Hans

