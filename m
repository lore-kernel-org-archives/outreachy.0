X-GM-THRID: 6466090633212723200
X-Received: by 10.200.51.28 with SMTP id t28mr11990012qta.17.1505504202072;
        Fri, 15 Sep 2017 12:36:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.189.2 with SMTP id x2ls1532242ite.19.canary-gmail; Fri, 15
 Sep 2017 12:36:41 -0700 (PDT)
X-Received: by 10.176.2.107 with SMTP id 98mr17311249uas.47.1505504201272;
        Fri, 15 Sep 2017 12:36:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505504201; cv=none;
        d=google.com; s=arc-20160816;
        b=PXwP9v/T5QziCmwClnBgXMhdmBBknJQnAQJ/CVn0nfoDg+H8tGPR5TNbiQr8XEJmGO
         wgC9dlpcqBk/VF8ChX97s3WanUkzOlv7ieyB8nj3BvWh9ciw9QuFPrUDZ1xu/3cUBbWy
         SHBjpUjnziphdp71NfP456Z1Gj6mhwiZXuoWgjOkrp3ktWrTqHSmh5Xc+kW3fzKM/S5Z
         elVKEawfl6YZiKRroEpGbWzzAbphCFQId+iP21htxlki1MT3is0NVLennxyiF9mgyCCH
         9fOs0ngpFb8Kijt2PFH1xrZNOgXa6nLPsyWkgG0xcnRFV9x1ud3ERpbpSvl8AtNVBoER
         fLVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=xwi6unRGq1CbcAWZSEek9JdTKa9hFqjDxWYkZ41bxEM=;
        b=TbX+wAnY5X8I83TTQSgYcNFhRPXJ57S9/g8NhFUPP2o0xZQR26wxdjyMoZfxJsKxnA
         Q6Pwg8Who18txq/Qgm2xEbajP4JowOi5Uax1QGdoUPI8Qsmag8ppQG22sgSdFJqC72qF
         UIf0/wSzqLnsE8oDmIMXl+RpryjiXwmPCeQqDZvXs5vjq6y8kfbPJGHbpTfapsBQU3Ok
         BQyHFbFHhehPaF3ZX1KaMSqs6VINudXjG2JmCn/2Hi1LOvA50k+oNBciOShV7wGpRZz+
         ko+UjIIE41LgHVfPSqaWgabGSgY/FT9AmCaq9p1BAqYAEjdslUvIfji7MUXbOtWPHOX+
         spUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iOXZ/sEH;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qt0-x243.google.com (mail-qt0-x243.google.com. [2607:f8b0:400d:c0d::243])
        by gmr-mx.google.com with ESMTPS id n124si61103ywn.34.2017.09.15.12.36.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 12:36:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) client-ip=2607:f8b0:400d:c0d::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iOXZ/sEH;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x243.google.com with SMTP id t46so2100294qtj.3
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 12:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=xwi6unRGq1CbcAWZSEek9JdTKa9hFqjDxWYkZ41bxEM=;
        b=iOXZ/sEHqHk62YUmCZkGS7WHVcCEg77coBnZl0HjI1wC4LUYkCi/Gv0mehu+ePyMKi
         KT/RzhBaSrDTRyer/R0+MgCEn3wdeKGWztlzIApD9XX/dZCGxnDouBi5OPE8otHFo+Oj
         ll1Zfd3F7hLrENXur+HsG56QEm7dM8fPDNNd6FbYRZZcQoaVpp0kpYzx25P44Zby7XtC
         xtK2DFLf9P92gGvj8UQmsDOh8Az+x16kwltFyth24QPwqNNoz/2YLktDyGJzkq1ltsdu
         oPn+/lRZ1DFMpjKFYIvwJAPClgUh1E8YLuAX0QfbdUQsiuzgy/gTy6IHCv+w+kChm1Om
         cqMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=xwi6unRGq1CbcAWZSEek9JdTKa9hFqjDxWYkZ41bxEM=;
        b=UAFwPsTqn64jf3r2gQpJ3f9gKvD+IO0AjOwzvN5qI3QTv/YP5JGnS+XL7tpQFidE3a
         SS4b1yOHd03BOBAMGXMwP1wJaY/z95+aiYZeRgzBLEwzPLmDuGFxWhUHNryWsJf9QSST
         j09a2nlHIbs3f8+71mLc/dN9Uh4JhU/h/hgWErxg6RBRpJi/9jtCabfAhAz8onr8kkn+
         1y+qvHH9xG9GqXsmqP1nO0PYVneKUtaH7f2LLGJy8sJy6I9Q3km8C5Rne3LPqLiFrFio
         XQPvO+5rI9Yx8dKVjctyAZP7PQiyrLw0v7b/k05uwASJS1AVOZIylNMvR27hse6NhJWV
         ZHuw==
X-Gm-Message-State: AHPjjUhDLdPo3opge9bMhzq+9mrxWjP21IwMxYf1Uzx1CveNXDYfqSA2
	ntrfE6JwRbPkncTwiEQSpiYg5VMVPZfggE0uum8=
