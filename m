X-GM-THRID: 6674226221101875200
X-Received: by 2002:a2e:428b:: with SMTP id h11mr1328756ljf.6.1553964868266;
        Sat, 30 Mar 2019 09:54:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:998e:: with SMTP id w14ls666721lji.14.gmail; Sat, 30 Mar
 2019 09:54:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxaXHzIAXZQV93Zt5pV5DugKokfMCcqYNTgP78z5pCy1e4XDPT9+vgpDUIAmkUQj1Y/PAtj
X-Received: by 2002:a2e:85d3:: with SMTP id h19mr1413890ljj.22.1553964867494;
        Sat, 30 Mar 2019 09:54:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553964867; cv=none;
        d=google.com; s=arc-20160816;
        b=JlI2575g21MXgVxjVOOMz6mrDHd0HlsPFZgOqUzm+bjF0Qxxh1nfUUKMMeVsHQ2I1P
         f++v6XtbLhcKR1tzeRyvMfSX1dkhiF38CRqCGqGAxSQX2ZnX5Bl0AlPs9w7/pdswEFlL
         MbruHE2Wp3bb09zlMNZjMiJBI5HN98g+HmtnGcNaEt7XeV/7V1I74qKBQ0RQHKwweyMZ
         thjNcooHWavRx+uHwtzBLA1fiqb7HiAN5YIjiFXXfiUrIsNVHkAx3vcABVlQPdiXpLbK
         LNEUmGvn8fq2m711d7d+01ZEmeWnPT1Jm2i5o7M+zujp3p5RnA1VPoSENtKqJpRXvvjL
         4Pjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=EKOK7IHp6JMxjpZtxQsqKJGPwUtdiFaUaFyR0uMVIJM=;
        b=oScSJQq8/sX68t9sApEvvJ3+PVRd3w+hSqZfZpFvIbdIcbfVPzO6bLTGRMRg1DwwYq
         LM4fwyc0xoCoRSnD7oPOyqU2QoR6D5GvHDUqw+9HGA2ADSIFUJLpn96O2rJSQhQNQx7f
         dA8df2ExB/93ofHXb+VaK8xq7WbLuN9bKtCfnvQpRHI0SVGDV7Sy+EZNSuv8iNVVF0ET
         EjUlEyl/82pJOW4ZVWZCYvttagcLenSC9PRYlHQC1gSjN9V38CDWXJc40tKDKKLjeC6i
         Cxmc0ehxqf15dVmB34hoIGF6eywEZ7l62MjUyqvnFp5WnnTs+/uYfLTpm3E8Lk6V6wKT
         nK+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t82si249643lje.3.2019.03.30.09.54.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 09:54:27 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,289,1549926000"; 
   d="scan'208";a="376471769"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Mar 2019 17:54:26 +0100
Date: Sat, 30 Mar 2019 17:54:26 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2 v5] staging: rtlwifi: phydm:
 Simplify `status = status & <expression>`
In-Reply-To: <423db52767ef4efafe5a078aecb1691d4bab9138.1553964092.git.nishka.dasgupta@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903301753490.2608@hadrien>
References: <cover.1553964092.git.nishka.dasgupta@yahoo.com> <423db52767ef4efafe5a078aecb1691d4bab9138.1553964092.git.nishka.dasgupta@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 30 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:

> Simplify occurrences of `status = status & <expression>` by modifying
> them to `status &= <expression> to make the code more readable.

There needs to be three patches.  The arguments should be moved up in a
separate one.  The log message of this one doens't mention that.

julia

>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/rtlwifi/phydm/phydm_debug.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
> index a113e2b63153..5e0151036542 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
> +++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
> @@ -51,17 +51,13 @@ static inline void phydm_check_dmval_txagc(struct phy_dm_struct *dm, u32 used,
>  				      (power_index << 16) | (power_index << 8) |
>  				      (power_index);
>  			for (i = 0; i < ODM_RATEVHTSS2MCS9; i += 4)
> -				status = status &
> -					  phydm_api_set_txagc(
> -						  dm, power_index,
> +				status &= phydm_api_set_txagc(dm, power_index,
>  						  (enum odm_rf_radio_path)
>  							  dm_value[1],
>  						  i, false);
>  		} else if (dm->support_ic_type & ODM_RTL8197F) {
>  			for (i = 0; i <= ODM_RATEMCS15; i++)
> -				status = status &
> -					 phydm_api_set_txagc(
> -						  dm, power_index,
> +				status &= phydm_api_set_txagc(dm, power_index,
>  						  (enum odm_rf_radio_path)
>  							  dm_value[1],
>  						  i, false);
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/423db52767ef4efafe5a078aecb1691d4bab9138.1553964092.git.nishka.dasgupta%40yahoo.com.
> For more options, visit https://groups.google.com/d/optout.
>

