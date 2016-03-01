X-GM-THRID: 6256792083376373760
X-Received: by 10.28.63.19 with SMTP id m19mr390456wma.0.1456832251374;
        Tue, 01 Mar 2016 03:37:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.46.199 with SMTP id u190ls132630wmu.49.gmail; Tue, 01 Mar
 2016 03:37:30 -0800 (PST)
X-Received: by 10.194.24.233 with SMTP id x9mr2262623wjf.0.1456832250791;
        Tue, 01 Mar 2016 03:37:30 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id w10si766883wmw.3.2016.03.01.03.37.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 03:37:30 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id n186so3626186wmn.0
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 03:37:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=/Mh3FFLg4b3iDuLVFoJEIjBz8jQzS0qlOg2gYw6W4V4=;
        b=xo4GVh6aqJIyif3LbnsOrsosKwbnZ45aeB/10FGGeVBkPN9AHmF+e07U+GlH1EliPy
         whZ5rQPaGu+ZT0QD5meuoYVzK2cyMB3nKedZLT/MtYLWH5EuGyDP3vb5MfIA7731qNfb
         /veTC/52Bc0knF0nolNeLmkwZuOukqgFdRpc/5S91fZIdJPDja8RNYm/E37fgtdkNzRB
         ooZp/0NRGCX8xyzATWZDjq8CpbSnJWA+Hx1/Lsus4dbt4wJLtqvtNy54NJd6zC4ST33f
         oyzGN1Y/YNYjDfp2zNa/cWSlk9HX40hTjf1jIHSo/ZC+fXizl269FnQfojGis9N8wp2k
         CheA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=/Mh3FFLg4b3iDuLVFoJEIjBz8jQzS0qlOg2gYw6W4V4=;
        b=M+2ILoCn1OX+nVzSfXtB73bJAN0HTzjJO71ygBZCTwvmMzuqu2x4+t+PXj/qW133kQ
         +A5tPJLtzZUpiWbOgE7aGCnsFrS45QnmMBQ2vqBEiAid5RRn8PokFjks5x3NqJfsWBZm
         yEXcCD3XSQKFXDw0dwioYTjbc9Bx3hk8q9N2UNMN+9ldD8SWxhLHAeCjwhQtL6ViaLuN
         VX8oqbZthbmBIU9LPZQ3qFG4eTf6PJLYBkxBKD/JDkZWhGPZaP7DRDkJYiQuoN83W5TQ
         j/SXXB4dg65gGMiUy1fmUSDmwNFP5VxlP00efT6gEPbNlDmnDfi7o3jmoAn8zYeR9US7
         EfXQ==
X-Gm-Message-State: AD7BkJLQMnn+ZSRNqTPyZuZYM2cgYPXXJ3sTC1uBgr78DYpx4GqBLogUK9ZDUnG29vvXmZdbFb1XKObuXQInOQ==
MIME-Version: 1.0
X-Received: by 10.28.140.85 with SMTP id o82mr3523558wmd.0.1456832250637; Tue,
 01 Mar 2016 03:37:30 -0800 (PST)
Received: by 10.194.222.165 with HTTP; Tue, 1 Mar 2016 03:37:30 -0800 (PST)
In-Reply-To: <1ba56a683ed2fc412718a7ccdfb0887c9fb9e27d.1456743650.git.bankarsandhya512@gmail.com>
References: <cover.1456743650.git.bankarsandhya512@gmail.com>
	<1ba56a683ed2fc412718a7ccdfb0887c9fb9e27d.1456743650.git.bankarsandhya512@gmail.com>
Date: Tue, 1 Mar 2016 13:37:30 +0200
Message-ID: <CAEnQRZDqK-9jG7M3bPXMbCnCcKVcoMwV73tGsRNz1Tas99=A6w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/5] Staging: media: Remove Unnecessary goto.
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 29, 2016 at 1:11 PM, Sandhya Bankar
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
Same here. You can completely remove the goto label.
> ---
>  drivers/staging/media/bcm2048/radio-bcm2048.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
> index 8fdf0ac..05afbb4 100644
> --- a/drivers/staging/media/bcm2048/radio-bcm2048.c
> +++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
> @@ -1835,8 +1835,6 @@ static int bcm2048_deinit(struct bcm2048_device *bdev)
>                 goto exit;
>
>         err = bcm2048_set_power_state(bdev, BCM2048_POWER_OFF);
> -       if (err < 0)
> -               goto exit;
>
>  exit:
>         return err;
> --
> 1.8.3.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1ba56a683ed2fc412718a7ccdfb0887c9fb9e27d.1456743650.git.bankarsandhya512%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

