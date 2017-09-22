X-GM-THRID: 6468535394097954816
X-Received: by 10.28.184.81 with SMTP id i78mr127250wmf.2.1506073704552;
        Fri, 22 Sep 2017 02:48:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.229.132 with SMTP id i4ls696946lfk.2.gmail; Fri, 22 Sep
 2017 02:48:23 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBgT4mdCYrYSMmLnQOM3ENhlSUPqp/0w063h5zH6hzhBk4LK94xPG1BdhUtN68TIJZiCduo
X-Received: by 10.25.228.65 with SMTP id b62mr845901lfh.37.1506073703072;
        Fri, 22 Sep 2017 02:48:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506073703; cv=none;
        d=google.com; s=arc-20160816;
        b=HZw/8OOdx259XbhEIP9WAaVog8PM/9MGZnbu7bAMTprmv8sfLs1IVyamic5V053+Ew
         CLSstYQTYlnfkNIAdNT5oUAZEEqhD5a0ppogVG/04dSwfh24mipj0ar1//mbxZw9Zs1t
         q7iJtglZWjAhycoVQppX/xau/oxGZtx/f7Oi/yzgMhyP8g6EtbGoHW4n6ptEIYPjDzD9
         zjYJRw3C6LhAfJxSObOdoewgQZSTjSLtJ48HDHtbL7T4N29VnyiK5icvq80vrhvyx9w4
         hZKk9uj/yelgBJHm/C9tR4w8V+72YM4Mq67SlRvSNJzEZYN9o2nA3DnadF7Ha6BFvL7n
         eHeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=lQ8p7qhJUGWbVEovCkZt//oW+YQ/j2Kz9SQV9R+kwys=;
        b=wtAaJaACi93B+/9ZXzPnnPQFw5k0RL5m/sAQ+QFeDfeujkqJ6i6LuSRGKLDHp2iHf2
         duucmiC5Ayy/NC5xZwS5us8LPVA9YkPu/vXosJnXZhzw3xGnTC3cnGCrgikPWDGnf2oO
         LOj4PuObFXkSJ3QXqEoUCEf64qcAqM8Su7BkI8545lFjFYsrHTTtlQx1riR8/TIKuO75
         NzNO69Yf/89mAXr/5cgXYmUiOSEaPW3yoqhPg/Ja9lm7mGKVLHwYfhrr/4OP+D/fKWqa
         O6hLxRMn1EszsZntJEc2raTaVTtYq2gh3LSbjI4YaKobJf4PIQlJ4QZudx2VtxJHh9vv
         NVHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 200si78897wmj.0.2017.09.22.02.48.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 02:48:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,427,1500933600"; 
   d="scan'208";a="292267660"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Sep 2017 11:48:20 +0200
Date: Fri, 22 Sep 2017 11:47:44 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aishwarya Pant <aishpant@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: remove unneeded
 conversions to bool
In-Reply-To: <20170922094052.GA29313@aishwarya>
Message-ID: <alpine.DEB.2.20.1709221147330.3170@hadrien>
References: <20170922094052.GA29313@aishwarya>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 22 Sep 2017, Aishwarya Pant wrote:

> Patch suppresses the following warning issued by coccicheck:
> WARNING: conversion to bool not needed here
>
> Signed-off-by: Aishwarya Pant <aishpant@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> index 52f31c7..2db2ca6 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> @@ -707,7 +707,7 @@ static int issue_probereq_ex(struct adapter *padapter,
>  	unsigned long start = jiffies;
>
>  	do {
> -		ret = issue_probereq(padapter, pssid, da, wait_ms > 0 ? true : false);
> +		ret = issue_probereq(padapter, pssid, da, wait_ms > 0);
>
>  		i++;
>
> @@ -1283,7 +1283,7 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int pow
>  		da = pnetwork->MacAddress;
>
>  	do {
> -		ret = _issue_nulldata(padapter, da, power_mode, wait_ms > 0 ? true : false);
> +		ret = _issue_nulldata(padapter, da, power_mode, wait_ms > 0);
>
>  		i++;
>
> @@ -1410,7 +1410,7 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int
>  		da = pnetwork->MacAddress;
>
>  	do {
> -		ret = _issue_qos_nulldata(padapter, da, tid, wait_ms > 0 ? true : false);
> +		ret = _issue_qos_nulldata(padapter, da, tid, wait_ms > 0);
>
>  		i++;
>
> @@ -1517,7 +1517,7 @@ static int issue_deauth_ex(struct adapter *padapter, u8 *da,
>  	unsigned long start = jiffies;
>
>  	do {
> -		ret = _issue_deauth(padapter, da, reason, wait_ms > 0 ? true : false);
> +		ret = _issue_deauth(padapter, da, reason, wait_ms > 0);
>
>  		i++;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170922094052.GA29313%40aishwarya.
> For more options, visit https://groups.google.com/d/optout.
>

