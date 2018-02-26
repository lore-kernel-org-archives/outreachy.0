X-GM-THRID: 6526929159245004800
X-Received: by 10.200.15.242 with SMTP id f47mr8691334qtk.24.1519671375871;
        Mon, 26 Feb 2018 10:56:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.147.194 with SMTP id v185ls7929627qkd.12.gmail; Mon, 26 Feb
 2018 10:56:14 -0800 (PST)
X-Google-Smtp-Source: AG47ELvIWkGoFvOdTQysv9vlRO5ERHIVBxg7rUJUjCe76TuKExgXwoJhZq8KqBqpg9EciIJn0LP2
X-Received: by 10.55.103.11 with SMTP id b11mr8665463qkc.56.1519671374500;
        Mon, 26 Feb 2018 10:56:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519671374; cv=none;
        d=google.com; s=arc-20160816;
        b=bviQTtdr2ZOToZ2aaROPF8Xp3Fld2ybjb6eZ37Nz1yMzJF5kL67G6At7jLOXFXjOGy
         7nuNqpu3T7AJm70KemkOzF8hAGVNcPHAaPhDJcqLCeqa46LiWiyGLqdOaI+j6whS+jaM
         PgqW9/LOPYZswhPPObM4M5nllRIBoRTpEMWjbEoF6ZmtqwYr9Jr/eE6MiU+syBp8A5Vh
         P/BsZ2yt6l1sTo0qLmOtWM9MT/QMk8stN9BLtTH95r6YK+QsHOB0EJjeBf1Usc7BgBRL
         UA7qFP+ScvpXAhdcWOY00yuE6RO2U0JqLJig/ie4xHM1uS4m+rU/6c6njjUCsSkO7JPv
         xHQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=oAkbGrKu5QX8fJXUXaXV6ZUJ0N8kvsGFZ9EzGl5p4jA=;
        b=pCQFW/8Zb1a+uByDrRGN/IUaw+k+njkZYVtz2uMmJdsuoilBuFPDqh/GFdZByHe2Ql
         zqCnxemDhCTsV+rM+k7dQe6MV5bFnFxcjCbqwAD3hKXT7YIcCofl2nOGggpJSW/ZbbuD
         HzEFe+vSv0OSDRTCDp4teEK6ULDGrQvg/OhxC3P8rXRenf6xsAeTXLm39uP9eFMFF+NH
         9MhDwBNy9ZSac25xPgvwCFEBKgEDuR3EdZAznxv67OwX79z2yDdt57YGhPZ8dtY2+tGw
         gepd0pIeNzry/qaZ7gD/mH4Hva9lwILK/aJmLNq5Trx0WcQlFY9M45514Bc7XLKERN2n
         nBmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uR2abr99;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4003:c0f::22d as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gs051095@gmail.com>
Received: from mail-ot0-x22d.google.com (mail-ot0-x22d.google.com. [2607:f8b0:4003:c0f::22d])
        by gmr-mx.google.com with ESMTPS id 44si466348qtu.1.2018.02.26.10.56.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Feb 2018 10:56:14 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4003:c0f::22d as permitted sender) client-ip=2607:f8b0:4003:c0f::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uR2abr99;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4003:c0f::22d as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot0-x22d.google.com with SMTP id 95so1090407ote.5
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Feb 2018 10:56:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=oAkbGrKu5QX8fJXUXaXV6ZUJ0N8kvsGFZ9EzGl5p4jA=;
        b=uR2abr99I7M8JtCeZR7uU3r2Tsn/yv0qZ5m9qxGhSK9azQk8LFgzBTCpxtt7hLGNmX
         s1ccZ1fM5n8IJmpo443gkp/JGFix6GtQi2zRpLhBOYSAoFxZc7Zws5GcTmGEL+KNeVgQ
         dvQRwSMxhRSB4wdGIhPI69DKKM7WuLpgGYDd3SuNXRjqCFEOs43QYgX/Qv4yKVGdJDVi
         a+DpxGxiP7HA0pU0niPRoDz/sxujvNaUAP568KbK9gGkd+wDuNUYvMKqg6huL3Tf85lD
         2sDaCTGJkGdPnHCheXy4DUX1StaN5d1wiHWpgmya0F0mzkOdAex+XK5Lg3SQFgnKyWla
         QhfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=oAkbGrKu5QX8fJXUXaXV6ZUJ0N8kvsGFZ9EzGl5p4jA=;
        b=tTA/WdEFP3lcOKmHq/2YT+2Z/YKNj3Aov2lhP/DfiulGAOX0v5p2K33+O9Xlj+JJoW
         BOAB5rkk8sbpdF3CZ+W4MflvWGWUa3yv17PZqlHunHEkG3VLuj8C84QTuVCA0M7A0sZ6
         KmOLcqN4T6nBNakT67YnUgwnEbd6AMgTo+a+uV40LmNnub3vPaf6XpU4Mw70EHu6Adw6
         MrBguqv6a1/3r4EsIpNg4w2C9zaQXHMyMafnT/W2dJMAWyhNtq4X3+EM/iA4K8n4yUjt
         NeWHT4fcA7n37C5vTcAp6ISRgmpjK/2jpDYh+gqIYxUyAzN1Kx9PLB85uzgzsXZYfV/r
         BAdg==
