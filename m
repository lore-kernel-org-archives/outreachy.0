X-GM-THRID: 6666504737930608640
X-Received: by 2002:a5d:5111:: with SMTP id s17mr1287152wrt.13.1552167456408;
        Sat, 09 Mar 2019 13:37:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:b755:: with SMTP id h82ls358152wmf.9.canary-gmail; Sat,
 09 Mar 2019 13:37:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqwhuhFZrL4GTaZHw9YXXIZit8FcoSLI3859e4U6zD5NO6sU5do/5K823ocRYYp6Q7/NGL62
X-Received: by 2002:a1c:200e:: with SMTP id g14mr1891783wmg.13.1552167455657;
        Sat, 09 Mar 2019 13:37:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552167455; cv=none;
        d=google.com; s=arc-20160816;
        b=YcFLMvTR++kfz+wL8Eqv57oAYUuMr7XsUcZetJIVkcKBM87hznkQixyvwrTT/KZpbJ
         7qZTwu+cis9R6f8sxOLs1uQPP5ZssUWB3JWhvwsAF3JeiJ8TFbFhra9b7o5LAbRupu2Z
         HwDRCg3QhPzxBGqxlB7ft38Shb4AgzcT2WzPHCltJ8U4xgjQxotIU2nzPMr6i6pq3vau
         NCk3mVdoI4otaJY8TWSlrEaJMrjg+KtsMeu14Mqp1oE+ItgZnfMtg0+wVcZCqrCvn7Ck
         QSpZQfoh/CFmLDpGF5YU2vnRC9GEBa2DZfCTA/h1NhllLbR7vaB4LkRF/Zlju72WQKkh
         AiWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=XYtR1q83iePBdNzb0ee40VjmVGPcTrz75WXTcu26REg=;
        b=k89P/IlPVULREkVherg+hDBTqcuUJUnW+0PyHtcv/gTW4AkBpxuqZcsMjT0VEbLato
         Fr2IChlrKHp1gVmkqbTTl5Rp3+mVRlUaS2MSXo/6U5w2T3gAlYVfZKchNy0YKBMGjhgl
         uuVHYvnaL+Vomy7Q2E31TiFOrkPJ15CAdJzymJVIe2mmR16/F5h2DiFhT2MmuO0ZzA0R
         uf8ALwRrnO+bveIQUU2UUEEdWzle54/XH4mEj6etPcBj4Wptaog9FmXEKuSd6OQTthBY
         er3Ufp049J3DSXsxpBjRGV8l9O2S4Sy+Kkv1mB1SqNa7AG7rYkmbEHABHqn2jTxGnJ31
         vF3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o184si449070wma.0.2019.03.09.13.37.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 13:37:35 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,461,1544482800"; 
   d="scan'208";a="298672759"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2019 22:37:35 +0100
Date: Sat, 9 Mar 2019 22:37:34 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: rtl8712: line over 80
 characters.
In-Reply-To: <20190309212302.GA22031@bhagyashri-Lenovo-G570>
Message-ID: <alpine.DEB.2.21.1903092236270.13389@hadrien>
References: <20190309212302.GA22031@bhagyashri-Lenovo-G570>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 10 Mar 2019, Bhagyashri Dighole wrote:

