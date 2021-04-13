X-GM-THRID: 6950672534035496960
X-Received: by 2002:a2e:95d0:: with SMTP id y16mr12569566ljh.205.1618343106817;
        Tue, 13 Apr 2021 12:45:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls4057329lff.3.gmail; Tue, 13
 Apr 2021 12:45:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwRCyN30yBYUXvWGnRsD682EYdALjYpcpaNKOY3p4aHlhjn18ciyO26geHb8C2/1+MvaBwe
X-Received: by 2002:a19:ae10:: with SMTP id f16mr3752374lfc.138.1618343105228;
        Tue, 13 Apr 2021 12:45:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618343105; cv=none;
        d=google.com; s=arc-20160816;
        b=g+lpcKImIXDiDQI7gAk8d1p0Znlj1x9eiSQON9bSgdcCTf4dpT94fNNQJP/1BSuA9Q
         lEfjI676IX6ke1b3nlHVNLs1GX4mxRW7lZ2m87GVW6uc95MRyunCqTWiQzKSbB6XPqP/
         CjJfDEBOZhvNeK3Ow/VxXAHXxtLOdJ/f3gYUZQJt80I0qEcCrj6gQm3rfO+ZuBztH5Dm
         3qf/JyOS2WAtXGn4Vgoe6mHrOacAw6IAKBlkJPny1avKyBkj06q82QCovrUCmpSS9Ant
         2tKPl5FtT+Kc72mYkBEdtgY2ZlHVKV0gNvviWqmMxOv1O6q2NPlSZDA+sWVnrxywVPAZ
         PzsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/r8Po62UU7ReVjPXAww2n9wrwCFgCw+v/ZKXdTzJ4fs=;
        b=oIAaEd06TluUjaLXloBu4z4LbYUao62nIIvl4St98Mf2VVrB/9XnRuDkvlO/LcL1Bx
         gMWGm6xvb7rgQPwI8JdHLOARGIKahLZHT//gafFuxgMfx3VEfRrAEKtjf605Zj2HkBHD
         c+UUdnH1VWGqssYVzRlkW2Ia3urEgJiM8EaVz2yxubdEnVb5CAK8zhkFZHC456JmkjFr
         uPPTxVbuBAi7W9CtJCwghBcJ5jAD7A0/Cief/v0tkDRAnqZn3JmlCHA5ClVrNvW9lJpJ
         V/GCxr8YlAb6MRspLfp3mJEIsa/jQhgosikSAv4S3fPqvcRGlc6J2CQjrrQoGpXzT9Zl
         5lCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nCNyA8h1;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com. [2a00:1450:4864:20::629])
        by gmr-mx.google.com with ESMTPS id b12si656671lfv.7.2021.04.13.12.45.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 12:45:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) client-ip=2a00:1450:4864:20::629;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nCNyA8h1;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x629.google.com with SMTP id r12so27836381ejr.5
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 12:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/r8Po62UU7ReVjPXAww2n9wrwCFgCw+v/ZKXdTzJ4fs=;
        b=nCNyA8h1EVH4+7f1bRMHsvhOwFMaHC9ADVJeCi5C7OEzIQt28nalhXIw1D3D8bfioq
         KLTxTuzA+arKaVV/OUQRzJqQgzf4pPE9VZnIJ3SZ1vzwmQPgCpIJ3IO5gh9IKj+kmKez
         4MKQzKjsQpMG1hI1Wdiw5Pe8lzE1gjMhhMp1xNSAiZGsbGQdSE+xuC8GOzuI56p3P+qY
         4pSyoA1SSKJzF7xhYT4uED5k6Qp8YN/1pvPBTRBG8PkY7mNPeOrIZ1hRNbUQIhe+/0g6
         6Ja5xhUgjt9DV56KIrh98YbUWUX5ZAJR1MYnmzAT0x3Ba8ZL5hLhXSTmquOht07BTS0G
         eVog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/r8Po62UU7ReVjPXAww2n9wrwCFgCw+v/ZKXdTzJ4fs=;
        b=S/M5WBdF8yJ8C6c/jy68obljiFbRgMo/+rLc83QoKYJ2k+UxVos6UfzvpVCNT4jNdo
         4rAnuzFYtIbQakZIxf9EGqM7BVAaI73taB+R+Ey2peCzkVfDLyThzDSEwcwkNVSJzUZY
         5CAu5DfPv+jilXX8j3upy8bI2OVWZvGLBU2U3f66cz6Gk1r2dKF9cWl03hvGAVo3HZxN
         VNjabYvsSipr343E+xu0FP1dMjyjnTP8Vh4575kVhORursWMNiclIxMDZ0i014Y86b/d
         44PJ4czHfMsXLJrzElRR8YN98yhYwh7aqbuM1W/dD91+/A3LCsGSLEHmpWX1JUSoYGOu
         3VSA==
