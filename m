X-GM-THRID: 6557663232000
X-Received: by 10.112.131.7 with SMTP id oi7mr632486lbb.9.1425470858979;
        Wed, 04 Mar 2015 04:07:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.231.38 with SMTP id td6ls98422wic.24.gmail; Wed, 04 Mar
 2015 04:07:38 -0800 (PST)
X-Received: by 10.194.53.225 with SMTP id e1mr620374wjp.4.1425470858677;
        Wed, 04 Mar 2015 04:07:38 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r6si312061wix.0.2015.03.04.04.07.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 04 Mar 2015 04:07:38 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,687,1418079600"; 
   d="scan'208";a="124338343"
Received: from unknown (HELO hadrien.local) ([207.96.227.9])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Mar 2015 13:07:37 +0100
Date: Wed, 4 Mar 2015 07:07:36 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Somya Anand <somyaanand214@gmail.com>
cc: julia.lawall@lip6.fr, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 5/6] Staging: rtl8188eu: Remove redundant local
 variable
In-Reply-To: <1425469442-32412-6-git-send-email-somyaanand214@gmail.com>
Message-ID: <alpine.DEB.2.10.1503040706130.3976@hadrien>
References: <1425469442-32412-1-git-send-email-somyaanand214@gmail.com> <1425469442-32412-6-git-send-email-somyaanand214@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

This patch and 6/6 have as afar as I can see the same subject line.  Every
patch must have a different subject line.  One solution could be to merge
two patches on the same driver.  Another could be to find another way to
refer to the code.  You may use git log --oneline {path} to find what
others have done.

julia

On Wed, 4 Mar 2015, Somya Anand wrote:

> This patch removes a redundant variable "val" and adds
> inline return statements. It also adds a default case
> to the switch statement which returns 0 to keep the logic
> intact.
>
> This issue is identified by the following coccinelle script.
> @@
> expression ret;
> identifier f;
> @@
>
> -ret =
> +return
>      f(...);
> -return ret;
>
> Signed-off-by: Somya Anand <somyaanand214@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 41 +++++++++-----------------
>  1 file changed, 14 insertions(+), 27 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
> index d5ebd52..9939448 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
> @@ -136,47 +136,34 @@ u8 judge_network_type(struct adapter *padapter, unsigned char *rate, int ratelen
>
>  static unsigned char ratetbl_val_2wifirate(unsigned char rate)
>  {
> -	unsigned char val = 0;
> -
>  	switch (rate & 0x7f) {
>  	case 0:
> -		val = IEEE80211_CCK_RATE_1MB;
> -		break;
> +		return IEEE80211_CCK_RATE_1MB;
>  	case 1:
> -		val = IEEE80211_CCK_RATE_2MB;
> -		break;
> +		return IEEE80211_CCK_RATE_2MB;
>  	case 2:
> -		val = IEEE80211_CCK_RATE_5MB;
> -		break;
> +		return IEEE80211_CCK_RATE_5MB;
>  	case 3:
> -		val = IEEE80211_CCK_RATE_11MB;
> -		break;
> +		return IEEE80211_CCK_RATE_11MB;
>  	case 4:
> -		val = IEEE80211_OFDM_RATE_6MB;
> -		break;
> +		return IEEE80211_OFDM_RATE_6MB;
>  	case 5:
> -		val = IEEE80211_OFDM_RATE_9MB;
> -		break;
> +		return IEEE80211_OFDM_RATE_9MB;
>  	case 6:
> -		val = IEEE80211_OFDM_RATE_12MB;
> -		break;
> +		return IEEE80211_OFDM_RATE_12MB;
>  	case 7:
> -		val = IEEE80211_OFDM_RATE_18MB;
> -		break;
> +		return IEEE80211_OFDM_RATE_18MB;
>  	case 8:
> -		val = IEEE80211_OFDM_RATE_24MB;
> -		break;
> +		return IEEE80211_OFDM_RATE_24MB;
>  	case 9:
> -		val = IEEE80211_OFDM_RATE_36MB;
> -		break;
> +		return IEEE80211_OFDM_RATE_36MB;
>  	case 10:
> -		val = IEEE80211_OFDM_RATE_48MB;
> -		break;
> +		return IEEE80211_OFDM_RATE_48MB;
>  	case 11:
> -		val = IEEE80211_OFDM_RATE_54MB;
> -		break;
> +		return IEEE80211_OFDM_RATE_54MB;
> +	default:
> +		return 0;
>  	}
> -	return val;
>  }
>
>  static int is_basicrate(struct adapter *padapter, unsigned char rate)
> --
> 1.9.1
>
>

