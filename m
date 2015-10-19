X-GM-THRID: 6207450266150633472
X-Received: by 10.112.151.9 with SMTP id um9mr6946214lbb.19.1445285270151;
        Mon, 19 Oct 2015 13:07:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.141.198 with SMTP id p189ls629336lfd.79.gmail; Mon, 19 Oct
 2015 13:07:49 -0700 (PDT)
X-Received: by 10.112.14.4 with SMTP id l4mr5127994lbc.20.1445285269591;
        Mon, 19 Oct 2015 13:07:49 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q6si503096wif.2.2015.10.19.13.07.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 13:07:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,703,1437429600"; 
   d="scan'208";a="151073471"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Oct 2015 22:07:48 +0200
Date: Mon, 19 Oct 2015 22:07:48 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Alison Schofield <amsfield22@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/5] staging: r8723au: use kernel
 preferred style for block comments
In-Reply-To: <ca096ddbb44df952c41fd95e6397d902d3baf767.1445282918.git.amsfield22@gmail.com>
Message-ID: <alpine.DEB.2.02.1510192206570.2034@localhost6.localdomain6>
References: <cover.1445282918.git.amsfield22@gmail.com> <ca096ddbb44df952c41fd95e6397d902d3baf767.1445282918.git.amsfield22@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 19 Oct 2015, Alison Schofield wrote:

