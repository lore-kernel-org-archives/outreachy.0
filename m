X-GM-THRID: 6332127696455204864
X-Received: by 10.25.141.85 with SMTP id p82mr3220750lfd.10.1474316941639;
        Mon, 19 Sep 2016 13:29:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.74.5 with SMTP id x5ls104564lfa.14.gmail; Mon, 19 Sep 2016
 13:29:00 -0700 (PDT)
X-Received: by 10.46.33.219 with SMTP id h88mr3201181lji.5.1474316940752;
        Mon, 19 Sep 2016 13:29:00 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s6si776111wmb.1.2016.09.19.13.29.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 13:29:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,363,1470693600"; 
   d="scan'208";a="237436812"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Sep 2016 22:28:43 +0200
Date: Mon, 19 Sep 2016 22:28:42 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Juliana R <juliana.orod@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: fixed alignment
 not matching
In-Reply-To: <20160919192924.GA29644@spock>
Message-ID: <alpine.DEB.2.10.1609192228280.4692@hadrien>
References: <20160919192924.GA29644@spock>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 19 Sep 2016, Juliana R wrote:

> This patch aims to fix a checkpatch warning regarding
> alignment not matching open parenthesis.
>
> Signed-off-by: Juliana R <juliana.orod@gmail.com>

See the comments on the other patch.

julia

> ---
>  drivers/staging/wlan-ng/cfg80211.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> index 8c592be..bed4672 100644
> --- a/drivers/staging/wlan-ng/cfg80211.c
> +++ b/drivers/staging/wlan-ng/cfg80211.c
> @@ -334,7 +334,7 @@ static int prism2_scan(struct wiphy *wiphy,
>  		msg1.scantype.data = P80211ENUM_scantype_active;
>  		msg1.ssid.data.len = request->ssids->ssid_len;
>  		memcpy(msg1.ssid.data.data,
> -			request->ssids->ssid, request->ssids->ssid_len);
> +		       request->ssids->ssid, request->ssids->ssid_len);
>  	} else {
>  		msg1.scantype.data = 0;
>  	}
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160919192924.GA29644%40spock.
> For more options, visit https://groups.google.com/d/optout.
>

