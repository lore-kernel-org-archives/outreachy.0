X-GM-THRID: 6950658650787545088
X-Received: by 2002:adf:f44e:: with SMTP id f14mr1791130wrp.254.1618327451129;
        Tue, 13 Apr 2021 08:24:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c1c3:: with SMTP id a3ls1568962wmj.0.gmail; Tue, 13 Apr
 2021 08:24:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy6W/doXRo28ISwf+38md3OgahtwbKIWXa8bTew4T2KIDNDBSsArsyi3ZtZCj3ng5U30OE5
X-Received: by 2002:a05:600c:1457:: with SMTP id h23mr542605wmi.118.1618327449809;
        Tue, 13 Apr 2021 08:24:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618327449; cv=none;
        d=google.com; s=arc-20160816;
        b=W8BQtCJ+8dyB21j3tTqAog0GJBK+2KecPbVmo3tQibxF5aX4MkCXTcwpul9EgAyVJw
         9yjcZODmQtREzBdwwDnx3hc3qIQWswJL4fKbdlBU5f9wLCdnLsdbdPiW8JPD4lx5aBwJ
         DCc9XaGeyWg/YUvrAeHWzk25HEPn7vHGBLWI82S2oK7YSHjxHfyGWBXdBdWRnkhOrc3a
         9S87wxmYJGlwQup+flaKWJ+nyUbZMyChYIsgWeURhRZtAqrJTnklfHwsV2ps8CY5SSAr
         KAkAnbRAGMMD7x4SYloX6Lml8klSy/8qKyarZjUp9tG6SFSZ639ESdGsoIRQt8AGdzhT
         Wd0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jK/ZPtHk9uvMxSIko7jw6vjwCxriFJfcRMyFensq8Io=;
        b=gYyG9LH6z+rYU6ykbe/LqMLd43rcV3/k4LwIzprFdqWx9adtRLSVUzpuN6WGqzk+sb
         6+4N8+oGUdY8WQ1QZhwuHFXB84SJGaKg0ZtsucMqt4PQ1BIXCyQw4xYlM+QphPdn9Ym2
         NJS4ohfHoLZ5REacse6ZOojJte9gqnWHbcc2NffljcJZq4l1iEkvXIc4pV9RGv0RBUhp
         SfYjbL2DDr/bWr6TSHXxAnBNVpFhv4ECA7Y3nSL5q1RGR7b8/vXMJnb55yZkfqDKK8NX
         e+EatrugUUIivkAIjcIDHEfUEVxRxfBhrP/SvXjhcarbm956bgNuzqtlO2FGcsxUPDCT
         yA/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fGi7Ivm9;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com. [2a00:1450:4864:20::629])
        by gmr-mx.google.com with ESMTPS id c6si141412wmr.2.2021.04.13.08.24.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 08:24:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) client-ip=2a00:1450:4864:20::629;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fGi7Ivm9;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x629.google.com with SMTP id l4so26544521ejc.10
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 08:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jK/ZPtHk9uvMxSIko7jw6vjwCxriFJfcRMyFensq8Io=;
        b=fGi7Ivm90QF1t75+F6/XInNNdXGH9wmVEO0FnSJcasknjGm8zDgQEUzztsOCKsuudx
         LHNF63FJ6rzEAUhGXYii7WG5gd+sFNAau3MkUnAnTk+hFUEAmpq/DnOm+lOcaX4fDc0k
         2wzFneQBIRp6tm41d4kZGIIaqTNo4UhBY0JYjXO96Lpz8NqFlxSi+7FFhJKrNhHXLOxj
         +asImYLAQHxPd98OoaFbNYr4aiTeU2h5MuqN5/sZSf+nRq0GUhirGC86EJqVH8peA/Np
         0bBHLQzJxVauhKCQX6j6S5yiNUUjUY7pVjPhsfUZ78gj5jwx7MYZpczt4J6Ur419a/uT
         88WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jK/ZPtHk9uvMxSIko7jw6vjwCxriFJfcRMyFensq8Io=;
        b=LVAVyraQlfh+sxRawzyWakzwn/RnUu2BzLC870t6vKxAmosXqsb4Ns+BLiQXJ9RDnI
         wAj953abPpGvztqFxRSyuQbgsqDXH0Diacy3Wiymu5FL2OVygrjLrKBw6Ux1igM+M5Yu
         TLKrr88XYKpg5KvacPCH39CdIpgRH5yK+Iy499lAX7pTtJ4I68JgMbfLl9oGo996SGdV
         V1BOh0JF6suM8PNzLtvk3D/RKwjdyp9DLPfRpCdqa0Hq+/L2aw6xlDw72r1v2zHaTE4h
         syr8Dl7EkEMlRQap+OEGOgIJ8cZZiZZhsWVAiAOQN5uBwi8Zc9ZRSn/fK1jrl75tgHCL
         6TLQ==
X-Gm-Message-State: AOAM533e9Y0dj7W1+QKJFjB7g6nEvGgxBeD+1uLYdqg7ZMNpLEEGMu1v
	3h2OBT1+puDDkYDQwZStXzEdjdfSpJKYtkkF
X-Received: by 2002:a17:906:2a46:: with SMTP id k6mr32490136eje.206.1618327449581;
        Tue, 13 Apr 2021 08:24:09 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id c16sm8308410ejx.81.2021.04.13.08.24.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 08:24:09 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: core: Remove unused but set variable
Date: Tue, 13 Apr 2021 17:24:08 +0200
Message-ID: <1627371.15on97xvor@linux.local>
In-Reply-To: <alpine.DEB.2.22.394.2104131715560.8430@hadrien>
References: <20210413150517.12533-1-fmdefrancesco@gmail.com> <alpine.DEB.2.22.394.2104131715560.8430@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Tuesday, April 13, 2021 5:16:17 PM CEST Julia Lawall wrote:
> On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:
> > Removed "ledBlink_param" because it was set to the value of "pbuf" but
> > was never reused. This set was made by direct assignment (no helper
> > had been called), therefore it had no side effect to the location
> > pointed by "pbuf".
> > 
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> > 
> >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 2 --
> >  1 file changed, 2 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c index
> > f19a15a3924b..440e22922106 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> > @@ -6191,12 +6191,10 @@ u8 set_chplan_hdl(struct adapter *padapter,
> > unsigned char *pbuf)> 
> >  u8 led_blink_hdl(struct adapter *padapter, unsigned char *pbuf)
> >  {
> > 
> > -	struct LedBlink_param *ledBlink_param;
> > 
> >  	if (!pbuf)
> >  	
> >  		return H2C_PARAMETERS_ERROR;
> > 
> > -	ledBlink_param = (struct LedBlink_param *)pbuf;
> > 
> >  	return	H2C_SUCCESS;
> >  
> >  }
> 
> Is this function actually useful?
> 
> julia
>
Actually, it is completely useless.
We should ask the original authors for explanations :)

I'm about to grep the whole driver for the purpose to check if there are 
callers elsewhere and then delete any call and the function itself.

Thanks,

Fabio




