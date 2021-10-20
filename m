X-GM-THRID: 7021079829858484224
X-Received: by 2002:a65:6287:: with SMTP id f7mr33394031pgv.444.1634723491882;
        Wed, 20 Oct 2021 02:51:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9341:: with SMTP id g1ls1192105plp.6.gmail; Wed, 20
 Oct 2021 02:51:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxBEb/05IH1dcEpEtG3C1kj+CLEEZXZbjHc0rVaK8w80twBdiHlcwmKVpd950wI9wIOiokw
X-Received: by 2002:a17:90a:7d11:: with SMTP id g17mr6076582pjl.19.1634723490629;
        Wed, 20 Oct 2021 02:51:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634723490; cv=none;
        d=google.com; s=arc-20160816;
        b=WJZUkKIThgVyaqpqk40d/tRMa9I5hH8aMZvyxXd75WczwBCqtwLrJz3K90eN343tqo
         KumFYLQYGq9jLPfhyleKpHTBhrmqM/oUZINVjXYJT8lGqs57WtCqJQUwK/f2j8vMfL2v
         OGWQuta1pXvIKU+8+8xt0cTSQBlZi1nV/aLOVzj+xzVl/8aLqkQ7QwBRUg4G1jDJ74Hb
         heoSDtsyG0Lbr9Y557dHtWLo+08q1mxf4bV4QW6ennW77s4c4m/fk+EsuCjg4oVPHnkb
         IduDGg7fg+FW7yPclNNy1BiMudUMWgeB5O5jzGTiBaEV/h04NT+ZXgo+xNjEjn9ju9NY
         N8Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=j4WlK2hOFHNCDGbyNuqEGjx1ER9zvNdVKUnQngZATS0=;
        b=gmytfCyHbj9CIAZnhPpbUIJUEyt1FgS38nt8cOkL51FTXA5jS3y8X7sjmIHxWtu9tU
         24tdWEf06JpmRJBxF/voiuuqX6KhSFLJ2mshEpwAIghwpk7g4JRqX1MFVeegzl6kc3h/
         YEzYItZg8hRv/JJj4ygbwrOcPxGU7F2hucdQHLPzYa4LaEUZcUVeJj8eYDSrAFDz6FV2
         MjdbhMvLtj34eITa5vYuMvBEv82fHTrZZaiL4Ta6ylPDJIHXTMOAVtrCrJEm1V8Lu9Gl
         t0dvGYMPCyM6TtOtGV9erYDtlgAfni7rI+LxcPrHhOGYNinzTOJCJz2FP9Cv4qPLVQbi
         gFnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Qm1PZYIC;
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kpraveen.lkml@gmail.com>
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id t34si124513pfg.3.2021.10.20.02.51.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Oct 2021 02:51:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Qm1PZYIC;
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52a.google.com with SMTP id e65so19608207pgc.5
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Oct 2021 02:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=j4WlK2hOFHNCDGbyNuqEGjx1ER9zvNdVKUnQngZATS0=;
        b=Qm1PZYICeYlQbT8TaxFLElQoIXgzW5G2AnD3Gc4EY23N/Y8TghR0aTarDyQth7DQRc
         /LGP+OFxyOzhU1cGoRIqg1CVG45WZy1vEuYRfZRhvbwTIpciffawhg+ANDlpMKMJ/WSs
         uybWD8eg650GxSVogdkJov4lA/KUVCwwLliUJXUzEIwgLAbDEBoO4EdLzVargytDT6rL
         gYnk18mCfnh1hkEeo75VKaSUWgiWCYPHQIIskwnu0EH8SGGVBSCDkSvxB2jZ2lXr4yhK
         Pqh6m6+la/4UlEkonqf97/+t/tFgg0bgfMMzdp2kVg/Fs4c0AdzMN1sVlQlxeY4Vxmio
         getg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=j4WlK2hOFHNCDGbyNuqEGjx1ER9zvNdVKUnQngZATS0=;
        b=XX+QGtgJUys1EDdMIWvtgzzGgD3hZHok60qjyX+mEjwUBJ3tn55nhgIj1SamC3g+be
         Sj3p1h9lLNceC3A65K0ntbSiqZ2x5ee8QfR+VZHPuc0KWZN6yoDLe5kLLG2gDvGugtfz
         1Tkw+aoRHxnoZ/xxZsvX/dircIri2m5REug+rxpRN6AmzcI6PwfJMqVAEiw7GjKZ+Zg0
         gN6PsYtXY58pXCdyvuvGGpjWHDCLQJA2OK8eIzOYf8Fh8An748difNto0yfPwO3cG9nm
         hiXAD6pG+JSbOYamRvVX0i+srVkQu+QVAXBkBB+dQZTaPqG6XSWDLUZxIP4eDmi2kZn8
         +Thw==
