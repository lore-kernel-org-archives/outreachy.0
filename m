X-GM-THRID: 5902955446272
X-Received: by 10.194.63.208 with SMTP id i16mr1255116wjs.2.1425308684698;
        Mon, 02 Mar 2015 07:04:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.100 with SMTP id a4ls451948lah.23.gmail; Mon, 02 Mar
 2015 07:04:44 -0800 (PST)
X-Received: by 10.152.4.229 with SMTP id n5mr3857317lan.1.1425308684104;
        Mon, 02 Mar 2015 07:04:44 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id ta1si683346wic.1.2015.03.02.07.04.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 07:04:44 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x236.google.com with SMTP id l18so33982795wgh.8
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 07:04:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=W2Gc8jIOz0u/HbvMIIUdr96oFATFDO3/uO8FOQ10aXI=;
        b=TXgxC+KuYiMtgtYoc1EBg3V3+RTrn3T5DGqNLt2TR/QTE1gnLzbqt0WnX9NDXqUlFk
         JiWRh+k8lRddcVXwMRnEudchBbXQpJ0FTlWURfEipgXqpNubRO/JD2oU+pqiM9fmr6F6
         znc+KJ+XXHuDmKC1rKWunIp0tKxVahKwyx3CEtrEdradXaVyHRbmZax8TVPKC/C0u2II
         eeZjZ1GbL2EYeuVmViBMNEPt9RoqDQITBBphsnZS+Ss0EBhbaKG5kJTFA1FXnP4+3WBk
         Jb1x0U2IFHic3SbCEDy4iNjKlKCqntzE9pdGgJ0O9iSJPhXVjPK0CLOmLlUC9Ieyh6RS
         47JQ==
MIME-Version: 1.0
X-Received: by 10.194.6.228 with SMTP id e4mr58629567wja.63.1425308684014;
 Mon, 02 Mar 2015 07:04:44 -0800 (PST)
Received: by 10.28.3.68 with HTTP; Mon, 2 Mar 2015 07:04:43 -0800 (PST)
In-Reply-To: <1425306942-4953-1-git-send-email-yeliztaneroglu@gmail.com>
References: <1425306942-4953-1-git-send-email-yeliztaneroglu@gmail.com>
Date: Mon, 2 Mar 2015 17:04:43 +0200
Message-ID: <CAEnQRZC0KZxRRxFx-70dJvaCQzpzCfA0c1zq_1D8nXYs9CD5hQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtft: remove unnecessary
 line continuations
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 2, 2015 at 4:35 PM, Yeliz Taneroglu
<yeliztaneroglu@gmail.com> wrote:
> This fixes the checkpatch.pl warning:
> WARNING: Avoid unnecessary line continuations
>
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/fbtft/fbtft-core.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
> index 37dcf7e..9f03425 100644
> --- a/drivers/staging/fbtft/fbtft-core.c
> +++ b/drivers/staging/fbtft/fbtft-core.c
> @@ -379,7 +379,7 @@ static void fbtft_update_display(struct fbtft_par *par, unsigned start_line,
>         int ret = 0;
>
>         if (unlikely(par->debug & (DEBUG_TIME_FIRST_UPDATE | DEBUG_TIME_EACH_UPDATE))) {
> -               if ((par->debug & DEBUG_TIME_EACH_UPDATE) || \
> +               if ((par->debug & DEBUG_TIME_EACH_UPDATE) ||
>                                 ((par->debug & DEBUG_TIME_FIRST_UPDATE) && !par->first_update_done)) {
>                         getnstimeofday(&ts_start);
>                         timeit = true;
> @@ -1278,7 +1278,7 @@ static int fbtft_verify_gpios(struct fbtft_par *par)
>         fbtft_par_dbg(DEBUG_VERIFY_GPIOS, par, "%s()\n", __func__);
>
>         pdata = par->info->device->platform_data;
> -       if (pdata->display.buswidth != 9 && par->startbyte == 0 && \
> +       if (pdata->display.buswidth != 9 && par->startbyte == 0 &&
>                                                         par->gpio.dc < 0) {
>                 dev_err(par->info->device,
>                         "Missing info about 'dc' gpio. Aborting.\n");

Subject should be:

staging: fbtft-core: remove unnecessary line continuations

Daniel.