> Fix coding style issues, which solves checkpatch.pl warning:
> "WARNING: line over 80 characters".
>
> Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
> ---
>  drivers/staging/rtl8712/hal_init.c     | 3 ++-
>  drivers/staging/rtl8712/ieee80211.c    | 3 ++-
>  drivers/staging/rtl8712/ieee80211.h    | 3 ++-
>  drivers/staging/rtl8712/rtl871x_xmit.c | 8 ++++----
>  4 files changed, 10 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
> index 4c6519c..401f0e4 100644
> --- a/drivers/staging/rtl8712/hal_init.c
> +++ b/drivers/staging/rtl8712/hal_init.c
> @@ -100,7 +100,8 @@ static void fill_fwpriv(struct _adapter *padapter, struct fw_priv *pfwpriv)
>  		pfwpriv->rf_config = RTL8712_RFC_1T2R;
>  	}
>  	pfwpriv->mp_mode = (pregpriv->mp_mode == 1) ? 1 : 0;
> -	pfwpriv->vcs_type = pregpriv->vrtl_carrier_sense; /* 0:off 1:on 2:auto */
> +	/* 0:off 1:on 2:auto */
> +	pfwpriv->vcs_type = pregpriv->vrtl_carrier_sense;
>  	pfwpriv->vcs_mode = pregpriv->vcs_type; /* 1:RTS/CTS 2:CTS to self */
>  	/* default enable turbo_mode */
>  	pfwpriv->turbo_mode = ((pregpriv->wifi_test == 1) ? 0 : 1);
> diff --git a/drivers/staging/rtl8712/ieee80211.c b/drivers/staging/rtl8712/ieee80211.c
> index 2eae11d..4cca739 100644
> --- a/drivers/staging/rtl8712/ieee80211.c
> +++ b/drivers/staging/rtl8712/ieee80211.c
> @@ -238,7 +238,8 @@ unsigned char *r8712_get_wpa_ie(unsigned char *pie, uint *wpa_ie_len, int limit)
>  	return NULL;
>  }
>
> -unsigned char *r8712_get_wpa2_ie(unsigned char *pie, uint *rsn_ie_len, int limit)
> +unsigned char *r8712_get_wpa2_ie(unsigned char *pie, uint *rsn_ie_len,
> +				 int limit)
>  {
>  	return r8712_get_ie(pie, _WPA2_IE_ID_, rsn_ie_len, limit);
>  }
> diff --git a/drivers/staging/rtl8712/ieee80211.h b/drivers/staging/rtl8712/ieee80211.h
> index 1470771d..8098f69 100644
> --- a/drivers/staging/rtl8712/ieee80211.h
> +++ b/drivers/staging/rtl8712/ieee80211.h
> @@ -728,7 +728,8 @@ struct registry_priv;
>
>  u8 *r8712_set_ie(u8 *pbuf, sint index, uint len, u8 *source, uint *frlen);
>  u8 *r8712_get_ie(u8 *pbuf, sint index, uint *len, sint limit);
> -unsigned char *r8712_get_wpa_ie(unsigned char *pie, uint *rsn_ie_len, int limit);
> +unsigned char *r8712_get_wpa_ie(unsigned char *pie, uint *rsn_ie_len,
> +				int limit);
>  unsigned char *r8712_get_wpa2_ie(unsigned char *pie, uint *rsn_ie_len,
>  				 int limit);
>  int r8712_parse_wpa_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher,
> diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
> index 94c2a48..4060c55 100644
> --- a/drivers/staging/rtl8712/rtl871x_xmit.c
> +++ b/drivers/staging/rtl8712/rtl871x_xmit.c
> @@ -75,8 +75,8 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
>  	 * and initialize free_xmit_frame below.
>  	 * Please also apply  free_txobj to link_up all the xmit_frames...
>  	 */
> -	pxmitpriv->pallocated_frame_buf = kmalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4,
> -						  GFP_ATOMIC);
> +	pxmitpriv->pallocated_frame_buf = kmalloc(NR_XMITFRAME * sizeof(struct xmit_frame) +
> +						  4, GFP_ATOMIC);

Don't break up an expression like this,  It looks like 4 is a separate
argument.

Try putting the kmalloc on the next line.

julia


>  	if (!pxmitpriv->pallocated_frame_buf) {
>  		pxmitpriv->pxmit_frame_buf = NULL;
>  		return _FAIL;
> @@ -114,8 +114,8 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
>  	/*init xmit_buf*/
>  	_init_queue(&pxmitpriv->free_xmitbuf_queue);
>  	_init_queue(&pxmitpriv->pending_xmitbuf_queue);
> -	pxmitpriv->pallocated_xmitbuf = kmalloc(NR_XMITBUFF * sizeof(struct xmit_buf) + 4,
> -						GFP_ATOMIC);
> +	pxmitpriv->pallocated_xmitbuf = kmalloc(NR_XMITBUFF * sizeof(struct xmit_buf) +
> +						4, GFP_ATOMIC);
>  	if (!pxmitpriv->pallocated_xmitbuf) {
>  		kfree(pxmitpriv->pallocated_frame_buf);
>  		pxmitpriv->pallocated_frame_buf = NULL;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190309212302.GA22031%40bhagyashri-Lenovo-G570.
> For more options, visit https://groups.google.com/d/optout.
>

