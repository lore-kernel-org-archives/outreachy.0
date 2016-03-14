X-GM-THRID: 6261788098456190976
X-Received: by 10.28.146.70 with SMTP id u67mr1789325wmd.4.1457949363421;
        Mon, 14 Mar 2016 02:56:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.166.138 with SMTP id p132ls708149lfe.23.gmail; Mon, 14 Mar
 2016 02:56:02 -0700 (PDT)
X-Received: by 10.112.209.6 with SMTP id mi6mr2648588lbc.15.1457949362809;
        Mon, 14 Mar 2016 02:56:02 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x230.google.com (mail-wm0-x230.google.com. [2a00:1450:400c:c09::230])
        by gmr-mx.google.com with ESMTPS id f75si462398wme.3.2016.03.14.02.56.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2016 02:56:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) client-ip=2a00:1450:400c:c09::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::230 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x230.google.com with SMTP id n186so98059576wmn.1
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Mar 2016 02:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=DuxrYOdhaBttfauEDb9Cu1fFYsXYuX+SQ5r6HQAkT6o=;
        b=CIz/srWBe6XyOXIX2Lwz/6OaWyhfun2KfZ0skLu05yM1a6OGsx+DFMj5jspP5ApUCH
         zoWENYDNNw+dnr51CSjDoDy1QBtSK4TjiRBi+3lU8jhgkpHeKddxcG0GGlVVmZ+SEz/+
         eWNNDE4vW0noWzm8jG0VtfVEHs67er9yp+YSY3CZzWytjaFKO9v+6DmvVvugEQfqP67m
         GBs80yWXJOVmygPwiQbfjLzKaV/9+V/xFU5ES8GwQzO3zcI9tm0WghXzyf7jEL8vvWMW
         dmPN6+LAjv1MiIG5eBj1RDptLWlBsGxJMaWqARiwZaOKjLwV9mdhw1M8GVmQrUNEQ922
         9rTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=DuxrYOdhaBttfauEDb9Cu1fFYsXYuX+SQ5r6HQAkT6o=;
        b=cpL/rOjbqtgFjvlSewzR1i7FSOa/BaElyHTrVyRBRzwN1ZWNA8hUIYis2uk2PZOwu0
         tVLIRab7kbaguxNi7PyuasaO2ovCxAUivjbGk0Rg0XoQcE4CHsVYHuODirZyTKPeMSVQ
         en9BwHZIVN/29P0kxDJWd+7Rn6WOaDaUJh5iuR2jXs+L8AIo66kHNPIi15N4yV5BOYTY
         CFma0RH42eYBzgDtZKjGATfpILl3C7/BKVYRYK+BpNPZbtEqEc1lptiKP4ANYjEWwf9q
         JDgGL1AWi1CuYWRgY+w466rOo9CVnGT2kkRiq6ypwWBVE+3w9V6TEUITLkf6nrr9qfDF
         sUuA==
X-Gm-Message-State: AD7BkJLKdKQ590UjhdKu62/YdcKx846oZhznCGi7Q+pNhTxO/t50uWmSxOvlSqxiq6VaKEHvS2SqzRgWa/+OuA==
MIME-Version: 1.0
X-Received: by 10.28.126.131 with SMTP id z125mr17536375wmc.77.1457949362628;
 Mon, 14 Mar 2016 02:56:02 -0700 (PDT)
Received: by 10.194.222.165 with HTTP; Mon, 14 Mar 2016 02:56:02 -0700 (PDT)
In-Reply-To: <20160314061544.GA6641@d830.WORKGROUP>
References: <20160314061544.GA6641@d830.WORKGROUP>
Date: Mon, 14 Mar 2016 11:56:02 +0200
Message-ID: <CAEnQRZAVaDevTXzELOZJqTyvPLHHxHf7om9=oKQYzMHXDR3sCw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: io-trig-bfin-timer: use dev_get_platdata()
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 14, 2016 at 8:15 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> Use dev_get_platdata() for retrieving the platform data instead of
> accessing dev->platform_data directly. Move the assignment out of
> the declaration (avoid lines over 80 char and put it close to
> usage).
>
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>

Acked-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
>  drivers/staging/iio/trigger/iio-trig-bfin-timer.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
> index 035dd45..8667334 100644
> --- a/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
> +++ b/drivers/staging/iio/trigger/iio-trig-bfin-timer.c
> @@ -178,7 +178,7 @@ static const struct iio_trigger_ops iio_bfin_tmr_trigger_ops = {
>
>  static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
>  {
> -       struct iio_bfin_timer_trigger_pdata *pdata = pdev->dev.platform_data;
> +       struct iio_bfin_timer_trigger_pdata *pdata;
>         struct bfin_tmr_state *st;
>         unsigned int config;
>         int ret;
> @@ -221,6 +221,7 @@ static int iio_bfin_tmr_trigger_probe(struct platform_device *pdev)
>
>         config = PWM_OUT | PERIOD_CNT | IRQ_ENA;
>
> +       pdata = dev_get_platdata(&pdev->dev);
>         if (pdata && pdata->output_enable) {
>                 unsigned long long val;
>
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160314061544.GA6641%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.

