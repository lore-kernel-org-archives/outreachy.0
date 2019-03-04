X-GM-THRID: 6664550081215070208
X-Received: by 2002:a17:906:350e:: with SMTP id r14mr2197547eja.10.1551711684960;
        Mon, 04 Mar 2019 07:01:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:ae9d:: with SMTP id e29ls4770560edd.4.gmail; Mon, 04 Mar
 2019 07:01:24 -0800 (PST)
X-Google-Smtp-Source: APXvYqxr8GChuy95+/QFfAFs5r/TR3SDbOARwGri7gwBcBfxgMdSvHCd28L9J4k38tiX9bzzbOmT
X-Received: by 2002:aa7:c151:: with SMTP id r17mr2563449edp.9.1551711684274;
        Mon, 04 Mar 2019 07:01:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551711684; cv=none;
        d=google.com; s=arc-20160816;
        b=J0x/hgVgv1DQ6V5GZDTe8cyoVe6/hmkN8GpGNjyqeqpkOQxsKlQ7TEE+z2kpw+a7Dy
         oTZWk91WHgaQZ0bc0EXtbZfkooCrXfkVBdzBRslI0wLJbcbCcVTc/9FZblykvnURxwPM
         8Lf5igDvFwrqhmZI4fK/ToaU+dNzEDMu5XMzS0+0lpPGfbj5AFHtIdvPEksutpaF3fUt
         wJHmm7/xa3OHgUrJuswQltL2xLGIlRVXwaIrld4V4K71XkdAfD9Bp4fb/a/G2NzZs7Ss
         dSZqDEy8Pb/M0Jdq3ey6mxa9Hi8w6RTqjhcWbTbP8UZiAIgbRpFWgNDRruHfXFYFrJoc
         XRHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=byvpSw2Iud9C8hYT/E8U5aVTU+qvYL9SVQfaY15YR5M=;
        b=e8xvM3N8fVBEQsMXfVKbTtz/beUMT2zid2U5XYrS/ysold+/ZxxU822vFDYjbEmk1+
         b6FS3a8nCVjnrYlO4Ehhu9AkOtk/t7GF3uNFgx5QlxJ1g94RFeTI5q8vr1jpvW7DdEfi
         aFJTHc8PVG1jqQpww1db9gmXELba2wVseJVzuCFTbD7PmT4eT4U7MhJXuneB/XvQjyWq
         Zscr4SkbHUswAqY7uvxUlK21g6ttXQoSP+ej+eenYeLs/SlvQbfZoIpfATpAHP7YnkiV
         cQvZZDq7RlUXwZf7fYy8g1Of32uVRKmGY3mtZ8ABLysGyP5PMXNohz7878fzKX3CueRN
         OE/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r37si389315edd.2.2019.03.04.07.01.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 07:01:24 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,440,1544482800"; 
   d="scan'208";a="298033346"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2019 16:01:23 +0100
Date: Mon, 4 Mar 2019 16:01:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Daniela Mormocea <daniela.mormocea@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH] First clean-up
 patch
In-Reply-To: <20190304145801.GA28407@pthm>
Message-ID: <alpine.DEB.2.20.1903041559080.4541@hadrien>
References: <20190304145801.GA28407@pthm>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Please go back and read the tutorial about how to create a subject line.
The subject line will end up part of the git history, so its form is
important.

On Mon, 4 Mar 2019, Daniela Mormocea wrote:

> Fixed alignment issue with parenthesis.

The log message should be in the imperative.  So Fix instead of Fixed.
Also it should say what you did and why.  Fix somehow describes the impact
that you hope to have, but it doesn't really say concretely what you did.

julia

> Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
> ---
>  drivers/staging/wlan-ng/cfg80211.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> index 8a862f7..7c4e8f1f8 100644
> --- a/drivers/staging/wlan-ng/cfg80211.c
> +++ b/drivers/staging/wlan-ng/cfg80211.c
> @@ -332,8 +332,7 @@ static int prism2_scan(struct wiphy *wiphy,
>  		(i < request->n_channels) && i < ARRAY_SIZE(prism2_channels);
>  		i++)
>  		msg1.channellist.data.data[i] =
> -			ieee80211_frequency_to_channel(
> -				request->channels[i]->center_freq);
> +			ieee80211_frequency_to_channel(request->channels[i]->center_freq);
>  	msg1.channellist.data.len = request->n_channels;
>
>  	msg1.maxchanneltime.data = 250;
> @@ -372,11 +371,9 @@ static int prism2_scan(struct wiphy *wiphy,
>  			(const u8 *)&msg2.bssid.data.data,
>  			msg2.timestamp.data, msg2.capinfo.data,
>  			msg2.beaconperiod.data,
> -			ie_buf,
> -			ie_len,
> +			ie_buf, ie_len,
>  			(msg2.signal.data - 65536) * 100, /* Conversion to signed type */
> -			GFP_KERNEL
> -		);
> +			GFP_KERNEL);
>
>  		if (!bss) {
>  			err = -ENOMEM;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190304145801.GA28407%40pthm.
> For more options, visit https://groups.google.com/d/optout.
>

