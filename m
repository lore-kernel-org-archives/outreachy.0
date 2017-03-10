X-GM-THRID: 6395900241087823872
X-Received: by 10.46.33.163 with SMTP id h35mr3714598lji.17.1489170093480;
        Fri, 10 Mar 2017 10:21:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.18 with SMTP id 18ls1100304ljj.4.gmail; Fri, 10 Mar 2017
 10:21:33 -0800 (PST)
X-Received: by 10.46.7.10 with SMTP id 10mr3421312ljh.1.1489170093059;
        Fri, 10 Mar 2017 10:21:33 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t131si18760wmf.1.2017.03.10.10.21.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 10:21:33 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,142,1486422000"; 
   d="scan'208";a="264079458"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2017 19:21:32 +0100
Date: Fri, 10 Mar 2017 19:21:19 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: rtl8712: Refactor
 conditionals in wpa_set_encryption
In-Reply-To: <9f0c0614b6cc60771b82e96cd3973b4eca2c0acb.1489161001.git.narcisaanamaria12@gmail.com>
Message-ID: <alpine.DEB.2.20.1703101920470.3356@hadrien>
References: <cover.1489161001.git.narcisaanamaria12@gmail.com> <9f0c0614b6cc60771b82e96cd3973b4eca2c0acb.1489161001.git.narcisaanamaria12@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 10 Mar 2017, Narcisa Ana Maria Vasile wrote:

> Reduce the indentation level in wpa_set_encryption.
> This was done using the following Cocinelle script:
>
> @disable neg_if@
> expression e,E;
> statement S;
> @@
>
> *if (e)
> S
> else { return -E; }
>
> @disable neg_if@
> expression e,E;
> statement S;
> identifier l;
> @@
>
> *if (e)
> S
> else { rc = -E; goto l; }
>
> Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 42 +++++++++++++--------------
>  1 file changed, 20 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> index 0322795..aff3628 100644
> --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> @@ -378,14 +378,14 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
>  	if (param_len != (u32)((u8 *) param->u.crypt.key - (u8 *)param) +
>  			 param->u.crypt.key_len)
>  		return -EINVAL;
> -	if (is_broadcast_ether_addr(param->sta_addr)) {
> -		if (param->u.crypt.idx >= WEP_KEYS) {
> -			/* for large key indices, set the default (0) */
> -			param->u.crypt.idx = 0;
> -		}
> -	} else {
> +	if (!is_broadcast_ether_addr(param->sta_addr))
>  		return -EINVAL;
> +
> +	if (param->u.crypt.idx >= WEP_KEYS) {
> +		/* for large key indices, set the default (0) */
> +		param->u.crypt.idx = 0;
>  	}
> +
>  	if (strcmp(param->u.crypt.alg, "WEP") == 0) {
>  		netdev_info(dev, "r8712u: %s: crypt.alg = WEP\n", __func__);
>  		padapter->securitypriv.ndisencryptstatus =
> @@ -396,24 +396,22 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
>  		wep_key_len = param->u.crypt.key_len;
>  		if (wep_key_idx >= WEP_KEYS)
>  			wep_key_idx = 0;
> -		if (wep_key_len > 0) {
> -			wep_key_len = wep_key_len <= 5 ? 5 : 13;
> -			pwep = kzalloc(sizeof(*pwep), GFP_ATOMIC);
> -			if (!pwep)
> -				return -ENOMEM;
> -			pwep->KeyLength = wep_key_len;
> -			pwep->Length = wep_key_len +
> -				 FIELD_OFFSET(struct NDIS_802_11_WEP,
> -				 KeyMaterial);
> -			if (wep_key_len == 13) {
> -				padapter->securitypriv.PrivacyAlgrthm =
> -					 _WEP104_;
> -				padapter->securitypriv.XGrpPrivacy =
> -					 _WEP104_;
> -			}
> -		} else {
> +		if (wep_key_len <= 0)
>  			return -EINVAL;
> +
> +		wep_key_len = wep_key_len <= 5 ? 5 : 13;
> +		pwep = kzalloc(sizeof(*pwep), GFP_ATOMIC);
> +		if (!pwep)
> +			return -ENOMEM;
> +		pwep->KeyLength = wep_key_len;
> +		pwep->Length = wep_key_len +
> +			 FIELD_OFFSET(struct NDIS_802_11_WEP,
> +			 KeyMaterial);

The layout can be improved here.  At least KeyMaterial can move up one
line.

julia

> +		if (wep_key_len == 13) {
> +			padapter->securitypriv.PrivacyAlgrthm = _WEP104_;
> +			padapter->securitypriv.XGrpPrivacy = _WEP104_;
>  		}
> +
>  		pwep->KeyIndex = wep_key_idx;
>  		pwep->KeyIndex |= 0x80000000;
>  		memcpy(pwep->KeyMaterial, param->u.crypt.key, pwep->KeyLength);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/9f0c0614b6cc60771b82e96cd3973b4eca2c0acb.1489161001.git.narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

