X-GM-THRID: 6465604112701456384
X-Received: by 10.176.25.197 with SMTP id r5mr13802488uai.20.1505392193266;
        Thu, 14 Sep 2017 05:29:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.59.88 with SMTP id i85ls4281942ioa.24.gmail; Thu, 14 Sep
 2017 05:29:52 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb6kV0LDO3Ub5MJqZZ/trYcS+9PuCKQ+WsoebGZYDMlVQZVO8P4FTfO6lr7NvKZ7x9/ptJhl
X-Received: by 10.99.119.139 with SMTP id s133mr13240687pgc.136.1505392192187;
        Thu, 14 Sep 2017 05:29:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505392192; cv=none;
        d=google.com; s=arc-20160816;
        b=BvHvh4GHuHhcfhueO7meWOJ/1lktJ9QAcfA5bunC3mmm0KTJi9x03jcOOj313iT3Z8
         Osa2dgwlE614B2q/sD/DqXhc6Zt5wPVySsIphy8nI4QKx04rgn2nePH//FS8WCyOdRq+
         Goh4qIaXhxonqt1p/DnCfYFRhu68h0w2/n4TSgf69uKQQFeVxsyJ5RwSNLpnOqbprHfe
         Hd//l3iKR00aNG0rdkEdcxOcYPPZExABgovfsyfBHB7yrhH62r2qga+Ii+QDZmcnEVne
         ZQDgo0NSPa4G5llCZZ4g8uqN9qb3KXHE3EtBIyrrX1afKTZAdvsK6E1ZOKL0NeCa1uOK
         tuyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=J6SRsuktmLvWGK8ecAXYVMIbf7ylXQAwtaJvh09csbg=;
        b=rjZ/ew86ki3oMfpU/Ocyj7bzDzxPDHAHnufGDXUIpxofUX2f4WNm0knQswO6/Gyg/L
         jepL52HL7D+Kzueq8mSvyfetMaGTo5Od+Vn4sBbE1RI0rIrickPJiWOs2HM1iVIkrB5r
         KTzGyJVaaFQ0BhcYRqzjbwU2i5HykWh2p4mpl1/mvPC6VKrMJ8XlHfqGAopAjNZvh2hn
         TYxQOG/tdDTDxUd3UL/uJEn4fCncO8wDU59SuhVfUBUWMZxmYHkeF3Usb8nKGPE5tQ8/
         Xx+EVgKTSLgrkCjeOGll14eRT3skKJlL14GMz4fSrRAMzdTPwXu144+a9/HgbBlRDkDM
         xsaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w19si54955itc.2.2017.09.14.05.29.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 05:29:52 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,392,1500933600"; 
   d="scan'208";a="291071760"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Sep 2017 14:29:50 +0200
Date: Thu, 14 Sep 2017 14:29:18 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Merge assignment
 with return
In-Reply-To: <1505390645-4461-1-git-send-email-harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1709141428080.3185@hadrien>
References: <1505390645-4461-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 14 Sep 2017, Harsha Sharma wrote:

> Merge assignment with return statement to directly return the value.
> Done using following coccinelle semantic patch
>
> @@
> local idexpression ret;
> expression e;
> @@
>
> -ret =
> +return
>      e;
> -return ret;

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

Many of these examples have the property that ret is assigned to 0 but
that value is never used.  You could try using Coccinelle to see whether
that occurs in other cases.

julia


>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 20 ++++----------------
>  1 file changed, 4 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> index ffbb35a..6a8f805 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> @@ -2123,12 +2123,9 @@ static int rtw_wx_set_gen_ie(struct net_device *dev,
>  			     struct iw_request_info *info,
>  			     union iwreq_data *wrqu, char *extra)
>  {
> -	int ret;
>  	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
>
> -	ret = rtw_set_wpa_ie(padapter, extra, wrqu->data.length);
> -
> -	return ret;
> +	return rtw_set_wpa_ie(padapter, extra, wrqu->data.length);
>  }
>
>  static int rtw_wx_set_auth(struct net_device *dev,
> @@ -3857,7 +3854,6 @@ static int rtw_hostapd_sta_flush(struct net_device *dev)
>  {
>  	/* _irqL irqL; */
>  	/* struct list_head	*phead, *plist; */
> -	int ret = 0;
>  	/* struct sta_info *psta = NULL; */
>  	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
>  	/* struct sta_priv *pstapriv = &padapter->stapriv; */
> @@ -3866,9 +3862,7 @@ static int rtw_hostapd_sta_flush(struct net_device *dev)
>
>  	flush_all_cam_entry(padapter);	/* clear CAM */
>
> -	ret = rtw_sta_flush(padapter);
> -
> -	return ret;
> +	return rtw_sta_flush(padapter);
>
>  }
>
> @@ -4266,7 +4260,6 @@ static int rtw_set_hidden_ssid(struct net_device *dev, struct ieee_param *param,
>
>  static int rtw_ioctl_acl_remove_sta(struct net_device *dev, struct ieee_param *param, int len)
>  {
> -	int ret = 0;
>  	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
>  	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
>
> @@ -4279,15 +4272,12 @@ static int rtw_ioctl_acl_remove_sta(struct net_device *dev, struct ieee_param *p
>  		return -EINVAL;
>  	}
>
> -	ret = rtw_acl_remove_sta(padapter, param->sta_addr);
> -
> -	return ret;
> +	return rtw_acl_remove_sta(padapter, param->sta_addr);
>
>  }
>
>  static int rtw_ioctl_acl_add_sta(struct net_device *dev, struct ieee_param *param, int len)
>  {
> -	int ret = 0;
>  	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
>  	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
>
> @@ -4300,9 +4290,7 @@ static int rtw_ioctl_acl_add_sta(struct net_device *dev, struct ieee_param *para
>  		return -EINVAL;
>  	}
>
> -	ret = rtw_acl_add_sta(padapter, param->sta_addr);
> -
> -	return ret;
> +	return rtw_acl_add_sta(padapter, param->sta_addr);
>
>  }
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505390645-4461-1-git-send-email-harshasharmaiitr%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

