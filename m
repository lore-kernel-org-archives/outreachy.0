X-GM-THRID: 8122735263744
X-Received: by 10.112.142.1 with SMTP id rs1mr5908982lbb.19.1426326499019;
        Sat, 14 Mar 2015 02:48:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.3.10 with SMTP id 10ls456075lay.26.gmail; Sat, 14 Mar 2015
 02:48:18 -0700 (PDT)
X-Received: by 10.112.167.131 with SMTP id zo3mr3304091lbb.7.1426326498406;
        Sat, 14 Mar 2015 02:48:18 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id gj20si293787wic.1.2015.03.14.02.48.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 14 Mar 2015 02:48:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,399,1422918000"; 
   d="scan'208";a="103315711"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Mar 2015 10:48:17 +0100
Date: Sat, 14 Mar 2015 10:48:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Cristina Opriceana <cristina.opriceana@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] Staging: rtl8192e: Bool tests
 don't need comparisons
In-Reply-To: <0b95bd2fba788a4bb9d9cdbb942bebc6e388aa18.1426273386.git.cristina.opriceana@gmail.com>
Message-ID: <alpine.DEB.2.02.1503141043100.2075@localhost6.localdomain6>
References: <cover.1426273386.git.cristina.opriceana@gmail.com> <0b95bd2fba788a4bb9d9cdbb942bebc6e388aa18.1426273386.git.cristina.opriceana@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 13 Mar 2015, Cristina Opriceana wrote:

> This patch removes comparisons to true/false values on bool variables.
> Warning found by coccinelle:
> "WARNING: Comparison to bool".

It's orthogonal to this patch, but this patch involves a type that is 
uselessly defined as a typedef.  There are a lot of typedefs in that 
header file that could be cleaned up.

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

julia

> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl8192e/rtl_wx.c | 40 +++++++++++++++---------------
>  1 file changed, 20 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
> index c233a1c..9e65c32 100644
> --- a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
> +++ b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
> @@ -67,7 +67,7 @@ static int r8192_wx_set_rate(struct net_device *dev,
>  	int ret;
>  	struct r8192_priv *priv = rtllib_priv(dev);
>  
> -	if (priv->bHwRadioOff == true)
> +	if (priv->bHwRadioOff)
>  		return 0;
>  
>  	down(&priv->wx_sem);
> @@ -87,7 +87,7 @@ static int r8192_wx_set_rts(struct net_device *dev,
>  	int ret;
>  	struct r8192_priv *priv = rtllib_priv(dev);
>  
> -	if (priv->bHwRadioOff == true)
> +	if (priv->bHwRadioOff)
>  		return 0;
>  
>  	down(&priv->wx_sem);
> @@ -115,7 +115,7 @@ static int r8192_wx_set_power(struct net_device *dev,
>  	int ret;
>  	struct r8192_priv *priv = rtllib_priv(dev);
>  
> -	if (priv->bHwRadioOff == true) {
> +	if (priv->bHwRadioOff) {
>  		RT_TRACE(COMP_ERR, "%s():Hw is Radio Off, we can't set "
>  			 "Power,return\n", __func__);
>  		return 0;
> @@ -145,7 +145,7 @@ static int r8192_wx_set_rawtx(struct net_device *dev,
>  	struct r8192_priv *priv = rtllib_priv(dev);
>  	int ret;
>  
> -	if (priv->bHwRadioOff == true)
> +	if (priv->bHwRadioOff)
>  		return 0;
>  
>  	down(&priv->wx_sem);
> @@ -308,7 +308,7 @@ static int r8192_wx_set_debugflag(struct net_device *dev,
>  	struct r8192_priv *priv = rtllib_priv(dev);
>  	u8 c = *extra;
>  
> -	if (priv->bHwRadioOff == true)
> +	if (priv->bHwRadioOff)
>  		return 0;
>  
>  	printk(KERN_INFO "=====>%s(), *extra:%x, debugflag:%x\n", __func__,
> @@ -329,7 +329,7 @@ static int r8192_wx_set_mode(struct net_device *dev, struct iw_request_info *a,
>  	enum rt_rf_power_state rtState;
>  	int ret;
>  
> -	if (priv->bHwRadioOff == true)
> +	if (priv->bHwRadioOff)
>  		return 0;
>  	rtState = priv->rtllib->eRFPowerState;
>  	down(&priv->wx_sem);
> @@ -470,7 +470,7 @@ static int r8192_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
>  			return 0;
>  	}
>  
> -	if (priv->bHwRadioOff == true) {
> +	if (priv->bHwRadioOff) {
>  		printk(KERN_INFO "================>%s(): hwradio off\n",
>  		       __func__);
>  		return 0;
> @@ -552,7 +552,7 @@ static int r8192_wx_get_scan(struct net_device *dev, struct iw_request_info *a,
>  	if (!priv->up)
>  		return -ENETDOWN;
>  
> -	if (priv->bHwRadioOff == true)
> +	if (priv->bHwRadioOff)
>  		return 0;
>  
>  
> @@ -572,7 +572,7 @@ static int r8192_wx_set_essid(struct net_device *dev,
>  	struct r8192_priv *priv = rtllib_priv(dev);
>  	int ret;
>  
> -	if (priv->bHwRadioOff == true) {
> +	if (priv->bHwRadioOff) {
>  		printk(KERN_INFO "=========>%s():hw radio off,or Rf state is "
>  		       "eRfOff, return\n", __func__);
>  		return 0;
> @@ -638,7 +638,7 @@ static int r8192_wx_set_freq(struct net_device *dev, struct iw_request_info *a,
>  	int ret;
>  	struct r8192_priv *priv = rtllib_priv(dev);
>  
> -	if (priv->bHwRadioOff == true)
> +	if (priv->bHwRadioOff)
>  		return 0;
>  
>  	down(&priv->wx_sem);
> @@ -665,7 +665,7 @@ static int r8192_wx_set_frag(struct net_device *dev,
>  {
>  	struct r8192_priv *priv = rtllib_priv(dev);
>  
> -	if (priv->bHwRadioOff == true)
> +	if (priv->bHwRadioOff)
>  		return 0;
>  
>  	if (wrqu->frag.disabled)
> @@ -704,7 +704,7 @@ static int r8192_wx_set_wap(struct net_device *dev,
>  	int ret;
>  	struct r8192_priv *priv = rtllib_priv(dev);
>  
> -	if (priv->bHwRadioOff == true)
> +	if (priv->bHwRadioOff)
>  		return 0;
>  
>  	down(&priv->wx_sem);
> @@ -754,7 +754,7 @@ static int r8192_wx_set_enc(struct net_device *dev,
>  			     {0x00, 0x00, 0x00, 0x00, 0x00, 0x03} };
>  	int i;
>  
> -	if (priv->bHwRadioOff == true)
> +	if (priv->bHwRadioOff)
>  		return 0;
>  
>  	if (!priv->up)
> @@ -843,7 +843,7 @@ static int r8192_wx_set_scan_type(struct net_device *dev,
>  	int *parms = (int *)p;
>  	int mode = parms[0];
>  
> -	if (priv->bHwRadioOff == true)
> +	if (priv->bHwRadioOff)
>  		return 0;
>  
>  	priv->rtllib->active_scan = mode;
> @@ -861,7 +861,7 @@ static int r8192_wx_set_retry(struct net_device *dev,
>  	struct r8192_priv *priv = rtllib_priv(dev);
>  	int err = 0;
>  
> -	if (priv->bHwRadioOff == true)
> +	if (priv->bHwRadioOff)
>  		return 0;
>  
>  	down(&priv->wx_sem);
> @@ -944,7 +944,7 @@ static int r8192_wx_set_sens(struct net_device *dev,
>  
>  	short err = 0;
>  
> -	if (priv->bHwRadioOff == true)
> +	if (priv->bHwRadioOff)
>  		return 0;
>  
>  	down(&priv->wx_sem);
> @@ -971,7 +971,7 @@ static int r8192_wx_set_enc_ext(struct net_device *dev,
>  	struct r8192_priv *priv = rtllib_priv(dev);
>  	struct rtllib_device *ieee = priv->rtllib;
>  
> -	if (priv->bHwRadioOff == true)
> +	if (priv->bHwRadioOff)
>  		return 0;
>  
>  	down(&priv->wx_sem);
> @@ -1052,7 +1052,7 @@ static int r8192_wx_set_auth(struct net_device *dev,
>  
>  	struct r8192_priv *priv = rtllib_priv(dev);
>  
> -	if (priv->bHwRadioOff == true)
> +	if (priv->bHwRadioOff)
>  		return 0;
>  
>  	down(&priv->wx_sem);
> @@ -1070,7 +1070,7 @@ static int r8192_wx_set_mlme(struct net_device *dev,
>  
>  	struct r8192_priv *priv = rtllib_priv(dev);
>  
> -	if (priv->bHwRadioOff == true)
> +	if (priv->bHwRadioOff)
>  		return 0;
>  
>  	down(&priv->wx_sem);
> @@ -1087,7 +1087,7 @@ static int r8192_wx_set_gen_ie(struct net_device *dev,
>  
>  	struct r8192_priv *priv = rtllib_priv(dev);
>  
> -	if (priv->bHwRadioOff == true)
> +	if (priv->bHwRadioOff)
>  		return 0;
>  
>  	down(&priv->wx_sem);
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/0b95bd2fba788a4bb9d9cdbb942bebc6e388aa18.1426273386.git.cristina.opriceana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

