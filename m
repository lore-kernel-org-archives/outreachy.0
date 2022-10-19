Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5127E
	for <outreachy@lists.linux.dev>; Wed, 19 Oct 2022 08:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=ypzNg4SOA96goCXDNl4cZ2dihnKFVDWPBzfM9dJbn+Q=;
  b=vSIJUgU4qnDluvWEdNciaKvUJ0ya7ot5ptWPXJ2sreNuuO0Y5S6E5OfJ
   ckTbIxylFzFLw6UqDUwIwXSDZsvxUa9dZi33XDVQ5LiB6zPGDidCh/NfL
   w9q+qjUu7Z8AAqWcUGAUzNeD91vsYLQ7ZkZlC003RPBQkZXcp6zdIRnRy
   g=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.95,195,1661810400"; 
   d="scan'208";a="65876156"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Oct 2022 10:16:28 +0200
Date: Wed, 19 Oct 2022 10:16:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
To: Emily Peri <eperi1024@gmail.com>
cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: rts5208: Move open parenthesis to next line
In-Reply-To: <Y0+vw2SZ74AoUPIV@marshmallow>
Message-ID: <b5834eb5-4d4c-2e89-5814-64cf881636f5@inria.fr>
References: <Y0+vw2SZ74AoUPIV@marshmallow>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 19 Oct 2022, Emily Peri wrote:

> Changed breakpoint for long line in sd.c to comply with checkpatch
> style warning that lines should not end with '('.

I think that someone else already did this?  Or at least something very
similar.  Check the list archives.

Also, the patch should also go to all of the maintainers of the code.  The
first patch tutorial should show you how to use get_maintainers.pl to get
the list of recipients.

julia

>
> Signed-off-by: Emily Peri <eperi1024@gmail.com>
> ---
>  drivers/staging/rts5208/sd.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
> index d1fafd530c80..99e951be2802 100644
> --- a/drivers/staging/rts5208/sd.c
> +++ b/drivers/staging/rts5208/sd.c
> @@ -4501,8 +4501,8 @@ int sd_execute_write_data(struct scsi_cmnd *srb, struct rtsx_chip *chip)
>  			sd_card->sd_lock_notify = 1;
>  			if (sd_lock_state &&
>  			    (sd_card->sd_lock_status & SD_LOCK_1BIT_MODE)) {
> -				sd_card->sd_lock_status |= (
> -					SD_UNLOCK_POW_ON | SD_SDR_RST);
> +				sd_card->sd_lock_status |=
> +					(SD_UNLOCK_POW_ON | SD_SDR_RST);
>  				if (CHK_SD(sd_card)) {
>  					retval = reset_sd(chip);
>  					if (retval != STATUS_SUCCESS) {
> --
> 2.34.1
>
>
>
