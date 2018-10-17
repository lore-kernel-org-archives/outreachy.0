X-GM-THRID: 6612208840785002496
X-Received: by 2002:a50:a550:: with SMTP id z16-v6mr6067425edb.12.1539765192979;
        Wed, 17 Oct 2018 01:33:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:b7b1:: with SMTP id h46-v6ls7674347ede.14.gmail; Wed, 17
 Oct 2018 01:33:12 -0700 (PDT)
X-Google-Smtp-Source: ACcGV6322RJRXjNW+ZzThKxJbX8W3rCpp3NJ3th3AWaYGK912WC0bMZ7GNfzjg4rgU+36+EmSlNy
X-Received: by 2002:a50:f567:: with SMTP id w36-v6mr6093610edm.0.1539765192097;
        Wed, 17 Oct 2018 01:33:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539765192; cv=none;
        d=google.com; s=arc-20160816;
        b=NqynM3MurVszIwxBW+cYH1nkoOxRDx6jFBBe4qZuSEiCamDQh/JBCLtLECCbwF9aIJ
         srX7KduHtCgqqtHXqodV3GYtefybKsa8d2+8gype+MCZwCifctHk2jeKT31e+nFvVGjJ
         RUKCWqN9U3Ve+FrGGKIglLFRoe03JGAi7BhRl0FJmpaEB0pq8MvnI8MA9sClUv6xf7AK
         cxaqx8iQ8bb3537Vx4YnWH26jIO0yUQhrzRrVA/L4FlG+KJea3hNa4cJVHNuNEjKYy7t
         mVnKXUuasTA0lH7ORtpDyEd+5QMsx9FI6HS0m5tCs0xuKUTyPG35mdmURQUn5FMKU6Cs
         BPVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=twOb1oA5zNYJXUb2zIfZYhdqCI+OQypgw2ZaxE/UrPo=;
        b=TjgN18j1nNUBbZqI9cYb0MmG9cbrfXcabkZ31pjgPo5YdZu+8zBah6S+ddbnMK1cK/
         J1fm3Rd5BtG3VX4Cxn4Ee/cZjHm4UrO6Q8Jr8L/OgFi9oUYoDjEyoNg48SKLYprdLwu3
         +FDF0UoKibM03Fs0F3QkAQBAQqmB4QGajq+VKqDzP0exx0h38JvZ9grNekSWMNktzVoS
         7ew2G7dxkI4roAtahSK6T8gmZk5rxGZ9u/vbV2KVTITM0jUwe0SeuGJ8Keif4WTXUlt1
         cyj4WidfNR5cAp+L/Wmf2rxD80XrbHqjKxIwD4CSnW6hTUmD+GqYfLK+nM1J3uhjUTwh
         uGQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=RrgJkfps;
       spf=neutral (google.com: 2a00:1450:4864:20::541 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com. [2a00:1450:4864:20::541])
        by gmr-mx.google.com with ESMTPS id cj24-v6si559555ejb.1.2018.10.17.01.33.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Oct 2018 01:33:12 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::541 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=RrgJkfps;
       spf=neutral (google.com: 2a00:1450:4864:20::541 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-ed1-x541.google.com with SMTP id c26-v6so24024210edt.3
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Oct 2018 01:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=twOb1oA5zNYJXUb2zIfZYhdqCI+OQypgw2ZaxE/UrPo=;
        b=RrgJkfpsBNh69KiB+nyYHuU/wB4d+in1hU3KWeEgOYYNBzJX41b7kMWglzxLLbB04P
         cD+09+tyUWEiJN02772LfGzknofImIDdt26RBCMer89hDbRHPZywY65d8QA+Vt7D9uN/
         f/sbZ6D/K7PB+oFZoLp7qtMLpqA/AkvBn1T8U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=twOb1oA5zNYJXUb2zIfZYhdqCI+OQypgw2ZaxE/UrPo=;
        b=tE/LlIIGaaSo5LSeiahbzSddfDn/oUfzQPzDoZALHK5Tq5cJq2OeUbWrIL1LfkwIz0
         jhqNtIpdW/sli9T8sC0OorRKM0pDhGGX9YYitPtMU0qTymTQ1OQAWZz1Kogi3020JQp6
         eVzgp0gSTC6i7mB/Zith8QnKkpN7bC6sL1aCNeG7qjpQ7LdoiuoH4W0kFn0uDfFAvQ38
         1onahXasnM+jdWxzIAaw4GLIFVCfL2Eh5RM0ahPstGvEGRCKhNBMYg/EH4ZsXlFs6fZ7
         CYN1FxwOzZzzKcykezMtKQkSY6leE1EV4gwnz0M4H95DOiYVZvTissO9Ae5xg/s3cxlN
         okFg==
X-Gm-Message-State: ABuFfog5vrkReyOh4692ShjlCCdcIZT8qkPINBTbbBLOeQfI421QBluP
	tNSfgNwlUoGOcdNevjHOa2EpCLpKBKY=
X-Received: by 2002:a17:906:5188:: with SMTP id y8-v6mr26439407ejk.57.1539765191722;
        Wed, 17 Oct 2018 01:33:11 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
        by smtp.gmail.com with ESMTPSA id i56-v6sm6537895eda.29.2018.10.17.01.33.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 17 Oct 2018 01:33:11 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 17 Oct 2018 10:33:09 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Mamta Shukla <mamtashukla555@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	Larry.Finger@lwfinger.net
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: core: Use
 sizeof(*p) instead of sizeof(struct P) for memory allocation
Message-ID: <20181017083309.GL31561@phenom.ffwll.local>
References: <20181013065606.GA16644@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181013065606.GA16644@armorer>
X-Operating-System: Linux phenom 4.14.0-1-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)

