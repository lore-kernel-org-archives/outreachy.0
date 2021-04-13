X-GM-THRID: 6950672534035496960
X-Received: by 2002:a1c:6382:: with SMTP id x124mr905596wmb.142.1618332429414;
        Tue, 13 Apr 2021 09:47:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6c6a:: with SMTP id r10ls4467483wrz.0.gmail; Tue, 13 Apr
 2021 09:47:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz6js3HnaqBEhdm+Fkr+HjEM/XrkkyesAH2gO31N/U8JICPsnNvNCHlWx9HJ8GGlqPbIJsV
X-Received: by 2002:a5d:64af:: with SMTP id m15mr37474444wrp.231.1618332427945;
        Tue, 13 Apr 2021 09:47:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618332427; cv=none;
        d=google.com; s=arc-20160816;
        b=GFGCg7s9B4lNPT4hQpsrWUpl9xo4YE53WIgk4Y6bghwE+rVNIT1lsYXPccDEEWR03g
         rm2uOl2ocRBGLmAncSoVVZtoIE+rvMi6rhMsz6fCMN4iM7JbGN7g9gt3yxEKCg67FYMp
         XgHak1WVOtZ2xRnfBfHqVQLoklgazTfQSvupGEXaXT6pn/pLt2lBZL/8lZWC4ebaWkmf
         HUVz7a7h7/fXHKd0FSxAbp5f38l0+Jw7CX30AEg1TH+Ab6dHY0XW8241WHt58hld/cqq
         ZIoxLtNFTZEIWnCJyqghwX+d7l33K9OqQj5xDD7b5l0pjiR8w0KsA3JopYqMtgyFcCUV
         8gww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PPrRY59PSM3yh1tKzKnDdwXXNAeLcHdKyiHLS4Gj0hA=;
        b=bPbkDfsGQPZRCGbAG/+Y4HqhofZDnQVUjjVAG+qWZjcS6ahPd+4wJAuf98MvSNW2Ta
         VLRqSdTAIzsqKjEtvGFjEflygj0xs6O3uNVsnhLRel7T4MJ/7TPBzpAx6sZZndw3r+BM
         l/DVsaNjGfoNZYkHZVrZj8v4O9+FuoTGQ/jVgB9d29YA0ROgEekRJC7Wu/MMqh9tJus9
         4lNY9IrkdxuOuppJ6RPAFwfEyxR2OLNlKfHwp2a8vN8tk26rZ56HYNr6JOWcz9liM1hQ
         1FQ5PKzBq3cEwdqfbX0MJqcuLocXVTpf1NqstXwB3qOTYCybKNCNBpJkp+c0Ndh0WUMK
         mJ9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PWc+O58b;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com. [2a00:1450:4864:20::629])
        by gmr-mx.google.com with ESMTPS id f8si184835wmj.1.2021.04.13.09.47.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 09:47:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) client-ip=2a00:1450:4864:20::629;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PWc+O58b;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x629.google.com with SMTP id g5so20328399ejx.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 09:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PPrRY59PSM3yh1tKzKnDdwXXNAeLcHdKyiHLS4Gj0hA=;
        b=PWc+O58bUAq/kMKopVybp8PnVvTQooI+TmUFcMtKNxZToh6H59xzyXWGeWkVeN6dOQ
         4ZXH8yBZsuEiv/KzeLynhpQouNAN0t4LHnPMpsW5fcTPSPi9r0ybW+jcPx8pftEqM/6v
         FWpO/yxes1F9i9ZNMcPJVyJXl/4vCASSa8LinvIXP2cl9J+pWueBjZjblMhS5OCG807k
         G914OIPOC/U8+BdFOTYm8BvSSGsLxQ/QGMvGcxrALARS3cwxHN2Vsg+wmOetdDMNFlKf
         HqYDX6KOlw1RAyVZMiava4gZFPB2OW6tgPXOI6f33e/TFbItHYpIllphVTMZfO/oZryf
         +/xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PPrRY59PSM3yh1tKzKnDdwXXNAeLcHdKyiHLS4Gj0hA=;
        b=GgCfAEo+JAw8qF9ExsM7D/akT7TRDIA4oOaVKECVw39fgIGXpNYeiB4hPLDSpzG/jJ
         5hpdglHTS2GLRrJoe/9WZTuhDnXylmyFGmTb8EZFpKvxqBSQccsWF69LlbAxHkDt4X28
         uSMXQqNNqIihU3Et+cqnqXwJM4w+9PWt0xGRUa4Y24IhZdDaCqtBQFEwtfdckcNagfNd
         HjsjSOuTo01tDEJ9AVGI4HNYV8bX3vD/Le3zddS/2a1gn1dLxj85m+cAV6Ye7mM928yh
         sFRsPzcVN08FJDF8TktfMzXPe13dk59wUqHISIXM/VXX6c8hi2quhj1gFADSn0jT3EgM
         TZRA==
