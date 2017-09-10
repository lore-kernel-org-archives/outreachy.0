X-GM-THRID: 6464167912849539072
X-Received: by 10.28.230.79 with SMTP id d76mr691363wmh.12.1505073674929;
        Sun, 10 Sep 2017 13:01:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.66 with SMTP id 2ls160776ljv.54.gmail; Sun, 10 Sep 2017
 13:01:13 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCaXyKBMChL9EwReGZtEiOX1mkUHW6k22Z3Afbhk0mgfo51aTJxDj9BSAhhsXilI1+UOnBg
X-Received: by 10.25.78.196 with SMTP id u65mr628654lfk.4.1505073673314;
        Sun, 10 Sep 2017 13:01:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505073673; cv=none;
        d=google.com; s=arc-20160816;
        b=Md8IzGtfNr65eSfyPIkX/Jy7zHxyKRmJiRhvWomQLruswyNRYP2NFsHvL02GMZHJQ5
         l1FYrX+Nk/YZ09lcKBG4CwVm6oyz7pOnZmzzzc8AqLSfEhS9IVmkPBB+Aef4ZuXsZM1F
         hVubaEsLqFHoSrwylDgsT42xl+YgiI3NK728ae8BVi4P5uR5BzUuCULUzlPUYZLwCJZ6
         HR5wcPpRepMeNKuH/fD4/gYrnL3zm7O/qN5PIDElOMKMGqzjk21fDASkFHz9T/A2EwO2
         19YpBKQB46W8I2RyKJgf5p6rMr45I9IBVw3wX8YvHHAKr1CRBjg8k2XY1tUKRe+3nFlN
         h0RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=UTjAjMoTtV7dW+yh2TNyoYBnaPJSgTnb/a6ijVAQKDs=;
        b=VqNaTAKv4jMsLIi1vrlRIFEtyDXyI3ohVWuzZ80weRbwYgwB58/0m9bV+pCbUH451U
         s8iDDbzTtG7/J3+adI/BCmfDZQbDsOdlFiTF4DwiV/rfI9UR11+xcNWcwCNsSs0qgQxz
         fAm0rFDj6aqwrNWyGjjvWiKjydOCFLSCFCpVXcZnNmcmCc/NGOXOJ6oudxCEeMTOcfEo
         7RV3wcjsdwt0oVoMrnS87KAG+vyYQ6sYt510UzgwDNrPa30y8dsmDHTrcK3PJJLZlMhQ
         OP0VnNW7/9wICNax4A4NLewEj4yz0E846hGABguKsDI50VKPuVRCuktXMMnRIist6Dzt
         0BAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i90si437878wmh.5.2017.09.10.13.01.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 13:01:13 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,374,1500933600"; 
   d="scan'208";a="290383932"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Sep 2017 22:01:12 +0200
Date: Sun, 10 Sep 2017 22:01:12 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 03/10] staging: rtl8723bs: Add spaces
 around '?', '==', '||', '!='
In-Reply-To: <be22d7c63780098571fec9d490b1a83039ddbb75.1505052882.git.harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1709102201030.6548@hadrien>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com> <be22d7c63780098571fec9d490b1a83039ddbb75.1505052882.git.harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 10 Sep 2017, Harsha Sharma wrote:

> Use spaces around most binary operators
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/rtl8723bs/os_dep/os_intfs.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> index 18f0ac2..5ceccd7 100644
> --- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> +++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> @@ -1140,7 +1140,7 @@ static int pm_netdev_open(struct net_device *pnetdev, u8 bnormal)
>  		}
>  	}
>  	else
> -		status =  (_SUCCESS == ips_netdrv_open(padapter))?(0):(-1);
> +		status =  (_SUCCESS == ips_netdrv_open(padapter)) ? (0) : (-1);
>
>  	return status;
>  }
> @@ -1262,7 +1262,7 @@ void rtw_dev_unload(struct adapter *padapter)
>  			rtw_btcoex_IpsNotify(padapter, pwrctl->ips_mode_req);
>  #ifdef CONFIG_WOWLAN
>  			if (pwrctl->bSupportRemoteWakeup == true &&
> -				pwrctl->wowlan_mode ==true) {
> +				pwrctl->wowlan_mode == true) {
>  				DBG_871X_LEVEL(_drv_always_, "%s bSupportRemoteWakeup ==true  do not run rtw_hal_deinit()\n", __func__);
>  			}
>  			else
> @@ -1524,7 +1524,7 @@ int rtw_suspend_common(struct adapter *padapter)
>  	while (pwrpriv->bips_processing == true)
>  		msleep(1);
>
> -	if ((!padapter->bup) || (padapter->bDriverStopped)||(padapter->bSurpriseRemoved))
> +	if ((!padapter->bup) || (padapter->bDriverStopped) || (padapter->bSurpriseRemoved))
>  	{
>  		DBG_871X("%s bup =%d bDriverStopped =%d bSurpriseRemoved = %d\n", __func__
>  			, padapter->bup, padapter->bDriverStopped, padapter->bSurpriseRemoved);
> @@ -1671,7 +1671,7 @@ int rtw_resume_process_wow(struct adapter *padapter)
>  		DBG_871X_LEVEL(_drv_always_, "%s: ### ERROR ### wowlan_mode =%d\n", __func__, pwrpriv->wowlan_mode);
>  	}
>
> -	if (padapter->pid[1]!= 0) {
> +	if (padapter->pid[1] != 0) {
>  		DBG_871X("pid[1]:%d\n", padapter->pid[1]);
>  		rtw_signal_process(padapter->pid[1], SIGUSR2);
>  	}
> @@ -1774,7 +1774,7 @@ int rtw_resume_process_ap_wow(struct adapter *padapter)
>  			rtw_netif_wake_queue(pnetdev);
>  	}
>
> -	if (padapter->pid[1]!= 0) {
> +	if (padapter->pid[1] != 0) {
>  		DBG_871X("pid[1]:%d\n", padapter->pid[1]);
>  		rtw_signal_process(padapter->pid[1], SIGUSR2);
>  	}
> @@ -1842,7 +1842,7 @@ static int rtw_resume_process_normal(struct adapter *padapter)
>  	netif_device_attach(pnetdev);
>  	netif_carrier_on(pnetdev);
>
> -	if (padapter->pid[1]!= 0) {
> +	if (padapter->pid[1] != 0) {
>  		DBG_871X("pid[1]:%d\n", padapter->pid[1]);
>  		rtw_signal_process(padapter->pid[1], SIGUSR2);
>  	}
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/be22d7c63780098571fec9d490b1a83039ddbb75.1505052882.git.harshasharmaiitr%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

