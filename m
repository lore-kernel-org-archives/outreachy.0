X-GM-THRID: 6754760383787958272
X-Received: by 2002:a2e:9891:: with SMTP id b17mr11656723ljj.58.1572721146546;
        Sat, 02 Nov 2019 11:59:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9182:: with SMTP id f2ls1354411ljg.15.gmail; Sat, 02 Nov
 2019 11:59:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzWm178ksRaH2jBqYxcUT8xhn04ZbsCapJ7BK0DdLvs9cz8Y6P9gkLUvO+F0BbnQ+rsoGkJ
X-Received: by 2002:a2e:94c4:: with SMTP id r4mr13041415ljh.34.1572721145535;
        Sat, 02 Nov 2019 11:59:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572721145; cv=none;
        d=google.com; s=arc-20160816;
        b=tuw6Tw0PZfJABI4+1l43FOfWHytNZLFYDLb4qhN7JUYVAcWsPGU2AfJdyhu41tYpGo
         TwS49n4huVhdR+HIF7LSt2p6Ja5AtuqJI8G+1Aszg/D+mSFuNhqSglcK89EczvafPtiN
         PUS1haFExYG/Y5dXzTncs8Wnw4AlPMCEnpYfuRyIxkKzLzRDepBest3JwXAXUB3j8dvz
         +DwM8HOX91/B40VRmvNnmVy+af0E6Zk4tf3/0OaklNgSajakcO2jtsuCToZwV8UMGJnb
         ZOQYc0nvu4wSFWA/TA/zplo3PiKkCl8iW/M393uuR6HNbMQ5Ayefng1JFbz250Knh9A5
         zSrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=XhD9XUjoDNnS+BRpKMTMNG8vntrNTBU4If+WF2kET3A=;
        b=oWs3Vv7yd+xbVH5bR1PvH0phvsvnBB1ls0T23YJwgmU1T6rDL/QH3ZDsbYwQrjfeA3
         ZQndewwOzBVnXBd37X74qz3ZfVoALHSivhD10d+DhPo++AAzMSuSKdu/eOExTdx80Ixi
         fRrSZ8GNCC+CmXwMPVfbMo4uv3t6JCe8Gm5VCns6fV1eOHsYWf37YRNo/fKlaVUtVXiS
         Vg0fHg9LKas0NeUVAbu+B1DUIF0S1oksXPjDGyPQ1AZqdOOq+co/DpGvrR2mIuWQim5+
         Bl2mQznrBjuQEG0P/XEszfmOc8ub25CKXlmUv2pDmqpBKerBgghxQzpUxfjt1y9Brkuj
         AB/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k20si191986ljg.0.2019.11.02.11.59.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Nov 2019 11:59:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,260,1569276000"; 
   d="scan'208";a="410009063"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Nov 2019 19:59:04 +0100
Date: Sat, 2 Nov 2019 19:59:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    julia.lawall@lip6.fr, Boqun.Feng@microsoft.com, jerome.pouiller@silabs.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] staging: wfx: replace integer
 assignment to bool value
In-Reply-To: <20191102171950.24950-3-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1911021957380.2558@hadrien>
References: <20191102171950.24950-1-jbi.octave@gmail.com> <20191102171950.24950-3-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 2 Nov 2019, Jules Irenge wrote:

> Replace integer assignment to bool value.

Maybe "Replace 1 by true when it is stored in a boolean variable".

That would explain both what is done (1 -> true) and why (boolean
variable).

julia

> Recommended by coccinelle tool.
>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
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
> 2.21.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191102171950.24950-3-jbi.octave%40gmail.com.
>

