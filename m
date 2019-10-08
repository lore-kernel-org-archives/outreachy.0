X-GM-THRID: 6745529034450403328
X-Received: by 2002:a50:d5c5:: with SMTP id g5mr1380319edj.57.1570566066343;
        Tue, 08 Oct 2019 13:21:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:a51:: with SMTP id bt17ls28326edb.8.gmail; Tue, 08
 Oct 2019 13:21:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx08cmcW7HNopWmEPyQThKS3uyC9qMHKBePSjQV1PMxrGTGQAoh06y4CdHhaZb4F0H6HyQ5
X-Received: by 2002:a50:fd86:: with SMTP id o6mr35802980edt.139.1570566065319;
        Tue, 08 Oct 2019 13:21:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570566065; cv=none;
        d=google.com; s=arc-20160816;
        b=kgHyuAZ6Bs+gePR6RvuwrXblNvV3GS/aYAr/yblN+dfgNvuG03Awe/dJFhl7xiYI7e
         bBla+kX/iaEC2MeSWfN8d4xWX2dau1dX25o8GeCT0dTr9b0XWjaMZG5tUiBhC8M9KOWq
         In0uCwbbpmLOFjXrKERzjcsTb0y+BUcAnYFPF7U+OvGtEjzfNXTqRGl9c3XH4/jPmGEq
         22hz5MkP2a5hkm13BD+CIzqnP2smmI0p0+ge43A2r6i2UXiwd/ArVJri0DDIyICCPLp+
         VH5jdb/fc+QwVRDi4cqJloSkL9ZjwCkgz1SWMJQt7GUeRDuYJ91HIDVaa3xJJCxxp52g
         XPvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=ru7/WzOSmtPkTOqHgkCE1oaFVUrr5u06vp7G5UeUOVA=;
        b=NmLiP2sA+l1ra06hXTRd6MMQwfNjQtFTLlTiqxgsap2fbhPDsuNqYZy45M6ABHyz31
         jbp3ds4Cy7UjXGFm5SYDEGYWkjHlqO5gfm8ImMQEXRtlCjceF4+Ocp/0NGbuk8nKrDz2
         cHoQUHsDWVXRGlNJqEuvh1ukrE0s7WHp6T+9hDdZpc/Ka4TPMdFK6gzyrLc8f2XpTMDN
         z6e8SIYB837Z3c0pXcsSiW8xT5NLwreNhdLvgwNO13JwhcWbPQ8O2ZyK993TT9vXFYy9
         1EIfLZYnjLEig8v6h5cEiqtT1pX4RMWGs5K7GJgupEDgqhIr0aUTUlO0Fkm4rJxNYRFI
         xw/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q8si8163edn.5.2019.10.08.13.21.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Oct 2019 13:21:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,272,1566856800"; 
   d="scan'208";a="405312703"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Oct 2019 22:21:04 +0200
Date: Tue, 8 Oct 2019 22:21:04 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nachammai Karuppiah <nachukannan@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: core: Remove
 typecast in call to kfree
In-Reply-To: <1570565858-91737-1-git-send-email-nachukannan@gmail.com>
Message-ID: <alpine.DEB.2.21.1910082220430.2704@hadrien>
References: <1570565858-91737-1-git-send-email-nachukannan@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 8 Oct 2019, Nachammai Karuppiah wrote:

