X-GM-THRID: 6754760383787958272
X-Received: by 2002:a2e:7c12:: with SMTP id x18mr6517744ljc.130.1572801206003;
        Sun, 03 Nov 2019 09:13:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:c4:: with SMTP id 4ls468857ljr.6.gmail; Sun, 03 Nov
 2019 09:13:25 -0800 (PST)
X-Google-Smtp-Source: APXvYqwHxg4tWeUAqaSxLY4nkRp3gLE/NpL0cGOYuRGdmgj/K93demIH7HCmnoJfIUAvnFMoRuvh
X-Received: by 2002:a2e:94c4:: with SMTP id r4mr15810311ljh.34.1572801205054;
        Sun, 03 Nov 2019 09:13:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572801205; cv=none;
        d=google.com; s=arc-20160816;
        b=vpBFJmQg0CFIOSR+qGboXBDMzFv3yO3brgXj68+26Qz24PX08wcaONw1foTLoOMSex
         uf7TuSbi6QrtssUbb8v+3Tre7rbRJbJdGlyVPwXFh+pfYO0a9EmC+OGakWdWO1xSeLKW
         OsBL0fAGpZjs99xcEMykAiZqraaGUmyvMlFqSedS2Q3pLmyfIM7buOW5xIK6R7Fhb+Ri
         H+qR9OfIhnMzFoy0ZbfL+JKESjzqo9kQQOX3Ge008pnRMTwyvR5mCbP77FBK1VIfzxbl
         1UhjIkTR85BgauSLPvZjkAyHvPJ6ixTBNCXqLWFwB1Ag3CVDlj2LbNAkdrVZbj3LpzrN
         EA0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=MmYwLBTm3y7sYRPdNtVM+uL9WkB5xvfdLPv03K8uERg=;
        b=OuJhTtc9ruNwGRhKFEHhVVw06hibAxaqWS/8wy54icsTcb82YqLHZuzSuj+v3N1cK1
         7dqYGbHRy/ohi818v7YALYE5NdR0OSqac//rvdwlgVPTs4Ja9N8H+gNkba1Garwq1xr4
         Jfgzjfyi18TsGXlgWCCq6rO9Lnq3AoCZYOdmoisI87yLp5EB9r9OV9QT3GeSbk1oU+K1
         pktBxW8jBs4wdDoRNK+iTePj0CnmcOeEcEkw1QJwssnDpOQZfRUge2UH48jwmK8BmIiD
         uS+4I7y84sk/uZjyut3+lLwTfV3z6cyhMByvS6t6svUcCrOsN8jrySEsYmX71s+/KoEF
         j4Hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id k20si304685ljg.0.2019.11.03.09.13.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Nov 2019 09:13:25 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,264,1569276000"; 
   d="scan'208";a="325437902"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Nov 2019 18:13:23 +0100
Date: Sun, 3 Nov 2019 18:13:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    julia.lawall@lip6.fr, Boqun.Feng@microsoft.com, jerome.pouiller@silabs.com
Subject: Re: [PATCH v4 2/2] staging: wfx: replace 1 by true when stored in
 a boolean variable
In-Reply-To: <20191103165308.23843-3-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1911031812350.2557@hadrien>
References: <20191103165308.23843-1-jbi.octave@gmail.com> <20191103165308.23843-3-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 3 Nov 2019, Jules Irenge wrote:

> Replace 1 by true when it is stored in a boolean variable.

It's a bit strange to have the same thing in the subject line as in the
commit log.  The subject line should just give the idea quickly.  Perhaps
it could be just replace 1 by true.

julia

> Recommended by coccinelle tool.
>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
> v1 submits change of 1 to true with no accurate log message of what
> was done reason.
> v2 merges two patches for the same issue into a single one, improves on log message description: rephrase, change the term warning to recommended by coccinelle tool.
> v3 gives accurate description on what was changed and reason behind:
> change from fixing to replace to indicate what was done.
> v4 includes logs of changes done on each version.
>
>  drivers/staging/wfx/queue.c | 2 +-
>  drivers/staging/wfx/sta.c   | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
> index 5d29bce65f71..71e92744fed0 100644
> --- a/drivers/staging/wfx/queue.c
> +++ b/drivers/staging/wfx/queue.c
> @@ -550,7 +550,7 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
>  			spin_unlock_bh(&wvif->ps_state_lock);
>
>  			if (vif_more) {
> -				more = 1;
> +				more = true;
>  				tx_allowed_mask = vif_tx_allowed_mask;
>  				queue = vif_queue;
>  				ret = 0;
> diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
> index 688586e823c0..ea5707ff8847 100644
> --- a/drivers/staging/wfx/sta.c
> +++ b/drivers/staging/wfx/sta.c
> @@ -291,7 +291,7 @@ u64 wfx_prepare_multicast(struct ieee80211_hw *hw, struct netdev_hw_addr_list *m
>  			ether_addr_copy(wvif->mcast_filter.address_list[i], ha->addr);
>  			i++;
>  		}
> -		wvif->mcast_filter.enable = 1;
> +		wvif->mcast_filter.enable = true;
>  		wvif->mcast_filter.num_addresses = count;
>  	}
>
> --
> 2.23.0
>
>

