X-GM-THRID: 6620551130625605632
X-Received: by 2002:a1c:f912:: with SMTP id x18-v6mr137408wmh.11.1541487243664;
        Mon, 05 Nov 2018 22:54:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:9d17:: with SMTP id k23-v6ls2295773wre.17.gmail; Mon, 05
 Nov 2018 22:54:03 -0800 (PST)
X-Google-Smtp-Source: AJdET5eHE40CfK2ZFFF0qCUF3fNxlvL8/yWesZoilobuwdLCKOjWEvWsM5eoBLaUN8MB4AqhB7fT
X-Received: by 2002:adf:9d83:: with SMTP id p3-v6mr1642096wre.31.1541487243138;
        Mon, 05 Nov 2018 22:54:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541487243; cv=none;
        d=google.com; s=arc-20160816;
        b=F/FD48j802lHGCZpL0iJNOR96zdfb/JqmMTfIyejvLIX5Sv7um89gzxdFZo1pS4zft
         sO9K9KhXgCJIHjrnn4aAu17QcAPqphEwBtzox3DHX4PNuOCNOti2GyGtJhG914jJ8NP1
         FN+1yBAmbM2AKD3sES87VQg3jcfvMQZNEqK//3wlRLxdw87fNfLNhEF4lfHBD9ybIjg9
         mJL6/EoRQqu0wZAfVTffoR31YK3iojB09MpALIX/SbtU2EDBwjwrpv7kNt/tETEUMvK6
         /D4YuP/qYbwB3KCjSXGjOdcnyzOQQNyqaBEydhLV/BNGRRru6E3b/g6KLhsjISonIq4A
         94Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=hg+gG9HlJemGJhfv1y+UQXN6YokM/0HLuNWMXpBophA=;
        b=dfhbW9KUsuL6dGo2AuqTbpVSVPP1yhDxcjAES7Pq9CVCzxqVn8RjqXGctmG9Qgz9/5
         I25IU9LjlsrLVJPGHMJtm42qOMyqkZ8D85FwzQNwL5Z1lwjgtgqEtIaJsxeUEe3vZssh
         woWjgmH/v0iGinPgltAtj/UPi1c6y0U8TL0gm1GrCv8O3wI1BdBgU3aBzEKaVC/llI9v
         1LN1re9dztcT4C4WeKRESq1vKWEXayPTBWQcHbp/mOWRQkQcGHu5S2gP8rI/Bcwk44GQ
         KIJugz9VLiFDXWRNp+l/YBCa/e2O+LvnJbNfl/sjNlqLJ0S7UBd2ppI/0DiHBnQiE6G8
         Oucw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l9-v6si49082wru.5.2018.11.05.22.54.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 22:54:03 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,470,1534802400"; 
   d="scan'208";a="284456002"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Nov 2018 07:54:02 +0100
Date: Tue, 6 Nov 2018 07:54:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Irenge Jules Bashizi <jbi.octave@gmail.com>
cc: mchehab@kernel.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, jules.octave@outlook.com
Subject: Re: [Outreachy kernel] [PATCH] staging: davinci_vpfe: Correct
 misspelled words
In-Reply-To: <20181106012426.24099-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1811060752010.2437@hadrien>
References: <20181106012426.24099-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 6 Nov 2018, Irenge Jules Bashizi wrote:

> Correct misspelled words checkpatch complains: parameters and initialize.

Why did you send the same thing twice?  It's actually very confusing for
the recipient.  One has no way to know if one corrects the other and if so
if they have arrived in the right order.  If you feel like sending exactly
the same thing again, perhaps because of a mailer issue, put RESEND after
patch and explain what is going on under the ---.  If you have made a
change, but v2 after PATCH and explain what changed under the ---.

julia

>
> Signed-off-by: Irenge Jules Bashizi <jbi.octave@gmail.com>
> ---
>  drivers/staging/media/davinci_vpfe/dm365_isif.c      | 4 ++--
>  drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
> index 39eb0819ab4e..5172822d7e6f 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
> @@ -678,7 +678,7 @@ static void isif_config_bclamp(struct vpfe_isif_device *isif,
>  	val = (bc->bc_mode_color & ISIF_BC_MODE_COLOR_MASK) <<
>  		ISIF_BC_MODE_COLOR_SHIFT;
>
> -	/* Enable BC and horizontal clamp calculation paramaters */
> +	/* Enable BC and horizontal clamp calculation parameters */
>  	val = val | 1 | ((bc->horz.mode & ISIF_HORZ_BC_MODE_MASK) <<
>  	      ISIF_HORZ_BC_MODE_SHIFT);
>
> @@ -715,7 +715,7 @@ static void isif_config_bclamp(struct vpfe_isif_device *isif,
>  		isif_write(isif->isif_cfg.base_addr, val, CLHWIN2);
>  	}
>
> -	/* vertical clamp calculation paramaters */
> +	/* vertical clamp calculation parameters */
>  	/* OB H Valid */
>  	val = bc->vert.ob_h_sz_calc & ISIF_VERT_BC_OB_H_SZ_MASK;
>
> diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
> index bdf6ee5ad96c..257bd96bf730 100644
> --- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
> +++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
> @@ -531,7 +531,7 @@ static void vpfe_cleanup_modules(struct vpfe_device *vpfe_dev,
>   * @vpfe_dev - ptr to vpfe capture device
>   * @pdev - pointer to platform device
>   *
> - * intialize all v4l2 subdevs and media entities
> + * initialize all v4l2 subdevs and media entities
>   */
>  static int vpfe_initialize_modules(struct vpfe_device *vpfe_dev,
>  				   struct platform_device *pdev)
> --
> 2.17.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181106012426.24099-1-jbi.octave%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

