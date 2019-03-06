X-GM-THRID: 6664942000953884672
X-Received: by 2002:adf:f10c:: with SMTP id r12mr131147wro.26.1551859177514;
        Tue, 05 Mar 2019 23:59:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:8085:: with SMTP id b127ls94369wmd.0.canary-gmail; Tue,
 05 Mar 2019 23:59:36 -0800 (PST)
X-Google-Smtp-Source: APXvYqz0qu+0bdUqBcL9UolU9NkFQHgfu1e2zz7eRJ4TGZZ6OYd4nIYjeyi5M3c9+N7x2zaZz6Zl
X-Received: by 2002:a1c:4108:: with SMTP id o8mr538817wma.23.1551859176784;
        Tue, 05 Mar 2019 23:59:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551859176; cv=none;
        d=google.com; s=arc-20160816;
        b=YVHcfzhmIZTb8XmR7/0jfSqJ5zsOpfjP6ueLr1PXV/bNTuUKezUzvtKKy/K7CAlZW+
         5ktAfDYyeLr25ACtw8Wmnsv1n3c2Tytq8+OXndIHcxmEB5N2IIPDo3UdygSCCBfkufyK
         ESMmSYf8wu02/3X/o0uT3D7y+y7Tm/bbD887+uZDu0HV8jyFZf/5dv+MxDaDNQ+rfAiw
         i0IK1NhRpiQldHv/NjYXzi1+gGHSUA353SBXHw29jTNMqF8kgv1Ce2kM6sDhgpmUQXjq
         f+yA7bOyKwrftApg9qDjhl2y+2Zf93cjztrn3z7n2o9cWbQ57Q4jtLE6Do0a0khelKxD
         2uZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=GWHWSHXcka/Z4dSqt/usUUlUSgv3VNuA4UB6Z8jJ2W0=;
        b=TLPrFZJEfj6FG7zqv7ZDVYF/SiTinSsvIntbOQPI9C1RWeQ+HRD5Sdi5lq5jtAh4bz
         sNHAv57a3px59csm4Fl1UDf7gaUFsu5NaArIFzm3n03nQRd/NlHx7YCVvNfRYmFhu7+A
         ZB0KkBaSrADPCAriaqHNWVVWr/sCjDXMYANwyvgOFxMKtluKv9mgbVAstXP2klD13T0K
         fK9qQC4fTbyBoj7R28dL7XlWm7EDUKM0NXfVY5zAYpbt6oROMOsh0BmnJSwPoGpD4LzW
         eS0Puoled5bL9yf9KYJXIdEt5iZrAzhE+4w3aHqkkzTJyjEoB9hkKCeTDSPa7sDjUbca
         mjKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m1si40217wrj.4.2019.03.05.23.59.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 23:59:36 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,446,1544482800"; 
   d="scan'208";a="298268204"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Mar 2019 08:59:36 +0100
Date: Wed, 6 Mar 2019 08:59:35 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] staging: fbtft: Remove unused
 #defines.
In-Reply-To: <20190306052313.GA3924@bhagyashri-Lenovo-G570>
Message-ID: <alpine.DEB.2.21.1903060859150.2706@hadrien>
References: <20190306052313.GA3924@bhagyashri-Lenovo-G570>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

It would be good to have a cover letter (0/2) for this patch series as
well.

julia

On Wed, 6 Mar 2019, Bhagyashri Dighole wrote:

> Remove unused #defines detected by checkpatch.pl.
>
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
> Changes in v3:
>   -- Change the subject line according to log messages.
>   -- Remove extra spaces.
>
> Changes in v2:
>   - Remove unused macro.
>
>  drivers/staging/fbtft/fb_watterott.c | 6 ------
>  1 file changed, 6 deletions(-)
>
> diff --git a/drivers/staging/fbtft/fb_watterott.c b/drivers/staging/fbtft/fb_watterott.c
> index 0a5206d..502d67f 100644
> --- a/drivers/staging/fbtft/fb_watterott.c
> +++ b/drivers/staging/fbtft/fb_watterott.c
> @@ -90,15 +90,9 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  	return 0;
>  }
>
> -#define RGB565toRGB323(c) ((((c) & 0xE000) >> 8) |\
> -			   (((c) & 000600) >> 6) |\
> -			   (((c) & 0x001C) >> 2))
>  #define RGB565toRGB332(c) ((((c) & 0xE000) >> 8) |\
>  			   (((c) & 000700) >> 6) |\
>  			   (((c) & 0x0018) >> 3))
> -#define RGB565toRGB233(c) ((((c) & 0xC000) >> 8) |\
> -			   (((c) & 000700) >> 5) |\
> -			   (((c) & 0x001C) >> 2))
>
>  static int write_vmem_8bit(struct fbtft_par *par, size_t offset, size_t len)
>  {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190306052313.GA3924%40bhagyashri-Lenovo-G570.
> For more options, visit https://groups.google.com/d/optout.
>

