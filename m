X-GM-THRID: 6948889025177452544
X-Received: by 2002:a05:6e02:1c4b:: with SMTP id d11mr12366495ilg.66.1617987004522;
        Fri, 09 Apr 2021 09:50:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6638:248b:: with SMTP id x11ls1299324jat.7.gmail; Fri,
 09 Apr 2021 09:50:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyZG01KMAE16ZjIi4x3qN9fEREQ4Ce+M9GZXB9KP+Rm164ZYb1rzdojzWJdMmfAys4e76Qn
X-Received: by 2002:a02:cd33:: with SMTP id h19mr15347599jaq.88.1617987003664;
        Fri, 09 Apr 2021 09:50:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617987003; cv=none;
        d=google.com; s=arc-20160816;
        b=ANpIUY3rHgK6+blw8xn4YcjBxHc8lxptM4gzMB4yp3vbPP6ydAsCFVshknzdiUWnfl
         pAw/Cd1jncDaKdk5tvm1Mi/pWuQEEVbohr3WrU2IvnqEJtFCgKvCbCQIZxEzd7wTOhZK
         mnpvKIozoIWweL36IDBdSEINRmvmRQQcPdFEBJn3j7dqKzQ9wOCIOdELuAPuK88hBToi
         c8KjuasRC8hWm6sL0WrwvD63QsdCATcINXYFwR6Z2CZFRLa7S/OkbtTxHnLHReHMFHvx
         zTRbNabfNiGaCRo5Hneg3KVLdlneUmPK8MjiDmEgGKK+goqhsjYb3n5+6AeF6s8dYAoc
         ytCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=EmjR3bywiH9JkVQf06ZFzqn9YgRCejJkL2Con+KKCbI=;
        b=DY9nXl1FN6VXvmNuiIaW0xdONvVo5FcK5U0mpvAjFywBgOwNH8MuJtRmpQKX32GT60
         yiU96dCZhNljDcepUdh684o69+5YVN9ZFnfqHq7EbnL6c3oWJXo3jMH00LjD5QQd8TFi
         CPGUGJZNZ9AgkjeEAS01asNXCMBOrohQJlGR75ReoxqlodU2Vg8WNDn3pOSNhtMVo5ik
         IHP4DpZ8ccJTfc455I8G0/nnNknru/IIjzz4if3mnhAjwwDU8vUGLhIGrtaBPZs/ml6Z
         fPLpI06oqirniadgjpRIhumKHlaqwxUDLh91NOaUEzkdQppKSsFj5Z7mUr0/BNxce2Kt
         Lj0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V8ABkSyf;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id w1si179653ilh.2.2021.04.09.09.50.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 09:50:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V8ABkSyf;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x431.google.com with SMTP id a85so4176538pfa.0
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 09:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=EmjR3bywiH9JkVQf06ZFzqn9YgRCejJkL2Con+KKCbI=;
        b=V8ABkSyfJ2sBz25TVDFwf7r0NU1SGiS4xpHo0k1zcRPlACTuYzm5bSux1xoXXB0PT0
         BlDP29UjYU9zC5iCYd2UCUyS24OQGqdkXgu1vXaaU5brVf5v53gMRgaAk/9S2aKr8Bcs
         /yqr7rtt/rsN9zmkcreV8LpTxyJmvmnc+msoyoXolsUjKq9lSGNgtns7eo30uHOWKR4V
         2s5CRA2TDVfLHM3Bo7sdnyzlNPKg0UgZICdMZhQwqA/MepWMB6t3fGLUWtlZtmz0jqR9
         Kq5IlBDVlzemXdAk3quZuHCO86yFmRhBH4kQf/nzagM4ZjbhDSN/p9WUvAgce9ryk0sg
         rGcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=EmjR3bywiH9JkVQf06ZFzqn9YgRCejJkL2Con+KKCbI=;
        b=RK7fvB/qMqH1kQ4N4hc9EDzRyslpGQ40+GtUujeE1MvEkSh4URjjQkNwHiHFNG6yhI
         R8a+TeEluZDw+P3j+x3suJyEMGWfwhemIDakfLVRDWtmLydD1gdUqilP2021FdW5VQjJ
         QvTDB7wPnWmCZga82xrUAhAoDkX1o3EMQhgEa0EkuqDQU66BoNURM9ESv+mm7nkio+NJ
         awBZqFtwnc7PB+bXVyPpAKczSzO+VerxFf5k3YBDLS1R5HnjiA3K34xvyeKcSKCmksJ7
         KSxeIJKhjVnsl4UG4WIz6ZPX/crhAJOm1VWSONBGoO4D6rWx2WojewpB2EaDLOUYvXA4
         SOzQ==
X-Gm-Message-State: AOAM533VuNh8W8S0Se/4i1+1zVC6XQ9KJyOWn3UnDcppaaqWcQbwbiVi
	mVN/BKNiIRgDDzEB+IaNri4=
X-Received: by 2002:a63:f258:: with SMTP id d24mr13915247pgk.174.1617987003027;
        Fri, 09 Apr 2021 09:50:03 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id z192sm3108490pgz.94.2021.04.09.09.49.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 09:50:02 -0700 (PDT)
Date: Fri, 9 Apr 2021 22:19:52 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: Re: [PATCH 1/2] media: zoran: add spaces around '<<'
Message-ID: <YHCFsNZVGfjjyHDi@kali>
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
> The second patch can replace the (0<<3) etc. to BIT(0).
>
Then I guess only one new patch would be needed for proper alignment, am
i right? I have to rename it as v2 or should send as a completely new
patch?
> That would be a nice cleanup of this rather messy header.
> 
> Thanks!
> 
> 	Hans

