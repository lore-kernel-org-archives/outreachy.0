X-GM-THRID: 6745294989426688000
X-Received: by 2002:a17:906:79ca:: with SMTP id m10mr26735585ejo.292.1570514010763;
        Mon, 07 Oct 2019 22:53:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:4c51:: with SMTP id d17ls570023ejw.8.gmail; Mon, 07
 Oct 2019 22:53:29 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx7m3qGmz33JnQMEdkgxMaUni/2LjquduQQ8NGh/Hp+MOxAhFl6Nh6KvFScVeG58IE9O1UH
X-Received: by 2002:a17:906:e28f:: with SMTP id gg15mr27518252ejb.182.1570514009905;
        Mon, 07 Oct 2019 22:53:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570514009; cv=none;
        d=google.com; s=arc-20160816;
        b=AWfxaH3qjd6j7uAlVGa5iLYEMntpkYL6CgDRKh6YvCDb26o+GXpildq/cRg58sWiVm
         w+Mvz7hCDkE25OFHLXNNODcl9vN8WypIKYbXOYzxHzP/sOZG3ZtxRCFpuk5/utK260ia
         kOFCFzZT0hKtp4jpim3IvSEnf4wZ3m6fTz2CtKnatD5NjmG1iskVSmPS02+8l9JT8Aie
         W70ulh7owhncS4GY6r0/BKsQgOBwEvy8iaNq00O1tKm2MLYG8EmhR0+TwRF00UP9FicO
         5nbCw44QwzHv5BaP2S3LieaeKWw8Z/+/eyJq7f4TFAjoSAFRwZYmGu+1x3Y6ubX8jZ0S
         cBUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=oRvZCKjWgVakZpLWzmk/N1xLpvNysDuaaSCFf8ilL0w=;
        b=iuonBCX4eWxAzPEIKCFmL+9AhUmYl1Rw7yLRLfjTOMzCWf7Rq/v1anP5uHR32b+Fg7
         y9J96hREDsAJxDY9AQsujiAeG9G+0QA7fJr0hfm5NFRITlgdiDyX7i9cRGm2BE+Cn4gU
         hrDMMwiZh5bGotGJgVm8KpAtdZwy82IDUOS0Drj7WGuhv4fcxcD16HRFlOglZTzbFGp8
         e4jzp+a6DiMuROaTBBYXvahl8hX/mIDYLouJTTI/ksTduRc1TRHEAE1n4PLDkOEAVlhE
         aJoE3mYvyXZ8jKVnRIwKmfOo2nsKX/cQMQLmmcMYj+MZk9g8hGP1oxl5Sqnb6cur02Yw
         6MQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a15si870724ejj.0.2019.10.07.22.53.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Oct 2019 22:53:29 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,269,1566856800"; 
   d="scan'208";a="321940887"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Oct 2019 07:53:29 +0200
Date: Tue, 8 Oct 2019 07:53:29 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nachammai Karuppiah <nachukannan@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: os_dep: Remove
 typecast in kfree
In-Reply-To: <1570511353-64646-1-git-send-email-nachukannan@gmail.com>
Message-ID: <alpine.DEB.2.21.1910080750290.2638@hadrien>
References: <1570511353-64646-1-git-send-email-nachukannan@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 7 Oct 2019, Nachammai Karuppiah wrote:

> Remove typecast in the call to kfree as it is not needed.

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> Issue found using the below coccinelle script,
>
> @@
> type t1;
> expression e;
> @@
>
> -kfree((t1 *)e);
> +kfree(e);

One might consider that a slight improvement would be to declare
expression * e; rather than expression e;, ie to ensure that e is a
pointer.  But it's a bit of a tradeoff, because if you specify type
information, then Coccinelle has to find the type.  If it can't find the
type, some changes will be overlooked.  Still it could be good to try both
approaches.  If both approaches give the same results, you can be more
confident that everything is ok.

On the other hand, it would be pretty odd for an argument of kmalloc not
to be of pointer type.

julia

> Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 10 +++++-----
>  drivers/staging/rtl8723bs/os_dep/os_intfs.c       |  2 +-
>  2 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> index 67d56f3..8555f52 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
> @@ -165,7 +165,7 @@ static void rtw_spt_band_free(struct ieee80211_supported_band *spt_band)
>  			+ sizeof(struct ieee80211_channel)*RTW_2G_CHANNELS_NUM
>  			+ sizeof(struct ieee80211_rate)*RTW_G_RATES_NUM;
>  	}
> -	kfree((u8 *)spt_band);
> +	kfree(spt_band);
>  }
>
>  static const struct ieee80211_txrx_stypes
> @@ -1156,7 +1156,7 @@ static int cfg80211_rtw_add_key(struct wiphy *wiphy, struct net_device *ndev,
>  	}
>
>  addkey_end:
> -	kfree((u8 *)param);
> +	kfree(param);
>
>  	return ret;
>
> @@ -2193,7 +2193,7 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
>  			ret = -EOPNOTSUPP ;
>  		}
>
> -		kfree((u8 *)pwep);
> +		kfree(pwep);
>
>  		if (ret < 0)
>  			goto exit;
> @@ -2646,7 +2646,7 @@ static int rtw_cfg80211_add_monitor_if (struct adapter *padapter, char *name, st
>
>  out:
>  	if (ret && mon_wdev) {
> -		kfree((u8 *)mon_wdev);
> +		kfree(mon_wdev);
>  		mon_wdev = NULL;
>  	}
>
> @@ -3502,7 +3502,7 @@ void rtw_wdev_free(struct wireless_dev *wdev)
>
>  	wiphy_free(wdev->wiphy);
>
> -	kfree((u8 *)wdev);
> +	kfree(wdev);
>  }
>
>  void rtw_wdev_unregister(struct wireless_dev *wdev)
> diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> index ec3a754..5044f73 100644
> --- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> +++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
> @@ -1142,7 +1142,7 @@ void rtw_ndev_destructor(struct net_device *ndev)
>  	DBG_871X(FUNC_NDEV_FMT "\n", FUNC_NDEV_ARG(ndev));
>
>  	if (ndev->ieee80211_ptr)
> -		kfree((u8 *)ndev->ieee80211_ptr);
> +		kfree(ndev->ieee80211_ptr);
>  }
>
>  void rtw_dev_unload(struct adapter *padapter)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1570511353-64646-1-git-send-email-nachukannan%40gmail.com.
>

