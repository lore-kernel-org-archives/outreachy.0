X-GM-THRID: 6666453061980913664
X-Received: by 2002:a1c:2545:: with SMTP id l66mr1748994wml.14.1552154957259;
        Sat, 09 Mar 2019 10:09:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:4083:: with SMTP id n125ls57177wma.4.canary-gmail; Sat,
 09 Mar 2019 10:09:16 -0800 (PST)
X-Google-Smtp-Source: APXvYqzAqVVc15pVg2795bNDXYcGWvQQEOF0CF26c4beHlHzJeM3XrNpzPKzJ6hJ6jW2aqdTB77y
X-Received: by 2002:a1c:a702:: with SMTP id q2mr1802747wme.0.1552154956337;
        Sat, 09 Mar 2019 10:09:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552154956; cv=none;
        d=google.com; s=arc-20160816;
        b=BXD+6SB0B0JqzWDRVk91YBiBsesBvEC7uCVQlZeeX6zH8Izsya0CI4/nn5yldC0ej5
         hylALg0ZuQffKeNMFyL3X3x8pphd4T0Ma1FoLNNT7yPr5ctriJu4086V2aJQAHNKW69o
         ytqOh/B3jng0CIRczHoq7CH+Vn1ny0RIcwwVWyfDCAaa+9oLZrdmdA9uORSucif7QdsE
         1Vo0gQHwDC0AsUNTEUJ/rD1v/A0xtCO8V6WZ7OMTejZJEhh+OzF11n7ZH+kdFJQrXlPM
         yLSt1yRiQUYCepOGeLFnhBgQQQGSajyFY6QVy71K1H1BYm2OcP94na5O6dktABAGk/FM
         B6sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=aJMRUfWL4Q4uEGeOJQLpjQJhQ5cBbyA4UtpEsg4kqrE=;
        b=jzhHXFeCGweBxQfZfEuVprTHYMs8Mh3OjZjSwoHOTd9J+3FZofL0za1UJJO14F5n75
         V+nDwqlInc4bDvfHsb7O9coKNXQIGCRvalU+sXjkzdBW0gdwGzIB5cLl5ko/pexnm+Qd
         HGTVX6d6yUojqMOHmmt7JxWpfCG4R1inhqQ+aHPIMwO/rKt0I1i4kj2qyfYSZnFZgL2Q
         c4TwW5qg0fGPB9cA7+lf9JTJhw3LiWmvNa4o99iqIX3olqsN0FxV+Dc47ZYqYaNErhQy
         2trLTQpz/mrCy3YF0NSUswzVaGTP1sbhU6Hw1S9KZqWJhkIpjgvWk9ua4t/K/jpYZwoJ
         wf+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c24si503067wml.0.2019.03.09.10.09.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 10:09:16 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,460,1544482800"; 
   d="scan'208";a="298667111"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2019 19:09:15 +0100
Date: Sat, 9 Mar 2019 19:09:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: phydm: remove
 unnecessary parentheses
In-Reply-To: <20190309180212.54071-1-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.21.1903091908000.13389@hadrien>
References: <20190309180212.54071-1-himadri18.07@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 9 Mar 2019, Himadri Pandya wrote:

> Remove unnecessary parentheses around the right hand side of assignment
> operator. Suggested by Coccinelle.

Actually, I'm not sure that "Suggested by Coccinelle" is the best
phrasing.  Coccinelle doesn't suggest things on its own.  You write a
semantic patch, and then the semantic patch suggests something.  Found
using Coccinelle would be better.

julia

>
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
>  drivers/staging/rtlwifi/phydm/phydm.c          | 2 +-
>  drivers/staging/rtlwifi/phydm/phydm_hwconfig.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtlwifi/phydm/phydm.c b/drivers/staging/rtlwifi/phydm/phydm.c
> index 52b85b3ddb34..a69be1c19f25 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm.c
> +++ b/drivers/staging/rtlwifi/phydm/phydm.c
> @@ -1767,7 +1767,7 @@ static u8 phydm_calculate_intf_distance(void *dm_void, u32 bw, u32 fc,
>  		int_distance = (fc >= f_interference) ? (fc - f_interference) :
>  							(f_interference - fc);
>  		tone_idx_tmp =
> -			(int_distance << 5); /* =10*(int_distance /0.3125) */
> +			int_distance << 5; /* =10*(int_distance /0.3125) */
>  		ODM_RT_TRACE(
>  			dm, ODM_COMP_API,
>  			"int_distance = ((%d MHz)) Mhz, tone_idx_tmp = ((%d.%d))\n",
> diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> index a4ad39ab3ddf..4d2630e63789 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> +++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> @@ -1790,7 +1790,7 @@ phydm_process_rssi_for_dm_new_type(struct phy_dm_struct *dm,
>
>  		if (undecorated_smoothed_pwdb <= 0) {
>  			accumulate_pwdb =
> -				(phy_info->rx_pwdb_all << scaling_factor);
> +				phy_info->rx_pwdb_all << scaling_factor;
>  			undecorated_smoothed_pwdb = phy_info->rx_pwdb_all;
>  		} else {
>  			accumulate_pwdb = accumulate_pwdb -
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190309180212.54071-1-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

