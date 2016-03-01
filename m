X-GM-THRID: 6256792083376373760
X-Received: by 10.112.189.104 with SMTP id gh8mr2195442lbc.12.1456832022334;
        Tue, 01 Mar 2016 03:33:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.54.30 with SMTP id d30ls131649wma.10.canary; Tue, 01 Mar
 2016 03:33:41 -0800 (PST)
X-Received: by 10.194.92.232 with SMTP id cp8mr377867wjb.6.1456832021582;
        Tue, 01 Mar 2016 03:33:41 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id w10si766099wmw.3.2016.03.01.03.33.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 03:33:41 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id n186so3605762wmn.0
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 03:33:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=fa4XUaNkWZJ9LZ/aMP/v7f768a3jc6jV9LuA2IzaPw4=;
        b=KxOtNXo5E/oPpCoiGKM8umBuTcntSqAUCXQnyQBBfvn311Ci9NJti5WoehvwLKMbTi
         FwqDpi9wjo+ZYOZ63GlMNKq8uG2snFNAN1ULVnxLQsjDia0RCcJ4OBw0RDDjB669Bj8g
         qg0Mlm905M1PC+DSiM0ta02ZjLhz8Xzh0REKRQo/NcXM2szcQgunf3k221VlaJcNTQzD
         /qjmaMRXS6Qp+dIEfRmAiPOtrrZ9K3ezhHkN8oyzertLahRvTQ5pclUoOZzklLV4SWjl
         5vMb/MqmlugcJf4dPO5XVyQDS06UBKNBEjpwDi0wPmoxAZ1/jwfyxGwoQb35rBokeBSP
         2gEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=fa4XUaNkWZJ9LZ/aMP/v7f768a3jc6jV9LuA2IzaPw4=;
        b=BR/Smo5/XEg7bSfB978Srip37zc7qKsqIqxDbO4D7NFycTktN6DZVZy8X9CnhZgsMT
         FZgSqi5ah79rfd530/cOz8L6BkKEWdkXLJdiZ5978G7t90ywZVent8/FpnkxoqFL1kBx
         YKCoGKCatiiFAwmPtN6mY63xL59/oLqDoOjC0Z/yKEx0w659fXAz8qEEZ8DPSwtM9VEy
         FQfszOErzxgpOowBGo/eHXvOEbGzaP9WUMsOKwJfVTPjyiUapjRSceeKgMOEYyknADvL
         H0SM8C/PvOXr+mJVKzhBhrFQcUTJ666XOHUbvqSJUg8L/9CE5UfI4snZOUCFPvlVYBS4
         FMog==
X-Gm-Message-State: AD7BkJIWVW3h9zT36IkC98t/tTF9gEoS7UeT2k4XHqw2yRP67ISbWBquUUlGaHRL0RU8OdfKF/JfR63Rymi1kg==
MIME-Version: 1.0
X-Received: by 10.28.187.138 with SMTP id l132mr3498010wmf.0.1456832021432;
 Tue, 01 Mar 2016 03:33:41 -0800 (PST)
Received: by 10.194.222.165 with HTTP; Tue, 1 Mar 2016 03:33:41 -0800 (PST)
In-Reply-To: <e6834a1d697b021ff535558e0f20d3518b15bc26.1456743650.git.bankarsandhya512@gmail.com>
References: <cover.1456743650.git.bankarsandhya512@gmail.com>
	<e6834a1d697b021ff535558e0f20d3518b15bc26.1456743650.git.bankarsandhya512@gmail.com>
Date: Tue, 1 Mar 2016 13:33:41 +0200
Message-ID: <CAEnQRZDA0wkV=P42qSaGYtoOSpwXBPHK9_a1DY6oDjKZCwvirA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/5] Staging: iio: ade7758_core: Remove
 unnecessary goto.
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 29, 2016 at 1:23 PM, Sandhya Bankar
<bankarsandhya512@gmail.com> wrote:
> Remove unnecessary goto.
> Used below semantic patch to detect the unnecessary goto:
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
> ---
>  drivers/staging/iio/meter/ade7758_core.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/iio/meter/ade7758_core.c b/drivers/staging/iio/meter/ade7758_core.c
> index 0db23e4..32792d0 100644
> --- a/drivers/staging/iio/meter/ade7758_core.c
> +++ b/drivers/staging/iio/meter/ade7758_core.c
> @@ -432,8 +432,6 @@ int ade7758_set_irq(struct device *dev, bool enable)
>                 irqen &= ~BIT(16);
>
>         ret = ade7758_spi_write_reg_24(dev, ADE7758_MASK, irqen);
> -       if (ret)
> -               goto error_ret;
>
>  error_ret:
>         return ret;

Here you can just return ade7758_spi_write_reg_24(...). Also you can completely
remove the goto label by modifying the code at the beginning of the
function as follows:

        ret = ade7758_spi_read_reg_24(dev, ADE7758_MASK, &irqen);
        if (ret)
             return ret;

Daniel.