X-Google-Smtp-Source: AOwi7QB3LT7N0sCahHDXXfs9Cq3hKJ0Yfk4Ivl1Xq5+cBQlYShH/gk5FuFKKFoUnjKm+WrlQvJIYbBcwdp76E8lBi6g=
X-Received: by 10.237.63.15 with SMTP id p15mr37883901qtf.117.1505504200955;
 Fri, 15 Sep 2017 12:36:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Fri, 15 Sep 2017 12:36:40 -0700 (PDT)
In-Reply-To: <1505504036-21807-1-git-send-email-srishtishar@gmail.com>
References: <1505504036-21807-1-git-send-email-srishtishar@gmail.com>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Sat, 16 Sep 2017 01:06:40 +0530
Message-ID: <CAB3L5oxE_8YPGw=5=OoJAgoFWCWv8N1+c0ryZLeiM=ctVfutMQ@mail.gmail.com>
Subject: Re: [PATCH] Staging: irda: Don't use assignment inside if statement
To: samuel@sortiz.org
Cc: Greg KH <gregkh@linuxfoundation.org>, netdev@vger.kernel.org, 
	devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com, 
	Srishti Sharma <srishtishar@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, Sep 16, 2017 at 1:03 AM, Srishti Sharma <srishtishar@gmail.com> wrote:
> Write assignment statement outside the if statement. Done using
> the following semantic patch by coccinelle.
>
> @@
> identifier E;
> expression F;
> statement S;
> @@
>
> -if((E = F))
> +E = F
> +if(E)
>   S
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
>  drivers/staging/irda/drivers/irda-usb.c | 4 ++--
>  drivers/staging/irda/drivers/mcs7780.c  | 9 ++++++---
>  drivers/staging/irda/net/irqueue.c      | 3 ++-
>  3 files changed, 10 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/irda/drivers/irda-usb.c b/drivers/staging/irda/drivers/irda-usb.c
> index 723e49b..82bfc05 100644
> --- a/drivers/staging/irda/drivers/irda-usb.c
> +++ b/drivers/staging/irda/drivers/irda-usb.c
> @@ -334,9 +334,9 @@ static void irda_usb_change_speed_xbofs(struct irda_usb_cb *self)
>         urb->transfer_flags = 0;
>
>         /* Irq disabled -> GFP_ATOMIC */
> -       if ((ret = usb_submit_urb(urb, GFP_ATOMIC))) {
> +       ret = usb_submit_urb(urb, GFP_ATOMIC);
> +       if (ret)
>                 net_warn_ratelimited("%s(), failed Speed URB\n", __func__);
> -       }
>  }
>
>  /*------------------------------------------------------------------*/
> diff --git a/drivers/staging/irda/drivers/mcs7780.c b/drivers/staging/irda/drivers/mcs7780.c
> index c3f0b25..2b674d5 100644
> --- a/drivers/staging/irda/drivers/mcs7780.c
> +++ b/drivers/staging/irda/drivers/mcs7780.c
> @@ -605,19 +605,22 @@ static int mcs_speed_change(struct mcs_cb *mcs)
>         if (mcs->new_speed <= 115200) {
>                 rval &= ~MCS_FIR;
>
> -               if ((rst = (mcs->speed > 115200)))
> +               rst = (mcs->speed > 115200);
> +               if (rst)
>                         mcs_set_reg(mcs, MCS_MINRXPW_REG, 0);
>
>         } else if (mcs->new_speed <= 1152000) {
>                 rval &= ~MCS_FIR;
>
> -               if ((rst = !(mcs->speed == 576000 || mcs->speed == 1152000)))
> +               rst = !(mcs->speed == 576000 || mcs->speed == 1152000);
> +               if (rst)
>                         mcs_set_reg(mcs, MCS_MINRXPW_REG, 5);
>
>         } else {
>                 rval |= MCS_FIR;
>
> -               if ((rst = (mcs->speed != 4000000)))
> +               rst = (mcs->speed != 4000000);
> +               if (rst)
>                         mcs_set_reg(mcs, MCS_MINRXPW_REG, 5);
>
>         }
> diff --git a/drivers/staging/irda/net/irqueue.c b/drivers/staging/irda/net/irqueue.c
> index 160dc89..5aab072 100644
> --- a/drivers/staging/irda/net/irqueue.c
> +++ b/drivers/staging/irda/net/irqueue.c
> @@ -217,7 +217,8 @@ static __u32 hash( const char* name)
>
>         while(*name) {
>                 h = (h<<4) + *name++;
> -               if ((g = (h & 0xf0000000)))
> +               g = (h & 0xf0000000);
> +               if (g)
>                         h ^=g>>24;
>                 h &=~g;
>         }
> --
> 2.7.4
>

There is a mistake here please ignore this patch , I'll send a v2 , I
forgot to put a semicolon in the semantic patch .

Regards,
Srishti

