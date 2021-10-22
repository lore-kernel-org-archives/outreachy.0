X-GM-THRID: 7021611435626070016
X-Received: by 2002:a05:6a00:c8c:b0:44d:c583:9b45 with SMTP id a12-20020a056a000c8c00b0044dc5839b45mr9270334pfv.28.1634870677676;
        Thu, 21 Oct 2021 19:44:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:f547:: with SMTP id h7ls1576994plf.10.gmail; Thu, 21
 Oct 2021 19:44:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz4F4BD48pNnvZ7P1OxV8Y1InnIGJzlB2XgQSvsJjEZ9nJuyd75YM19MMTpgVDAg4eiqGm8
X-Received: by 2002:a17:903:2288:b0:13f:17c2:8f08 with SMTP id b8-20020a170903228800b0013f17c28f08mr8960510plh.48.1634870676438;
        Thu, 21 Oct 2021 19:44:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634870676; cv=none;
        d=google.com; s=arc-20160816;
        b=B4bd6dFOBjN4OHzZl1iyUszOAwY71e5G4ftZvrwQpHiduGFhtJhVTtq2rLkSUjtGxB
         Tv4KKF7F1qzZJZ3KlFp7l9n3Rb+acKbFHCWwQe8h9glVbEBK4ElqaWE4ICK3+eN9SojT
         dO/CF549SbjHDh2L91Ha2kxxgbymUGzVNOLPGVaVkyiH3ZtmDf0RhaHagJcNPlykPZGs
         fX0ASd1s4kzWJTa/trtUoYzvpEqG6kNmMWkrr0Tw3IM/Gus8OpntCdYWadPDAJRbfEG3
         xrO45paqrHvnM1BfEnHVksD1lS8wXfH6tisVjLWoEDBn/pkPxNBNEsX8ByNc/6h1RlB2
         JtbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=q9J8i6Oqi3Nvd9zUswhsYqfhpvCKVlNc8BWk095FDAU=;
        b=Y0bUUPB7WolfoVU9BxEAcWPIcQGknKA3AfCJp9G2z+B4fzuVZUyoIRGpwFm1r9OdK1
         Mv7T/S6hvU8lZkAj3FRan54qE3uuIWpooPBciYtK+ThvnnM+bGEbUqbs5Q5Dj6yGg45l
         StdnuCPLebEeLm2Z1/u16EFEQQg/mGBaE7adip+gdKcY12Faz6Tp7fx5OpzZPnre4Iai
         WYmNpVLIh6h2dG6u9GmBmRJohH8oBnYh1e/t8dBPQw3D3/H/zebxOBWZoAuUp61CROje
         nwlMrmIqMyoNOqbKMSAlfgE62ZvtOgX7QgipL6ATXEOo9qd2zJxDMKBNwd8fC5tdQfYx
         b57A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=lJwxMYf9;
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kpraveen.lkml@gmail.com>
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id b15si764897pfl.6.2021.10.21.19.44.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Oct 2021 19:44:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=lJwxMYf9;
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52b.google.com with SMTP id q5so2017486pgr.7;
        Thu, 21 Oct 2021 19:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=q9J8i6Oqi3Nvd9zUswhsYqfhpvCKVlNc8BWk095FDAU=;
        b=lJwxMYf9CwG56NQtiiSYnkT6kXackF8N/Wz6fmmNtssgd1MttrspLPK1+83CkGWOYy
         o19WWe/YnwTvyDQ7RMm0mjRxo1D40YdypZ9TrFgLKa2FO2ea5aP1nlUJCHy2h0HHK7IA
         y1kvVvTGKqDYWzxIHKuNv5COgnFeMgUxTjePNq6FZ7jNRZCGxv8u9xwqz2SnJOaeJcRD
         +pvpOO27DCEjGPwX+U+28Weq7YthX89JRrvdTIx8isCuBow2Khu1UwHHm1xecrfgp7qM
         0yTuBU7RstrIVc8EpZBnhxnQU3ZUGroJko1bZDbVKtuAV6k2R7ZORsKKMlVkKJ+dRDxq
         h8Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=q9J8i6Oqi3Nvd9zUswhsYqfhpvCKVlNc8BWk095FDAU=;
        b=tkG2N4ieSBHeZEhapav2nuGnr5EAeQTWjGb7OmhP5ulLoClAwTFZRc4j1vRF/wh6CZ
         GRjSHNF06+N+gQiB6OjuqVlEYgnT++R/TwLfbJj7n52pR6c4+Q15X5dvgniyI/u5ns85
         5HvK4rZCDF2L4MZJjTASwMU9GlyfqJG5QNw9ANpnoLDQHIihBVFmcrsWYTKqKkjg2cG6
         NGp2c5+vgQDBSbPTjkcvd/Fcf3/vPhSj4h5D3S8UjceAEjisvee91n4AxsOI4WbjGpJu
         0nfsjtVMviKDqbxA4IPd6Cm+aNCV20MhWQ5LlKCobIIqYsmzTDC18CN9STUoBYc66wc7
         hXGA==