> Remove typecast in the call to kfree as it is not needed.
> Issue found using the below coccinelle script with options -I and
> --recursive-includes,
>
> @@
> type t1;
> expression *e;
> @@
>
> -kfree((t1 *)e);
> +kfree(e);
>
> Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/rtl8723bs/core/rtw_ap.c        | 4 ++--
>  drivers/staging/rtl8723bs/core/rtw_cmd.c       | 4 ++--
>  drivers/staging/rtl8723bs/core/rtw_mlme.c      | 8 ++++----
>  drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 4 ++--
>  drivers/staging/rtl8723bs/core/rtw_xmit.c      | 2 +-
>  5 files changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
> index 6d18d23..a1f5016 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_ap.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
> @@ -1453,7 +1453,7 @@ u8 rtw_ap_set_pairwise_key(struct adapter *padapter, struct sta_info *psta)
>
>  	psetstakey_para = rtw_zmalloc(sizeof(struct set_stakey_parm));
>  	if (psetstakey_para == NULL) {
> -		kfree((u8 *)ph2c);
> +		kfree(ph2c);
>  		res = _FAIL;
>  		goto exit;
>  	}
> @@ -1496,7 +1496,7 @@ static int rtw_ap_set_key(
>  	}
>  	psetkeyparm = rtw_zmalloc(sizeof(struct setkey_parm));
>  	if (psetkeyparm == NULL) {
> -		kfree((unsigned char *)pcmd);
> +		kfree(pcmd);
>  		res = _FAIL;
>  		goto exit;
>  	}
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index 8d93c2f..e6fea96 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -372,13 +372,13 @@ void rtw_free_cmd_obj(struct cmd_obj *pcmd)
>  	if ((pcmd->cmdcode != _JoinBss_CMD_) &&
>  	    (pcmd->cmdcode != _CreateBss_CMD_)) {
>  		/* free parmbuf in cmd_obj */
> -		kfree((unsigned char *)pcmd->parmbuf);
> +		kfree(pcmd->parmbuf);
>  	}
>
>  	if (pcmd->rsp != NULL) {
>  		if (pcmd->rspsz != 0) {
>  			/* free rsp in cmd_obj */
> -			kfree((unsigned char *)pcmd->rsp);
> +			kfree(pcmd->rsp);
>  		}
>  	}
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> index 4000125..e548414 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
> @@ -2209,7 +2209,7 @@ sint rtw_set_auth(struct adapter *adapter, struct security_priv *psecuritypriv)
>
>  	psetauthparm = rtw_zmalloc(sizeof(struct setauth_parm));
>  	if (psetauthparm == NULL) {
> -		kfree((unsigned char *)pcmd);
> +		kfree(pcmd);
>  		res = _FAIL;
>  		goto exit;
>  	}
> @@ -2286,7 +2286,7 @@ sint rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, s
>  	default:
>  		RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("\n rtw_set_key:psecuritypriv->dot11PrivacyAlgrthm = %x (must be 1 or 2 or 4 or 5)\n", psecuritypriv->dot11PrivacyAlgrthm));
>  		res = _FAIL;
> -		kfree((unsigned char *)psetkeyparm);
> +		kfree(psetkeyparm);
>  		goto exit;
>  	}
>
> @@ -2294,7 +2294,7 @@ sint rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, s
>  	if (enqueue) {
>  		pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
>  		if (pcmd == NULL) {
> -			kfree((unsigned char *)psetkeyparm);
> +			kfree(psetkeyparm);
>  			res = _FAIL;  /* try again */
>  			goto exit;
>  		}
> @@ -2310,7 +2310,7 @@ sint rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, s
>  		res = rtw_enqueue_cmd(pcmdpriv, pcmd);
>  	} else {
>  		setkey_hdl(adapter, (u8 *)psetkeyparm);
> -		kfree((u8 *) psetkeyparm);
> +		kfree(psetkeyparm);
>  	}
>  exit:
>  	return res;
> diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
> index 3933e863..9590e6f 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
> @@ -1466,11 +1466,11 @@ int rtw_check_bcn_info(struct adapter *Adapter, u8 *pframe, u32 packet_len)
>  		}
>  	}
>
> -	kfree((u8 *)bssid);
> +	kfree(bssid);
>  	return _SUCCESS;
>
>  _mismatch:
> -	kfree((u8 *)bssid);
> +	kfree(bssid);
>
>  	if (pmlmepriv->NumOfBcnInfoChkFail == 0)
>  		pmlmepriv->timeBcnInfoChkStart = jiffies;
> diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> index b5dcb78..4326847 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
> @@ -2212,7 +2212,7 @@ void rtw_free_hwxmits(struct adapter *padapter)
>
>  	hwxmits = pxmitpriv->hwxmits;
>  	if (hwxmits)
> -		kfree((u8 *)hwxmits);
> +		kfree(hwxmits);
>  }
>
>  void rtw_init_hwxmits(struct hw_xmit *phwxmit, sint entry)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1570565858-91737-1-git-send-email-nachukannan%40gmail.com.
>

