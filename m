X-GM-THRID: 6754510207440650240
X-Received: by 2002:adf:e286:: with SMTP id v6mr9276979wri.241.1572688906321;
        Sat, 02 Nov 2019 03:01:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:690e:: with SMTP id t14ls9341967wru.2.gmail; Sat, 02 Nov
 2019 03:01:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwDs8ePYFwxoNGKlXVQGgmQIwCd+DSAg6LQl/9VF5fNuWBhsD35nBsubo+vyki5Y2ccHGhs
X-Received: by 2002:adf:e286:: with SMTP id v6mr9276913wri.241.1572688905340;
        Sat, 02 Nov 2019 03:01:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572688905; cv=none;
        d=google.com; s=arc-20160816;
        b=0llbJYVLDD7QNlP0crOujYoI7bGaJ23JMoG9q5dSBIknUkNANUkjJUUf+UmXiFI/sL
         itVGeDACE7L+fM8s7g9hBEC56ljP0L+1CvxLCJ5SHJNOJBepy2ssVhwY/sQlbXoI7bNI
         zP8MoV5IBnsV9v+CT7VXY1rUY4ye/OsRq5tQ4EV4dYLEkwMgUxdcv/CS1rIw3DPxyYNh
         FHqICfcSQ1HhWzWAVwt9IFXNEt6WfSKvWLhaZCXHOiV7BdvpHhZakcJ7UgM5FuO9rX9H
         E36sZBy7FDJLqfMPRK5WcaZaXZ3RQLULALnQtJyJrR/fOh/4lIlZrwQKpwqZL9nLBHTt
         l4hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=cQyJ1XL+T7eIqe+D2tD/EMkjWmiJzQIBWcXbP5ViLjk=;
        b=jNenkNjexxLktRRZ0yl0IKB7gyMVi3juRDbOwOd7ijfmuBhL5FuYXBAuGvtDMsq13T
         sAabn1QveR9kpCo5onKTw9It3LRQUCp8Cz0N6qKsgwwaHpiKmM/WoUm7cObq4qAgI4x2
         EpCiKvzQ0G4oSWOUfMwZc3fqjPwVxXAX5x/70Q6J6cm5i72ZnZqFL2ZxvVC9fDuHqYXS
         9qSRcJm4//T6qaBkEMq2q4cZpPXeEW6TZek0Z5FUNl6g2xAgHskwKyrgPKOCIZE+9D1q
         GtGbt1Y7hIRe20qfCvHo6WwHR2FaP88/6Fqeh5bZ+Da6Zswq5tngh5KFwiMwGL1biXgD
         aZyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b66si400714wme.2.2019.11.02.03.01.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Nov 2019 03:01:45 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,259,1569276000"; 
   d="scan'208";a="409979968"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Nov 2019 11:01:45 +0100
Date: Sat, 2 Nov 2019 11:01:44 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: wfx: fix warning of assignment
 of 0/1 to bool variable
In-Reply-To: <20191102010908.30269-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1911021101190.8826@hadrien>
References: <20191102010908.30269-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 2 Nov 2019, Jules Irenge wrote:

> Fix warning of assignment of 0/1 to bool variable.
> Issue reported by coccinelle tool.

Please fix the subject line and log message as suggested for the other
patch.

julia

>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/wfx/sta.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191102010908.30269-1-jbi.octave%40gmail.com.
>

