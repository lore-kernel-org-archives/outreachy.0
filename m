X-GM-THRID: 6950672534035496960
X-Received: by 2002:a05:6402:40d5:: with SMTP id z21mr37497152edb.20.1618341391348;
        Tue, 13 Apr 2021 12:16:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:515:: with SMTP id m21ls5150760edv.1.gmail; Tue, 13
 Apr 2021 12:16:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxxFs2bRMGklN20WxclT43simanbWC2pWsJ56iYrpwJsq3OsqP62lch6sdvsw6GeEApWTqg
X-Received: by 2002:a05:6402:50d3:: with SMTP id h19mr21318645edb.12.1618341390063;
        Tue, 13 Apr 2021 12:16:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618341390; cv=none;
        d=google.com; s=arc-20160816;
        b=ZFaxasBaUwRrxB1PS0xlEzMlTvyYwop6qn418bkzuYCSdUiqtCF7TQ83MHYpIi7ri/
         9s+zfEvjsYxz/TLy6QcG1lQTgvwzadLpVUqi8MLU71kC0+5QHaqkeqh45NZhPj0v1g7c
         9SpJSG17zPexq2z7Rxr+GRDPpRfOiu2gs6m6NxwN8Wg6BWQpYnOYL1gJz2Pu8zJtLoUi
         PNal++96LZW1Ty5C8EQqAKLSgEoMM68VDLcV0W6ok6dc20r/OV8UwGv37nZ9uj0z8TNy
         GHa69lktSAN2iYqBZbUw26ksJFfufAFVYGpxYZTPaRsAn7QOZ4UtJHyzSnWKNnjxTEeT
         56IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9xf1wLVtPu9Zk3yz9b1zQKjHk/P+wvnd7XhLJ0yC6es=;
        b=aRakHD3DpJnHCff/E3P+VQirMwn0a7yw2qLo/th/kEm6QtqB3K6u92iWJh5NqT2YDa
         qzbx8/8y0AwX3mb11ldEyM183rRojnYB/z0sLbspuYbMxWnQaoNrdC2964/boJZp4Nnz
         nVSy0wyRuzzXmNiEs0NSmIF6Poc882tTRAOD0hkB8elRv4MoA5xW8bVXKLOlBrayHLOf
         eriuifZ5xfcZAHNPju17uXd8Qa/od/73aOshsMKERcCftDxNyXHsy0zyJwjNpe0QCDF6
         exXSerLp4ZyoX1oFEDoWpD/TcvHr+qxHqZke01jAnPKA6ppZvfX1/ea2WsoaSrtfNyPZ
         Y0Qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zncs0TN2;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id y16si1249785edq.2.2021.04.13.12.16.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 12:16:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) client-ip=2a00:1450:4864:20::531;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zncs0TN2;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x531.google.com with SMTP id z1so20700986edb.8
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 12:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9xf1wLVtPu9Zk3yz9b1zQKjHk/P+wvnd7XhLJ0yC6es=;
        b=Zncs0TN23yrSzTaPvrBFChlUVx1HjcJPLR8NChBb/jDZZGOg6t8OvJHrAGm6kjU8sq
         LnHYPcra4duY9H7Fqog6T3H5eXgfgiGQMueiJb3eCLf+h+p1o5ew5SNEajtDrvoSjAyF
         Gh1DUqQH+2wA/MqDRlhwqLHp07IyuQiEH/mTwryu/8nMMVdxm75zlvA4KhlGuVmqt66p
         Od0pWQ3iSASaJOwW9U4pMBvv1ekq9iF33ZNtTgZIxxURBr7+tB173sTo/s0azKFgiDQP
         OVETxPCMvxZ+it0F78Z/zve45xO+2NZxTPUgCm67pKF1VmQvmSOcp8tSFkk5+Np1b1sl
         tqRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9xf1wLVtPu9Zk3yz9b1zQKjHk/P+wvnd7XhLJ0yC6es=;
        b=awZVs3lggMm/AeKlGcEUaZFdMUEez2Fsh4zjAczB8bQd7RegftZon+c8NcQzOa2wEv
         PsFE6MluJAe10Xb9yf3VRbbgwSvrYmfKRqNK1/aWo+DNMw4gJEEf5MYWjqLZj44NoXEE
         5c+hZ3ESS5rMFBkYgnEufbG9e6qxZBNWUuPBTHSUnzBVb9wwoEpR/R6FG3pL126OAvfw
         WyO+AO2kp9MtaKqXDpWQo7YXuf2yYkHQBTBl7h0q1uSfmY6pDTxwQvOGloBdZZMQ7kP7
         BtAKEBuomAxNz82BRPyRyKuG7XLFTiTn1V8w/OdpOPMNnYYGowGFpJGOeFs77XQi5bLC
         rYaw==
X-Gm-Message-State: AOAM531T9ef/9rApG+E41h5/JwomUzAYXZJ1o026NhBN1uoV67039n5T
	QQvgYmkBefWBiuRF2QGSgTk=
X-Received: by 2002:a05:6402:5203:: with SMTP id s3mr37095202edd.79.1618341389914;
        Tue, 13 Apr 2021 12:16:29 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id n13sm4856475ejx.27.2021.04.13.12.16.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 12:16:29 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Dan Carpenter <dan.carpenter@oracle.com>, outreachy-kernel@googlegroups.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] :staging: rtl8723bs: Remove useless led_blink_hdl()
