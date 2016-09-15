X-GM-THRID: 6330466740152041472
X-Received: by 10.194.104.230 with SMTP id gh6mr1249493wjb.7.1473926749698;
        Thu, 15 Sep 2016 01:05:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.66.80 with SMTP id p77ls170218wma.26.canary; Thu, 15 Sep
 2016 01:05:49 -0700 (PDT)
X-Received: by 10.194.104.230 with SMTP id gh6mr1249477wjb.7.1473926749183;
        Thu, 15 Sep 2016 01:05:49 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a126si87269wmd.1.2016.09.15.01.05.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 01:05:49 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,338,1470693600"; 
   d="scan'208";a="193501965"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 10:05:48 +0200
Date: Thu, 15 Sep 2016 10:05:48 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sandhya Bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    claudiu.beznea@gmail.com, johannes.berg@intel.com, gavinoleary3@gmail.com, 
    brcnakalin@gmail.com, avraham.stern@intel.com, brutallesale@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wlan-ng: Use !x instead of
 x == NULL.
In-Reply-To: <20160915080438.GA6782@sandhya>
Message-ID: <alpine.DEB.2.10.1609151005110.3045@hadrien>
References: <20160915080438.GA6782@sandhya>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 15 Sep 2016, Sandhya Bankar wrote:

> Use !x instead of x == NULL.
> This patch is detected by checkpatch.pl script.

The second sentence owuld be better as:

This issue was detected by checkpatch.

I guess you made the patch yourself.

julia

>
>
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/wlan-ng/cfg80211.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> index a36e40d..884d0d5 100644
> --- a/drivers/staging/wlan-ng/cfg80211.c
> +++ b/drivers/staging/wlan-ng/cfg80211.c
> @@ -265,7 +265,7 @@ static int prism2_get_station(struct wiphy *wiphy, struct net_device *dev,
>
>  	memset(sinfo, 0, sizeof(*sinfo));
>
> -	if ((wlandev == NULL) || (wlandev->msdstate != WLAN_MSD_RUNNING))
> +	if (!wlandev || (wlandev->msdstate != WLAN_MSD_RUNNING))
>  		return -EOPNOTSUPP;
>
>  	/* build request message */
> @@ -274,7 +274,7 @@ static int prism2_get_station(struct wiphy *wiphy, struct net_device *dev,
>  	quality.dbm.status = P80211ENUM_msgitem_status_data_ok;
>
>  	/* send message to nsd */
> -	if (wlandev->mlmerequest == NULL)
> +	if (!wlandev->mlmerequest)
>  		return -EOPNOTSUPP;
>
>  	result = wlandev->mlmerequest(wlandev, (struct p80211msg *)&quality);
> --
> 1.8.2.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160915080438.GA6782%40sandhya.
> For more options, visit https://groups.google.com/d/optout.
>