X-Gm-Message-State: AOAM532r5sngV4G0Y+mFUoDCqI7NcYasnBz6pcgn/XUfPsvQ+nDtX/vl
	mKc2vtiqMQ4b0DlDaJQn07KlpOU0AOY=
X-Received: by 2002:a62:1d46:0:b0:44d:1a4d:5d03 with SMTP id d67-20020a621d46000000b0044d1a4d5d03mr9857794pfd.55.1634870676074;
        Thu, 21 Oct 2021 19:44:36 -0700 (PDT)
Return-Path: <kpraveen.lkml@gmail.com>
Received: from ?IPV6:2405:201:d007:e827:d9ab:a6dc:54b8:e75d? ([2405:201:d007:e827:d9ab:a6dc:54b8:e75d])
        by smtp.gmail.com with ESMTPSA id k14sm6727244pga.65.2021.10.21.19.44.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Oct 2021 19:44:35 -0700 (PDT)
Message-ID: <32059290-6c59-1cee-5edc-563fe5c2f18b@gmail.com>
Date: Fri, 22 Oct 2021 08:14:29 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: rtl8723bs: core: Remove
 true and false comparison
Content-Language: en-US
To: Kushal Kothari <kushalkothari285@gmail.com>, gregkh@linuxfoundation.org
Cc: fabioaiuto83@gmail.com, ross.schm.dev@gmail.com, fmdefrancesco@gmail.com,
 marcocesati@gmail.com, straube.linux@gmail.com, philippesdixon@gmail.com,
 manuelpalenzuelamerino@gmail.com, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, mike.rapoport@gmail.com,
 kushalkotharitest@googlegroups.com, outreachy-kernel@googlegroups.com
References: <cover.1634845504.git.kushalkothari285@gmail.com>
 <a9b75b3ab7c83dc5cef541301263fe17a704f026.1634845504.git.kushalkothari285@gmail.com>
