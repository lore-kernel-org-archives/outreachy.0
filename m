X-GM-THRID: 6202235040430030848
X-Received: by 10.194.156.193 with SMTP id wg1mr5656621wjb.3.1444077515926;
        Mon, 05 Oct 2015 13:38:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.218.208 with SMTP id r199ls533217lfg.2.gmail; Mon, 05 Oct
 2015 13:38:35 -0700 (PDT)
X-Received: by 10.112.173.136 with SMTP id bk8mr2146631lbc.20.1444077515351;
        Mon, 05 Oct 2015 13:38:35 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c7si427446wiy.3.2015.10.05.13.38.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 13:38:35 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,640,1437429600"; 
   d="scan'208";a="181211222"
Received: from no-reverse-dns.mlnet.ie (HELO hadrien.local) ([31.216.236.133])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 05 Oct 2015 22:38:33 +0200
Date: Mon, 5 Oct 2015 21:38:28 +0100 (IST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: fix comparison test
 warnings
In-Reply-To: <20151005183935.GA3350@Ubuntu-D830>
Message-ID: <alpine.DEB.2.10.1510052136480.2608@hadrien>
References: <20151005183935.GA3350@Ubuntu-D830>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 5 Oct 2015, Alison Schofield wrote:

> This patch fixes multiple instances of the checkpatch.pl warning:
>
> WARNING: Comparisons should place the constant on the right side of the
> test

Thanks for the patch, but try to avoid using "fix" in your commit message.
Say instead what you have done to do the fix.  Here, you could say
something like "Move constant to the right side of a comparison operator,
as suggested by checkpatch".

julia

> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> index 143be0f..528e9f5 100644
> --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> @@ -140,7 +140,7 @@ static inline void handle_pairwise_key(struct sta_info *psta,
>  static inline void handle_group_key(struct ieee_param *param,
>  				    struct _adapter *padapter)
>  {
> -	if (0 < param->u.crypt.idx &&
> +	if (param->u.crypt.idx > 0 &&
>  	    param->u.crypt.idx < 3) {
>  		/* group key idx is 1 or 2 */
>  		memcpy(padapter->securitypriv.XGrpKey[param->u.crypt.
> @@ -957,7 +957,7 @@ static int r871x_wx_set_priv(struct net_device *dev,
>  	if (IS_ERR(ext))
>  		return PTR_ERR(ext);
>
> -	if (0 == strcasecmp(ext, "RSSI")) {
> +	if (strcasecmp(ext, "RSSI") == 0) {
>  		/*Return received signal strength indicator in -db for */
>  		/* current AP */
>  		/*<ssid> Rssi xx */
> @@ -974,7 +974,7 @@ static int r871x_wx_set_priv(struct net_device *dev,
>  		} else {
>  			sprintf(ext, "OK");
>  		}
> -	} else if (0 == strcasecmp(ext, "LINKSPEED")) {
> +	} else if (strcasecmp(ext, "LINKSPEED") == 0) {
>  		/*Return link speed in MBPS */
>  		/*LinkSpeed xx */
>  		union iwreq_data wrqd;
> @@ -982,30 +982,30 @@ static int r871x_wx_set_priv(struct net_device *dev,
>  		int mbps;
>
>  		ret_inner = r8711_wx_get_rate(dev, info, &wrqd, extra);
> -		if (0 != ret_inner)
> +		if (ret_inner != 0)
>  			mbps = 0;
>  		else
>  			mbps = wrqd.bitrate.value / 1000000;
>  		sprintf(ext, "LINKSPEED %d", mbps);
> -	} else if (0 == strcasecmp(ext, "MACADDR")) {
> +	} else if (strcasecmp(ext, "MACADDR") == 0) {
>  		/*Return mac address of the station */
>  		/* Macaddr = xx:xx:xx:xx:xx:xx */
>  		sprintf(ext, "MACADDR = %pM", dev->dev_addr);
> -	} else if (0 == strcasecmp(ext, "SCAN-ACTIVE")) {
> +	} else if (strcasecmp(ext, "SCAN-ACTIVE") == 0) {
>  		/*Set scan type to active */
>  		/*OK if successful */
>  		struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
>
>  		pmlmepriv->passive_mode = 1;
>  		sprintf(ext, "OK");
> -	} else if (0 == strcasecmp(ext, "SCAN-PASSIVE")) {
> +	} else if (strcasecmp(ext, "SCAN-PASSIVE") == 0) {
>  		/*Set scan type to passive */
>  		/*OK if successful */
>  		struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
>
>  		pmlmepriv->passive_mode = 0;
>  		sprintf(ext, "OK");
> -	} else if (0 == strncmp(ext, "DCE-E", 5)) {
> +	} else if (strncmp(ext, "DCE-E", 5) == 0) {
>  		/*Set scan type to passive */
>  		/*OK if successful */
>  		r8712_disconnectCtrlEx_cmd(padapter
> @@ -1015,7 +1015,7 @@ static int r871x_wx_set_priv(struct net_device *dev,
>  			, 5000 /*u32 firstStageTO */
>  		);
>  		sprintf(ext, "OK");
> -	} else if (0 == strncmp(ext, "DCE-D", 5)) {
> +	} else if (strncmp(ext, "DCE-D", 5) == 0) {
>  		/*Set scan type to passive */
>  		/*OK if successfu */
>  		r8712_disconnectCtrlEx_cmd(padapter
> @@ -1454,7 +1454,7 @@ static int r8711_wx_get_rate(struct net_device *dev,
>  		if (ht_cap == true) {
>  			if (mcs_rate & 0x8000 /* MCS15 */
>  				&&
> -				RTL8712_RF_2T2R == rf_type)
> +				rf_type == RTL8712_RF_2T2R)
>  				max_rate = (bw_40MHz) ? ((short_GI) ? 300 :
>  					    270) : ((short_GI) ? 144 : 130);
>  			else /* default MCS7 */
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151005183935.GA3350%40Ubuntu-D830.
> For more options, visit https://groups.google.com/d/optout.
>

