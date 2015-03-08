X-GM-THRID: 7122168315904
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,99b69ea22516648c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.11.70 with SMTP id o6mr3441909wjb.6.1425834890868;
        Sun, 08 Mar 2015 10:14:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.98.233 with SMTP id el9ls388878wib.8.gmail; Sun, 08 Mar
 2015 10:14:50 -0700 (PDT)
X-Received: by 10.180.91.76 with SMTP id cc12mr3890090wib.7.1425834890569;
        Sun, 08 Mar 2015 10:14:50 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i8si637457wif.1.2015.03.08.10.14.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 08 Mar 2015 10:14:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,363,1422918000"; 
   d="scan'208";a="102522804"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 08 Mar 2015 18:14:49 +0100
Date: Sun, 8 Mar 2015 18:14:49 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Darshana Padmadas <darshanapadmadas@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: rtl8192e: replace min
 with min_t
In-Reply-To: <8af55228b8d4679edc59c0ffda4d8aabc9455b7e.1425833758.git.darshanapadmadas@gmail.com>
Message-ID: <alpine.DEB.2.10.1503081813170.2780@hadrien>
References: <cover.1425833758.git.darshanapadmadas@gmail.com> <8af55228b8d4679edc59c0ffda4d8aabc9455b7e.1425833758.git.darshanapadmadas@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

This satisfies the requirement of having a unique subject for each patch
by changing the capitalization of staging.  I guess that works here, but
it doesn't really scale up.  You could just put the two patches together.

julia

On Sun, 8 Mar 2015, Darshana Padmadas wrote:

> This patch replaces min with min_t and eliminates
> the following warnings found by checkpatch.pl:
>
> WARNING: min() should probably be min_t(u8, network->ssid_len, 32)
> WARNING: min() should probably be min_t(u8, network->hidden_ssid_len, 32)
>
> Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtllib_wx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192e/rtllib_wx.c b/drivers/staging/rtl8192e/rtllib_wx.c
> index 309cda0..2e665ed 100644
> --- a/drivers/staging/rtl8192e/rtllib_wx.c
> +++ b/drivers/staging/rtl8192e/rtllib_wx.c
> @@ -74,7 +74,7 @@ static inline char *rtl819x_translate_scan(struct rtllib_device *ieee,
>  	iwe.cmd = SIOCGIWESSID;
>  	iwe.u.data.flags = 1;
>  	if (network->ssid_len > 0) {
> -		iwe.u.data.length = min(network->ssid_len, (u8)32);
> +		iwe.u.data.length = min_t(u8, network->ssid_len, 32);
>  		start = iwe_stream_add_point_rsl(info, start, stop, &iwe,
>  						 network->ssid);
>  	} else if (network->hidden_ssid_len == 0) {
> @@ -82,7 +82,7 @@ static inline char *rtl819x_translate_scan(struct rtllib_device *ieee,
>  		start = iwe_stream_add_point_rsl(info, start, stop,
>  						 &iwe, "<hidden>");
>  	} else {
> -		iwe.u.data.length = min(network->hidden_ssid_len, (u8)32);
> +		iwe.u.data.length = min_t(u8, network->hidden_ssid_len, 32);
>  		start = iwe_stream_add_point_rsl(info, start, stop, &iwe,
>  						 network->hidden_ssid);
>  	}
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/8af55228b8d4679edc59c0ffda4d8aabc9455b7e.1425833758.git.darshanapadmadas%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

