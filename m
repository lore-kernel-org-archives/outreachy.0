X-GM-THRID: 6256792083376373760
X-Received: by 10.28.194.213 with SMTP id s204mr382324wmf.1.1456832197238;
        Tue, 01 Mar 2016 03:36:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.38.4 with SMTP id m4ls271214lfm.28.gmail; Tue, 01 Mar 2016
 03:36:36 -0800 (PST)
X-Received: by 10.112.155.8 with SMTP id vs8mr2327735lbb.13.1456832196647;
        Tue, 01 Mar 2016 03:36:36 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id w10si766731wmw.3.2016.03.01.03.36.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 03:36:36 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id 1so3598720wmg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 03:36:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=jCk2tG8ZjEaZeqXDpoVDHHLM8wI05xs7gNTSOEqxEgY=;
        b=ZLQBPKT/SWLnTlb6syJIVHWOm392YzWG0GTZpktZelc7WEmMCOY7bBBTAkjEI26g/t
         Q7SfCbrsZZXy0DOf8lk+5T99SE/0gku2WRENAZk0+ogv6LFYP8+FIAZBNgwzW4EBeQ80
         kRpAScRw+594KNZ5TYy1bDXu9ZydnwkSwaOPNTFeYXB7WtZ8wWGmO3pVlsOITJ7pYGvz
         5j8q8ZQlb8GfHVYFPE7ZEVARYjRYmMpOZaieqJFc2HmalDBfETwno2RM1O0YPmV50p40
         2QAbH55+xvByA/B8UsMb6rz4VBYvTD2hw9PXVyE7i7qSmbX/POiCBzA2aOJITJqB1jnv
         eMdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=jCk2tG8ZjEaZeqXDpoVDHHLM8wI05xs7gNTSOEqxEgY=;
        b=mgXnW6uNAg0HFbZMuDnEzPMt1uEpZi2Kt4mvf0WhjhXvIrYnbluRWcYrEzFDxWfW3L
         8HdGJKjImtEKEUJteZqI7I/FESb2UxkatRDGveg59fBAlCYAxb0Pv6/zhl6G6pfns+mg
         +Nrso12REFrVyNSbS60QlmKLc5xKEkZ/Juyv4YdkoGnRSo2byx3Qw2V7+P/WCncHBwbf
         vf5nWRmV69FKeif31IZRTnPO9pyfLU661Rq5dPeQVQnuBNN/GveoA122BoqdwbkJqNoJ
         AE/0ek5QgvcBztDDPUV4xmIHZGSzczDEF67y1tPBfHAgVnADQRzR6EI2vup582hUtXLG
         +4Iw==
X-Gm-Message-State: AD7BkJI8p/AzAhC/UcHPtdbPOmOagHKMsS5/YRb47NKPSe16a1szOjVrLk8dzniavNpTqzC5tttppbABog1d9Q==
MIME-Version: 1.0
X-Received: by 10.194.123.102 with SMTP id lz6mr22643277wjb.2.1456832196482;
 Tue, 01 Mar 2016 03:36:36 -0800 (PST)
Received: by 10.194.222.165 with HTTP; Tue, 1 Mar 2016 03:36:36 -0800 (PST)
In-Reply-To: <9e4e14d33fb7f6f9eb3255b263773384cfc573ff.1456743650.git.bankarsandhya512@gmail.com>
References: <cover.1456743650.git.bankarsandhya512@gmail.com>
	<9e4e14d33fb7f6f9eb3255b263773384cfc573ff.1456743650.git.bankarsandhya512@gmail.com>
Date: Tue, 1 Mar 2016 13:36:36 +0200
Message-ID: <CAEnQRZAb4t43jaGmufO5juNUG8i_u9t7zOB-+oa+Vjtq0j2a3g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 4/5] Staging: iio: ade7754: Remove
 unnecessary goto.
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 29, 2016 at 1:26 PM, Sandhya Bankar
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
Same comments here as for patch 3/5.

> ---
>  drivers/staging/iio/meter/ade7754.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/iio/meter/ade7754.c b/drivers/staging/iio/meter/ade7754.c
> index 1e95068..6e931cd 100644
> --- a/drivers/staging/iio/meter/ade7754.c
> +++ b/drivers/staging/iio/meter/ade7754.c
> @@ -356,8 +356,6 @@ static int ade7754_set_irq(struct device *dev, bool enable)
>                 irqen &= ~BIT(14);
>
>         ret = ade7754_spi_write_reg_16(dev, ADE7754_IRQEN, irqen);
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/9e4e14d33fb7f6f9eb3255b263773384cfc573ff.1456743650.git.bankarsandhya512%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

