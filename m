X-GM-THRID: 6674202395831959552
X-Received: by 2002:adf:e3cb:: with SMTP id k11mr1498919wrm.7.1553959674764;
        Sat, 30 Mar 2019 08:27:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:6c01:: with SMTP id h1ls718759wmc.13.gmail; Sat, 30 Mar
 2019 08:27:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxCHG812e7vY19z9vPX8wWdyz8brDwMKDwOob4z/FRENClmk7DEZ82MKaIhmE5mQLTeHM57
X-Received: by 2002:a7b:c4cf:: with SMTP id g15mr640289wmk.21.1553959673926;
        Sat, 30 Mar 2019 08:27:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553959673; cv=none;
        d=google.com; s=arc-20160816;
        b=cschEZVmOoTIlBlhiHJnJfOorHXaHdEJ23DZp/BpNROF/la8Ot3r3NwfnYn925yjNT
         kfN6te8n+/YgkDA5aBefe9MtjeSmwVgGuD5RKWK2evany9XVcKK8v7id0uE6BmZKPp2g
         A9ULg+uSM2SezD08Kmm3j0h9GrMEPyeZJkUYks8W7RBOj/L67m/r9oOdDb/xbyStnk0i
         55u8M2qKA179FOADPaJUiO8XjCim02PuttBu7VqEDO0IVJniQ8qUMx2fauzTnkHbS8xG
         nla8aY8po4tcQGBAyO2C9+KfK7k5MW8NdpjC9AUYKT+8hhCBZ8P2HZmk+7kjlAe9udQf
         gB+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=C4NV+igHdQY8569d8z2LVft6JANQ9RKUXg8+sMezOLw=;
        b=q3ZwCKvCG/C6O2q1fbRl6pkQF1tz6WWgYLdpSXEb8Iz0n14LUWB4PJnVPl2YxMrQyT
         gyOHlAKPtrVgu3C/AAINVzN1quXesBGIt3vjDgcI0PLTeGQ/5a5chXkbBtLSKIBgUJSf
         ASdXgwcy/Edb1Oi0ZldwNJtHSWqhGoUbhK6ngNR8fmipVZdWTY3rQvV7+f1w0OizzmDu
         7LWSg4aGaNQS7dvRie9Sm7EQWXKlTCFHJ/zCGkrS9/r4EztuRHjDOQ3qVzo3wAVI5cst
         cuh8HK56FK64Ef22OWYwWH65MwshT8Cm72ssdTFwTWmAtyPJ9nUFb/gJohv1SckwepF9
         hcPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a9si255656wrp.5.2019.03.30.08.27.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 08:27:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,289,1549926000"; 
   d="scan'208";a="376468180"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Mar 2019 16:27:53 +0100
Date: Sat, 30 Mar 2019 16:27:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtlwifi: phydm: Remove
 parentheses
In-Reply-To: <20190330151341.3891-1-nishka.dasgupta@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903301627220.2608@hadrien>
References: <20190330151341.3891-1-nishka.dasgupta@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 30 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:

> Remove unnecessary parentheses on the right hand side and simplify expression.

The simplification should be explained in the commit log.
The log message should be under 80 characters wide.

julia

> Issue first detected using Coccinelle.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
> Changes in v2:
> - Change `status = status & <expression>` to `status &= <expression>`,
>   to make the code more readable.
>
>  drivers/staging/rtlwifi/phydm/phydm_debug.c | 18 ++++++++----------
>  1 file changed, 8 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
> index 91f2c054d83b..13b34dc33011 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
> +++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
> @@ -51,20 +51,18 @@ static inline void phydm_check_dmval_txagc(struct phy_dm_struct *dm, u32 used,
>  				      (power_index << 16) | (power_index << 8) |
>  				      (power_index);
>  			for (i = 0; i < ODM_RATEVHTSS2MCS9; i += 4)
> -				status = (status &
> -					  phydm_api_set_txagc(
> -						  dm, power_index,
> -						  (enum odm_rf_radio_path)
> +				status &= phydm_api_set_txagc(
> +						   dm, power_index,
> +						   (enum odm_rf_radio_path)
>  							  dm_value[1],
> -						  i, false));
> +						   i, false);
>  		} else if (dm->support_ic_type & ODM_RTL8197F) {
>  			for (i = 0; i <= ODM_RATEMCS15; i++)
> -				status = (status &
> -					  phydm_api_set_txagc(
> -						  dm, power_index,
> -						  (enum odm_rf_radio_path)
> +				status &= phydm_api_set_txagc(
> +						   dm, power_index,
> +						   (enum odm_rf_radio_path)
>  							  dm_value[1],
> -						  i, false));
> +						   i, false);
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190330151341.3891-1-nishka.dasgupta%40yahoo.com.
> For more options, visit https://groups.google.com/d/optout.
>

