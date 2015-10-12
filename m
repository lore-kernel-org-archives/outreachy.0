X-GM-THRID: 6204781093577555968
X-Received: by 10.180.91.233 with SMTP id ch9mr3032090wib.4.1444663731056;
        Mon, 12 Oct 2015 08:28:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.77.106 with SMTP id r10ls835587wiw.42.gmail; Mon, 12 Oct
 2015 08:28:49 -0700 (PDT)
X-Received: by 10.194.83.169 with SMTP id r9mr5810830wjy.6.1444663729755;
        Mon, 12 Oct 2015 08:28:49 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id hs5si529280wib.1.2015.10.12.08.28.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 08:28:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,673,1437429600"; 
   d="scan'208";a="182375131"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Oct 2015 17:28:30 +0200
Date: Mon, 12 Oct 2015 17:28:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] Staging: wilc1000: wilc_wfi_cfgoperations:
 Remove NULL check before kfree
In-Reply-To: <1444663160-26795-3-git-send-email-shraddha.6596@gmail.com>
Message-ID: <alpine.DEB.2.10.1510121727480.2652@hadrien>
References: <1444663160-26795-1-git-send-email-shraddha.6596@gmail.com> <1444663160-26795-3-git-send-email-shraddha.6596@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 12 Oct 2015, Shraddha Barke wrote:

> kfree on NULL pointer is a no-op.
>
> The semantic patch used-
>
> // <smpl>
> @@ expression E; @@
> - if (E != NULL) { kfree(E); }
> + kfree(E);
> @@ expression E; @@
> - if (E != NULL) { kfree(E); E = NULL; }
> + kfree(E);
> + E = NULL;
> // </smpl>smpl>
>
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 78 ++++++++---------------
>  1 file changed, 25 insertions(+), 53 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index 6472777..f16bf5b 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -234,10 +234,8 @@ static void remove_network_from_shadow(unsigned long arg)
>  		if (time_after(now, astrLastScannedNtwrksShadow[i].u32TimeRcvdInScan + (unsigned long)(SCAN_RESULT_EXPIRE))) {
>  			PRINT_D(CFG80211_DBG, "Network expired in ScanShadow: %s\n", astrLastScannedNtwrksShadow[i].au8ssid);
>
> -			if (astrLastScannedNtwrksShadow[i].pu8IEs != NULL) {
> -				kfree(astrLastScannedNtwrksShadow[i].pu8IEs);
> -				astrLastScannedNtwrksShadow[i].pu8IEs = NULL;
> -			}
> +			kfree(astrLastScannedNtwrksShadow[i].pu8IEs);
> +			astrLastScannedNtwrksShadow[i].pu8IEs = NULL;

iWonderWhatIsTheLongestVariableNameInTheLinuxKernel :)

julia