Date: Tue, 13 Apr 2021 21:16:28 +0200
Message-ID: <2400087.QbMOWSuNhY@linux.local>
In-Reply-To: <alpine.DEB.2.22.394.2104132056470.14108@hadrien>
References: <20210413155908.8691-1-fmdefrancesco@gmail.com> <4666345.5ezhEZ0rgB@linux.local> <alpine.DEB.2.22.394.2104132056470.14108@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Tuesday, April 13, 2021 8:57:20 PM CEST Julia Lawall wrote:
> On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:
> > On Tuesday, April 13, 2021 8:20:50 PM CEST Dan Carpenter wrote:
> > > On Tue, Apr 13, 2021 at 06:47:06PM +0200, Fabio M. De Francesco 
wrote:
> > > > On Tuesday, April 13, 2021 6:27:17 PM CEST Julia Lawall wrote:
> > > > > On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:
> > > > > > On Tuesday, April 13, 2021 6:04:16 PM CEST Julia Lawall wrote:
> > > > > > > On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:
> > > > > > > > Removed the led_blink_hdl() function (declaration,
> > > > > > > > definition,
> > > > > > > > and
> > > > > > > > caller code) because it's useless. It only seems to check
> > > > > > > > whether
> > > > > > > > or
> > > > > > > > not a given pointer is NULL. There are other (simpler)
> > > > > > > > means
> > > > > > > > for
> > > > > > > > that
> > > > > > > > purpose.
> > > > > > > > 
> > > > > > > > Signed-off-by: Fabio M. De Francesco
> > > > > > > > <fmdefrancesco@gmail.com>
> > > > > > > > ---
> > > > > > > > 
> > > > > > > >  drivers/staging/rtl8723bs/core/rtw_cmd.c         | 1 -
> > > > > > > >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9
> > > > > > > >  ---------
> > > > > > > >  drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 1 -
> > > > > > > >  3 files changed, 11 deletions(-)
> > > > > > > > 
> > > > > > > > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > > > > > b/drivers/staging/rtl8723bs/core/rtw_cmd.c index
> > > > > > > > 0297fbad7bce..4c44dfd21514 100644
> > > > > > > > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > > > > > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > > > > > @@ -150,7 +150,6 @@ static struct cmd_hdl wlancmds[] = {
> > > > > > > > 
> > > > > > > >  	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl) /*58*/
> > > > > > > >  	GEN_MLME_EXT_HANDLER(sizeof(struct 
SetChannelPlan_param),
> > > > > > > >  	set_chplan_hdl) /*59*/>
> > > > > > > > 
> > > > > > > > -	GEN_MLME_EXT_HANDLER(sizeof(struct 
LedBlink_param),
> > > > > > 
> > > > > > led_blink_hdl)
> > > > > > 
> > > > > > > > /*60*/
> > > > > > > 
> > > > > > > This is worrisome.  Doyou fully understand the impact of
> > > > > > > this?
> > > > > > > If
> > > > > > > not,
> > > > > > > the change is probably not a good idea.
> > > > > > 
> > > > > > This is that macro definition:
> > > > > > 
> > > > > > #define GEN_MLME_EXT_HANDLER(size, cmd) {size, cmd},
> > > > > > 
> > > > > > struct C2HEvent_Header {
> > > > > > 
> > > > > > #ifdef __LITTLE_ENDIAN
> > > > > > 
> > > > > >         unsigned int len:16;
> > > > > >         unsigned int ID:8;
> > > > > >         unsigned int seq:8;
> > > > > > 
> > > > > > #else
> > > > > > 
> > > > > >         unsigned int seq:8;
> > > > > >         unsigned int ID:8;
> > > > > >         unsigned int len:16;
> > > > > > 
> > > > > > #endif
> > > > > > 
> > > > > >         unsigned int rsvd;
> > > > > > 
> > > > > > };
> > > > > > 
> > > > > > It's a bit convoluted with regard to my experience. Probably I
> > > > > > don't
> > > > > > understand it fully, but it seems to me to not having effects
> > > > > > to
> > > > > > the
> > > > > > code where I removed its use within core/rtw_cmd.c.
> > > > > > 
> > > > > > What am I missing?
> > > > > 
> > > > > It seems that the function is being put into an array.  Probably
> > > > > someone
> > > > > expects to find it there.  Probably you have shifted all of the
> > > > > functions that come afterwards back one slot so that they are all
> > > > > in
> > > > > the wrong places.
> > > > > 
> > > > > julia
> > > > 
> > > > Thanks for your explanation. Obviously this implies that the
> > > > function
> > > > cannot be removed, unless one fill the slot that is deleted by to
> > > > not
> > > > calling this macro at the right moment.
> > > > 
> > > > I also suppose that providing a function pointer with a NULL value
> > > > wouldn't work either.
> > > 
> > > It would work.  That array is full of NULL function pointers.
> > 
> > Interesting, thanks.
> > 
> > I'm going to remove that function and replace its name in the macro
> > with a NULL function pointer.
> > 
> > I couldn't believe it would work when I wrote about that.
> 
> Have you checked that a value of NULL in that place is going to have the
> same effect as the function?
>
No, I have not, but perhaps is not relevant.

I want to give to the macro the name of an empty function that I define in 
the same header where there the prototype of led_blink_hdl() is defined 
now: something like "u8 empty_function { return 0; }"

Can it work
What do you think about it?

Fabio
> 
> julia





