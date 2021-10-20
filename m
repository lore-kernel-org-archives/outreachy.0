X-GM-THRID: 7021079829858484224
X-Received: by 2002:a05:6638:a2d:: with SMTP id 13mr7733782jao.12.1634723297280;
        Wed, 20 Oct 2021 02:48:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:f906:: with SMTP id j6ls286551iog.9.gmail; Wed, 20 Oct
 2021 02:48:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJytyUn5VHNhtJescUXYjip0wbjFjZQRgYAhor8+qDxYeOFAjXkMgXwrHvJjZ4kc5eHZcbdd
X-Received: by 2002:a05:6602:158a:: with SMTP id e10mr22443662iow.157.1634723296286;
        Wed, 20 Oct 2021 02:48:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634723296; cv=none;
        d=google.com; s=arc-20160816;
        b=omCKQ5AmqyK8bwHaIzJ/u6lqj0pVa1uGQZ/a9RQcBtCXa7RpItBMSXuRzqyxB1/Fa0
         H44ae3Ep2wAWn6zG4mAUt1Mo519R21NevsC8TgROAlngBtmqgWR6m+x0MCD/wrXoHnn/
         1RKjgtWJsW1b03xh+JRNXVYG8JFOYUhey+ZHSWEot9yCRh7DADg63gPMSXeGVJOZ9qQh
         bFWl0PEkRZo5l5UobEWYdgSBQAMlKWzYW4oT6wE/qwEeb45tAb6M9X98RbQ7cRIXF1DU
         lVVu8sOeJvNJZsW882DJJszHCmoc/+v/YGR9rmnOlYoJTrIiaCJQLrq/zLdVArV5vG4F
         oDkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=NUxRW7fqD+7h9FNXnAUbVGq3Yz7ElzK6RCQA7Y5NoBs=;
        b=PDPg4mWmbtUoY+VmVjTuh2x+XRYpDVpOa1e7Jdrjb72B/8Ns5Zkq30RLrN37S9bmiu
         rvuv5tddNxOunucDpp/QfYsbbLCUSVJnKWS4uQ3fWaUu4yTr03BvW3yCpFeY1N+ggWYy
         UzpG5OZFdZYLSUdReTwAkemYkRnf3ZjBAqaMOqjh3gj98uUG/gJFcwgX5wpXZ3z1Jznk
         6n7T8ZpdbhdPks1cirMh9vJCn4OvE3DI38l8BLo65WuBzpMPhRlczFeYqdN07k51lPB8
         LhB9shN2u486I8OzszcOIjRuk84SHjU1kKfzZM6jp/4wXMbF6VP7tG5/u30bZUhJ3LTg
         UvMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=XEIfcuWZ;
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kpraveen.lkml@gmail.com>
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id d20si146043ioy.2.2021.10.20.02.48.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Oct 2021 02:48:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=XEIfcuWZ;
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x435.google.com with SMTP id o133so2461819pfg.7
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Oct 2021 02:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=NUxRW7fqD+7h9FNXnAUbVGq3Yz7ElzK6RCQA7Y5NoBs=;
        b=XEIfcuWZcnGZols3cvNhdggc7M+/qf+bjI4H3z2fKtehoXl2MfSwk/dHO+ak8lEi6j
         j0Ca1a0VuPa/OpVdkLPsaLb6irFfvo2Iil98UZ94ucwhKwCdpJxxmwqI1TCazcYzvTFv
         XlDV8mZi+3ezS+WUVZ5UAItXir+oiPVJFbrWSCqGxG1VHZkdlzpSSOGek2pV0t0azm3c
         5gmHSehIySxMNR/fLz9rzZ3KPTvEt7aQETOWHH/fYJYVk8Z26kj56kf0k9FLVLPHuyn/
         FhTkIjYNLVA+hFGQ0NG2tza9854E+2AmlkvmqBbevoSEJaEy5bTlXD8+IZzg3KBFT07Y
         9DOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=NUxRW7fqD+7h9FNXnAUbVGq3Yz7ElzK6RCQA7Y5NoBs=;
        b=gtw3427NGlvMa0AifIuph55hM2491TF7nTBThYSuih58OBODOUZDLHrfaRpzyD2q0b
         WmtegpEhw2twcnCr7uIxWgfpF2vUAeXeYpuBletIIPbDwLpK+QFxPoPT65ZKD1iC0RUS
         tugjNQlK0OCsAlB9xWCwpg+R/ndSVodhzypRDt+h97FlqWxOvouv4dfUIPMm/gmbJAtQ
         +cURn8FOo5iwDx5vcIZXvZaYuL8xZO/DLrscvuCMrEsmsWoMVlsT5WGn4xF8fZJ7ZE4z
         p9BureejlqAS364sGGp3wBdpSvuSjk9uB/mzYK/1dGtrmzgi4rGXIZCJdi2OG0Ohore2
         hONA==
X-Gm-Message-State: AOAM531KrKSEX8h6q46Sxun++EQ4eorQtJODvz+ABkpFtjeoS7+cD8eX
	zzJLYW7XDKLluhs2wV9hVWE=
X-Received: by 2002:aa7:96ab:0:b0:44c:f3e2:a7d1 with SMTP id g11-20020aa796ab000000b0044cf3e2a7d1mr5354472pfk.78.1634723295553;
        Wed, 20 Oct 2021 02:48:15 -0700 (PDT)
Return-Path: <kpraveen.lkml@gmail.com>
Received: from [192.168.1.122] ([122.171.220.247])
        by smtp.gmail.com with ESMTPSA id h13sm1643282pgf.14.2021.10.20.02.48.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Oct 2021 02:48:15 -0700 (PDT)
Message-ID: <497cce54-ed95-0fd3-b9b7-41a7aa4db6b4@gmail.com>
Date: Wed, 20 Oct 2021 15:18:11 +0530
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

Please move ')' something like this.

> +	if ((!pcmdpriv->padapter->hw_init_completed && !bAllow) ||
> +		!atomic_read(&pcmdpriv->cmdthd_running)) 	/* com_thread not running */



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

Is this change required ? This is not inline with the v1 patch summary as well.
If required, I would request to make it in a different patch.

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