X-Gm-Message-State: AOAM532b9K9tQ4D+9C3PsXtDX4UOrXZmcM6xXCMiEWinCDwadeLCCgez
	rWfjduXb+/s7QwbWU3+SuoY=
X-Received: by 2002:a17:906:29cf:: with SMTP id y15mr8381481eje.500.1618332427687;
        Tue, 13 Apr 2021 09:47:07 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id j6sm9549653edw.73.2021.04.13.09.47.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 09:47:07 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] :staging: rtl8723bs: Remove useless led_blink_hdl()
Date: Tue, 13 Apr 2021 18:47:06 +0200
Message-ID: <3381109.TaO10cqo9c@linux.local>
In-Reply-To: <alpine.DEB.2.22.394.2104131826160.8430@hadrien>
References: <20210413155908.8691-1-fmdefrancesco@gmail.com> <1843649.8FsqevVC75@linux.local> <alpine.DEB.2.22.394.2104131826160.8430@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Tuesday, April 13, 2021 6:27:17 PM CEST Julia Lawall wrote:
> On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:
> > On Tuesday, April 13, 2021 6:04:16 PM CEST Julia Lawall wrote:
> > > On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:
> > > > Removed the led_blink_hdl() function (declaration, definition, and
> > > > caller code) because it's useless. It only seems to check whether
> > > > or
> > > > not a given pointer is NULL. There are other (simpler) means for
> > > > that
> > > > purpose.
> > > > 
> > > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > > ---
> > > > 
> > > >  drivers/staging/rtl8723bs/core/rtw_cmd.c         | 1 -
> > > >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9 ---------
> > > >  drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 1 -
> > > >  3 files changed, 11 deletions(-)
> > > > 
> > > > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > b/drivers/staging/rtl8723bs/core/rtw_cmd.c index
> > > > 0297fbad7bce..4c44dfd21514 100644
> > > > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > @@ -150,7 +150,6 @@ static struct cmd_hdl wlancmds[] = {
> > > > 
> > > >  	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl) /*58*/
> > > >  	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelPlan_param),
> > > >  	set_chplan_hdl) /*59*/>
> > > > 
> > > > -	GEN_MLME_EXT_HANDLER(sizeof(struct LedBlink_param),
> > 
> > led_blink_hdl)
> > 
> > > > /*60*/
> > > 
> > > This is worrisome.  Doyou fully understand the impact of this?  If
> > > not,
> > > the change is probably not a good idea.
> > 
> > This is that macro definition:
> > 
> > #define GEN_MLME_EXT_HANDLER(size, cmd) {size, cmd},
> > 
> > struct C2HEvent_Header {
> > 
> > #ifdef __LITTLE_ENDIAN
> > 
> >         unsigned int len:16;
> >         unsigned int ID:8;
> >         unsigned int seq:8;
> > 
> > #else
> > 
> >         unsigned int seq:8;
> >         unsigned int ID:8;
> >         unsigned int len:16;
> > 
> > #endif
> > 
> >         unsigned int rsvd;
> > 
> > };
> > 
> > It's a bit convoluted with regard to my experience. Probably I don't
> > understand it fully, but it seems to me to not having effects to the
> > code where I removed its use within core/rtw_cmd.c.
> > 
> > What am I missing?
> 
> It seems that the function is being put into an array.  Probably someone
> expects to find it there.  Probably you have shifted all of the functions
> that come afterwards back one slot so that they are all in the wrong
> places.
> 
> julia
>
Thanks for your explanation. Obviously this implies that the function 
cannot be removed, unless one fill the slot that is deleted by to not 
calling this macro at the right moment. 

I also suppose that providing a function pointer with a NULL value wouldn't 
work either.

OK, h2c_msg_hdl() cannot be deleted.

Thanks,

Fabio
  