X-Gm-Message-State: APf1xPCl7QCmk17DJjMp4nbqOia0C1H3OxvF/6XlucZzVubD8kMba9Lo
	rT3KuGGNWWG9KiR8BRqVIqwd6deDh4GFMVNi/gg=
X-Received: by 10.202.78.70 with SMTP id c67mr7149673oib.314.1519671374062;
 Mon, 26 Feb 2018 10:56:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.74.138.176 with HTTP; Mon, 26 Feb 2018 10:55:43 -0800 (PST)
In-Reply-To: <1519669095-31351-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1519669095-31351-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
From: Gargi Sharma <gs051095@gmail.com>
Date: Mon, 26 Feb 2018 18:55:43 +0000
Message-ID: <CAOCi2DFEG2FRaZ2HE5g4uNHmztSvPFC=COEnZ6ucuAYhxDz6Wg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] h [Patch] Fixed unnecessary
 typecasting to int. Error found with checkpatch. Signed-off-by: Nishka
 Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

Hi Nishka,

Thanks for your patch. A few things you would want to take care of:
1) Subject line: Has two [Patch]. There should be only one. Also, if
you see the other patches in the mailing list, you can see the subject
line should be {driver}: {filename}.

On Mon, Feb 26, 2018 at 6:18 PM, Nishka Dasgupta
<nishka.dasgupta_ug18@ashoka.edu.in> wrote:

2) Here you would want to mention what changes you made and why you
made them. Also mention if you used any tools. The signed off by would
also go here and not the subject line.
3) You would also want to add the maintainer of this driver to the
patch you submit.

> ---
>  drivers/staging/ks7010/ks_wlan_net.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
> index e48c557..69cd8347 100644
> --- a/drivers/staging/ks7010/ks_wlan_net.c
> +++ b/drivers/staging/ks7010/ks_wlan_net.c
> @@ -201,6 +201,8 @@ static int ks_wlan_set_freq(struct net_device *dev,
>  {
>         struct ks_wlan_private *priv = netdev_priv(dev);
>         int channel;
> +       int a2412 = 2.412e8;
> +       int b2487 = 2.487e8;
>
>         if (priv->sleep_mode == SLP_SLEEP)
>                 return -EPERM;
> @@ -208,7 +210,7 @@ static int ks_wlan_set_freq(struct net_device *dev,
>         /* for SLEEP MODE */
>         /* If setting by frequency, convert to a channel */
>         if ((fwrq->e == 1) &&
> -           (fwrq->m >= (int)2.412e8) && (fwrq->m <= (int)2.487e8)) {
> +           (fwrq->m >= a2412) && (fwrq->m <= b2487)) {

4) I don't think this is right. Why do you have an a and a b prepended?
5) Lastly did you compile the kernel before sending in your changes?
If not, please do.

Thanks!
Gargi

>                 int f = fwrq->m / 100000;
>                 int c = 0;
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519669095-31351-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.

