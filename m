X-GM-THRID: 6464167912849539072
X-Received: by 10.28.215.195 with SMTP id o186mr671190wmg.9.1505072214718;
        Sun, 10 Sep 2017 12:36:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.27.201 with SMTP id b192ls805795wmb.22.gmail; Sun, 10 Sep
 2017 12:36:53 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAwKvuKZhX9QTVFUp/prBLrtMOZxOIn8ko8eoTvyN/SaFfQlfzxj+iL32AGsH99B7n3evRM
X-Received: by 10.28.72.135 with SMTP id v129mr676865wma.14.1505072213805;
        Sun, 10 Sep 2017 12:36:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505072213; cv=none;
        d=google.com; s=arc-20160816;
        b=szGcFXHvFkFcV+4YqRlv2jIqiFJRe0uXACA60Y6ZEiHy56XSshb/hEdIeQdjSJvJNw
         RWeUu2ai6dV2hszOzyldpXIQW+Klfpgnix7JMW3UGFY7kCpGJS+D5pTamZcBi25Myrl/
         5RppHQd9WfDaW0s02zGgurh3n3nl0rfnj7QJTThvkqiLXrf0TOJDAsZMrGujk4L2ZPyB
         lDbz029pVsmYdwCxvHvwETlp7PEru76VjTYj6tsikBFLTK+8ldSGoVD6AmEr1T1qt7s3
         wvEe96UpL0/Xzy91p1ZGDvSpq7CjjufUatS+d8YCJ5dxywB5hMT4+SPGpkYFlgiE0T1J
         dZxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=+QhIhPDW6CGDQzmyUj3FWfqJHyfz8V5aJdm9d1ZvMEs=;
        b=or9Uqc0cjp6N6a/2RdyBZsv0rq5e+19HxRJxiOHhV8nGivagVamH0XfqbKAiCqKLFt
         lPj7Ck7z2V2XSa24N5ebLE6Tx4+BOAnYBQ5Y6Um/TO8itUvabk7dxwGqr+2oTt7I1nD5
         d9C4zFT/HoNdBTzN544OxOpfOWSXD7cPOvMdHE5PUuqbhmW39Y6IYZLSm4AxWJm0+4yw
         +VZQvFGoO1BksUihcbwRRHKsKX0A1jhvwqJTsY+xQ1e9gCr1XR0e5KrAomM1aSbaDozg
         6q3kue8M7sqacSdrfMXQX9evJ+hUMBVTH1BAp8cb6eFVRRg2XAit976KmBpi7QJlUE8e
         m77w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e135si408383wmg.6.2017.09.10.12.36.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 12:36:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,374,1500933600"; 
   d="scan'208";a="290382285"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Sep 2017 21:36:53 +0200
Date: Sun, 10 Sep 2017 21:36:53 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 02/10] staging: rtl8723bs: Add spaces
 around '+', '|', '*'
In-Reply-To: <28be543667f44c31e38872ec4a96bad8c167e3d8.1505052882.git.harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1709102136320.6548@hadrien>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com> <28be543667f44c31e38872ec4a96bad8c167e3d8.1505052882.git.harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 10 Sep 2017, Harsha Sharma wrote:

> Use one space around most binary operators
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/rtl8723bs/os_dep/os_intfs.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> index 7f22ca9..18f0ac2 100644
> --- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> +++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> @@ -222,7 +222,7 @@
>  /*  BIT4 - RF,					0: non-support, 1: support */
>  /*  BIT5 - RF_TXPWR_TRACK,	0: non-support, 1: support */
>  /*  BIT6 - RF_TXPWR_LMT,		0: non-support, 1: support */
> -static int rtw_load_phy_file = (BIT2|BIT6);
> +static int rtw_load_phy_file = (BIT2 | BIT6);
>  module_param(rtw_load_phy_file, int, 0644);
>  MODULE_PARM_DESC(rtw_load_phy_file,"PHY File Bit Map");
>  static int rtw_decrypt_phy_file = 0;
> @@ -440,12 +440,12 @@ u16 rtw_recv_select_queue(struct sk_buff *skb)
>  	u32 priority;
>  	u8 *pdata = skb->data;
>
> -	memcpy(&eth_type, pdata+(ETH_ALEN<<1), 2);
> +	memcpy(&eth_type, pdata + (ETH_ALEN << 1), 2);
>
>  	switch (be16_to_cpu(eth_type)) {
>  		case ETH_P_IP:
>
> -			piphdr = (struct iphdr *)(pdata+ETH_HLEN);
> +			piphdr = (struct iphdr *)(pdata + ETH_HLEN);
>
>  			dscp = piphdr->tos & 0xfc;
>
> @@ -561,7 +561,7 @@ struct net_device *rtw_init_netdev(struct adapter *old_padapter)
>  	pnetdev->netdev_ops = &rtw_netdev_ops;
>
>  	/* pnetdev->tx_timeout = NULL; */
> -	pnetdev->watchdog_timeo = HZ*3; /* 3 second timeout */
> +	pnetdev->watchdog_timeo = HZ * 3; /* 3 second timeout */
>  	pnetdev->wireless_handlers = (struct iw_handler_def *)&rtw_handlers_def;
>
>  	/* step 2. */
> @@ -748,7 +748,7 @@ u8 rtw_reset_drv_sw(struct adapter *padapter)
>  	pmlmepriv->LinkDetectInfo.TrafficTransitionCount = 0;
>  	pmlmepriv->LinkDetectInfo.LowPowerTransitionCount = 0;
>
> -	_clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY |_FW_UNDER_LINKING);
> +	_clr_fwstate_(pmlmepriv, _FW_UNDER_SURVEY | _FW_UNDER_LINKING);
>
>  	pwrctrlpriv->pwr_state_check_cnts = 0;
>
> @@ -935,7 +935,7 @@ static int _rtw_drv_register_netdev(struct adapter *padapter, char *name)
>  		goto error_register_netdev;
>  	}
>
> -	DBG_871X("%s, MAC Address (if%d) = " MAC_FMT "\n", __func__, (padapter->iface_id+1), MAC_ARG(pnetdev->dev_addr));
> +	DBG_871X("%s, MAC Address (if%d) = " MAC_FMT "\n", __func__, (padapter->iface_id + 1), MAC_ARG(pnetdev->dev_addr));
>
>  	return ret;
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/28be543667f44c31e38872ec4a96bad8c167e3d8.1505052882.git.harshasharmaiitr%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

