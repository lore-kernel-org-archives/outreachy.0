X-GM-THRID: 6673526456107139072
X-Received: by 2002:a2e:9002:: with SMTP id h2mr1229868ljg.14.1553858675310;
        Fri, 29 Mar 2019 04:24:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:43af:: with SMTP id t15ls197279lfl.8.gmail; Fri, 29 Mar
 2019 04:24:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxrxwaYLntXdlV4PaQXDvEYTKxLgCTS9SRMJVFXMDz4hysyS8k1m7TftoqPm+C5gY8ojXCS
X-Received: by 2002:ac2:5632:: with SMTP id b18mr1151795lff.5.1553858674501;
        Fri, 29 Mar 2019 04:24:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553858674; cv=none;
        d=google.com; s=arc-20160816;
        b=xPZ344fqujVAjRWhRzQtDq8ycBR0rhUu+03z9Ioi88+ISAXI0DO7+JNeTslCiCdnFi
         RKZE2sWetgI92ZoOi8rkpvEL4jGcnkkbO2BIazYqhE+WCQZzNvAm7txWNDSAahngCJYf
         NmyLTwAQn0nrHxAXKPYz+6xgzxIW742KUDFXQqh9ST8PNoKEcmHccWoCoqRCKS8O5LjM
         EGWjruEOYaPWYwU1kt38EMzjnlLQA2mvXHyN/TDAKXH4USPaXU28O/FJD+8/sfgsXKCZ
         LWM1T9keVUPhwXJhIJzFM6SvZKOnbf2jjJtQg0Ekp6N9QgiUI3CsKxCdj1bBwbvGkgBz
         Kktw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=96GnbQ04Pbg7UrrcfMXCzm5fqc0SkCtxF4UoZERfDec=;
        b=SUpU3kld7vXO4hwXqyK2d0li6Kq8WlgRQUnbIlS5uciEZVe/L56CLn1C4cqkdkgvdr
         G9ZZmGqZdhD8qrzJYx34ImSqY5DPb/B8O3jMbIAepB76arN5vTjld5Z2tG02W2Op6Dgj
         DZHuJUsCHEsWpnrPwcYOfH5RBPUq01ttThDf2QtWIAYvH7XtYRhceubB5kDcuh9Xp2ix
         DWbpJA6V/LnijYdBmCixldw/Ig0dE8pA0jeMO68az5eKPAsSrtjGaw2a9u5c9ja2Whlk
         yJv0yCgb0cNsNSIicMVlkwEbuboUxRzXHzRcVsFBSZluCZ0/Z4e3invU7vJeFZCpEk/3
         U7qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h21si85425lfm.4.2019.03.29.04.24.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 04:24:34 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,284,1549926000"; 
   d="scan'208";a="376318805"
Received: from unknown (HELO hadrien) ([195.167.213.123])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Mar 2019 12:24:33 +0100
Date: Fri, 29 Mar 2019 12:24:32 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: rtlwifi: phydm:
 phydm_debug.c: Remove brackets
In-Reply-To: <20190328193041.13541-4-nishka.dasgupta@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903291224010.2475@hadrien>
References: <20190328193041.13541-1-nishka.dasgupta@yahoo.com> <20190328193041.13541-4-nishka.dasgupta@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 29 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:

> Remove parentheses around right hand side of expression and fix
> resulting alignment issues. Issue found with Coccinelle.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/rtlwifi/phydm/phydm_debug.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
> index 91f2c054d83b..4c907a0b0157 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
> +++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
> @@ -51,20 +51,20 @@ static inline void phydm_check_dmval_txagc(struct phy_dm_struct *dm, u32 used,
>  				      (power_index << 16) | (power_index << 8) |
>  				      (power_index);
>  			for (i = 0; i < ODM_RATEVHTSS2MCS9; i += 4)
> -				status = (status &
> -					  phydm_api_set_txagc(
> +				status = status &
> +					 phydm_api_set_txagc(

How about using &= in these cases?  The code is a bit complex, and that
would make it simpler.

julia

>  						  dm, power_index,
>  						  (enum odm_rf_radio_path)
>  							  dm_value[1],
> -						  i, false));
> +						  i, false);
>  		} else if (dm->support_ic_type & ODM_RTL8197F) {
>  			for (i = 0; i <= ODM_RATEMCS15; i++)
> -				status = (status &
> -					  phydm_api_set_txagc(
> +				status = status &
> +					 phydm_api_set_txagc(
>  						  dm, power_index,
>  						  (enum odm_rf_radio_path)
>  							  dm_value[1],
> -						  i, false));
> +						  i, false);
>  		}
>
>  		if (status)
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190328193041.13541-4-nishka.dasgupta%40yahoo.com.
> For more options, visit https://groups.google.com/d/optout.
>

