X-GM-THRID: 6950672534035496960
X-Received: by 2002:a05:6512:10d6:: with SMTP id k22mr5098850lfg.170.1618331240767;
        Tue, 13 Apr 2021 09:27:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls3524487lff.3.gmail; Tue, 13
 Apr 2021 09:27:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw79EB2uG4MopAY1mEyGSQwyRGCrCQ5FzI5Q7sCVu+Vi8YFvjYhykXvRiMmRzdDl+AYtug9
X-Received: by 2002:a05:6512:b03:: with SMTP id w3mr22920053lfu.72.1618331238898;
        Tue, 13 Apr 2021 09:27:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618331238; cv=none;
        d=google.com; s=arc-20160816;
        b=nEHzgeMMMLpMTPclY+/lJ66HqoEpMbNXfukPF6EXUYimloc82Brmc2v6y8YeII8bhX
         GdY38uZhnX48neliPdK6jZTV3z0I4woWeHpPCAWcuZGfs6xGodAoa1TyhZj6+X+Vvt8q
         V0E6wGLrDuGspsr54QJrfyc+ZQLJyOtB9Uqa5LdIlrqQypikEo+IfGJCSx/K4dbsQSpQ
         n0Rffs/Q7MvX8Ftq7TEcxFZZI9FPr9H3SdOsm0nvKP5wNjzwEovPlnQDf3zwPeVfR+Zm
         XMLPQPEoShh4AuowrSpvcJFfzqJvtM4IQwWDgHhEIboX/0gXrvNhYxDBFBtL9enQup7V
         oorg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=9A549t1DTvbF/ZixV7qCjtKPsrofCqtxDghaDLgFtnc=;
        b=zs/tclI+bmKwHWF/aAKlcCNYHjL3GUwxJKV7lJ1Xu+JiXGtkkshY/3KMmlnpdkzo9+
         ElI+3XNNEFRT8TWXkNCv3mRgEvxjvvCwvZv+KW4fcCZ5W4tX3YuusEJYXgQW8tGhAxqY
         JOaVZFSfLUNxzNka6IN29iUn9lcWY6Ca4fLIWQG+p7vUdZUYaQLTtoRl/L9pfdo9wvv7
         3FXX196NSbcGbV0d1wc0XeSXrXJE99VP5InFXNdIAnpYDgSjOWWHoX9WhwSJOG1L87wh
         Q4NR/44f0kKTjncNpzoUdXY7ZWVpw+K4h4Hqx58+AemVx5Q/kEI20sguptXiLC1bBFT5
         GiBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b12si642837lfv.7.2021.04.13.09.27.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 09:27:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A+gD8ga8CSWQhZ3Sc4gpuk+AuI+orLtY04lQ7?=
 =?us-ascii?q?vn1ZYxpTb8CeioSSjO0WvCWE6go5dXk8lbm7Sc29aFzG85od2+gsFJODeCWjh2?=
 =?us-ascii?q?eyNoFl6uLZsl7dMgnz7PRU26slU6UWMqyUMXFAgcz34Ba1Hr8bqbHtmpyAvuvG?=
 =?us-ascii?q?ymcocAcCUcFdxj1kAQWWGFAefmV7LKc+faDw2uN34x6peXEada2AaEUtbqz7hu?=
 =?us-ascii?q?SOsonnbx4ADwMm7wfLtzmy6KfmeiL24isj?=
X-IronPort-AV: E=Sophos;i="5.82,219,1613430000"; 
   d="scan'208";a="378563316"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 18:27:17 +0200
Date: Tue, 13 Apr 2021 18:27:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] :staging: rtl8723bs: Remove useless
 led_blink_hdl()
In-Reply-To: <1843649.8FsqevVC75@linux.local>
Message-ID: <alpine.DEB.2.22.394.2104131826160.8430@hadrien>
References: <20210413155908.8691-1-fmdefrancesco@gmail.com> <alpine.DEB.2.22.394.2104131803270.8430@hadrien> <1843649.8FsqevVC75@linux.local>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:

> On Tuesday, April 13, 2021 6:04:16 PM CEST Julia Lawall wrote:
> > On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:
> > > Removed the led_blink_hdl() function (declaration, definition, and
> > > caller code) because it's useless. It only seems to check whether or
> > > not a given pointer is NULL. There are other (simpler) means for that
> > > purpose.
> > >
> > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > ---
> > >
> > >  drivers/staging/rtl8723bs/core/rtw_cmd.c         | 1 -
> > >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9 ---------
> > >  drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 1 -
> > >  3 files changed, 11 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > b/drivers/staging/rtl8723bs/core/rtw_cmd.c index
> > > 0297fbad7bce..4c44dfd21514 100644
> > > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > @@ -150,7 +150,6 @@ static struct cmd_hdl wlancmds[] = {
> > >
> > >  	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl) /*58*/
> > >  	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelPlan_param),
> > >  	set_chplan_hdl) /*59*/>
> > > -	GEN_MLME_EXT_HANDLER(sizeof(struct LedBlink_param),
> led_blink_hdl)
> > > /*60*/
> > This is worrisome.  Doyou fully understand the impact of this?  If not,
> > the change is probably not a good idea.
> >
> This is that macro definition:
>
> #define GEN_MLME_EXT_HANDLER(size, cmd) {size, cmd},
>
> struct C2HEvent_Header {
>
> #ifdef __LITTLE_ENDIAN
>
>         unsigned int len:16;
>         unsigned int ID:8;
>         unsigned int seq:8;
> #else
>         unsigned int seq:8;
>         unsigned int ID:8;
>         unsigned int len:16;
> #endif
>         unsigned int rsvd;
> };
>
> It's a bit convoluted with regard to my experience. Probably I don't
> understand it fully, but it seems to me to not having effects to the code
> where I removed its use within core/rtw_cmd.c.
>
> What am I missing?

It seems that the function is being put into an array.  Probably someone
expects to find it there.  Probably you have shifted all of the functions
that come afterwards back one slot so that they are all in the wrong
places.

julia

