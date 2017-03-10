X-GM-THRID: 6395900241087823872
X-Received: by 10.25.193.213 with SMTP id r204mr3017672lff.24.1489169769707;
        Fri, 10 Mar 2017 10:16:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.6 with SMTP id s6ls403000ljd.43.gmail; Fri, 10 Mar 2017
 10:16:09 -0800 (PST)
X-Received: by 10.46.20.16 with SMTP id u16mr2619419ljd.23.1489169769216;
        Fri, 10 Mar 2017 10:16:09 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n128si11442wmf.2.2017.03.10.10.16.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 10:16:09 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,141,1486422000"; 
   d="scan'208";a="216339883"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2017 19:16:08 +0100
Date: Fri, 10 Mar 2017 19:15:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/4] staging: rtl8712: Refactor
 conditionals in r8711_wx_get_rate
In-Reply-To: <97c61822ad55d9e65bc292b6082d2247d9174916.1489161001.git.narcisaanamaria12@gmail.com>
Message-ID: <alpine.DEB.2.20.1703101911020.3356@hadrien>
References: <cover.1489161001.git.narcisaanamaria12@gmail.com> <97c61822ad55d9e65bc292b6082d2247d9174916.1489161001.git.narcisaanamaria12@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 10 Mar 2017, Narcisa Ana Maria Vasile wrote:

> Reduce indentation level in r8711_wx_get_rate.

The description does not seem very specific.  And the function name is not
really necessary - one can see that directly from the patch.

It could be better to say something like: Invert if test to be able to
clear out the error handling code immediately, and then continue with the
rest of the function without excessive indentation.

Perhaps not ideal, but it could give someone a better idea of what to look
for when looking at the patch.

These patches have the disadvantage that they seem to change a lot of
lines of code, even though it is just an indentation issue.  So it is not
so easy to see what is going on.

> This was done using the following Coccinelle script:
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
>  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 72 +++++++++++++--------------
>  1 file changed, 36 insertions(+), 36 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> index add46ff..7ba8cf6 100644
> --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> @@ -1409,44 +1409,44 @@ static int r8711_wx_get_rate(struct net_device *dev,
>  	u16 mcs_rate = 0;
>
>  	i = 0;
> -	if (check_fwstate(pmlmepriv, _FW_LINKED | WIFI_ADHOC_MASTER_STATE)) {
> -		p = r8712_get_ie(&pcur_bss->IEs[12],
> -				 _HT_CAPABILITY_IE_, &ht_ielen,
> -		    pcur_bss->IELength - 12);
> -		if (p && ht_ielen > 0) {
> -			ht_cap = true;
> -			pht_capie = (struct ieee80211_ht_cap *)(p + 2);
> -			memcpy(&mcs_rate, pht_capie->supp_mcs_set, 2);
> -			bw_40MHz = (le16_to_cpu(pht_capie->cap_info) &
> -				    IEEE80211_HT_CAP_SUP_WIDTH) ? 1 : 0;
> -			short_GI = (le16_to_cpu(pht_capie->cap_info) &
> -				    (IEEE80211_HT_CAP_SGI_20 |
> -				    IEEE80211_HT_CAP_SGI_40)) ? 1 : 0;
> -		}
> -		while ((pcur_bss->rates[i] != 0) &&
> -			(pcur_bss->rates[i] != 0xFF)) {
> -			rate = pcur_bss->rates[i] & 0x7F;
> -			if (rate > max_rate)
> -				max_rate = rate;
> -			wrqu->bitrate.fixed = 0;	/* no auto select */
> -			wrqu->bitrate.value = rate * 500000;
> -			i++;
> -		}
> -		if (ht_cap) {
> -			if (mcs_rate & 0x8000 /* MCS15 */
> -				&&
> -				rf_type == RTL8712_RF_2T2R)
> -				max_rate = (bw_40MHz) ? ((short_GI) ? 300 :
> -					    270) : ((short_GI) ? 144 : 130);
> -			else /* default MCS7 */
> -				max_rate = (bw_40MHz) ? ((short_GI) ? 150 :
> -					    135) : ((short_GI) ? 72 : 65);
> -			max_rate *= 2; /* Mbps/2 */
> -		}
> -		wrqu->bitrate.value = max_rate * 500000;
> -	} else {
> +	if (!check_fwstate(pmlmepriv, _FW_LINKED | WIFI_ADHOC_MASTER_STATE))
>  		return -ENOLINK;
> +
> +	p = r8712_get_ie(&pcur_bss->IEs[12],
> +			 _HT_CAPABILITY_IE_, &ht_ielen,
> +	    pcur_bss->IELength - 12);

This call could be laid out better.  Try to put as much on one line as
possible without going over 80 characters.


> +	if (p && ht_ielen > 0) {
> +		ht_cap = true;
> +		pht_capie = (struct ieee80211_ht_cap *)(p + 2);
> +		memcpy(&mcs_rate, pht_capie->supp_mcs_set, 2);
> +		bw_40MHz = (le16_to_cpu(pht_capie->cap_info) &
> +			    IEEE80211_HT_CAP_SUP_WIDTH) ? 1 : 0;
> +		short_GI = (le16_to_cpu(pht_capie->cap_info) &
> +			    (IEEE80211_HT_CAP_SGI_20 |
> +			    IEEE80211_HT_CAP_SGI_40)) ? 1 : 0;
>  	}
> +	while ((pcur_bss->rates[i] != 0) &&
> +		(pcur_bss->rates[i] != 0xFF)) {
> +		rate = pcur_bss->rates[i] & 0x7F;
> +		if (rate > max_rate)
> +			max_rate = rate;
> +		wrqu->bitrate.fixed = 0;	/* no auto select */
> +		wrqu->bitrate.value = rate * 500000;
> +		i++;
> +	}
> +	if (ht_cap) {
> +		if (mcs_rate & 0x8000 /* MCS15 */
> +			&&
> +			rf_type == RTL8712_RF_2T2R)
> +			max_rate = (bw_40MHz) ? ((short_GI) ? 300 :
> +				    270) : ((short_GI) ? 144 : 130);
> +		else /* default MCS7 */
> +			max_rate = (bw_40MHz) ? ((short_GI) ? 150 :
> +				    135) : ((short_GI) ? 72 : 65);

Consider moving 270 and 135 up a line, since you now have more horizontal
space.

julia

> +		max_rate *= 2; /* Mbps/2 */
> +	}
> +	wrqu->bitrate.value = max_rate * 500000;
> +
>  	return 0;
>  }
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/97c61822ad55d9e65bc292b6082d2247d9174916.1489161001.git.narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