> Reworked comments per kernel coding style.
> 
> Resolves checkpatch:
> WARNING: Block comments use * on subsequent lines
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
>  drivers/staging/rtl8723au/core/rtw_cmd.c | 74 ++++++++++++++++++++------------
>  1 file changed, 46 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
> index 7bf0f30..33164d3 100644
> --- a/drivers/staging/rtl8723au/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
> @@ -176,9 +176,9 @@ struct _cmd_callback	rtw_cmd_callback[] = {
>  };
>  
>  /*
> -Caller and the rtw_cmd_thread23a can protect cmd_q by spin_lock.
> -No irqsave is necessary.
> -*/
> + * Caller and the rtw_cmd_thread23a can protect cmd_q by spin_lock.
> + * No irqsave is necessary.
> + */
>  
>  int rtw_init_cmd_priv23a(struct cmd_priv *pcmdpriv)
>  {
> @@ -315,8 +315,10 @@ post_process:
>  				 pcmd_callback, pcmd->cmdcode);
>  			rtw_free_cmd_obj23a(pcmd);
>  		} else {
> -			/* need consider that free cmd_obj in
> -			   rtw_cmd_callback */
> +			/*
> +			 * need consider that free cmd_obj in
> +			 * rtw_cmd_callback
> +			 */
>  			pcmd_callback(pcmd->padapter, pcmd);
>  		}
>  	} else {
> @@ -518,11 +520,13 @@ int rtw_joinbss_cmd23a(struct rtw_adapter *padapter,
>  	       get_wlan_bssid_ex_sz(&pnetwork->network));
>  
>  	psecnetwork->IELength = 0;
> -	/*  Added by Albert 2009/02/18 */
> -	/*  If the the driver wants to use the bssid to create the
> +
> +	/*
> +	 *  If the the driver wants to use the bssid to create the
>  	 *  connection. If not,  we have to copy the connecting AP's
>  	 *  MAC address to it so that the driver just has the bssid
> -	 *  information for PMKIDList searching. */
> +	 *  information for PMKIDList searching.
> +	 */

Maybe change the spacing here, as done in a later case.

>  
>  	if (pmlmepriv->assoc_by_bssid == false)
>  		ether_addr_copy(&pmlmepriv->assoc_bssid[0],
> @@ -557,10 +561,13 @@ int rtw_joinbss_cmd23a(struct rtw_adapter *padapter,
>  	phtpriv->ht_option = false;
>  	if (pregistrypriv->ht_enable) {
>  		u32 algo = padapter->securitypriv.dot11PrivacyAlgrthm;
> -		/*	Added by Albert 2010/06/23 */
> -		/*	For the WEP mode, we will use the bg mode to do
> -			the connection to avoid some IOT issue. */
> -		/*	Especially for Realtek 8192u SoftAP. */
> +
> +		/*
> +		 * For the WEP mode, we will use the bg mode to do
> +		 * the connection to avoid some IOT issue.
> +		 * Especially for Realtek 8192u SoftAP.
> +		 */
> +
>  		if (algo != WLAN_CIPHER_SUITE_WEP40 &&
>  		    algo != WLAN_CIPHER_SUITE_WEP104 &&
>  		    algo != WLAN_CIPHER_SUITE_TKIP) {
> @@ -630,9 +637,13 @@ int rtw_disassoc_cmd23a(struct rtw_adapter *padapter, u32 deauth_timeout_ms,
>  		init_h2fwcmd_w_parm_no_rsp(cmdobj, param, _DisConnect_CMD_);
>  		res = rtw_enqueue_cmd23a(cmdpriv, cmdobj);
>  	} else {
> -		/* no need to enqueue, do the cmd hdl directly and
> -		   free cmd parameter */
>  		if (H2C_SUCCESS != disconnect_hdl23a(padapter, (u8 *)param))
> +
> +		/*
> +		 * no need to enqueue, do the cmd hdl
> +		 * directly and free cmd parameter
> +		 */
> +
>  			res = _FAIL;
>  		kfree(param);
>  	}
> @@ -867,16 +878,18 @@ static void traffic_status_watchdog(struct rtw_adapter *padapter)
>  	int BusyThreshold = 100;
>  	struct rt_link_detect *ldi = &pmlmepriv->LinkDetectInfo;
>  
> -	/*  */
>  	/*  Determine if our traffic is busy now */

Spacing could change here too.

> -	/*  */
>  	if (check_fwstate(pmlmepriv, _FW_LINKED)) {
>  		if (rtl8723a_BT_coexist(padapter))
>  			BusyThreshold = 50;
>  		else if (ldi->bBusyTraffic)
>  			BusyThreshold = 75;
> -		/*  if we raise bBusyTraffic in last watchdog, using
> -		    lower threshold. */
> +
> +		/*
> +		 * if we raise bBusyTraffic in last watchdog,
> +		 * using lower threshold.
> +		 */
> +
>  		if (ldi->NumRxOkInPeriod > BusyThreshold ||
>  		    ldi->NumTxOkInPeriod > BusyThreshold) {
>  			bBusyTraffic = true;
> @@ -947,9 +960,7 @@ static void dynamic_chk_wk_hdl(struct rtw_adapter *padapter, u8 *pbuf, int sz)
>  
>  	rtl8723a_HalDmWatchDog(padapter);
>  
> -	/*  */
>  	/*  BT-Coexist */
> -	/*  */

Etc.

julia

>  	rtl8723a_BT_do_coexist(padapter);
>  }
>  
> @@ -1234,8 +1245,8 @@ void rtw_evt_work(struct work_struct *work)
>  	} else {
>  		/*
>  		 * Enqueue into cmd_thread for others.
> -		 * ework will be turned into a c2h_evt and freed once it
> -		 * has been consumed.
> +		 * ework will be turned into a c2h_evt and
> +		 * freed once it has been consumed.
>  		 */
>  		rtw_c2h_wk_cmd23a(adapter, (u8 *)&ework->u.c2h_evt);
>  	}
> @@ -1402,11 +1413,16 @@ void rtw_createbss_cmd23a_callback(struct rtw_adapter *padapter,
>  		memcpy(&pwlan->network, pnetwork, pnetwork->Length);
>  		/* pwlan->fixed = true; */
>  
> -		/* list_add_tail(&pwlan->list,
> -		   &pmlmepriv->scanned_queue.queue); */
> +		/*
> +		 * list_add_tail(&pwlan->list,
> +		 * &pmlmepriv->scanned_queue->queue);
> +		 */
> +
> +		/*
> +		 *  copy pdev_network information to
> +		 *  pmlmepriv->cur_network
> +		 */
>  
> -		/*  copy pdev_network information to
> -		    pmlmepriv->cur_network */
>  		memcpy(&tgt_network->network, pnetwork,
>  		       get_wlan_bssid_ex_sz(pnetwork));
>  
> @@ -1415,8 +1431,10 @@ void rtw_createbss_cmd23a_callback(struct rtw_adapter *padapter,
>  		clr_fwstate(pmlmepriv, _FW_UNDER_LINKING);
>  
>  		spin_unlock_bh(&pmlmepriv->scanned_queue.lock);
> -		/*  we will set _FW_LINKED when there is one more sat to
> -		    join us (rtw_stassoc_event_callback23a) */
> +		/*
> +		 * we will set _FW_LINKED when there is one more
> +		 * sat to join us (rtw_stassoc_event_callback23a)
> +		 */
>  	}
>  
>  createbss_cmd_fail:
> -- 
> 2.1.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/ca096ddbb44df952c41fd95e6397d902d3baf767.1445282918.git.amsfield22%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