X-Gm-Message-State: AOAM530YqvMXD7wP/r4ccVoEQK6mbl/Vp7YP21R4OHJhUMt87yczgA6A
	F2JT1BhYkr8tf4DTb0Z9eXY=
X-Received: by 2002:a17:906:4a90:: with SMTP id x16mr13471772eju.44.1618343104974;
        Tue, 13 Apr 2021 12:45:04 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id w13sm9718354edc.81.2021.04.13.12.45.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 12:45:04 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Dan Carpenter <dan.carpenter@oracle.com>, outreachy-kernel@googlegroups.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] :staging: rtl8723bs: Remove useless led_blink_hdl()
Date: Tue, 13 Apr 2021 21:45:03 +0200
Message-ID: <7008359.Jy8utYDuns@linux.local>
In-Reply-To: <alpine.DEB.2.22.394.2104132123180.14108@hadrien>
References: <20210413155908.8691-1-fmdefrancesco@gmail.com> <2400087.QbMOWSuNhY@linux.local> <alpine.DEB.2.22.394.2104132123180.14108@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Tuesday, April 13, 2021 9:25:05 PM CEST Julia Lawall wrote:
> On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:
> > On Tuesday, April 13, 2021 8:57:20 PM CEST Julia Lawall wrote:
> > > On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:
> > > > On Tuesday, April 13, 2021 8:20:50 PM CEST Dan Carpenter wrote:
> > > > > On Tue, Apr 13, 2021 at 06:47:06PM +0200, Fabio M. De Francesco
> > 
> > wrote:
> > > > > > On Tuesday, April 13, 2021 6:27:17 PM CEST Julia Lawall wrote:
> > > > > > > On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:
> > > > > > > > On Tuesday, April 13, 2021 6:04:16 PM CEST Julia Lawall 
wrote:
> > > > > > > > > On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:
> > > > > > > > > > Removed the led_blink_hdl() function (declaration,
> > > > > > > > > > definition,
> > > > > > > > > > and
> > > > > > > > > > caller code) because it's useless. It only seems to
> > > > > > > > > > check
> > > > > > > > > > whether
> > > > > > > > > > or
> > > > > > > > > > not a given pointer is NULL. There are other (simpler)
> > > > > > > > > > means
> > > > > > > > > > for
> > > > > > > > > > that
> > > > > > > > > > purpose.
> > > > > > > > > > 
> > > > > > > > > > Signed-off-by: Fabio M. De Francesco
> > > > > > > > > > <fmdefrancesco@gmail.com>
> > > > > > > > > > ---
> > > > > > > > > > 
> > > > > > > > > >  drivers/staging/rtl8723bs/core/rtw_cmd.c         | 1 -
> > > > > > > > > >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9
> > > > > > > > > >  ---------
> > > > > > > > > >  drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 1 -
> > > > > > > > > >  3 files changed, 11 deletions(-)
> > > > > > > > > > 
> > > > > > > > > > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > > > > > > > b/drivers/staging/rtl8723bs/core/rtw_cmd.c index
> > > > > > > > > > 0297fbad7bce..4c44dfd21514 100644
> > > > > > > > > > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > > > > > > > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > > > > > > > @@ -150,7 +150,6 @@ static struct cmd_hdl wlancmds[] =
> > > > > > > > > > {
> > > > > > > > > > 
> > > > > > > > > >  	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl) /*58*/
> > > > > > > > > >  	GEN_MLME_EXT_HANDLER(sizeof(struct
> > 
> > SetChannelPlan_param),
> > 
> > > > > > > > > >  	set_chplan_hdl) /*59*/>
> > > > > > > > > > 
> > > > > > > > > > -	GEN_MLME_EXT_HANDLER(sizeof(struct
> > 
> > LedBlink_param),
> > 
> > > > > > > > led_blink_hdl)
> > > > > > > > 
> > > > > > > > > > /*60*/
> > > > > > > > > 
> > > > > > > > > This is worrisome.  Doyou fully understand the impact of
> > > > > > > > > this?
> > > > > > > > > If
> > > > > > > > > not,
> > > > > > > > > the change is probably not a good idea.
> > > > > > > > 
> > > > > > > > This is that macro definition:
> > > > > > > > 
> > > > > > > > #define GEN_MLME_EXT_HANDLER(size, cmd) {size, cmd},
> > > > > > > > 
> > > > > > > > struct C2HEvent_Header {
> > > > > > > > 
> > > > > > > > #ifdef __LITTLE_ENDIAN
> > > > > > > > 
> > > > > > > >         unsigned int len:16;
> > > > > > > >         unsigned int ID:8;
> > > > > > > >         unsigned int seq:8;
> > > > > > > > 
> > > > > > > > #else
> > > > > > > > 
> > > > > > > >         unsigned int seq:8;
> > > > > > > >         unsigned int ID:8;
> > > > > > > >         unsigned int len:16;
> > > > > > > > 
> > > > > > > > #endif
> > > > > > > > 
> > > > > > > >         unsigned int rsvd;
> > > > > > > > 
> > > > > > > > };
> > > > > > > > 
> > > > > > > > It's a bit convoluted with regard to my experience.
> > > > > > > > Probably I
> > > > > > > > don't
> > > > > > > > understand it fully, but it seems to me to not having
> > > > > > > > effects
> > > > > > > > to
> > > > > > > > the
> > > > > > > > code where I removed its use within core/rtw_cmd.c.
> > > > > > > > 
> > > > > > > > What am I missing?
> > > > > > > 
> > > > > > > It seems that the function is being put into an array. 
> > > > > > > Probably
> > > > > > > someone
> > > > > > > expects to find it there.  Probably you have shifted all of
> > > > > > > the
> > > > > > > functions that come afterwards back one slot so that they are
> > > > > > > all
> > > > > > > in
> > > > > > > the wrong places.
> > > > > > > 
> > > > > > > julia
> > > > > > 
> > > > > > Thanks for your explanation. Obviously this implies that the
> > > > > > function
> > > > > > cannot be removed, unless one fill the slot that is deleted by
> > > > > > to
> > > > > > not
> > > > > > calling this macro at the right moment.
> > > > > > 
> > > > > > I also suppose that providing a function pointer with a NULL
> > > > > > value
> > > > > > wouldn't work either.
> > > > > 
> > > > > It would work.  That array is full of NULL function pointers.
> > > > 
> > > > Interesting, thanks.
> > > > 
> > > > I'm going to remove that function and replace its name in the macro
> > > > with a NULL function pointer.
> > > > 
> > > > I couldn't believe it would work when I wrote about that.
> > > 
> > > Have you checked that a value of NULL in that place is going to have
> > > the
> > > same effect as the function?
> > 
> > No, I have not, but perhaps is not relevant.
> > 
> > I want to give to the macro the name of an empty function that I define
> > in the same header where there the prototype of led_blink_hdl() is
> > defined now: something like "u8 empty_function { return 0; }"
> > 
> > Can it work
> > What do you think about it?
> 
> The previous function didn't return 0.  It returned something else.
> 
> To do anything this, you have to find where it is called and what result
> the call site expects.  If you don't have that information, it does not
> seem safe to modify the function.
> 
> julia
> 
> > Fabio
> > 
> > > julia
>
OK, let's summarize:

1) The driver doesn't call that function from anywhere else than the macro.
2) You have explained that the macro add its symbol to a slot in an array 
that would shift all the subsequent elements down if that macro is not used 
exactly in the line where it is.
3) Dan Carpenter said that that array is full of null functions (or empty 
slots?).

Unless that function is called anonymously dereferencing its address from 
the position it occupies in the array, I'm not able to see what else means 
can any caller use.

I know I have much less experience than you with C: what can go wrong?

Thanks for your time,

Fabio



