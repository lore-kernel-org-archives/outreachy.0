X-GM-THRID: 6464167912849539072
X-Received: by 10.25.219.206 with SMTP id t75mr618662lfi.7.1505072650548;
        Sun, 10 Sep 2017 12:44:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.64.203 with SMTP id r72ls37380lje.41.gmail; Sun, 10 Sep
 2017 12:44:08 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAG1WKMqTQCMgngcXc/FFqNHdtJMEGXCGDUY0fRu9V1TLya0ulLaSeXM+hPnayr7tp1VJiF
X-Received: by 10.25.181.214 with SMTP id g83mr643207lfk.17.1505072648750;
        Sun, 10 Sep 2017 12:44:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505072648; cv=none;
        d=google.com; s=arc-20160816;
        b=PqpFQ0yYrdmqQK43ci6PZ9Z6t7Srr2rBXR4i+77W/rrN78uuONv0/Gk04AuX8udKQ1
         UpV1Tma5XiwCqf5YU+umXNddpF3Vcw6dsIG5wJBivQ/k4HWPqypxjwXwjG3nL8GK/WTF
         F/Bb9LHmBWj7vxMhCH2F7l+sRKExYe3yClt1Oe+HC8PCG8X6pqOmlUy944I+wlUnTuVT
         X33spVMvDmPECj2jxBsY9xXlR8ubCVmXn1OcowyPx+QPFirosg1nKnIZgT7Qan9es34t
         ieNMS2jStfIvvjfbnz6H3uPt/2BCyPYofEmb7Gi16Bnv7pPmZjl89F5teLI3YCx///OV
         pI4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=LhZK9C8X470XY6ox0AJEbKCl5LvAVMk821Oj+BO4UTI=;
        b=XT5Evi1fDbe7IbfIU+/1/Z+obnvlVADFk7tNPmulyRKaZjssO+zd9xCAq8v4t94BT0
         ML7nq2hMVh61LahIWBdRZXRl8b7koxcjfr2q0Cv03IW7t3djwztn8sN5+b+g+Yr16AyW
         5aGzIKxs5UHAtnW526fUTBAEjqG0eMRZz7hJOdVfUIvlDCzD8GvzKXkIb0599ALADhYW
         hx8/2HfXSIJS5fWgnDTtW8XmHOWpHFBdkqQxs4CtwHPN/79Gfg7T1m6pezODpM6eBclH
         ZjL026wLBklRBjblN7RYtqC3+MZfZsDZqqwuiqReTTuVVvMdZ+/9KkvwcqRK2rEXE0WM
         yVyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c142si478266wmh.3.2017.09.10.12.44.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 12:44:08 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,374,1500933600"; 
   d="scan'208";a="236960252"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Sep 2017 21:44:07 +0200
Date: Sun, 10 Sep 2017 21:44:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 01/10] staging: rtl8723bs: Add spaces
 around '='
In-Reply-To: <7b2a57c6f3eb01142a73e92124fdf06a7504e68e.1505052882.git.harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1709102143550.6548@hadrien>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com> <7b2a57c6f3eb01142a73e92124fdf06a7504e68e.1505052882.git.harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 10 Sep 2017, Harsha Sharma wrote:

