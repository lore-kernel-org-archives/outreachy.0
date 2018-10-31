X-GM-THRID: 6618414504788099072
X-Received: by 2002:aa7:d953:: with SMTP id l19-v6mr388413eds.11.1540996791890;
        Wed, 31 Oct 2018 07:39:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:d9c3:: with SMTP id v3-v6ls20266eds.6.gmail; Wed, 31 Oct
 2018 07:39:50 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dwWADiDe8GtPOZznRKnIBfCxgJqmzM52r0WT/PKzf4adJus6CuQvqgZlKhbjp2B/BxxZ+G
X-Received: by 2002:a50:eb4c:: with SMTP id z12-v6mr574651edp.0.1540996790835;
        Wed, 31 Oct 2018 07:39:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540996790; cv=none;
        d=google.com; s=arc-20160816;
        b=qd8knhVeaJ9wBd28o444fvqPDFW99/zp/Wd7yPJ/j5I0Fs+X0MdEKQwLcZgiwFvOZ6
         WvfSaK5ZyE1vXE+WuVj05jEfI1wylkF3Xfv9LUXz+toX9jpJTNQwhAeeiFftPmmoNCOF
         DyfPOISSKsUFF8RGLZ6cc0jQa0G9TA/mlSq0YUP12Ydd2G0q5UMT01aHAWVN6IA6g1Nd
         0w+lpqc/Z4IU42jJ6bJuNf+W61F71DNzBvGT4nP46oCPsz8M0ONZOHjPVmzDG0+RgOPN
         bal5wc3hlP/LpF3zXgasfDsCaZ4X46Hc2xpnqcmpoIQuijzvKsqZK+f0XssNmWmQcjMt
         jLTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=wuFBS9WDgdaO5zjx9ux///Fig0AVZY9fkthfVxGfJYQ=;
        b=WE0nM0y5uC19H4+/5YUpff/EPHInsPMASn9HfdZRrOnWBIbVz6nHK0i5g9vUSkw9ir
         yEnIrSku+5brOnZjZR1JVl4HX+GtP3jOx3VuQl/rgomR6o4rPxy4b+BFj7aY2AGfhNxD
         bcZmf8I0lkyTa4j7HnZsgQ8BufJjWBVq9Ga9WpKQxWY+IwHb0BL66Rqq6kCNIC3Z05VC
         Jlzgxq7lG+SQhk6Rlb4rREmWO5/LhCIG8K6mJVgd17gYYZake4GqilLBpjjFmbV7TJqv
         MyqdgQkzvP2j8ZCoSFNWkWT3gJEhbXzGLOO6lLY2RLqP6lTdxwlWY6iQT9OP5vD5xZ/J
         LsHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o10-v6si837531ejc.0.2018.10.31.07.39.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 07:39:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,447,1534802400"; 
   d="scan'208";a="283950570"
Received: from unknown (HELO hadrien.local) ([163.173.88.207])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Oct 2018 15:39:50 +0100
Date: Wed, 31 Oct 2018 15:39:40 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Maya Nakamura <m.maya.nakamura@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: rtlwifi: Keep expressions
 on one line
In-Reply-To: <368f5b749807cd02336274f978f3c6451655583d.1540968891.git.m.maya.nakamura@gmail.com>
Message-ID: <alpine.DEB.2.20.1810311539020.6117@hadrien>
References: <cover.1540968891.git.m.maya.nakamura@gmail.com> <368f5b749807cd02336274f978f3c6451655583d.1540968891.git.m.maya.nakamura@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 31 Oct 2018, Maya Nakamura wrote:

> Edit two statements to keep expressions on one line--one from Julia's
> feedback.
>
> Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>
> ---
>  drivers/staging/rtlwifi/phydm/phydm_debug.c    | 4 +---
>  drivers/staging/rtlwifi/phydm/phydm_hwconfig.c | 4 ++--
>  2 files changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rtlwifi/phydm/phydm_debug.c b/drivers/staging/rtlwifi/phydm/phydm_debug.c
> index 1c7faa5840f2..91f2c054d83b 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm_debug.c
> +++ b/drivers/staging/rtlwifi/phydm/phydm_debug.c
> @@ -159,9 +159,7 @@ void phydm_init_debug_setting(struct phy_dm_struct *dm)
>  	dm->debug_level = ODM_DBG_TRACE;
>
>  	dm->fw_debug_components = 0;
> -	dm->debug_components =
> -
> -		0;
> +	dm->debug_components = 0;
>
>  	dm->fw_buff_is_enpty = true;
>  	dm->pre_c2h_seq = 0;
> diff --git a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> index e7dcb5b02ad4..2f4f273a0239 100644
> --- a/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> +++ b/drivers/staging/rtlwifi/phydm/phydm_hwconfig.c
> @@ -45,8 +45,8 @@ static u32 phydm_process_rssi_pwdb(struct phy_dm_struct *dm,
>  	u32 weighting = 0, undecorated_smoothed_pwdb;
>  	/* 2011.07.28 LukeLee: modified to prevent unstable CCK RSSI */
>
> -	if (entry->rssi_stat.ofdm_pkt ==
> -	    64) { /* speed up when all packets are OFDM*/
> +	if (entry->rssi_stat.ofdm_pkt == 64) {
> +		/* speed up when all packets are OFDM*/

There is another small cleanup you could do here, to put a space in front
of the */

julia

>  		undecorated_smoothed_pwdb = undecorated_smoothed_ofdm;
>  		ODM_RT_TRACE(dm, ODM_COMP_RSSI_MONITOR,
>  			     "PWDB_0[%d] = (( %d ))\n", pktinfo->station_id,
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/368f5b749807cd02336274f978f3c6451655583d.1540968891.git.m.maya.nakamura%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

