X-GM-THRID: 5902955446272
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7aedbb6ed23e215c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.19.100 with SMTP id d4mr3862007lae.7.1425308519575;
        Mon, 02 Mar 2015 07:01:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.170.167 with SMTP id an7ls371900lac.47.gmail; Mon, 02 Mar
 2015 07:01:59 -0800 (PST)
X-Received: by 10.152.88.40 with SMTP id bd8mr3872139lab.0.1425308519101;
        Mon, 02 Mar 2015 07:01:59 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id el6si684992wib.2.2015.03.02.07.01.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 07:01:59 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,675,1418079600"; 
   d="scan'208";a="124004293"
Received: from wifi-edu-218.cc.umanitoba.ca ([140.193.160.238])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Mar 2015 16:01:49 +0100
Date: Mon, 2 Mar 2015 09:01:47 -0600 (CST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtft: remove unnecessary
 line continuations
In-Reply-To: <1425308314-5753-1-git-send-email-yeliztaneroglu@gmail.com>
Message-ID: <alpine.DEB.2.10.1503020900440.4236@hadrien>
References: <1425308314-5753-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

This has the same subject line as your previous patch.  If you end up in
that situation, you have to either make the subject lines distinct in some
way, or you have to put all of the files in a single patch.  The latter
would probably be fine in this case.

julia

On Mon, 2 Mar 2015, Yeliz Taneroglu wrote:

> This fixes the checkpatch.pl warning:
> WARNING: Avoid unnecessary line continuations
>
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/fbtft/fbtft_device.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/staging/fbtft/fbtft_device.c b/drivers/staging/fbtft/fbtft_device.c
> index b9f4c30..a315038 100644
> --- a/drivers/staging/fbtft/fbtft_device.c
> +++ b/drivers/staging/fbtft/fbtft_device.c
> @@ -206,7 +206,7 @@ static struct fbtft_device_display displays[] = {
>  				.display = {
>  					.buswidth = 8,
>  					.backlight = 1,
> -					.fbtftops.set_addr_win = \
> +					.fbtftops.set_addr_win =
>  					    adafruit18_green_tab_set_addr_win,
>  				},
>  				.bgr = true,
> @@ -852,7 +852,7 @@ static struct fbtft_device_display displays[] = {
>  					.buswidth = 16,
>  					.txbuflen = -2, /* disable buffer */
>  					.backlight = 1,
> -					.fbtftops.write = \
> +					.fbtftops.write =
>  						fbtft_write_gpio16_wr_latched,
>  				},
>  				.bgr = true,
> @@ -1247,7 +1247,7 @@ static int __init fbtft_device_init(void)
>  	}
>
>  	if (init_num > FBTFT_MAX_INIT_SEQUENCE) {
> -		pr_err(DRVNAME \
> +		pr_err(DRVNAME
>  			":  init parameter: exceeded max array size: %d\n",
>  			FBTFT_MAX_INIT_SEQUENCE);
>  		return -EINVAL;
> @@ -1256,7 +1256,7 @@ static int __init fbtft_device_init(void)
>  	/* parse module parameter: gpios */
>  	while ((p_gpio = strsep(&gpios, ","))) {
>  		if (strchr(p_gpio, ':') == NULL) {
> -			pr_err(DRVNAME \
> +			pr_err(DRVNAME
>  				":  error: missing ':' in gpios parameter: %s\n",
>  				p_gpio);
>  			return -EINVAL;
> @@ -1264,14 +1264,14 @@ static int __init fbtft_device_init(void)
>  		p_num = p_gpio;
>  		p_name = strsep(&p_num, ":");
>  		if (p_name == NULL || p_num == NULL) {
> -			pr_err(DRVNAME \
> +			pr_err(DRVNAME
>  				":  something bad happened parsing gpios parameter: %s\n",
>  				p_gpio);
>  			return -EINVAL;
>  		}
>  		ret = kstrtol(p_num, 10, &val);
>  		if (ret) {
> -			pr_err(DRVNAME \
> +			pr_err(DRVNAME
>  				":  could not parse number in gpios parameter: %s:%s\n",
>  				p_name, p_num);
>  			return -EINVAL;
> @@ -1279,7 +1279,7 @@ static int __init fbtft_device_init(void)
>  		strcpy(fbtft_device_param_gpios[i].name, p_name);
>  		fbtft_device_param_gpios[i++].gpio = (int) val;
>  		if (i == MAX_GPIOS) {
> -			pr_err(DRVNAME \
> +			pr_err(DRVNAME
>  				":  gpios parameter: exceeded max array size: %d\n",
>  				MAX_GPIOS);
>  			return -EINVAL;
> @@ -1375,7 +1375,7 @@ static int __init fbtft_device_init(void)
>  			if (displays[i].spi) {
>  				ret = fbtft_device_spi_device_register(spi);
>  				if (ret) {
> -					pr_err(DRVNAME \
> +					pr_err(DRVNAME
>  						": failed to register SPI device\n");
>  					return ret;
>  				}
> @@ -1384,7 +1384,7 @@ static int __init fbtft_device_init(void)
>  			} else {
>  				ret = platform_device_register(p_device);
>  				if (ret < 0) {
> -					pr_err(DRVNAME \
> +					pr_err(DRVNAME
>  						":    platform_device_register() returned %d\n",
>  						ret);
>  					return ret;
> --
> 1.8.3.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425308314-5753-1-git-send-email-yeliztaneroglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