> Use one space around (on each side of) '=' operator
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/rtl8723bs/os_dep/os_intfs.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> index 0215899..7f22ca9 100644
> --- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> +++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> @@ -121,7 +121,7 @@
>
>  static int rtw_enusbss = 0;/* 0:disable, 1:enable */
>
> -static int rtw_hwpdn_mode =2;/* 0:disable, 1:enable, 2: by EFUSE config */
> +static int rtw_hwpdn_mode = 2;/* 0:disable, 1:enable, 2: by EFUSE config */
>
>  #ifdef CONFIG_HW_PWRP_DETECTION
>  static int rtw_hwpwrp_detect = 1;
> @@ -183,7 +183,7 @@
>
>  module_param(rtw_hw_wps_pbc, int, 0644);
>
> -static uint rtw_max_roaming_times =2;
> +static uint rtw_max_roaming_times = 2;
>  module_param(rtw_max_roaming_times, uint, 0644);
>  MODULE_PARM_DESC(rtw_max_roaming_times,"The max roaming times to try");
>
> @@ -255,8 +255,8 @@ static uint loadparam(struct adapter *padapter, _nic_hdl pnetdev)
>
>  	registry_par->vrtl_carrier_sense = (u8)rtw_vrtl_carrier_sense ;
>  	registry_par->vcs_type = (u8)rtw_vcs_type;
> -	registry_par->rts_thresh =(u16)rtw_rts_thresh;
> -	registry_par->frag_thresh =(u16)rtw_frag_thresh;
> +	registry_par->rts_thresh = (u16)rtw_rts_thresh;
> +	registry_par->frag_thresh = (u16)rtw_frag_thresh;
>  	registry_par->preamble = (u8)rtw_preamble;
>  	registry_par->scan_mode = (u8)rtw_scan_mode;
>  	registry_par->adhoc_tx_pwr = (u8)rtw_adhoc_tx_pwr;
> @@ -652,8 +652,8 @@ static u8 rtw_init_default_value(struct adapter *padapter)
>  #ifdef CONFIG_GTK_OL
>  	psecuritypriv->binstallKCK_KEK = _FAIL;
>  #endif /* CONFIG_GTK_OL */
> -	psecuritypriv->sw_encrypt =pregistrypriv->software_encrypt;
> -	psecuritypriv->sw_decrypt =pregistrypriv->software_decrypt;
> +	psecuritypriv->sw_encrypt = pregistrypriv->software_encrypt;
> +	psecuritypriv->sw_decrypt = pregistrypriv->software_decrypt;
>
>  	psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_Open; /* open system */
>  	psecuritypriv->dot11PrivacyAlgrthm = _NO_PRIVACY_;
> @@ -777,7 +777,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
>  		goto exit;
>  	}
>
> -	padapter->cmdpriv.padapter =padapter;
> +	padapter->cmdpriv.padapter = padapter;
>
>  	if ((rtw_init_evt_priv(&padapter->evtpriv)) == _FAIL) {
>  		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init evt_priv\n"));
> @@ -986,7 +986,7 @@ int _netdev_open(struct net_device *pnetdev)
>
>  		DBG_871X("MAC Address = "MAC_FMT"\n", MAC_ARG(pnetdev->dev_addr));
>
> -		status =rtw_start_drv_threads(padapter);
> +		status = rtw_start_drv_threads(padapter);
>  		if (status == _FAIL) {
>  			DBG_871X("Initialize driver software resource Failed!\n");
>  			goto netdev_open_error;
> @@ -1641,7 +1641,7 @@ int rtw_resume_process_wow(struct adapter *padapter)
>  		}
>
>  		/* Disable WOW, set H2C command */
> -		poidparam.subcode =WOWLAN_DISABLE;
> +		poidparam.subcode = WOWLAN_DISABLE;
>  		padapter->HalFunc.SetHwRegHandler(padapter, HW_VAR_WOWLAN, (u8 *)&poidparam);
>
>  		psta = rtw_get_stainfo(&padapter->stapriv, get_bssid(&padapter->mlmepriv));
> @@ -1705,7 +1705,7 @@ int rtw_resume_process_wow(struct adapter *padapter)
>  		DBG_871X_LEVEL(_drv_always_, "do not reset timer\n");
>  	}
>
> -	pwrpriv->wowlan_mode =false;
> +	pwrpriv->wowlan_mode = false;
>
>  	/* clean driver side wake up reason. */
>  	pwrpriv->wowlan_wake_reason = 0;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/7b2a57c6f3eb01142a73e92124fdf06a7504e68e.1505052882.git.harshasharmaiitr%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

