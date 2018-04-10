X-GM-THRID: 6542915874247933952
X-Received: by 10.28.14.65 with SMTP id 62mr84535wmo.31.1523392776575;
        Tue, 10 Apr 2018 13:39:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.220.1 with SMTP id t1ls2877451wri.3.gmail; Tue, 10 Apr
 2018 13:39:35 -0700 (PDT)
X-Google-Smtp-Source: AIpwx492K4EHspI7OTZ/OBpSt4ru5npDUeFOzMmnrkAVELenwnqQouTa62H1o3jAau6Fn3wsoiy2
X-Received: by 10.223.189.4 with SMTP id j4mr180867wrh.25.1523392775605;
        Tue, 10 Apr 2018 13:39:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1523392775; cv=none;
        d=google.com; s=arc-20160816;
        b=E2AEiiL4iz5RzVNGF/dP6A1/VxB31e8PyVvSQDmX86O2bMk1Mdc5df9bqY/rEgkvJI
         97beG5MJEMjGvXIzmZoQiISZ0pdYTCioNa/JiJKbAFToHiBrWuT3ptQC9GV0KgLbSncI
         AUissPxNHLopSTybLxFwyg5KPsToGhgw0SUlv33WXFyfpPzr3+uyIEUVxJOog6zw4krP
         xwyvgJi4FpiamoyQNbmC5+0CF4spgA1xQrCxkfjkgqslKxjtu0UgANFmXAwJ1u6dA4SC
         pndxEdYK89ZAXzdrZ0P59231xJpHph2ithl2kugXPmrTqJH8tDP+W9v2xWmEgjBqUEOL
         rmbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=nAoQvyYZUCKiPr34S/EtQYy3g6XUXOXxp/ICAeO4uog=;
        b=V5As7j2KNQ47XKJU4uNjtDZKHY4H05TLdx4nTX9h+OA3E2QklfQAt5ilOqnwuAyaux
         WpyVVbbNb8oU8OWteNnXr+5qfMlkac6y8Hp4CQrjW/ZwNJrbs1TDarZDPNSoYEkDWdc4
         iq/evGhFtc4Ud2ajBdAoLzVECbx4TVHSZE1KH6PEYPQZYZchdEWmffn2WeShFI4hqMIw
         PYuBMNBz92oV/5Tj8j1pSgcbSLlZ75gTchT1m4HjE9haVPDGOVtTez/9M0tLkCJUdd+8
         bnehRzQlwFfogH4s7V/FzWcum9u2AjfaSA46TU/LoBPlRjHSpSkApH/r2L4eIg0SnLqC
         oZ4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b202si491951wmb.2.2018.04.10.13.39.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Apr 2018 13:39:35 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,433,1517871600"; 
   d="scan'208";a="322192117"
Received: from ip-146.net-89-2-7.rev.numericable.fr (HELO [192.168.0.15]) ([89.2.7.146])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Apr 2018 22:39:35 +0200
Date: Tue, 10 Apr 2018 22:39:34 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    mchehab@kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2] Replace explicit use of function
 name with "%s...", __func__
In-Reply-To: <1523392484-5746-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1804102239190.8547@hadrien>
References: <1523392484-5746-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 10 Apr 2018, Nishka Dasgupta wrote:

> Replace use of function name with "%s...", __func__ to make future
> modifications to the respective functions easier to handle. Issue found
> with checkpatch.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
> Changes in v2:
>  - Moved modified section to previous line.

The previous patch was also v2.

julia

>
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> index 6a3434c..90c4ddd 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> @@ -695,22 +695,21 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
>  	table_size = gamma->tbl_size;
>
>  	if (!gamma->bypass_r && !gamma_param->table_r) {
> -		dev_err(dev,
> -			"ipipe_get_gamma_params: table ptr empty for R\n");
> +		dev_err(dev, "%s: table ptr empty for R\n", __func__);
>  		return -EINVAL;
>  	}
>  	memcpy(gamma_param->table_r, gamma->table_r,
>  	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
>
>  	if (!gamma->bypass_g && !gamma_param->table_g) {
> -		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for G\n");
> +		dev_err(dev, "%s: table ptr empty for G\n", __func__);
>  		return -EINVAL;
>  	}
>  	memcpy(gamma_param->table_g, gamma->table_g,
>  	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
>
>  	if (!gamma->bypass_b && !gamma_param->table_b) {
> -		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for B\n");
> +		dev_err(dev, "%s: table ptr empty for B\n", __func__);
>  		return -EINVAL;
>  	}
>  	memcpy(gamma_param->table_b, gamma->table_b,
> @@ -743,7 +742,7 @@ static int ipipe_get_3d_lut_params(struct vpfe_ipipe_device *ipipe, void *param)
>
>  	lut_param->en = lut->en;
>  	if (!lut_param->table) {
> -		dev_err(dev, "ipipe_get_3d_lut_params: Invalid table ptr\n");
> +		dev_err(dev, "%s: Invalid table ptr\n", __func__);
>  		return -EINVAL;
>  	}
>
> @@ -924,7 +923,7 @@ static int ipipe_get_gbce_params(struct vpfe_ipipe_device *ipipe, void *param)
>  	gbce_param->en = gbce->en;
>  	gbce_param->type = gbce->type;
>  	if (!gbce_param->table) {
> -		dev_err(dev, "ipipe_get_gbce_params: Invalid table ptr\n");
> +		dev_err(dev, "%s: Invalid table ptr\n", __func__);
>  		return -EINVAL;
>  	}
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1523392484-5746-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

