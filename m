X-GM-THRID: 3575464853504
X-Received: by 10.152.4.229 with SMTP id n5mr1114556lan.1.1424941873582;
        Thu, 26 Feb 2015 01:11:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.42 with SMTP id y10ls8371lag.71.gmail; Thu, 26 Feb 2015
 01:11:13 -0800 (PST)
X-Received: by 10.112.138.202 with SMTP id qs10mr1088483lbb.24.1424941873069;
        Thu, 26 Feb 2015 01:11:13 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id by11si1548646wib.1.2015.02.26.01.11.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:11:13 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,651,1418079600"; 
   d="scan'208";a="101380084"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Feb 2015 10:11:12 +0100
Date: Thu, 26 Feb 2015 10:11:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl872au: merged consecutive
 string fragments.
In-Reply-To: <1424934979-14299-1-git-send-email-aysemelikeyurtoglu@gmail.com>
Message-ID: <alpine.DEB.2.10.1502261010340.2414@hadrien>
References: <1424934979-14299-1-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 26 Feb 2015, Melike Yurtoglu wrote:

> WARNING: Consecutive strings are generally better as a single string
> That was found by running checkpatch.
>
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
> index 9e1304f..dda9c6e 100644
> --- a/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
> +++ b/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
> @@ -1966,7 +1966,7 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
>  	struct security_priv *psecuritypriv = &padapter->securitypriv;
>  	struct rtw_queue *queue = &pmlmepriv->scanned_queue;
>
> -	DBG_8723A("=>" "%s(%s)\n", __func__, ndev->name);
> +	DBG_8723A("=> %s(%s)\n", __func__, ndev->name);

The original code didn't have a space between => and the function name.

julia

>  	DBG_8723A("privacy =%d, key =%p, key_len =%d, key_idx =%d\n",
>  		  sme->privacy, sme->key, sme->key_len, sme->key_idx);
>
> --
> 1.8.3.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424934979-14299-1-git-send-email-aysemelikeyurtoglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

