X-GM-THRID: 6947643199215108096
X-Received: by 2002:a17:906:5855:: with SMTP id h21mr13614551ejs.522.1617624652562;
        Mon, 05 Apr 2021 05:10:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:3592:: with SMTP id y18ls7458925edc.0.gmail; Mon,
 05 Apr 2021 05:10:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwv35GkmlTAGzGqs3rOmiMZ2gWIAy7zN2XXAdq/4GAy4s1DAXXdIXxQuGzWSvBj8VgFwRJ6
X-Received: by 2002:a05:6402:13ce:: with SMTP id a14mr31324046edx.365.1617624651006;
        Mon, 05 Apr 2021 05:10:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617624651; cv=none;
        d=google.com; s=arc-20160816;
        b=ybZW/Ykhillc3V+o5vBuaFs2y/P/IEM9sUZ5iQMdYvn9KQzI3TC1t5IfA9Orux++zy
         upHnQDGyz5kmtKB55hPKHH4VaaGYwbE0BW+l3M8RhCMckyzCTIFgAcGHvncTKAFqv91y
         oyAPr0f2M3Mo5sJCGXkr8xyaW8nclvUV+Nuhqqw3EQeq2VobryZsCK2SwdAxWkPWFcIr
         dlx4Pnaz6DsYAOmf4HTij+txKo017S0jUR6fi/ErcuAcmjlBlZhO6uiOVXlfu6mJvmWj
         v01ELUtZERGJ797ekFyLhjbFzQGK5Bc5mqVSdZsQgChsOYWNqgZ+AemB5smLZO8NiH/p
         3d4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=n9yYHQNlxjaeHBFWK95zKkxieCa0MSKZMuhPGZJy1nM=;
        b=npAUubPLYNhzKsstfLXRTQ66geWv36B6YKNQzY/U4USz/QQXLVrkNmLi4K/IFVMLCF
         9tcCBcajvgHn2tTPH+uQlhvXCDH8lzZdoPE4ma5rnYbgYYd4tRcrXZ/r+D55Cg7hrEZQ
         X59lCGolXCrEqDHWLARrLuFBpFgBCXWPumJYOzynOx0joDjDqUjHrW9Hf1MZ1A2wyJpm
         ZWCqq6R7flCHEvnb8WEPs6fNkPzOHxLkaEyRQn8C6hqklXUtdbu2KM9jMD5NMcGJrmNm
         RmPmXLyK/yO88hdgnc24P2POXjVuk0Lfqh10SKY7cvcMPmvDuvgyf9xdYkmtk6+5LMcl
         T7Zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f25si2167966edx.4.2021.04.05.05.10.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Apr 2021 05:10:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AHT5Bb6/6//zAAIi4a71uk+A5I+orLtY04lQ7?=
 =?us-ascii?q?vn1ZYxpTb8CeioSSjO0WvCWE7Ao5dXk8lbm7U5Wobmjb8fdOi7U5HbDnZwX+vX?=
 =?us-ascii?q?vtEYcK1+rf6hnBPwG7yeJHz6dndMFFebjNJHx3l9zz7gX9M/tI+rm62Zulj+vf?=
 =?us-ascii?q?0HthJDsCA51I1At3Bh2WFUd7XmB9dPkEPaCB7clKrSfIQxoqR/m8b0NoY8H+vd?=
 =?us-ascii?q?HR0LrpbRkabiRXijWmvHeYrIT3FBWVxX4lPg9ny71Kywf4rzA=3D?=
X-IronPort-AV: E=Sophos;i="5.81,306,1610406000"; 
   d="scan'208";a="501589294"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Apr 2021 14:10:50 +0200
Date: Mon, 5 Apr 2021 14:10:50 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: correct formatting
 in cfg80211.c
In-Reply-To: <20210405120349.12338-1-fmdefrancesco@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2104051410020.2981@hadrien>
References: <20210405120349.12338-1-fmdefrancesco@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 5 Apr 2021, Fabio M. De Francesco wrote:

> According to checkpatch message "CHECK: Lines should not end with a
> '('", fix formatting in cfg80211.c

I'm not sure it's worth exceeding 80 characters in this way.

julia

>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/staging/wlan-ng/cfg80211.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> index 759e475e303c..eda5b5a4e089 100644
> --- a/drivers/staging/wlan-ng/cfg80211.c
> +++ b/drivers/staging/wlan-ng/cfg80211.c
> @@ -324,8 +324,7 @@ static int prism2_scan(struct wiphy *wiphy,
>  		(i < request->n_channels) && i < ARRAY_SIZE(prism2_channels);
>  		i++)
>  		msg1.channellist.data.data[i] =
> -			ieee80211_frequency_to_channel(
> -				request->channels[i]->center_freq);
> +			ieee80211_frequency_to_channel(request->channels[i]->center_freq);
>  	msg1.channellist.data.len = request->n_channels;
>
>  	msg1.maxchanneltime.data = 250;
> @@ -478,8 +477,7 @@ static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
>  				goto exit;
>
>  			/* send key to driver */
> -			did = didmib_dot11smt_wepdefaultkeystable_key(
> -					sme->key_idx + 1);
> +			did = didmib_dot11smt_wepdefaultkeystable_key(sme->key_idx + 1);
>  			result = prism2_domibset_pstr32(wlandev,
>  							did, sme->key_len,
>  							(u8 *)sme->key);
> --
> 2.30.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210405120349.12338-1-fmdefrancesco%40gmail.com.
>

