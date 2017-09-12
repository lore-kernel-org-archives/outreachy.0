X-GM-THRID: 6464879882982653952
X-Received: by 10.223.151.69 with SMTP id r63mr857735wrb.3.1505222739456;
        Tue, 12 Sep 2017 06:25:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.229.14 with SMTP id c14ls361494wmh.3.canary-gmail; Tue, 12
 Sep 2017 06:25:38 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb7KZtpgwg0rpsFSIGdZ18/LLBL2knG+h0957kWl+K9ah5jQc/9eLZf8PJ3pkIxRkk9Eiq9A
X-Received: by 10.223.175.99 with SMTP id z90mr875336wrc.9.1505222738312;
        Tue, 12 Sep 2017 06:25:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505222738; cv=none;
        d=google.com; s=arc-20160816;
        b=Hwrhp33h+37yT2LkbUYIGY2AAqD8kv58WkFlPQnTX5TyVbvDbaQjOoZ+0zUiAG/t+m
         IlB8M0G32CR5y4T5+rRlpvSXM0lvJSM1alyPwDw7ExruHHo5M/vdMGW/uDCHHtH8Gz3V
         cWXq5/ZmXJrL3pQedAzibikFwxTiQ0FZPL+kVaohZo+Oo3maKvlzU02XSA4DiwZJ/pvu
         DilFGBxusvXzQ0iQJtmPiRtdDL9OBpjiOrAHZPpUDtK8EXKi2rH5+xuXey9MF/ZU6Bph
         xyRSX6qHIrvxalbQKaI5ZGPio0dz0uzVoZKrsfk6s4UI03P4sSTOEkgwK8uxZGkk7Vqy
         EMbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=bYAY81A3nkv1qtZ3BM9yb8OF8gxp146S4YlK/PPOQZE=;
        b=COBTmoQKzo4V7qRw2PvJPVVDx1A+k/xy75Wy7vfzG9Q+gdbGWhzS84Aubg3tg9mQLV
         H9ewvK+p12DZkap4iu7XS1jCy3XTbKO+YgbpNJg7eaCoNGQn96PrIDdxwJY16KD+9TcW
         77ZnrfUlC5T1NwCjV53m7es0BKJG9boKeFpyEmzvgbb+mqPZy8wGvx9H8ctFJoYGdzTR
         KwJd/+KXZqkmx/QQ17etpVFiz70Q7ORdmOyuWqnoeekl6kwg2GzWVQT1fb4vPITd5tc8
         Uj4nj9U/BAFJ5aJhBweLAQ34HLu8cRbWaXYLuw6yPdIW6Y8GJZ313L3oBulBVs9E9Hje
         +whA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 191si328409wmn.2.2017.09.12.06.25.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 06:25:38 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,383,1500933600"; 
   d="scan'208";a="237200039"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Sep 2017 15:25:37 +0200
Date: Tue, 12 Sep 2017 15:25:06 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove unnecessary
 spaces
In-Reply-To: <1505221926-2865-1-git-send-email-harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1709121524370.3149@hadrien>
References: <1505221926-2865-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 12 Sep 2017, Harsha Sharma wrote:

