X-GM-THRID: 6205076512382648320
X-Received: by 10.112.55.69 with SMTP id q5mr6764372lbp.24.1444732917134;
        Tue, 13 Oct 2015 03:41:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.44.12 with SMTP id s12ls626699lfs.90.gmail; Tue, 13 Oct
 2015 03:41:56 -0700 (PDT)
X-Received: by 10.112.158.202 with SMTP id ww10mr6900489lbb.13.1444732916662;
        Tue, 13 Oct 2015 03:41:56 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q6si697063wif.2.2015.10.13.03.41.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 03:41:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,677,1437429600"; 
   d="scan'208";a="182529337"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Oct 2015 12:41:56 +0200
Date: Tue, 13 Oct 2015 12:41:54 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: wilc1000: wilc_wfi_cfgoperations:
 Remove unnecessary constants
In-Reply-To: <20151013102548.GA8383@ubuntu>
Message-ID: <alpine.DEB.2.10.1510131240030.2391@hadrien>
References: <20151013102548.GA8383@ubuntu>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 13 Oct 2015, Shivani Bhardwaj wrote:

> Remove constants wherever not required and change variables to bool type
> to get rid of constants.

This seems like two unrelated things.  I think you could put them in
different patches.

> Semantic patch used:
>
> @@
> type T;
> identifier i;
> constant C;
> position p != e.p;
> @@
>
> - T i@p;
>   <+... when != i
> - i = C;
>   ...+>
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
> Changes in v2:
> 	-Improve the patch by completely eliminating the constant.
>
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index 6472777..f6259f7 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -1714,7 +1714,7 @@ static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
>  {
>  	u32 i;
>  	s32 s32Error = 0;
> -	u8 flag = 0;
> +	bool flag = 0;

Actually, my thought was to have a bool variable called pmkid_found.  That
would be more understandable than flag.

Also the initial value should be false, not 0.

>  	struct wilc_priv *priv = wiphy_priv(wiphy);
>
> @@ -1725,7 +1725,7 @@ static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
>  		if (!memcmp(pmksa->bssid, priv->pmkid_list.pmkidlist[i].bssid,
>  				 ETH_ALEN)) {
>  			/*If bssid already exists and pmkid value needs to reset*/
> -			flag = PMKID_FOUND;
> +			flag = 1;

And here the value would be true.

julia

>  			PRINT_D(CFG80211_DBG, "PMKID already exists\n");
>  			break;
>  		}
> @@ -1736,7 +1736,7 @@ static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
>  			    ETH_ALEN);
>  		memcpy(priv->pmkid_list.pmkidlist[i].pmkid, pmksa->pmkid,
>  			    PMKID_LEN);
> -		if (!(flag == PMKID_FOUND))
> +		if (!flag)
>  			priv->pmkid_list.numpmkid++;
>  	} else {
>  		PRINT_ER("Invalid PMKID index\n");
> @@ -1764,7 +1764,6 @@ static int del_pmksa(struct wiphy *wiphy, struct net_device *netdev,
>  {
>
>  	u32 i;
> -	u8 flag = 0;
>  	s32 s32Error = 0;
>
>  	struct wilc_priv *priv = wiphy_priv(wiphy);
> @@ -1777,7 +1776,6 @@ static int del_pmksa(struct wiphy *wiphy, struct net_device *netdev,
>  			/*If bssid is found, reset the values*/
>  			PRINT_D(CFG80211_DBG, "Reseting PMKID values\n");
>  			memset(&priv->pmkid_list.pmkidlist[i], 0, sizeof(struct host_if_pmkid));
> -			flag = PMKID_FOUND;
>  			break;
>  		}
>  	}
> --
> 2.1.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151013102548.GA8383%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
>