From: Praveen Kumar <kpraveen.lkml@gmail.com>
In-Reply-To: <a9b75b3ab7c83dc5cef541301263fe17a704f026.1634845504.git.kushalkothari285@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22-10-2021 01:27, Kushal Kothari wrote:
> Remove comparison to true and false in if statement.
> Issue found with checkpatch.pl.
> CHECK: Using comparison to true is error prone
> CHECK: Using comparison to false is error prone
> 
> Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index 2624e994513f..0be3a8dbeec8 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -371,7 +371,7 @@ void rtw_free_cmd_obj(struct cmd_obj *pcmd)
>  void rtw_stop_cmd_thread(struct adapter *adapter)
>  {
>  	if (adapter->cmdThread &&
> -		atomic_read(&(adapter->cmdpriv.cmdthd_running)) == true &&
> +		atomic_read(&adapter->cmdpriv.cmdthd_running) &&

Lets keep it "atomic_read(&(adapter->cmdpriv.cmdthd_running))"
and remove the parentheses in next patch.

>  		adapter->cmdpriv.stop_req == 0) {
>  		adapter->cmdpriv.stop_req = 1;
>  		complete(&adapter->cmdpriv.cmd_queue_comp);
> @@ -542,7 +542,7 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid,
>  	struct cmd_priv 	*pcmdpriv = &padapter->cmdpriv;
>  	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
>  
> -	if (check_fwstate(pmlmepriv, _FW_LINKED) == true)
> +	if (check_fwstate(pmlmepriv, _FW_LINKED))
>  		rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_SCAN, 1);
>  
>  	ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
> @@ -775,7 +775,7 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
>  	/*  If not,  we have to copy the connecting AP's MAC address to it so that */
>  	/*  the driver just has the bssid information for PMKIDList searching. */
>  
> -	if (pmlmepriv->assoc_by_bssid == false)
> +	if (!pmlmepriv->assoc_by_bssid)
>  		memcpy(&pmlmepriv->assoc_bssid[0], &pnetwork->network.mac_address[0], ETH_ALEN);
>  
>  	psecnetwork->ie_length = rtw_restruct_sec_ie(padapter, &pnetwork->network.ies[0], &psecnetwork->ies[0], pnetwork->network.ie_length);
> @@ -1164,7 +1164,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue, u8 swconf
>  	u8 res = _SUCCESS;
>  
>  	/*  check if allow software config */
> -	if (swconfig && rtw_hal_is_disable_sw_channel_plan(padapter) == true) {
> +	if (swconfig && rtw_hal_is_disable_sw_channel_plan(padapter)) {
>  		res = _FAIL;
>  		goto exit;
>  	}
> @@ -1250,7 +1250,7 @@ u8 traffic_status_watchdog(struct adapter *padapter, u8 from_timer)
>  	/*  */
>  	/*  Determine if our traffic is busy now */
>  	/*  */
> -	if ((check_fwstate(pmlmepriv, _FW_LINKED) == true)
> +	if ((check_fwstate(pmlmepriv, _FW_LINKED))
>  		/*&& !MgntInitAdapterInProgress(pMgntInfo)*/) {
>  		/*  if we raise bBusyTraffic in last watchdog, using lower threshold. */
>  		if (pmlmepriv->LinkDetectInfo.bBusyTraffic)
> @@ -1342,7 +1342,7 @@ static void dynamic_chk_wk_hdl(struct adapter *padapter)
>  
>  	pmlmepriv = &(padapter->mlmepriv);
>  
> -	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true)
> +	if (check_fwstate(pmlmepriv, WIFI_AP_STATE))
>  		expire_timeout_chk(padapter);
>  
>  	/* for debug purpose */
> @@ -1377,8 +1377,8 @@ void lps_ctrl_wk_hdl(struct adapter *padapter, u8 lps_ctrl_type)
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
> @@ -1386,7 +1386,7 @@ void lps_ctrl_wk_hdl(struct adapter *padapter, u8 lps_ctrl_type)
>  	case LPS_CTRL_SCAN:
>  		hal_btcoex_ScanNotify(padapter, true);
>  
> -		if (check_fwstate(pmlmepriv, _FW_LINKED) == true) {
> +		if (check_fwstate(pmlmepriv, _FW_LINKED)) {
>  			/*  connect */
>  			LPS_Leave(padapter, "LPS_CTRL_SCAN");
>  		}
> @@ -1512,7 +1512,7 @@ static void rtw_lps_change_dtim_hdl(struct adapter *padapter, u8 dtim)
>  	if (dtim <= 0 || dtim > 16)
>  		return;
>  
> -	if (hal_btcoex_IsBtControlLps(padapter) == true)
> +	if (hal_btcoex_IsBtControlLps(padapter))
>  		return;
>  
>  	mutex_lock(&pwrpriv->lock);
> @@ -1840,7 +1840,7 @@ static void c2h_wk_callback(struct work_struct *work)
>  			continue;
>  		}
>  
> -		if (ccx_id_filter(c2h_evt) == true) {
> +		if (ccx_id_filter(c2h_evt)) {
>  			/* Handle CCX report here */
>  			rtw_hal_c2h_handler(adapter, c2h_evt);
>  			kfree(c2h_evt);
> 


Regards,

~Praveen.

