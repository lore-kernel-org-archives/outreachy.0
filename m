X-GM-THRID: 2499198058496
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e241efa4d6dbf077
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.43.99.67 with SMTP id cr3mr5746626icc.32.1424720342596;
        Mon, 23 Feb 2015 11:39:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.63.43 with SMTP id d11ls736619obs.52.gmail; Mon, 23 Feb
 2015 11:39:02 -0800 (PST)
X-Received: by 10.182.176.35 with SMTP id cf3mr13055607obc.8.1424720342432;
        Mon, 23 Feb 2015 11:39:02 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x22a.google.com (mail-qg0-x22a.google.com. [2607:f8b0:400d:c04::22a])
        by gmr-mx.google.com with ESMTPS id e5si3604122qcg.1.2015.02.23.11.39.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:39:02 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) client-ip=2607:f8b0:400d:c04::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-f42.google.com with SMTP id z107so26276618qgd.1
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 11:39:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=FGqMPAgIQhAvoKY4P1okgXsxPebQF5myeauR4kcsluI=;
        b=r8+DDlrYRCB7lxmGi3lCUt6QTQWMT1d/3BIg3qtfZR19CTanX9xPzprqBSDOpds2XB
         GvBTRItljCP30V7+u7KB4xXTKAT03S8e4n2LBiEIJmjoxxsa592h9uHZ9syOtNMlG8KI
         fmmlgSLlK9Afpq76vjoVA0r8+iltUlSffqGifyn6dYW3cVhNJ5tH1WAsKh8ZAYLRJA+f
         xi/zmA5g8rAykqwumSBGPx3oD7/gMDaohtPx9CtDGeSlqKOZWPJhvHMuxW2uwxjy36oL
         tZ1dB23sRfOfFnzhKf1tsxigq8r6+fQqk6oN9/OJ/ETEYDTN3VUV0yT+9jXO/v00ywnI
         UvZw==
X-Received: by 10.140.30.196 with SMTP id d62mr26831600qgd.88.1424720342319;
        Mon, 23 Feb 2015 11:39:02 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id 128sm18030763qhu.15.2015.02.23.11.39.01
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 11:39:01 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB81D4.30906@gmail.com>
Date: Mon, 23 Feb 2015 14:39:00 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Vaishali Thakkar <vthakkar1994@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8712: Use mod_timer
References: <20150223105627.GA4466@vaishali-Ideapad-Z570>
In-Reply-To: <20150223105627.GA4466@vaishali-Ideapad-Z570>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/23/15 05:56, Vaishali Thakkar wrote:
> This patch introduces the use of API function mod_timer
> instead of driver specific function as it is a more
> efficient and standard way to update the expire field of
> an active timer.
> 
> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> ---
> Changes since v1:
> 	-Edit commit message
> 	-Remove unnecessory parenthesis
> 	-Align second parameter of function
> 	 mod_timer properly
> 
>  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)

I like this patch!

However if you start getting rid of _set_timer() from a driver like
this, you should try and remove all instances, and then get rid of all
uses of _set_timer().

In addition you are still leaving some unnecessary parenthesis in place
- see below.

Cheers,
Jes


> diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> index 9bb364f..0ce8e9d 100644
> --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> @@ -129,7 +129,8 @@ static inline void handle_pairwise_key(struct sta_info *psta,
>  		memcpy(psta->tkiprxmickey. skey, &(param->u.crypt.
>  			key[24]), 8);
>  		padapter->securitypriv. busetkipkey = false;
> -		_set_timer(&padapter->securitypriv.tkip_timer, 50);
> +		mod_timer(&padapter->securitypriv.tkip_timer,
> +			  jiffies + msecs_to_jiffies(50));
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
                                      here ^
> +					  jiffies + msecs_to_jiffies(60000));
>  		}
>  	}
>  }
> 


