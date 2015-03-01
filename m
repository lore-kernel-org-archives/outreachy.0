X-GM-THRID: 5240177819648
X-Received: by 10.112.219.102 with SMTP id pn6mr3299125lbc.12.1425249671372;
        Sun, 01 Mar 2015 14:41:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.83.130 with SMTP id q2ls456402wiy.13.canary; Sun, 01 Mar
 2015 14:41:11 -0800 (PST)
X-Received: by 10.180.75.232 with SMTP id f8mr1749597wiw.0.1425249671114;
        Sun, 01 Mar 2015 14:41:11 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l8si574365wia.0.2015.03.01.14.41.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 14:41:11 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,672,1418079600"; 
   d="scan'208";a="101719463"
Received: from wnpgmb0903w-ds01-92-71.dynamic.mtsallstream.net (HELO unknownE0F847206056) ([142.161.92.71])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 01 Mar 2015 23:41:09 +0100
Date: Sun, 1 Mar 2015 16:41:07 -0600 (CST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Remove if
 conditions.
In-Reply-To: <20150228215501.GA5201@localhost>
Message-ID: <alpine.DEB.2.10.1503011640130.2545@hadrien>
References: <20150228215501.GA5201@localhost>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 1 Mar 2015, Navya Sri Nizamkari wrote:

> This patch removes if conditions with no exececutable
> statements in the bodies of those ifs and also no
> variable assignments in the if conditional checks.
>
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl8192e/rtl_wx.c | 12 ------------
>  1 file changed, 12 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
> index df0323f..c233a1c 100644
> --- a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
> +++ b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
> @@ -572,10 +572,6 @@ static int r8192_wx_set_essid(struct net_device *dev,
>  	struct r8192_priv *priv = rtllib_priv(dev);
>  	int ret;
>
> -	if ((rtllib_act_scanning(priv->rtllib, false)) &&
> -	    !(priv->rtllib->softmac_features & IEEE_SOFTMAC_SCAN)) {
> -		;	/* TODO - get rid of if */
> -	}

I'm not sure that this is correct.  Can the call to rtllib_act_scanning
have any side effects?  If not, you should mention that explicitly in teh
commit message.

julia

>  	if (priv->bHwRadioOff == true) {
>  		printk(KERN_INFO "=========>%s():hw radio off,or Rf state is "
>  		       "eRfOff, return\n", __func__);
> @@ -708,11 +704,6 @@ static int r8192_wx_set_wap(struct net_device *dev,
>  	int ret;
>  	struct r8192_priv *priv = rtllib_priv(dev);
>
> -	if ((rtllib_act_scanning(priv->rtllib, false)) &&
> -	    !(priv->rtllib->softmac_features & IEEE_SOFTMAC_SCAN)) {
> -		;	/* TODO - get rid of if */
> -	}
> -
>  	if (priv->bHwRadioOff == true)
>  		return 0;
>
> @@ -763,9 +754,6 @@ static int r8192_wx_set_enc(struct net_device *dev,
>  			     {0x00, 0x00, 0x00, 0x00, 0x00, 0x03} };
>  	int i;
>
> -	if ((rtllib_act_scanning(priv->rtllib, false)) &&
> -	   !(priv->rtllib->softmac_features & IEEE_SOFTMAC_SCAN))
> -		;	/* TODO - get rid of if */
>  	if (priv->bHwRadioOff == true)
>  		return 0;
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150228215501.GA5201%40localhost.
> For more options, visit https://groups.google.com/d/optout.
>