>
>  			host_int_freeJoinParams(astrLastScannedNtwrksShadow[i].pJoinParams);
>
> @@ -1172,15 +1170,13 @@ static int add_key(struct wiphy *wiphy, struct net_device *netdev, u8 key_index,
>  					KeyLen = params->key_len - 16;
>  				}
>  				/* if there has been previous allocation for the same index through its key, free that memory and allocate again*/
> -				if (priv->wilc_gtk[key_index]->key)
> -					kfree(priv->wilc_gtk[key_index]->key);
> +				kfree(priv->wilc_gtk[key_index]->key);
>
>  				priv->wilc_gtk[key_index]->key = kmalloc(params->key_len, GFP_KERNEL);
>  				memcpy(priv->wilc_gtk[key_index]->key, params->key, params->key_len);
>
>  				/* if there has been previous allocation for the same index through its seq, free that memory and allocate again*/
> -				if (priv->wilc_gtk[key_index]->seq)
> -					kfree(priv->wilc_gtk[key_index]->seq);
> +				kfree(priv->wilc_gtk[key_index]->seq);
>
>  				if ((params->seq_len) > 0) {
>  					priv->wilc_gtk[key_index]->seq = kmalloc(params->seq_len, GFP_KERNEL);
> @@ -1218,13 +1214,11 @@ static int add_key(struct wiphy *wiphy, struct net_device *netdev, u8 key_index,
>  					KeyLen = params->key_len - 16;
>  				}
>
> -				if (priv->wilc_ptk[key_index]->key)
> -					kfree(priv->wilc_ptk[key_index]->key);
> +				kfree(priv->wilc_ptk[key_index]->key);
>
>  				priv->wilc_ptk[key_index]->key = kmalloc(params->key_len, GFP_KERNEL);
>
> -				if (priv->wilc_ptk[key_index]->seq)
> -					kfree(priv->wilc_ptk[key_index]->seq);
> +				kfree(priv->wilc_ptk[key_index]->seq);
>
>  				if ((params->seq_len) > 0)
>  					priv->wilc_ptk[key_index]->seq = kmalloc(params->seq_len, GFP_KERNEL);
> @@ -1371,25 +1365,17 @@ static int del_key(struct wiphy *wiphy, struct net_device *netdev,
>  		g_wep_keys_saved = false;
>
>  		/*Delete saved WEP keys params, if any*/
> -		if (g_key_wep_params.key != NULL) {
> -			kfree(g_key_wep_params.key);
> -			g_key_wep_params.key = NULL;
> -		}
> +		kfree(g_key_wep_params.key);
> +		g_key_wep_params.key = NULL;
>
>  		/*freeing memory allocated by "wilc_gtk" and "wilc_ptk" in "WILC_WIFI_ADD_KEY"*/
>
>  		if ((priv->wilc_gtk[key_index]) != NULL) {
>
> -			if (priv->wilc_gtk[key_index]->key != NULL) {
> -
> -				kfree(priv->wilc_gtk[key_index]->key);
> -				priv->wilc_gtk[key_index]->key = NULL;
> -			}
> -			if (priv->wilc_gtk[key_index]->seq) {
> -
> -				kfree(priv->wilc_gtk[key_index]->seq);
> -				priv->wilc_gtk[key_index]->seq = NULL;
> -			}
> +			kfree(priv->wilc_gtk[key_index]->key);
> +			priv->wilc_gtk[key_index]->key = NULL;
> +			kfree(priv->wilc_gtk[key_index]->seq);
> +			priv->wilc_gtk[key_index]->seq = NULL;
>
>  			kfree(priv->wilc_gtk[key_index]);
>  			priv->wilc_gtk[key_index] = NULL;
> @@ -1398,38 +1384,24 @@ static int del_key(struct wiphy *wiphy, struct net_device *netdev,
>
>  		if ((priv->wilc_ptk[key_index]) != NULL) {
>
> -			if (priv->wilc_ptk[key_index]->key) {
> -
> -				kfree(priv->wilc_ptk[key_index]->key);
> -				priv->wilc_ptk[key_index]->key = NULL;
> -			}
> -			if (priv->wilc_ptk[key_index]->seq) {
> -
> -				kfree(priv->wilc_ptk[key_index]->seq);
> -				priv->wilc_ptk[key_index]->seq = NULL;
> -			}
> +			kfree(priv->wilc_ptk[key_index]->key);
> +			priv->wilc_ptk[key_index]->key = NULL;
> +			kfree(priv->wilc_ptk[key_index]->seq);
> +			priv->wilc_ptk[key_index]->seq = NULL;
>  			kfree(priv->wilc_ptk[key_index]);
>  			priv->wilc_ptk[key_index] = NULL;
>  		}
>
>  		/*Delete saved PTK and GTK keys params, if any*/
> -		if (g_key_ptk_params.key != NULL) {
> -			kfree(g_key_ptk_params.key);
> -			g_key_ptk_params.key = NULL;
> -		}
> -		if (g_key_ptk_params.seq != NULL) {
> -			kfree(g_key_ptk_params.seq);
> -			g_key_ptk_params.seq = NULL;
> -		}
> -
> -		if (g_key_gtk_params.key != NULL) {
> -			kfree(g_key_gtk_params.key);
> -			g_key_gtk_params.key = NULL;
> -		}
> -		if (g_key_gtk_params.seq != NULL) {
> -			kfree(g_key_gtk_params.seq);
> -			g_key_gtk_params.seq = NULL;
> -		}
> +		kfree(g_key_ptk_params.key);
> +		g_key_ptk_params.key = NULL;
> +		kfree(g_key_ptk_params.seq);
> +		g_key_ptk_params.seq = NULL;
> +
> +		kfree(g_key_gtk_params.key);
> +		g_key_gtk_params.key = NULL;
> +		kfree(g_key_gtk_params.seq);
> +		g_key_gtk_params.seq = NULL;
>
>  		/*Reset WILC_CHANGING_VIR_IF register to allow adding futrue keys to CE H/W*/
>  		Set_machw_change_vir_if(false);
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1444663160-26795-3-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

