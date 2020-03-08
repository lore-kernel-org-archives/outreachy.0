X-GM-THRID: 6801606424596054016
X-Received: by 2002:adf:f581:: with SMTP id f1mr1195643wro.38.1583675365145;
        Sun, 08 Mar 2020 06:49:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f8d1:: with SMTP id f17ls4060327wrq.3.gmail; Sun, 08 Mar
 2020 06:49:24 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsiFy66MiK4eGPuFoL3nhDbFyEMJkRsUkL7gCiClWsDKIJEUH0ihTpn/6NTyNSlodeA9BpB
X-Received: by 2002:a5d:6985:: with SMTP id g5mr9792888wru.392.1583675364098;
        Sun, 08 Mar 2020 06:49:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583675364; cv=none;
        d=google.com; s=arc-20160816;
        b=ljHN0cucJKMbibWJLPnY74on39RBH+pZKDctH1A3OlXelJtAqLTAc0GdYwO/ubM8IT
         bCnkF5xEhtleiXy4s1ii3PG2m3VXpoPLGxBYBOgrEZamDyG//2kDJXit6TA6ueq2fiSI
         DlEAMdYRDA3ilR7u1MnGS1Ucp13ri5I8e2xZSgKESt3pYBhH9OdDeD4cJudrk8STLbML
         cufrJjTCbvXgDJvRAZfq3J4S7UdWT8CY0+n/8HNh6ren4EIw2/pweH5wOKScc8OZpCjG
         IX3idKpHH/1KLMrtUFI4seQV6RYn/i0UJ1LNjz7lwkNIa0AhvTt3lenduRb5Ul+m7WY2
         n+Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=aKl5ZSFbjWYxk+YapeRATP0kbn4RdF7SywXJ1bh9g4k=;
        b=nkjh0e/BzXhcjCPJmrY6wCqdC9XKnbrHHTFtLkP20TUPPfNnWzb4gDm3rGzvciOckh
         qTAiCs47TU1XIUDZ5mZI0Sn/zBEPFKp7wF94ijOQ+qMnia83zu8WVRQS7pUnNkQ6boBB
         5rfHPRiOcZUTKfa5dccL5KqimTZTKazzRDgTprVMovGr6crZWWcVx5j+8yAyeZSdtI7q
         8TRg2RmY8WtuEi3esnNl8Da0y0xwSgPI5w0XS7aSFxSRZeepZoaYTrZBt+KFseHpb7KV
         W4+lPux7wi/mzab2kkmPpO7duBxXWjx3B9Ir1cpbOcjm4zIdntKQZ2fy0tM/iCQ2w2VX
         RglQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=Sbxq7snr;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id l13si371886wrp.2.2020.03.08.06.49.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 06:49:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=Sbxq7snr;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x444.google.com with SMTP id n15so7757790wrw.13
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 06:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=aKl5ZSFbjWYxk+YapeRATP0kbn4RdF7SywXJ1bh9g4k=;
        b=Sbxq7snrYJBrj6OVCcFEpvrxxAVDnmUY5kIJbpWPaH5+6OuDpXDhzuDxt0ePYbyFbf
         /qnMUMdd8oIiyx3jSfuP4wHg06e+WksRhtGWcKj5SGSKwtlPFj0U0uwMMMVoXhBEeD+B
         LXQ+km4lgjrh48KcUyk9auEvTcjrbiRqMGlbo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=aKl5ZSFbjWYxk+YapeRATP0kbn4RdF7SywXJ1bh9g4k=;
        b=j8lwIh3q0Nzvhx+TTMs7jTDo2B5pUvdusnJGq/CPC7DP4mpPlnBBtWzkkdRDrvGY5b
         NPLCFSZ6ZRXCUQQdD6pJZGblrFsD/mxTRJrXtq2t541NpbhLnz8rVZPYTGO+Y9VcAbAf
         Y7fAD+V5HVQIHJ+XRPVZFpfRgSV0WxQU4IsgEU62xr8JtJnGBe4yAIjUj7uMMlneNMI+
         L/WDL4EgEUgswK915w/ngItZt2YC3PdBxK6bCYxmcTfJwjepPDMVxCGN7DAVVr2SrZ+Y
         EZ75aSur4fBsU/LRXQkByRchCcnMd9QU+RJ0d/PfzxcDCXAlEHe+0z4n7JSj9H4x9Gum
         e3Ow==
X-Gm-Message-State: ANhLgQ1IKhwc4/xqfppwY6TTUofSCVkzZ4M3dUAOwd/R1rJSv3JGnIVY
	iGzySySJ67HO3loX4mehhdVGYehBhYc=
X-Received: by 2002:a05:6000:149:: with SMTP id r9mr14465822wrx.147.1583675363651;
        Sun, 08 Mar 2020 06:49:23 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id q1sm15441364wrx.19.2020.03.08.06.49.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 08 Mar 2020 06:49:23 -0700 (PDT)
Date: Sun, 8 Mar 2020 14:49:15 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: vt6655: device_main: cleanup long line
Message-ID: <20200308134915.GA4173@supernova>
References: <20200307230631.13900-1-lu@pplo.net>
 <20200308065010.GC3983392@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200308065010.GC3983392@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sun, Mar 08, 2020 at 07:50:10AM +0100, Greg KH wrote:
> On Sun, Mar 08, 2020 at 12:06:31AM +0100, Lourdes Pedrajas wrote:
> > Code cleanup: long line found by checkpatch.
> > 
> >  Changes to be committed:
> > 	modified:   drivers/staging/vt6655/device_main.c
> 
> Why are these two lines in the changelog text?
> 
My mistake, I thought it is correct to include them, sorry!

> > 
> > Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> > ---
> >  drivers/staging/vt6655/device_main.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
> > index 0442f71494b2..88e1284a7743 100644
> > --- a/drivers/staging/vt6655/device_main.c
> > +++ b/drivers/staging/vt6655/device_main.c
> > @@ -1075,7 +1075,8 @@ static void vnt_interrupt_process(struct vnt_private *priv)
> >  			    priv->op_mode == NL80211_IFTYPE_ADHOC) &&
> >  			    priv->vif->bss_conf.enable_beacon) {
> >  				MACvOneShotTimer1MicroSec(priv,
> > -							  (priv->vif->bss_conf.beacon_int - MAKE_BEACON_RESERVED) << 10);
> > +					(priv->vif->bss_conf.beacon_int -
> > +					 MAKE_BEACON_RESERVED) << 10);
> 
> Now you have another checkpatch warning :(
> 
> THe original is fine, the line-length is a "strong hint" that sometimes
> needs to be gone over.
> 
> sorry.
> 
> greg k-h

I also had my doubts about this one, thank you for clarifying!

Lourdes.

