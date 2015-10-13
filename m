X-GM-THRID: 6205067017523822592
X-Received: by 10.112.209.73 with SMTP id mk9mr6712112lbc.14.1444730051422;
        Tue, 13 Oct 2015 02:54:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.20.203 with SMTP id 72ls576681lfu.95.gmail; Tue, 13 Oct
 2015 02:54:10 -0700 (PDT)
X-Received: by 10.112.184.170 with SMTP id ev10mr181409lbc.4.1444730050919;
        Tue, 13 Oct 2015 02:54:10 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id bh7si694238wib.1.2015.10.13.02.54.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 02:54:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,677,1437429600"; 
   d="scan'208";a="182519291"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Oct 2015 11:54:10 +0200
Date: Tue, 13 Oct 2015 11:54:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: wilc_wfi_cfgoperations:
 Remove unused code
In-Reply-To: <20151013094837.GA4291@ubuntu>
Message-ID: <alpine.DEB.2.10.1510131153090.2391@hadrien>
References: <20151013094837.GA4291@ubuntu>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 13 Oct 2015, Shivani Bhardwaj wrote:

> Remove the declaration, initialization and statement having a
> variable that is not used anywhere in the code.
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
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index 6472777..d2e6f55 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
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

This constant is used at only one other place.  Maybe there you could
change the flag variable to pmkid_found, of type bool, and get rid of
the constant completely.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151013094837.GA4291%40ubuntu.
> For more options, visit https://groups.google.com/d/optout.
>

