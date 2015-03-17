X-GM-THRID: 8708200333312
X-Received: by 10.180.75.232 with SMTP id f8mr13051511wiw.0.1426582366776;
        Tue, 17 Mar 2015 01:52:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.107.100 with SMTP id hb4ls788668wib.22.canary; Tue, 17 Mar
 2015 01:52:46 -0700 (PDT)
X-Received: by 10.180.90.169 with SMTP id bx9mr7078171wib.6.1426582366395;
        Tue, 17 Mar 2015 01:52:46 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-we0-x22a.google.com (mail-we0-x22a.google.com. [2a00:1450:400c:c03::22a])
        by gmr-mx.google.com with ESMTPS id ew13si82710wid.0.2015.03.17.01.52.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 01:52:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) client-ip=2a00:1450:400c:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22a.google.com with SMTP id k59so2105713wet.3
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 01:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=qeuQWw4b+cTTJcExkeNARL/RwprPifBLxCkGtAarkI4=;
        b=kvjntfRyyqv/HgQ5zAMhGWqxQOBukWmiqK59SFAirw830UhyNR9whw/lJ3eTIqKCcM
         a2KtQLnUkdiHwigBtp8Ka1q9sXa9whsxb2GkK1EYNfrdlf8mdLiIc1bcKJPSblYGgmM1
         Z6vB9YxPb3HoONjnLvr5R9YpuV45Isyxs6YL8gP+IIeqvsRsila7NYZ6/rGZAJkziJ4p
         uO8Z/tPkItH6+hKXQeGP2LUzNmEp1qiRyv6G2XXKDt4uSvfb0C81FGPsq7LLY7zMddf3
         sYXUGiZgeJAUETvlc15yGhoO62e0SzUWD8j1VCkdjXF7DuqHDTtBST/GCr27qJDFnahA
         4erA==
MIME-Version: 1.0
X-Received: by 10.194.210.103 with SMTP id mt7mr132442410wjc.103.1426582366273;
 Tue, 17 Mar 2015 01:52:46 -0700 (PDT)
Received: by 10.28.139.211 with HTTP; Tue, 17 Mar 2015 01:52:46 -0700 (PDT)
In-Reply-To: <1426570541-22446-1-git-send-email-hamohammed.sa@gmail.com>
References: <1426570219-22279-1-git-send-email-hamohammed.sa@gmail.com>
	<1426570541-22446-1-git-send-email-hamohammed.sa@gmail.com>
Date: Tue, 17 Mar 2015 10:52:46 +0200
Message-ID: <CAEnQRZA4fAKcA=Vh5DRCHfh=WjB1HnhySffgkgu+6-9Qfu6orA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/4] Staging: iio: replace pr_err with dev_err
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 17, 2015 at 7:35 AM, Haneen Mohammed
<hamohammed.sa@gmail.com> wrote:
> This patch replace pr_err with dev_err, when appropriate device structre
> is found.
> Issue found using the following Coccinelle script:
>
> @r exists@
> identifier f, s, i;
> position p;
> @@
>
> f(...,struct s *i,...) {
> <+...
> when != i == NULL
> pr_err@p(...);
> ...+>
> }
>
> @rr@
> identifier r.s, fld;
> @@
>
> struct s {
>         ...
>         struct device *fld;
>         ...
> };
>
> @@
> identifier r.i, rr.fld;
> position r.p;
> @@
> -pr_err@p
> +dev_err
>    (
> + i->fld,
> ...)
>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Hi Haneen,

There are a lot of other pr_err instances in that file that you can
convert to dev_err.

E.g
ad2s1210_update_frequency_control_word

You could use the st->sdev->dev. This applies for your changes below, too.


> ---
>  drivers/staging/iio/resolver/ad2s1210.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
> index b4c14ba..1d8c5c0 100644
> --- a/drivers/staging/iio/resolver/ad2s1210.c
> +++ b/drivers/staging/iio/resolver/ad2s1210.c
> @@ -214,7 +214,7 @@ static ssize_t ad2s1210_store_fclkin(struct device *dev,
>         if (ret)
>                 return ret;
>         if (fclkin < AD2S1210_MIN_CLKIN || fclkin > AD2S1210_MAX_CLKIN) {
> -               pr_err("ad2s1210: fclkin out of range\n");
> +               dev_err(dev, "ad2s1210: fclkin out of range\n");
>                 return -EINVAL;
>         }
>
> @@ -252,7 +252,8 @@ static ssize_t ad2s1210_store_fexcit(struct device *dev,
>         if (ret < 0)
>                 return ret;
>         if (fexcit < AD2S1210_MIN_EXCIT || fexcit > AD2S1210_MAX_EXCIT) {
> -               pr_err("ad2s1210: excitation frequency out of range\n");
> +               dev_err(dev,
> +                       "ad2s1210: excitation frequency out of range\n");
>                 return -EINVAL;
>         }
>         mutex_lock(&st->lock);
> @@ -307,7 +308,8 @@ static ssize_t ad2s1210_store_control(struct device *dev,
>                 goto error_ret;
>         if (ret & AD2S1210_MSB_IS_HIGH) {
>                 ret = -EIO;
> -               pr_err("ad2s1210: write control register fail\n");
> +               dev_err(dev,
> +                       "ad2s1210: write control register fail\n");
>                 goto error_ret;
>         }
>         st->resolution
> @@ -346,7 +348,7 @@ static ssize_t ad2s1210_store_resolution(struct device *dev,
>
>         ret = kstrtou8(buf, 10, &udata);
>         if (ret || udata < 10 || udata > 16) {
> -               pr_err("ad2s1210: resolution out of range\n");
> +               dev_err(dev, "ad2s1210: resolution out of range\n");
>                 return -EINVAL;
>         }
>         mutex_lock(&st->lock);
> @@ -368,7 +370,7 @@ static ssize_t ad2s1210_store_resolution(struct device *dev,
>         data = ret;
>         if (data & AD2S1210_MSB_IS_HIGH) {
>                 ret = -EIO;
> -               pr_err("ad2s1210: setting resolution fail\n");
> +               dev_err(dev, "ad2s1210: setting resolution fail\n");
>                 goto error_ret;
>         }
>         st->resolution
thanks,
Daniel.

