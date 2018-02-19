X-GM-THRID: 6524033541786828800
X-Received: by 10.25.199.80 with SMTP id x77mr357673lff.14.1519013209589;
        Sun, 18 Feb 2018 20:06:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.199.7 with SMTP id x7ls161030lff.7.gmail; Sun, 18 Feb 2018
 20:06:47 -0800 (PST)
X-Google-Smtp-Source: AH8x226dXq/8nORV50BYgyi10uRF/HwKird5TSfiQ3AnfBM3f+GyZMR9xC20gepjfIQBuBnqupty
X-Received: by 10.25.219.137 with SMTP id t9mr946961lfi.11.1519013207980;
        Sun, 18 Feb 2018 20:06:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519013207; cv=none;
        d=google.com; s=arc-20160816;
        b=kwB7dXs0javC21ZZ/17mqEx1ST25lJ2WMp3Uuk+JDD+KNNzKDg2THmCqMC8eRgZw9U
         oG8IdooPzrSYxoM1csXtQHL4QLJ8MbV2EnCV32u4Cyw3s2dIwU3w43kINbiHn2rt51g+
         eT6G28aA4OGEAHFhkmHQagEqd8lxCl3eP9v6jErMvDm3yzX9zcYgu0WyiNpIklGpchDK
         a0aCuBys/q9zKtfj0QQvavuRsnFLpznWgwvMRPUK5MF6c6kcyoCdZ1pbjpwn5H+clF+T
         OV7o5XBNlJ79cb1SLhDsVgXarY/J4gg/YKsyjcm3DS2C+0JvJ7A8GPtJTg9riTwZgjPu
         KKoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:arc-authentication-results;
        bh=+km+mJiPAeR7YGOh+U4yXfakd+//FxhVvzQxBR1UgE4=;
        b=AWiL13yrwrsc31CHwXRLl6/3dKWjdqLnrQnDHTErNaolaP35SvxbvqXjZ1CvXrHutl
         vpULFUds4ROZuE73KHPYzq5krDP3jm28Du7gkb4skI8XYwe9hZec+M+rRmefRYZd1azV
         eZK8SaA3jSQ1EjGgqbyzCLy1AXC85olgk8df+61riGnIvyYXgQ+GBvC2o7fkZl4+qCEg
         1YMe4RCS1OxcVj6P/wGu4Ek9r7nW8yNmyDAf89Qvfz0qM4nFBfa7BZfJ88kUmXvxBdUr
         lkgiLgA1C1OhO8rjLU1FzhdUbCAlOuzKO68eIaTBBwarn5ZTocOCuQWfMGIIAyuKIOkP
         lnPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.215.66 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-lf0-f66.google.com (mail-lf0-f66.google.com. [209.85.215.66])
        by gmr-mx.google.com with ESMTPS id b10si87154lfe.4.2018.02.18.20.06.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 20:06:47 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.215.66 as permitted sender) client-ip=209.85.215.66;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 209.85.215.66 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com
Received: by mail-lf0-f66.google.com with SMTP id 70so5236286lfw.2
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Feb 2018 20:06:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=+km+mJiPAeR7YGOh+U4yXfakd+//FxhVvzQxBR1UgE4=;
        b=qHPCSBhAmPNQxZ+It+Hyt1RKpfdNDVGw7XaLj+EfIu6JjUSnusXHNo0PR1JOMbP+Fu
         XZy68xXaFG+SWANwX+x1X1gd91dxbpLuzQhIFgKtnj5S4jqbwsE4ZikyR2N4IqWDwk4Z
         sNKpvVtQm/poQTW9vcCNCSQAJEs6p2GxQtS3dUOYjF2AoKtkt9sTE1LIuUMdIe4yHW8P
         G3XTRp1KIBOvmwnySvEmBKPkTRSgpdED9pVO57YuGIVoRoDhUKkGvwSbcEy61Jcrw59i
         4kq9NR0OADuxqxeMfJIkhNx+ASI3gFHP6w6hI948fcM3eJNN9m7gWChaN5DrfpKCD+ts
         Ex4g==
X-Gm-Message-State: APf1xPBflngiaoNYSj8rSRaxcfQBGjU8cwuH7CEWlaZfBbj1fgY/ALSN
	U7IAMQh1nUIh/YCa3gZWxqERzs2t
X-Received: by 10.25.167.70 with SMTP id q67mr481403lfe.49.1519013207286;
        Sun, 18 Feb 2018 20:06:47 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com. [209.85.215.45])
        by smtp.gmail.com with ESMTPSA id o77sm59932lja.43.2018.02.18.20.06.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 20:06:47 -0800 (PST)
Received: by mail-lf0-f45.google.com with SMTP id r80so890692lfe.13
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Feb 2018 20:06:46 -0800 (PST)
X-Received: by 10.46.85.157 with SMTP id g29mr8135723lje.118.1519013206644;
 Sun, 18 Feb 2018 20:06:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.46.112.4 with HTTP; Sun, 18 Feb 2018 20:06:46 -0800 (PST)
In-Reply-To: <1518994920-4952-1-git-send-email-santhameena13@gmail.com>
References: <1518994920-4952-1-git-send-email-santhameena13@gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Mon, 19 Feb 2018 09:36:46 +0530
X-Gmail-Original-Message-ID: <CAK-LDbLnPARa4iMTwSF71BTcWRt2yQv2oB0v0Ye5=w8D-b0pbQ@mail.gmail.com>
Message-ID: <CAK-LDbLnPARa4iMTwSF71BTcWRt2yQv2oB0v0Ye5=w8D-b0pbQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: remove additional
 blank line
To: Santha Meena Ramamoorthy <santhameena13@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>, forest@alittletooquiet.net, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, Feb 19, 2018 at 4:32 AM, Santha Meena Ramamoorthy
<santhameena13@gmail.com> wrote:
> Remove extra blank line inside a function to conform to Linux
> kernel coding style. Problem detected using checkpatch.

Hi Santha,

Change looks fine to me but subject of this patch is bit confusing.

Can you change it to 'Remove extra blank line'?

> Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
> ---
>  drivers/staging/vt6655/rxtx.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index 9aa4d52..bea0b7f 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -1080,7 +1080,6 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
>         else if (fifo_ctl & FIFOCTL_AUTO_FB_1)
>                 byFBOption = AUTO_FB_1;
>
> -
>         /* Set RrvTime/RTS/CTS Buffer */
>         wTxBufSize = sizeof(struct vnt_tx_fifo_head);
>         if (byPktType == PK_TYPE_11GB || byPktType == PK_TYPE_11GA) {/* 802.11g packet */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1518994920-4952-1-git-send-email-santhameena13%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

