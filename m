X-GM-THRID: 6253354583322525696
X-Received: by 10.112.16.34 with SMTP id c2mr2435584lbd.19.1455975084534;
        Sat, 20 Feb 2016 05:31:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.48.144 with SMTP id w138ls117042wmw.22.canary; Sat, 20 Feb
 2016 05:31:24 -0800 (PST)
X-Received: by 10.194.178.234 with SMTP id db10mr2433624wjc.6.1455975084091;
        Sat, 20 Feb 2016 05:31:24 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w128si574115wmd.0.2016.02.20.05.31.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 05:31:24 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,476,1449529200"; 
   d="scan'208";a="165378915"
Received: from unknown (HELO hadrien.lan) ([162.212.89.130])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2016 14:31:22 +0100
Date: Sat, 20 Feb 2016 08:31:18 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH]: staging: wlan-ng: Remove unnecessary
 NULL check before returning error.
In-Reply-To: <20160220044933.GA10427@sandhya>
Message-ID: <alpine.DEB.2.10.1602200830300.4083@hadrien>
References: <20160220044933.GA10427@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 20 Feb 2016, Sandhya wrote:

> Remove unnecessary NULL check before returning error.

The commit message is very misleading.  You are not removing the check,
you are writing it in a different way.  The fact that an error is returned
is also not relevant to what you are doing.

julia


>
> Signed-off-by: Sandhya <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/wlan-ng/cfg80211.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> index 8c1e3f0..c59dd33 100644
> --- a/drivers/staging/wlan-ng/cfg80211.c
> +++ b/drivers/staging/wlan-ng/cfg80211.c
> @@ -303,7 +303,7 @@ static int prism2_get_station(struct wiphy *wiphy, struct net_device *dev,
>
>  	memset(sinfo, 0, sizeof(*sinfo));
>
> -	if ((wlandev == NULL) || (wlandev->msdstate != WLAN_MSD_RUNNING))
> +	if (!wlandev || (wlandev->msdstate != WLAN_MSD_RUNNING))
>  		return -EOPNOTSUPP;
>
>  	/* build request message */
> @@ -312,7 +312,7 @@ static int prism2_get_station(struct wiphy *wiphy, struct net_device *dev,
>  	quality.dbm.status = P80211ENUM_msgitem_status_data_ok;
>
>  	/* send message to nsd */
> -	if (wlandev->mlmerequest == NULL)
> +	if (!wlandev->mlmerequest)
>  		return -EOPNOTSUPP;
>
>  	result = wlandev->mlmerequest(wlandev, (struct p80211msg *) &quality);
> --
> 1.8.3.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160220044933.GA10427%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>

