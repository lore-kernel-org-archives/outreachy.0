X-GM-THRID: 6256792083376373760
X-Received: by 10.28.6.14 with SMTP id 14mr386490wmg.6.1456832151053;
        Tue, 01 Mar 2016 03:35:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.79.72 with SMTP id d69ls659484lfb.81.gmail; Tue, 01 Mar
 2016 03:35:50 -0800 (PST)
X-Received: by 10.112.209.6 with SMTP id mi6mr2179432lbc.15.1456832150415;
        Tue, 01 Mar 2016 03:35:50 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id c140si512020wmh.1.2016.03.01.03.35.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 03:35:50 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id p65so3607069wmp.1
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 03:35:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=gEuJwzoB5914vZ2rLW8y6ItjEX66vvvHyZMjJu7wBqg=;
        b=S/cq0z1V2coXUEekXdkVP5OOp/SIXMz++w+BZtFVSp4HeyaWqxpSm1C9qk/onCZwLv
         bRaTMJqDR3KrChl/U72kwhQv7DQ8wt4Ac/J/8FERE6oPDx8GvvieWlcWrk8gLVvGU8bJ
         El9Mdg6/bp5yzD3mHkUOLBYEEIBQbEOEtJ1Qvt8pjeGs6j6B+fR+TaUNn31d/6OWvM1d
         H4opMSoA8MkBG79hjdNRUNgclhdwV2UZmNanyzIx2WmS8CP/97+4RXthDNGyX3khqDnH
         8jn86koei8zAp1XWlnHIP5+V0S/3vQBRoFgL/VKRCVRRTbANg8ERz47l8od5D+V+LYVW
         A+Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=gEuJwzoB5914vZ2rLW8y6ItjEX66vvvHyZMjJu7wBqg=;
        b=hZz7wWd31/lVFxqFZygXIkTpTpwEG/T9W2QDGGoiHDl8ocLO/su7qKdcYdVObeI2Rk
         a1J5UyTTW/iJOOIT91Ik/QEMkGlbELyIJ52axy9tFMjeGuJPQ92ktSZfQIjnbct0NKkg
         ltDH3JUtzxBvLckRf1VSxWgVpMOqLCjjk8BWnv0gKaUvXDE8ryvy0Sti7WSrGWxazIgP
         VcRRAUjM5Z8B2hgdvuPQi5Id2FvXSg+IpkeYLMsaGaEJCAqR/SnTSM3ABGXdo56eVxhg
         nSYl0vMV2M00+6hC5lBQhRYkx5MGjW3/uYSs8rQv75tNAu+YqzMm0Fj929l6cNy/Kbft
         VEFw==
X-Gm-Message-State: AD7BkJLTyEk9CiuapkEs6INXlI0QiDQvevD6fD+5IPC6GCrfm9RTjsF70kRGwBNUE3DnwdIV4PUcYVMI2YHwuA==
MIME-Version: 1.0
X-Received: by 10.194.123.102 with SMTP id lz6mr22639064wjb.2.1456832150267;
 Tue, 01 Mar 2016 03:35:50 -0800 (PST)
Received: by 10.194.222.165 with HTTP; Tue, 1 Mar 2016 03:35:50 -0800 (PST)
In-Reply-To: <1f6d0a1ada00c114df4989bfa438bcecd1a70969.1456743650.git.bankarsandhya512@gmail.com>
References: <cover.1456743650.git.bankarsandhya512@gmail.com>
	<1f6d0a1ada00c114df4989bfa438bcecd1a70969.1456743650.git.bankarsandhya512@gmail.com>
Date: Tue, 1 Mar 2016 13:35:50 +0200
Message-ID: <CAEnQRZDLu3jBP_87N0_dTowPNTt5tVb4--p+KexZ++qEcs346Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/5] Staging: iio: ade7854: Remove
 unnecessary goto.
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 29, 2016 at 1:16 PM, Sandhya Bankar
<bankarsandhya512@gmail.com> wrote:
> Remove unnecessary goto.
> Semantic patch:
> @r@
> expression ret;
> identifier f,l;
> statement S;
> position p;
> @@
>
> (
> if (<+...f(...)...+>) S
> |
> if@p (...) return ret;
> return ret;
> |
> if@p (...) goto l;
> l:
> return ret;
> )
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>

Same comments here as for patch 3/5.

> ---
>  drivers/staging/iio/meter/ade7854.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/iio/meter/ade7854.c b/drivers/staging/iio/meter/ade7854.c
> index a838835..d37a69e 100644
> --- a/drivers/staging/iio/meter/ade7854.c
> +++ b/drivers/staging/iio/meter/ade7854.c
> @@ -426,8 +426,6 @@ static int ade7854_set_irq(struct device *dev, bool enable)
>                 irqen &= ~BIT(17);
>
>         ret = st->write_reg_32(dev, ADE7854_MASK0, irqen);
> -       if (ret)
> -               goto error_ret;
>
>  error_ret:
>         return ret;
> --
> 1.8.3.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1f6d0a1ada00c114df4989bfa438bcecd1a70969.1456743650.git.bankarsandhya512%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

