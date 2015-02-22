X-GM-THRID: 2499198058496
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e241efa4d6dbf077
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.101.101 with SMTP id ff5mr738650wib.5.1424621922022;
        Sun, 22 Feb 2015 08:18:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.203.133 with SMTP id kq5ls504089lac.32.gmail; Sun, 22 Feb
 2015 08:18:41 -0800 (PST)
X-Received: by 10.112.168.104 with SMTP id zv8mr765405lbb.10.1424621921569;
        Sun, 22 Feb 2015 08:18:41 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ev8si498936wib.3.2015.02.22.08.18.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 22 Feb 2015 08:18:41 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,625,1418079600"; 
   d="scan'208";a="100918342"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Feb 2015 17:18:41 +0100
Date: Sun, 22 Feb 2015 17:18:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vaishali Thakkar <vthakkar1994@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: Use mod_timer
In-Reply-To: <20150222161321.GA3033@vaishali-Ideapad-Z570>
Message-ID: <alpine.DEB.2.10.1502221715060.2612@hadrien>
References: <20150222161321.GA3033@vaishali-Ideapad-Z570>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 22 Feb 2015, Vaishali Thakkar wrote:

> This patch introduces the use of API function mod_timer
> instead of driver specific function as it is a more
> efficient way to update the expire field of an active
> timer.

Is it really more efficient, or just more standard?

> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> index 9bb364f..71ef0de 100644
> --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> @@ -129,7 +129,8 @@ static inline void handle_pairwise_key(struct sta_info *psta,
>  		memcpy(psta->tkiprxmickey. skey, &(param->u.crypt.
>  			key[24]), 8);
>  		padapter->securitypriv. busetkipkey = false;
> -		_set_timer(&padapter->securitypriv.tkip_timer, 50);
> +		mod_timer(&padapter->securitypriv.tkip_timer,
> +			(jiffies+msecs_to_jiffies(50)));

You don't need the parentheses around the second argument.  The second
argument would look nicer lined up with the first one.

Other similar code puts spaces around the +, eg in
drivers/iio/common/ssp_sensors/ssp_dev.c

>  	}
>  	r8712_setstakey_cmd(padapter, (unsigned char *)psta, true);
>  }
> @@ -153,8 +154,8 @@ static inline void handle_group_key(struct ieee_param *param,
>  		if (padapter->registrypriv.power_mgnt > PS_MODE_ACTIVE) {
>  			if (padapter->registrypriv.power_mgnt != padapter->
>  			    pwrctrlpriv.pwr_mode)
> -				_set_timer(&(padapter->mlmepriv.dhcp_timer),
> -					   60000);
> +				mod_timer(&(padapter->mlmepriv.dhcp_timer),
> +					   (jiffies+msecs_to_jiffies(60000)));

Likewise here.

julia

>  		}
>  	}
>  }
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150222161321.GA3033%40vaishali-Ideapad-Z570.
> For more options, visit https://groups.google.com/d/optout.
>