On Sat, Oct 13, 2018 at 12:26:06PM +0530, Mamta Shukla wrote:
> Use sizeof(*ptr) instead of sizeof(ptr_type) makes memory
> allocation easy in case the type of pointer changes.
> Fix all checkpatch reported issues for "CHECK: Prefer
> kzalloc(sizeof(*<p>)...) over kzalloc(sizeof(struct <P>)...)".
> 
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/staging/rtl8188eu/core/rtw_cmd.c | 56 ++++++++++++++++----------------
>  1 file changed, 28 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_cmd.c b/drivers/staging/rtl8188eu/core/rtw_cmd.c
> index 42bdbb6a..9b2a497 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_cmd.c
> @@ -243,11 +243,11 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid,
>  	if (check_fwstate(pmlmepriv, _FW_LINKED) == true)
>  		rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_SCAN, 1);
>  
> -	ph2c = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
> +	ph2c = kzalloc(sizeof(*ph2c), GFP_ATOMIC);
>  	if (!ph2c)
>  		return _FAIL;
>  
> -	psurveyPara = kzalloc(sizeof(struct sitesurvey_parm), GFP_ATOMIC);
> +	psurveyPara = kzalloc(sizeof(*psurveyPara), GFP_ATOMIC);
>  	if (!psurveyPara) {
>  		kfree(ph2c);
>  		return _FAIL;
> @@ -325,7 +325,7 @@ u8 rtw_createbss_cmd(struct adapter  *padapter)
>  	else
>  		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, (" createbss for SSid:%s\n", pmlmepriv->assoc_ssid.Ssid));
>  
> -	pcmd = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
> +	pcmd = kzalloc(sizeof(*pcmd), GFP_ATOMIC);
>  	if (!pcmd) {
>  		res = _FAIL;
>  		goto exit;
> @@ -367,7 +367,7 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
>  	else
>  		RT_TRACE(_module_rtl871x_cmd_c_, _drv_notice_, ("+Join cmd: SSid =[%s]\n", pmlmepriv->assoc_ssid.Ssid));
>  
> -	pcmd = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
> +	pcmd = kzalloc(sizeof(*pcmd), GFP_ATOMIC);
>  	if (!pcmd) {
>  		res = _FAIL;
>  		goto exit;
> @@ -527,8 +527,8 @@ u8 rtw_setopmode_cmd(struct adapter  *padapter, enum ndis_802_11_network_infra n
>  
>  	struct	cmd_priv   *pcmdpriv = &padapter->cmdpriv;
>  
> -	ph2c = kzalloc(sizeof(struct cmd_obj), GFP_KERNEL);
> -	psetop = kzalloc(sizeof(struct setopmode_parm), GFP_KERNEL);
> +	ph2c = kzalloc(sizeof(*ph2c), GFP_KERNEL);
> +	psetop = kzalloc(sizeof(*psetop), GFP_KERNEL);
>  	if (!ph2c || !psetop) {
>  		kfree(ph2c);
>  		kfree(psetop);
> @@ -552,9 +552,9 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, u8 *psta, u8 unicast_key)
>  	struct security_priv *psecuritypriv = &padapter->securitypriv;
>  	struct sta_info *sta = (struct sta_info *)psta;
>  
> -	ph2c = kzalloc(sizeof(struct cmd_obj), GFP_KERNEL);
> -	psetstakey_para = kzalloc(sizeof(struct set_stakey_parm), GFP_KERNEL);
> -	psetstakey_rsp = kzalloc(sizeof(struct set_stakey_rsp), GFP_KERNEL);
> +	ph2c = kzalloc(sizeof(*ph2c), GFP_KERNEL);
> +	psetstakey_para = kzalloc(sizeof(*psetstakey_para), GFP_KERNEL);
> +	psetstakey_rsp = kzalloc(sizeof(*psetstakey_rsp), GFP_KERNEL);
>  
>  	if (!ph2c || !psetstakey_para || !psetstakey_rsp) {
>  		kfree(ph2c);
> @@ -597,20 +597,20 @@ u8 rtw_clearstakey_cmd(struct adapter *padapter, u8 *psta, u8 entry, u8 enqueue)
>  	if (!enqueue) {
>  		clear_cam_entry(padapter, entry);
>  	} else {
> -		ph2c = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
> +		ph2c = kzalloc(sizeof(*ph2c), GFP_ATOMIC);
>  		if (!ph2c) {
>  			res = _FAIL;
>  			goto exit;
>  		}
>  
> -		psetstakey_para = kzalloc(sizeof(struct set_stakey_parm), GFP_ATOMIC);
> +		psetstakey_para = kzalloc(sizeof(*psetstakey_para), GFP_ATOMIC);
>  		if (!psetstakey_para) {
>  			kfree(ph2c);
>  			res = _FAIL;
>  			goto exit;
>  		}
>  
> -		psetstakey_rsp = kzalloc(sizeof(struct set_stakey_rsp), GFP_ATOMIC);
> +		psetstakey_rsp = kzalloc(sizeof(*psetstakey_rsp), GFP_ATOMIC);
>  		if (!psetstakey_rsp) {
>  			kfree(ph2c);
>  			kfree(psetstakey_para);
> @@ -642,13 +642,13 @@ u8 rtw_addbareq_cmd(struct adapter *padapter, u8 tid, u8 *addr)
>  	struct addBaReq_parm *paddbareq_parm;
>  	u8	res = _SUCCESS;
>  
> -	ph2c = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
> +	ph2c = kzalloc(sizeof(*ph2c), GFP_ATOMIC);
>  	if (!ph2c) {
>  		res = _FAIL;
>  		goto exit;
>  	}
>  
> -	paddbareq_parm = kzalloc(sizeof(struct addBaReq_parm), GFP_ATOMIC);
> +	paddbareq_parm = kzalloc(sizeof(*paddbareq_parm), GFP_ATOMIC);
>  	if (!paddbareq_parm) {
>  		kfree(ph2c);
>  		res = _FAIL;
> @@ -677,13 +677,13 @@ u8 rtw_dynamic_chk_wk_cmd(struct adapter *padapter)
>  	struct cmd_priv	*pcmdpriv = &padapter->cmdpriv;
>  	u8	res = _SUCCESS;
>  
> -	ph2c = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
> +	ph2c = kzalloc(sizeof(*ph2c), GFP_ATOMIC);
>  	if (!ph2c) {
>  		res = _FAIL;
>  		goto exit;
>  	}
>  
> -	pdrvextra_cmd_parm = kzalloc(sizeof(struct drvextra_cmd_parm), GFP_ATOMIC);
> +	pdrvextra_cmd_parm = kzalloc(sizeof(*pdrvextra_cmd_parm), GFP_ATOMIC);
>  	if (!pdrvextra_cmd_parm) {
>  		kfree(ph2c);
>  		res = _FAIL;
> @@ -719,7 +719,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue)
>  	}
>  
>  	/* prepare cmd parameter */
> -	setChannelPlan_param = kzalloc(sizeof(struct SetChannelPlan_param), GFP_KERNEL);
> +	setChannelPlan_param = kzalloc(sizeof(*setChannelPlan_param), GFP_KERNEL);
>  	if (!setChannelPlan_param) {
>  		res = _FAIL;
>  		goto exit;
> @@ -728,7 +728,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue)
>  
>  	if (enqueue) {
>  		/* need enqueue, prepare cmd_obj and enqueue */
> -		pcmdobj = kzalloc(sizeof(struct	cmd_obj), GFP_KERNEL);
> +		pcmdobj = kzalloc(sizeof(*pcmdobj), GFP_KERNEL);
>  		if (!pcmdobj) {
>  			kfree(setChannelPlan_param);
>  			res = _FAIL;
> @@ -883,13 +883,13 @@ u8 rtw_lps_ctrl_wk_cmd(struct adapter *padapter, u8 lps_ctrl_type, u8 enqueue)
>  	u8	res = _SUCCESS;
>  
>  	if (enqueue) {
> -		ph2c = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
> +		ph2c = kzalloc(sizeof(*ph2c), GFP_ATOMIC);
>  		if (!ph2c) {
>  			res = _FAIL;
>  			goto exit;
>  		}
>  
> -		pdrvextra_cmd_parm = kzalloc(sizeof(struct drvextra_cmd_parm), GFP_ATOMIC);
> +		pdrvextra_cmd_parm = kzalloc(sizeof(*pdrvextra_cmd_parm), GFP_ATOMIC);
>  		if (!pdrvextra_cmd_parm) {
>  			kfree(ph2c);
>  			res = _FAIL;
> @@ -925,13 +925,13 @@ u8 rtw_rpt_timer_cfg_cmd(struct adapter *padapter, u16 min_time)
>  
>  	u8	res = _SUCCESS;
>  
> -	ph2c = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
> +	ph2c = kzalloc(sizeof(*ph2c), GFP_ATOMIC);
>  	if (!ph2c) {
>  		res = _FAIL;
>  		goto exit;
>  	}
>  
> -	pdrvextra_cmd_parm = kzalloc(sizeof(struct drvextra_cmd_parm), GFP_ATOMIC);
> +	pdrvextra_cmd_parm = kzalloc(sizeof(*pdrvextra_cmd_parm), GFP_ATOMIC);
>  	if (!pdrvextra_cmd_parm) {
>  		kfree(ph2c);
>  		res = _FAIL;
> @@ -966,13 +966,13 @@ u8 rtw_antenna_select_cmd(struct adapter *padapter, u8 antenna, u8 enqueue)
>  		return res;
>  
>  	if (enqueue) {
> -		ph2c = kzalloc(sizeof(struct cmd_obj), GFP_KERNEL);
> +		ph2c = kzalloc(sizeof(*ph2c), GFP_KERNEL);
>  		if (!ph2c) {
>  			res = _FAIL;
>  			goto exit;
>  		}
>  
> -		pdrvextra_cmd_parm = kzalloc(sizeof(struct drvextra_cmd_parm), GFP_KERNEL);
> +		pdrvextra_cmd_parm = kzalloc(sizeof(*pdrvextra_cmd_parm), GFP_KERNEL);
>  		if (!pdrvextra_cmd_parm) {
>  			kfree(ph2c);
>  			res = _FAIL;
> @@ -999,8 +999,8 @@ u8 rtw_ps_cmd(struct adapter *padapter)
>  	struct drvextra_cmd_parm	*pdrvextra_cmd_parm;
>  	struct cmd_priv	*pcmdpriv = &padapter->cmdpriv;
>  
> -	ppscmd = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
> -	pdrvextra_cmd_parm = kzalloc(sizeof(struct drvextra_cmd_parm), GFP_ATOMIC);
> +	ppscmd = kzalloc(sizeof(*ppscmd), GFP_ATOMIC);
> +	pdrvextra_cmd_parm = kzalloc(sizeof(*pdrvextra_cmd_parm), GFP_ATOMIC);
>  	if (!ppscmd || !pdrvextra_cmd_parm) {
>  		kfree(ppscmd);
>  		kfree(pdrvextra_cmd_parm);
> @@ -1063,13 +1063,13 @@ u8 rtw_chk_hi_queue_cmd(struct adapter *padapter)
>  	struct cmd_priv	*pcmdpriv = &padapter->cmdpriv;
>  	u8	res = _SUCCESS;
>  
> -	ph2c = kzalloc(sizeof(struct cmd_obj), GFP_ATOMIC);
> +	ph2c = kzalloc(sizeof(*ph2c), GFP_ATOMIC);
>  	if (!ph2c) {
>  		res = _FAIL;
>  		goto exit;
>  	}
>  
> -	pdrvextra_cmd_parm = kzalloc(sizeof(struct drvextra_cmd_parm), GFP_ATOMIC);
> +	pdrvextra_cmd_parm = kzalloc(sizeof(*pdrvextra_cmd_parm), GFP_ATOMIC);
>  	if (!pdrvextra_cmd_parm) {
>  		kfree(ph2c);
>  		res = _FAIL;
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181013065606.GA16644%40armorer.
> For more options, visit https://groups.google.com/d/optout.

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