> Space between function name and open parentheses '(' is prohibited.
> Space is required around most binary operators '=', '==', '+=',
> '<', ':', '+', '-'
> Space required before '&', '*'
> Space is required after ',', ';'
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/rtl8723bs/os_dep/mlme_linux.c | 30 +++++++++++++--------------
>  1 file changed, 15 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
> index 80ca2d7..49cb701 100644
> --- a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
> @@ -19,7 +19,7 @@
>  #include <drv_types.h>
>  #include <rtw_debug.h>
>
> -static void _dynamic_check_timer_handlder (void *FunctionContext)
> +static void _dynamic_check_timer_handlder(void *FunctionContext)
>  {
>  	struct adapter *adapter = FunctionContext;
>
> @@ -51,8 +51,8 @@ void rtw_os_indicate_connect(struct adapter *adapter)
>  {
>  	struct mlme_priv *pmlmepriv = &(adapter->mlmepriv);
>
> -	if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) ==true) ||
> -		(check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) ==true))
> +	if ((check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true) ||
> +		(check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) == true))
>  	{
>  		rtw_cfg80211_ibss_indicate_connect(adapter);
>  	}
> @@ -99,7 +99,7 @@ void rtw_reset_securitypriv(struct adapter *adapter)
>  		/* reset RX BIP packet number */
>  		pmlmeext->mgnt_80211w_IPN_rx = 0;
>
> -		memset((unsigned char *)&adapter->securitypriv, 0, sizeof (struct security_priv));
> +		memset((unsigned char *)&adapter->securitypriv, 0, sizeof(struct security_priv));
>
>  		/*  Added by Albert 2009/02/18 */
>  		/*  Restore the PMK information to securitypriv structure for the following connection. */
> @@ -116,9 +116,9 @@ void rtw_reset_securitypriv(struct adapter *adapter)
>  	{
>  		/* if (adapter->mlmepriv.fw_state & WIFI_STATION_STATE) */
>  		/*  */
> -		struct security_priv *psec_priv =&adapter->securitypriv;
> +		struct security_priv *psec_priv = &adapter->securitypriv;
>
> -		psec_priv->dot11AuthAlgrthm =dot11AuthAlgrthm_Open;  /* open system */
> +		psec_priv->dot11AuthAlgrthm = dot11AuthAlgrthm_Open;  /* open system */
>  		psec_priv->dot11PrivacyAlgrthm = _NO_PRIVACY_;
>  		psec_priv->dot11PrivacyKeyIndex = 0;
>
> @@ -150,7 +150,7 @@ void rtw_os_indicate_disconnect(struct adapter *adapter)
>  void rtw_report_sec_ie(struct adapter *adapter, u8 authmode, u8 *sec_ie)
>  {
>  	uint	len;
> -	u8 *buff,*p, i;
> +	u8 *buff, *p, i;
>  	union iwreq_data wrqu;
>
>  	RT_TRACE(_module_mlme_osdep_c_, _drv_info_, ("+rtw_report_sec_ie, authmode =%d\n", authmode));
> @@ -168,22 +168,22 @@ void rtw_report_sec_ie(struct adapter *adapter, u8 authmode, u8 *sec_ie)
>  		}
>  		p = buff;
>
> -		p+=sprintf(p,"ASSOCINFO(ReqIEs =");
> +		p += sprintf(p, "ASSOCINFO(ReqIEs =");
>
> -		len = sec_ie[1]+2;
> -		len = (len < IW_CUSTOM_MAX) ? len:IW_CUSTOM_MAX;
> +		len = sec_ie[1] + 2;
> +		len = (len < IW_CUSTOM_MAX) ? len : IW_CUSTOM_MAX;
>
> -		for (i = 0;i<len;i++) {
> -			p+=sprintf(p,"%02x", sec_ie[i]);
> +		for (i = 0; i < len; i++) {
> +			p += sprintf(p, "%02x", sec_ie[i]);
>  		}
>
> -		p+=sprintf(p,")");
> +		p += sprintf(p, ")");
>
>  		memset(&wrqu, 0, sizeof(wrqu));
>
> -		wrqu.data.length =p-buff;
> +		wrqu.data.length = p - buff;
>
> -		wrqu.data.length = (wrqu.data.length<IW_CUSTOM_MAX) ? wrqu.data.length:IW_CUSTOM_MAX;
> +		wrqu.data.length = (wrqu.data.length < IW_CUSTOM_MAX) ? wrqu.data.length : IW_CUSTOM_MAX;
>
>  		kfree(buff);
>  	}
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505221926-2865-1-git-send-email-harshasharmaiitr%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