X-Gm-Message-State: AOAM531kQ8GplXs49s69LI7syQlTuigxkQjtfqEvv5hWfQeCDOoZzAoL
	ENKdmAYi621pkvMmQayjAQ0=
X-Received: by 2002:a05:6a00:815:b0:44d:2193:f688 with SMTP id m21-20020a056a00081500b0044d2193f688mr5294132pfk.4.1634723490207;
        Wed, 20 Oct 2021 02:51:30 -0700 (PDT)
Return-Path: <kpraveen.lkml@gmail.com>
Received: from [192.168.1.122] ([122.171.220.247])
        by smtp.gmail.com with ESMTPSA id b8sm1849206pfi.103.2021.10.20.02.51.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Oct 2021 02:51:29 -0700 (PDT)
Message-ID: <3e8b8712-72bd-2d3f-e3d3-16b912706a4e@gmail.com>
Date: Wed, 20 Oct 2021 15:21:25 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: core: Remove true
 and false comparison and unnecessary parentheses
Content-Language: en-US
To: Kushal Kothari <kushalkothari285@gmail.com>, gregkh@linuxfoundation.org,
 fabioaiuto83@gmail.com, marcocesati@gmail.com, dan.carpenter@oracle.com,
 ross.schm.dev@gmail.com, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 mike.rapoport@gmail.com, staging@lists.linux.dev
References: <20211020093458.129672-1-kushalkothari285@gmail.com>
From: Praveen Kumar <kpraveen.lkml@gmail.com>
In-Reply-To: <20211020093458.129672-1-kushalkothari285@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20-10-2021 15:04, Kushal Kothari wrote:
> Remove comparison to true and false in if statement.
> Issue found with checkpatch.pl.
> CHECK: Using comparison to true is error prone
> CHECK: Using comparison to false is error prone

Request to please document the modification / comments handled from the previous patch sent.
Also, please update [PATCH V*] in the Subject, that will help keeping track of versions. Thanks.

