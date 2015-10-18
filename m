X-GM-THRID: 6206972446110646272
X-Received: by 10.180.184.164 with SMTP id ev4mr3448470wic.3.1445187117966;
        Sun, 18 Oct 2015 09:51:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.19.36 with SMTP id b4ls477796wie.38.gmail; Sun, 18 Oct
 2015 09:51:57 -0700 (PDT)
X-Received: by 10.194.156.193 with SMTP id wg1mr5873180wjb.3.1445187117498;
        Sun, 18 Oct 2015 09:51:57 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id bn7si4021wib.0.2015.10.18.09.51.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 09:51:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id fv8so47810685wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 09:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=UkbXLOIHRQIY0qYaM5FFpNBdEDkkReh37/3NgTc2W5I=;
        b=jKRCHyAKo0HFf3ZHG5JpNjhd3HU+Hby9Jjo538XThHpNB+IkIgacBlpNniz3Fe3L/P
         NhYxX4H29GQqMWxDy1DZHb/t9E2cWOR9Xgj5hKjWYs93eEbZBMgq6ut/jE9kVl2RBv4S
         iR/B9zL51m4TDYBv2Cw82HBZSZQ4gKZA+jTXyW1YBanXLgDrJCLL6oa2GEEbFxI6FibI
         uBMbkDFXcrexQGcE8/C+ZgeKtZFqJMVGfgGSfQml+nDZJZJtJdc3xz3ubHUDS/QQYA9M
         WWIhh35ZCoQo9Pts98w+WCss1Ku8x5j4L90hx7eQIC7XwF3ajwycYS+BF0zcZiQNxbMz
         kgDg==
MIME-Version: 1.0
X-Received: by 10.194.175.104 with SMTP id bz8mr28781307wjc.42.1445187117390;
 Sun, 18 Oct 2015 09:51:57 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Sun, 18 Oct 2015 09:51:57 -0700 (PDT)
In-Reply-To: <1445173359-123710-1-git-send-email-cristina.moraru09@gmail.com>
References: <1445173359-123710-1-git-send-email-cristina.moraru09@gmail.com>
Date: Sun, 18 Oct 2015 19:51:57 +0300
Message-ID: <CAEnQRZBMaSjG18M-AGem-D9A7ZADKyEWP3cMv3z7yXD0wJK=+Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: Replace sscanf with kstrtoint
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Cristina Moraru <cristina.moraru09@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 18, 2015 at 4:02 PM, Cristina Moraru
<cristina.moraru09@gmail.com> wrote:
> Replace single variable sscanf with specialized function
> kstrtoint at the suggestion of checkpatch.pl, to fix
> 'WARNING: Prefer kstrto<type> to single variable sscanf'
>
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---
>  drivers/staging/lustre/lustre/lov/lov_obd.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/lov/lov_obd.c b/drivers/staging/lustre/lustre/lov/lov_obd.c
> index c3be0b5..725bcf6 100644
> --- a/drivers/staging/lustre/lustre/lov/lov_obd.c
> +++ b/drivers/staging/lustre/lustre/lov/lov_obd.c
> @@ -914,11 +914,11 @@ int lov_process_config_base(struct obd_device *obd, struct lustre_cfg *lcfg,
>
>                 obd_str2uuid(&obd_uuid,  lustre_cfg_buf(lcfg, 1));
>
> -               if (sscanf(lustre_cfg_buf(lcfg, 2), "%d", indexp) != 1) {
> +               if (kstrtoint(lustre_cfg_buf(lcfg, 2), 10, indexp)) {
>                         rc = -EINVAL;
>                         goto out;
>                 }

kstrtoint can also return -ERANGE, see [1].

So, here it's better to do something like this:

rc = kstrtoint(lustre_cfg_buf(lcfg, 2), 10, indexp);
if (rc < 0)
   goto out;


> -               if (sscanf(lustre_cfg_buf(lcfg, 3), "%d", genp) != 1) {
> +               if (kstrtoint(lustre_cfg_buf(lcfg, 3), 10, genp)) {
>                         rc = -EINVAL;
>                         goto out;
>                 }
The same here.

thanks,
Daniel.

[1]https://www.kernel.org/doc/htmldocs/kernel-api/API-kstrtoint.html

