X-GM-THRID: 6674450234072891392
X-Received: by 2002:a2e:9659:: with SMTP id z25mr935952ljh.9.1554023052408;
        Sun, 31 Mar 2019 02:04:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b04e:: with SMTP id d14ls782112ljl.7.gmail; Sun, 31 Mar
 2019 02:04:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzxbZbD3VkDWnxR/iCjod7PUihwZ0xmAMD6mdfewOnrd8EO9VjQIR0YpHtxJq88zx0wTVBL
X-Received: by 2002:a2e:975a:: with SMTP id f26mr839920ljj.5.1554023051648;
        Sun, 31 Mar 2019 02:04:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554023051; cv=none;
        d=google.com; s=arc-20160816;
        b=B/yKWDB2cjqWUOlsvlz5chtay9rrDjEcmQ2PFg7TUungDdnb2rQOzqqU7pS3MYQ+q6
         sycm6dUloSdjWaXW4pK/waH4zk4sbGvZe9faIm1cJetOwg8Iffqem+6GUaBa1OUqNm2j
         WA1fp8uySoJPv9/PSLbNELvoYldkcWV0F6anM3zRQNF8Uio/k29tdyai6S9teuKLoXK6
         qXJ8xvdWkRlluOVOeUJcz0X7yMGJi+xYGjSNNgs2Pe0OLwpnfSU4viLvxUIg5vOMMOEQ
         FfSp06tlZonekC4Ko8uQ/uoxKrVx4+NvzTANK0wU0EAkyCANwwqSfLFgxDYRetoro8Gk
         X1YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=XPn24Ar12KdkLc5TwA+TmNsBFXHn+Lq+wB+pUUdsmq0=;
        b=RchhW+FynrI8c3cOj5YX54DWm3RvwZSwyCZqR6YWHRiYOvKiqpksdGOLQEfwaqPFG2
         S58cQBVdmi9nmLZaKmuS/FhWnIiQ6o9vlE4wO81zf4v04Q+4C63k8Qo25uQnOJtBUyYX
         e3d4aNx8XwhFiZ5/oJbgMqrjn9jT+Qm/oqAodHqutPdi7voSOhTcxY0SPcPJkhd4Agn7
         htYgwWAC/27ixEJ1fENdGYOTNIL6/kg3KuyYj/qfiFC3vtYatIDkr3MAmjJBVRVthzY8
         DTwW5tg+y+F5BK+KLvKeBhQ9EAq0CnA/oluBaqnID2rlVtkSDbo1un1T2XVV4swg2f9F
         s41w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o16si395799lji.0.2019.03.31.02.04.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 02:04:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,292,1549926000"; 
   d="scan'208";a="376507932"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Mar 2019 11:04:10 +0200
Date: Sun, 31 Mar 2019 11:04:10 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 6/9] staging: rtl8723bs: os_dep:
 ioctl_linux.c: Avoid CamelCase "intReturn"
In-Reply-To: <97ba5a38e386011ce2c46eb9668d44ef257da020.1554016131.git.payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903311103540.2578@hadrien>
References: <cover.1554016131.git.payal.s.kshirsagar.98@gmail.com> <97ba5a38e386011ce2c46eb9668d44ef257da020.1554016131.git.payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 31 Mar 2019, Payal Kshirsagar wrote:

> Change variable name "intReturn" to "ret" to avoid camelcase style
> issue.

This is hungarian notation too.  Using ret was a good idea.

julia

>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> index 99e02c4..98a91ce 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> @@ -944,7 +944,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
>  {
>  	struct adapter *padapter = (struct adapter *)rtw_netdev_priv(dev);
>  	u8 j, bl_inserted = false;
> -	int intReturn = false;
> +	int ret = false;
>  	struct security_priv *psecuritypriv = &padapter->securitypriv;
>  	struct iw_pmksa *pPMK = (struct iw_pmksa *)extra;
>  	u8 strZeroMacAddress[ETH_ALEN] = { 0x00 };
> @@ -961,9 +961,9 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
>  	if (pPMK->cmd == IW_PMKSA_ADD) {
>  		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_ADD!\n");
>  		if (!memcmp(strIssueBssid, strZeroMacAddress, ETH_ALEN))
> -			return intReturn;
> +			return ret;
>  		else
> -			intReturn = true;
> +			ret = true;
>
>  		bl_inserted = false;
>
> @@ -993,7 +993,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
>  		}
>  	} else if (pPMK->cmd == IW_PMKSA_REMOVE) {
>  		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_REMOVE!\n");
> -		intReturn = true;
> +		ret = true;
>  		for (j = 0 ; j<NUM_PMKID_CACHE; j++) {
>  			if (!memcmp(psecuritypriv->PMKIDList[j].Bssid, strIssueBssid, ETH_ALEN)) {
>  				/*  BSSID is matched, the same AP => Remove this PMKID information and reset it. */
> @@ -1006,9 +1006,9 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
>  		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_FLUSH!\n");
>  		memset(&psecuritypriv->PMKIDList[0], 0x00, sizeof(RT_PMKID_LIST) * NUM_PMKID_CACHE);
>  		psecuritypriv->PMKIDIndex = 0;
> -		intReturn = true;
> +		ret = true;
>  	}
> -	return intReturn;
> +	return ret;
>  }
>
>  static int rtw_wx_get_sens(struct net_device *dev,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/97ba5a38e386011ce2c46eb9668d44ef257da020.1554016131.git.payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

