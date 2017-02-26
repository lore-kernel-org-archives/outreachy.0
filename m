X-GM-THRID: 6388887439725821952
X-Received: by 10.28.184.21 with SMTP id i21mr309597wmf.21.1488130426172;
        Sun, 26 Feb 2017 09:33:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.87.14 with SMTP id l14ls253597ljb.38.gmail; Sun, 26 Feb
 2017 09:33:44 -0800 (PST)
X-Received: by 10.25.167.5 with SMTP id q5mr1348917lfe.18.1488130424568;
        Sun, 26 Feb 2017 09:33:44 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h198si533040wmg.1.2017.02.26.09.33.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 09:33:44 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,209,1484002800"; 
   d="scan'208";a="214768082"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Feb 2017 18:33:43 +0100
Date: Sun, 26 Feb 2017 18:33:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4 1/2] staging: ks7010: Unnecessary
 parentheses are removed.
In-Reply-To: <20170226172741.GA20524@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1702261831470.2056@hadrien>
References: <20170226172741.GA20524@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sun, 26 Feb 2017, Arushi Singhal wrote:

> Unnecessary parentheses are removed as reported by checkpatch.pl
> to make coder nicer and to improve readability.
> Also coding style is improved.For example:-
> It's often nicer to read if &(foo[0]) is converted to foo like:
>      memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
>      memcpy(ap->bssid, ap_info->bssid, ETH_ALEN);

Something is wrong in this patch.  It looks like it is introducing the
code that you wanted to remove.

In the commit message, there should be a space after the period.  It is
not clear what "For example:-" means.  If it is part of the same sentence
as the next line, then tIts in the next line should not be capitalized.

Did Greg not accept the previous version of this patch?

julia


>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
> Changes in v4:
>   - Commit message made more accurate and as per the changes.
>
>  drivers/staging/ks7010/ks_hostif.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> index b643a37fb943..1fbd495e5e63 100644
> --- a/drivers/staging/ks7010/ks_hostif.c
> +++ b/drivers/staging/ks7010/ks_hostif.c
> @@ -113,7 +113,7 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
>  	int rc = 0;
>
>  	DPRINTK(3, "\n");
> -	ap = &priv->current_ap;
> +	ap = &(priv->current_ap);
>
>  	if ((priv->connect_status & CONNECT_STATUS_MASK) == DISCONNECT_STATUS) {
>  		memset(ap, 0, sizeof(struct local_ap_t));
> @@ -121,19 +121,19 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
>  	}
>
>  	/* bssid */
> -	memcpy(ap->bssid, ap_info->bssid, ETH_ALEN);
> +	memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
>  	/* essid */
> -	memcpy(ap->ssid.body, priv->reg.ssid.body,
> +	memcpy(&(ap->ssid.body[0]), &(priv->reg.ssid.body[0]),
>  	       priv->reg.ssid.size);
>  	ap->ssid.size = priv->reg.ssid.size;
>  	/* rate_set */
> -	memcpy(ap->rate_set.body, ap_info->rate_set.body,
> +	memcpy(&(ap->rate_set.body[0]), &(ap_info->rate_set.body[0]),
>  	       ap_info->rate_set.size);
>  	ap->rate_set.size = ap_info->rate_set.size;
>  	if (ap_info->ext_rate_set.size) {
>  		/* rate_set */
> -		memcpy(&ap->rate_set.body[ap->rate_set.size],
> -		       ap_info->ext_rate_set.body,
> +		memcpy(&(ap->rate_set.body[ap->rate_set.size]),
> +		       &(ap_info->ext_rate_set.body[0]),
>  		       ap_info->ext_rate_set.size);
>  		ap->rate_set.size += ap_info->ext_rate_set.size;
>  	}
> @@ -153,11 +153,11 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
>  		ap->rsn_ie.id = 0x30;
>  		if (ap_info->rsn.size <= RSN_IE_BODY_MAX) {
>  			ap->rsn_ie.size = ap_info->rsn.size;
> -			memcpy(ap->rsn_ie.body, ap_info->rsn.body,
> +			memcpy(&(ap->rsn_ie.body[0]), &(ap_info->rsn.body[0]),
>  			       ap_info->rsn.size);
>  		} else {
>  			ap->rsn_ie.size = RSN_IE_BODY_MAX;
> -			memcpy(ap->rsn_ie.body, ap_info->rsn.body,
> +			memcpy(&(ap->rsn_ie.body[0]), &(ap_info->rsn.body[0]),
>  			       RSN_IE_BODY_MAX);
>  		}
>  	} else if ((ap_info->rsn_mode & RSN_MODE_WPA)
> @@ -165,11 +165,11 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
>  		ap->wpa_ie.id = 0xdd;
>  		if (ap_info->rsn.size <= RSN_IE_BODY_MAX) {
>  			ap->wpa_ie.size = ap_info->rsn.size;
> -			memcpy(ap->wpa_ie.body, ap_info->rsn.body,
> +			memcpy(&(ap->wpa_ie.body[0]), &(ap_info->rsn.body[0]),
>  			       ap_info->rsn.size);
>  		} else {
>  			ap->wpa_ie.size = RSN_IE_BODY_MAX;
> -			memcpy(ap->wpa_ie.body, ap_info->rsn.body,
> +			memcpy(&(ap->wpa_ie.body[0]), &(ap_info->rsn.body[0]),
>  			       RSN_IE_BODY_MAX);
>  		}
>  	} else {
> @@ -212,7 +212,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
>  	memset(ap, 0, sizeof(struct local_ap_t));
>
>  	/* bssid */
> -	memcpy(ap->bssid, ap_info->bssid, ETH_ALEN);
> +	memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
>  	/* rssi */
>  	ap->rssi = ap_info->rssi;
>  	/* sq */
> @@ -224,7 +224,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
>  	/* channel */
>  	ap->channel = ap_info->ch_info;
>
> -	bp = ap_info->body;
> +	bp = &(ap_info->body[0]);
>  	bsize = ap_info->body_size;
>  	offset = 0;
>
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170226172741.GA20524%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