> CHECK: Unnecessary parentheses
> 
> Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 50 ++++++++++++------------
>  1 file changed, 25 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index efc9b1974e38..3e0b910114da 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -309,8 +309,8 @@ int rtw_cmd_filter(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
>  	if (cmd_obj->cmdcode == GEN_CMD_CODE(_SetChannelPlan))
>  		bAllow = true;
>  
> -	if ((pcmdpriv->padapter->hw_init_completed == false && bAllow == false)
> -		|| atomic_read(&(pcmdpriv->cmdthd_running)) == false	/* com_thread not running */
> +	if ((!pcmdpriv->padapter->hw_init_completed && !bAllow) ||
> +		!atomic_read(&pcmdpriv->cmdthd_running) 	/* com_thread not running */
>  	)
>  		return _FAIL;
>  
> @@ -372,7 +372,7 @@ void rtw_free_cmd_obj(struct cmd_obj *pcmd)
>  void rtw_stop_cmd_thread(struct adapter *adapter)
>  {
>  	if (adapter->cmdThread &&
> -		atomic_read(&(adapter->cmdpriv.cmdthd_running)) == true &&
> +		atomic_read(&adapter->cmdpriv.cmdthd_running) &&
>  		adapter->cmdpriv.stop_req == 0) {
>  		adapter->cmdpriv.stop_req = 1;
>  		complete(&adapter->cmdpriv.cmd_queue_comp);
> @@ -388,7 +388,7 @@ int rtw_cmd_thread(void *context)
>  	u8 (*cmd_hdl)(struct adapter *padapter, u8 *pbuf);
>  	void (*pcmd_callback)(struct adapter *dev, struct cmd_obj *pcmd);
>  	struct adapter *padapter = context;
> -	struct cmd_priv *pcmdpriv = &(padapter->cmdpriv);
> +	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
>  	struct drvextra_cmd_parm *extra_parm = NULL;
>  
>  	thread_enter("RTW_CMD_THREAD");
> @@ -396,7 +396,7 @@ int rtw_cmd_thread(void *context)
>  	pcmdbuf = pcmdpriv->cmd_buf;
>  
>  	pcmdpriv->stop_req = 0;
> -	atomic_set(&(pcmdpriv->cmdthd_running), true);
> +	atomic_set(&pcmdpriv->cmdthd_running, true);
>  	complete(&pcmdpriv->terminate_cmdthread_comp);
>  
>  	while (1) {
> @@ -407,7 +407,7 @@ int rtw_cmd_thread(void *context)
>  			break;
>  		}
>  
> -		if ((padapter->bDriverStopped == true) || (padapter->bSurpriseRemoved == true)) {
> +		if (padapter->bDriverStopped || padapter->bSurpriseRemoved) {
>  			netdev_dbg(padapter->pnetdev,
>  				   "%s: DriverStopped(%d) SurpriseRemoved(%d) break at line %d\n",
>  				   __func__, padapter->bDriverStopped,
> @@ -430,7 +430,7 @@ int rtw_cmd_thread(void *context)
>  			continue;
>  
>  _next:
> -		if ((padapter->bDriverStopped == true) || (padapter->bSurpriseRemoved == true)) {
> +		if (padapter->bDriverStopped || padapter->bSurpriseRemoved) {
>  			netdev_dbg(padapter->pnetdev,
>  				   "%s: DriverStopped(%d) SurpriseRemoved(%d) break at line %d\n",
>  				   __func__, padapter->bDriverStopped,
> @@ -472,7 +472,7 @@ int rtw_cmd_thread(void *context)
>  
>  post_process:
>  
> -		if (mutex_lock_interruptible(&(pcmd->padapter->cmdpriv.sctx_mutex)) == 0) {
> +		if (mutex_lock_interruptible(&pcmd->padapter->cmdpriv.sctx_mutex) == 0) {
>  			if (pcmd->sctx) {
>  				netdev_dbg(padapter->pnetdev,
>  					   FUNC_ADPT_FMT " pcmd->sctx\n",
> @@ -483,7 +483,7 @@ int rtw_cmd_thread(void *context)
>  				else
>  					rtw_sctx_done_err(&pcmd->sctx, RTW_SCTX_DONE_CMD_ERROR);
>  			}
> -			mutex_unlock(&(pcmd->padapter->cmdpriv.sctx_mutex));
> +			mutex_unlock(&pcmd->padapter->cmdpriv.sctx_mutex);
>  		}
>  
>  		/* call callback function for post-processed */
> @@ -523,7 +523,7 @@ int rtw_cmd_thread(void *context)
>  	} while (1);
>  
>  	complete(&pcmdpriv->terminate_cmdthread_comp);
> -	atomic_set(&(pcmdpriv->cmdthd_running), false);
> +	atomic_set(&pcmdpriv->cmdthd_running, false);
>  
>  	thread_exit();
>  }
> @@ -543,7 +543,7 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid,
>  	struct cmd_priv 	*pcmdpriv = &padapter->cmdpriv;
>  	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
>  
> -	if (check_fwstate(pmlmepriv, _FW_LINKED) == true)
> +	if (check_fwstate(pmlmepriv, _FW_LINKED))
>  		rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_SCAN, 1);
>  
>  	ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
> @@ -725,7 +725,7 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
>  	struct ht_priv 		*phtpriv = &pmlmepriv->htpriv;
>  	enum ndis_802_11_network_infrastructure ndis_network_mode = pnetwork->network.infrastructure_mode;
>  	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
> -	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
> +	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
>  	u32 tmp_len;
>  	u8 *ptmp = NULL;
>  
> @@ -776,7 +776,7 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
>  	/*  If not,  we have to copy the connecting AP's MAC address to it so that */
>  	/*  the driver just has the bssid information for PMKIDList searching. */
>  
> -	if (pmlmepriv->assoc_by_bssid == false)
> +	if (!pmlmepriv->assoc_by_bssid)
>  		memcpy(&pmlmepriv->assoc_bssid[0], &pnetwork->network.mac_address[0], ETH_ALEN);
>  
>  	psecnetwork->ie_length = rtw_restruct_sec_ie(padapter, &pnetwork->network.ies[0], &psecnetwork->ies[0], pnetwork->network.ie_length);
> @@ -927,7 +927,7 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
>  	else
>  		GET_ENCRY_ALGO(psecuritypriv, sta, psetstakey_para->algorithm, false);
>  
> -	if (unicast_key == true)
> +	if (unicast_key)
>  		memcpy(&psetstakey_para->key, &sta->dot118021x_UncstKey, 16);
>  	else
>  		memcpy(&psetstakey_para->key, &psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey, 16);
> @@ -1165,7 +1165,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue, u8 swconf
>  	u8 res = _SUCCESS;
>  
>  	/*  check if allow software config */
> -	if (swconfig && rtw_hal_is_disable_sw_channel_plan(padapter) == true) {
> +	if (swconfig && rtw_hal_is_disable_sw_channel_plan(padapter)) {
>  		res = _FAIL;
>  		goto exit;
>  	}
> @@ -1251,7 +1251,7 @@ u8 traffic_status_watchdog(struct adapter *padapter, u8 from_timer)
>  	/*  */
>  	/*  Determine if our traffic is busy now */
>  	/*  */
> -	if ((check_fwstate(pmlmepriv, _FW_LINKED) == true)
> +	if (check_fwstate(pmlmepriv, _FW_LINKED)
>  		/*&& !MgntInitAdapterInProgress(pMgntInfo)*/) {
>  		/*  if we raise bBusyTraffic in last watchdog, using lower threshold. */
>  		if (pmlmepriv->LinkDetectInfo.bBusyTraffic)
> @@ -1283,7 +1283,7 @@ u8 traffic_status_watchdog(struct adapter *padapter, u8 from_timer)
>  			(pmlmepriv->LinkDetectInfo.NumRxUnicastOkInPeriod > 2)) {
>  			bEnterPS = false;
>  
> -			if (bBusyTraffic == true) {
> +			if (bBusyTraffic) {
>  				if (pmlmepriv->LinkDetectInfo.TrafficTransitionCount <= 4)
>  					pmlmepriv->LinkDetectInfo.TrafficTransitionCount = 4;
>  
> @@ -1343,7 +1343,7 @@ static void dynamic_chk_wk_hdl(struct adapter *padapter)
>  
>  	pmlmepriv = &(padapter->mlmepriv);
>  
> -	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true)
> +	if (check_fwstate(pmlmepriv, WIFI_AP_STATE))
>  		expire_timeout_chk(padapter);
>  
>  	/* for debug purpose */
> @@ -1378,8 +1378,8 @@ void lps_ctrl_wk_hdl(struct adapter *padapter, u8 lps_ctrl_type)
>  	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
>  	u8 mstatus;
>  
> -	if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true)
> -		|| (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == true)) {
> +	if (check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) ||
> +		check_fwstate(pmlmepriv, WIFI_ADHOC_STATE)) {
>  		return;
>  	}
>  
> @@ -1387,7 +1387,7 @@ void lps_ctrl_wk_hdl(struct adapter *padapter, u8 lps_ctrl_type)
>  	case LPS_CTRL_SCAN:
>  		hal_btcoex_ScanNotify(padapter, true);
>  
> -		if (check_fwstate(pmlmepriv, _FW_LINKED) == true) {
> +		if (check_fwstate(pmlmepriv, _FW_LINKED)) {
>  			/*  connect */
>  			LPS_Leave(padapter, "LPS_CTRL_SCAN");
>  		}
> @@ -1513,7 +1513,7 @@ static void rtw_lps_change_dtim_hdl(struct adapter *padapter, u8 dtim)
>  	if (dtim <= 0 || dtim > 16)
>  		return;
>  
> -	if (hal_btcoex_IsBtControlLps(padapter) == true)
> +	if (hal_btcoex_IsBtControlLps(padapter))
>  		return;
>  
>  	mutex_lock(&pwrpriv->lock);
> @@ -1619,7 +1619,7 @@ static void rtw_chk_hi_queue_hdl(struct adapter *padapter)
>  
>  	rtw_hal_get_hwreg(padapter, HW_VAR_CHK_HI_QUEUE_EMPTY, &empty);
>  
> -	while (false == empty && jiffies_to_msecs(jiffies - start) < g_wait_hiq_empty) {
> +	while (!empty && jiffies_to_msecs(jiffies - start) < g_wait_hiq_empty) {
>  		msleep(100);
>  		rtw_hal_get_hwreg(padapter, HW_VAR_CHK_HI_QUEUE_EMPTY, &empty);
>  	}
> @@ -1841,7 +1841,7 @@ static void c2h_wk_callback(struct work_struct *work)
>  			continue;
>  		}
>  
> -		if (ccx_id_filter(c2h_evt) == true) {
> +		if (ccx_id_filter(c2h_evt)) {
>  			/* Handle CCX report here */
>  			rtw_hal_c2h_handler(adapter, c2h_evt);
>  			kfree(c2h_evt);
> @@ -2054,7 +2054,7 @@ void rtw_setassocsta_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *
>  
>  	spin_lock_bh(&pmlmepriv->lock);
>  
> -	if ((check_fwstate(pmlmepriv, WIFI_MP_STATE) == true) && (check_fwstate(pmlmepriv, _FW_UNDER_LINKING) == true))
> +	if (check_fwstate(pmlmepriv, WIFI_MP_STATE) && check_fwstate(pmlmepriv, _FW_UNDER_LINKING))
>  		_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
>  
>  	set_fwstate(pmlmepriv, _FW_LINKED);
> 

Regards,

~Praveen.

