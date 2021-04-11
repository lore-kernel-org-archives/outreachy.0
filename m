X-GM-THRID: 6949457058068430848
X-Received: by 2002:a19:5d55:: with SMTP id p21mr15435292lfj.316.1618133204836;
        Sun, 11 Apr 2021 02:26:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:48c6:: with SMTP id v189ls160589lfa.0.gmail; Sun, 11 Apr
 2021 02:26:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzD6JImIyiK/PI2nyjY+x72Miq1tPRkxCykqk70iHXFhhs1eCp1BLUbIph+icQmrLflAym8
X-Received: by 2002:a05:6512:33d3:: with SMTP id d19mr15305993lfg.363.1618133202903;
        Sun, 11 Apr 2021 02:26:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618133202; cv=none;
        d=google.com; s=arc-20160816;
        b=nvG8M6wNm8uX2Qhahcv1yLjdDpI6TkvyAduslNuz5zcZjTg9ytIa8Y33lEBum9Qja6
         KqG7bls3wkCa/agfUHxFW44v+V9NH3p1mErzyT7wvB7KZQFzlqALARFF/utK4a53FneO
         NkGDSUcE2RCfuv5oOEAO8TWZ0I3DUs5b/kmKfxmBh4Io8/CIpI9368rF+zI5316++bE/
         tf/KI7Q6Q70tAzrFzNBAJI0UoxgdqWJurmy9EzRROg4Kw6PIVJDrZH+yjCQoWJqNRk2B
         cK4hb5r6MrQbW+Edawfv+u4+TaKG45CU/laxcOMwmsFEowIW7JLhAPeCBxjiPnFgQzsj
         s1iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=PgqtVKE1+dLJSfnda+l1+BR9fb/Ft+ZLKtDAmqUZlNc=;
        b=rhlS1y3cA4ejftn9j0tHKeYLAGUzVmR3IamVjARXU9pSqWCOVuKYpkVTJaMPfOzO6L
         jCJNZKav/b8MbHT+P2Vg9bIngm7cztlH36N629O5MolNH/YidmnIGDSi+vz9FVojh+Dd
         jgV+BjyN0mGa+yLj1hjlfLBdtTUH8/wAx9cO2ue65zLzYdsAWigbKyhKl4NhDsCpRke7
         3bcLU7+IPqPpu2bUX5WAURHVUsSOboVmjnEywTT7GE2yPBJX7enXRGtsxoM/co7WWc/B
         a6BzbJhVz9gXw0BYTAx8R463U3QjRJbWDPnyPCW+TraDI6Lm5AikfmaMJgtyXvV4PdAk
         8hOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si413536lfa.0.2021.04.11.02.26.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Apr 2021 02:26:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ATyTKvqjxRiHyH/C43DPi9mAZAnBQXiwji2hD?=
 =?us-ascii?q?6mlwRA09T+WzkceykPMHkSLlkTp5YgBDpfmsMLSNKEmskaJdzpIWOd6ZPTXOnE?=
 =?us-ascii?q?uNAMVc4ZD5wzvmcheOldJ18at7aaBxBJnRADFB/KPHyTK1Gdoh39WLmZrA7Yy1?=
 =?us-ascii?q?815XQRhue+Vc6W5CajqzKFF8RwVNGPMCeKa028wvnVedUEVSSsy6A3UfNtKsm/?=
 =?us-ascii?q?T70KvGWFohHB4o6A6HkDOu5vrBGQOZxwp2aVxy/Ys=3D?=
X-IronPort-AV: E=Sophos;i="5.82,214,1613430000"; 
   d="scan'208";a="502612221"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Apr 2021 11:26:42 +0200
Date: Sun, 11 Apr 2021 11:26:41 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v3 4/4] staging: rtl8723bs: core:
 Change a controlling expression
In-Reply-To: <20210411082908.31876-5-fmdefrancesco@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104111125310.2854@hadrien>
References: <20210411082908.31876-1-fmdefrancesco@gmail.com> <20210411082908.31876-5-fmdefrancesco@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 11 Apr 2021, Fabio M. De Francesco wrote:

> Change a controlling expression within an 'if' statement: don't compare
> with 'true'.
>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>
> Changes from v2: Rewrite subject in patch 0/4; remove a patch from the
> series because it had alreay been applied (rtl8723bs: core: Remove an unused variable).
> Changes from v1: Fix a typo in subject of patch 1/5, add patch 5/5.
>
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index 32079e0f71d5..600366cb1aeb 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -1507,7 +1507,7 @@ static void rtw_lps_change_dtim_hdl(struct adapter *padapter, u8 dtim)
>  	if (pwrpriv->dtim != dtim)
>  		pwrpriv->dtim = dtim;
>
> -	if ((pwrpriv->fw_current_in_ps_mode == true) && (pwrpriv->pwr_mode > PS_MODE_ACTIVE)) {
> +	if ((pwrpriv->fw_current_in_ps_mode) && (pwrpriv->pwr_mode > PS_MODE_ACTIVE)) {

The parentheses in the left argument of && can be dropped as well.

julia

>  		u8 ps_mode = pwrpriv->pwr_mode;
>
>  		rtw_hal_set_hwreg(padapter, HW_VAR_H2C_FW_PWRMODE, (u8 *)(&ps_mode));
> --
> 2.31.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210411082908.31876-5-fmdefrancesco%40gmail.com.
>

