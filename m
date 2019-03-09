X-GM-THRID: 6666274038276423680
X-Received: by 2002:a05:600c:2110:: with SMTP id u16mr1733250wml.11.1552113484103;
        Fri, 08 Mar 2019 22:38:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:d04e:: with SMTP id h75ls149679wmg.0.gmail; Fri, 08 Mar
 2019 22:38:03 -0800 (PST)
X-Google-Smtp-Source: APXvYqwzcgW4Sj39w5z+mNICn38Ay4C8Q1j8i4no0NZUGpYT60UYiR0UCO8x6dqdb9Si4oKdvPXi
X-Received: by 2002:a1c:cfc8:: with SMTP id f191mr1539502wmg.17.1552113483284;
        Fri, 08 Mar 2019 22:38:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552113483; cv=none;
        d=google.com; s=arc-20160816;
        b=zRA5m22/NrXqhRWdV8QbM82sFfOdQVF3wRur4IulM/abm8VdJWqKOfw44ExaJWh18A
         HQDq+9w3u3MrZRPhfvL4jOBOwPlxcoBL6a4g9BvpaCdDiZHa8eO+A5rLAdBXvrCD6z75
         TOIl/o8kEOzza7YpAQU0ekrceEFY8Y04nz9WQGb673qDMiP+82fKtXOcMYWarq/JOVFK
         dbslVRL9bIVdz62F8TkrqrL6CpGYVZPfYZZUx9s7cKUUNrLB2Mlr9gP71fQ8M9j9Cncy
         B8omIlIQbLYBs3wOnCh+I53+2BDyt6ULBlILEvBShEVKJs0e/hBQa2K69BBQvSTnScqt
         n2Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=S1E4d16XZwWXc7Kqek50W7pjcacDl6o42bsAEr6eLPw=;
        b=QMiz65ZRPS2TZN8iXgOvcsPnFPitP8tSumsAbRPGAIJyQSyyQ/aJ4TQVbZe7KmJqPx
         IOtuefKhQmt6pYCcPzsGvVeUoaDe32UMtcQpw0se9vLwvO3z0pXbI7puPlI2TvizO/9m
         jUMAkUnQ1gSE2Tro1cRiuBasDWKpP+EOkRp476zzQSsX+sr3ir+PDhTpn9lkhcWESQq5
         Yea5kxj9UhS5NRmEM20Qy5Sq7vW2W0zrlLZdHxIg2xu+3K1O5t+Fjb/+MivwEI2DDmOR
         DxW0gi2c0codWQ+9q/hL5GyfUjq7nv3B0SmO/UR5VGfkQPy4b48WbgZjneThL3GE/0Mq
         +Ncw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r15si464503wmc.4.2019.03.08.22.38.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Mar 2019 22:38:03 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,458,1544482800"; 
   d="scan'208";a="298635586"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2019 07:38:02 +0100
Date: Sat, 9 Mar 2019 07:38:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Branden Bonaby <brandonbonaby94@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: Fix assignment
 operator alignment
In-Reply-To: <20190309031718.GA18429@branx011-Vostro-430>
Message-ID: <alpine.DEB.2.21.1903090734060.2558@hadrien>
References: <20190309031718.GA18429@branx011-Vostro-430>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 8 Mar 2019, Branden Bonaby wrote:

> Fixes confusing assignment operator alignment as highlighted by checkpath

The commit message should be in the imperative.  Fix rather than Fixes.

Fix is actually, not a very good word, because it doesn't describe what
you actually did.

checkpath -> checkpatch

I believe that checkpatch would also be warning about an ( at the end of
the line, and the change has preserved that problem.  Maybe a better
solution would be to leave the function call where it is and move the
argument up to the same line.  If it seems more readable that way, going
slightly over 80 characters could be OK.  One would have to see how it
looks.

julia

>
> Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
> ---
>  drivers/staging/wlan-ng/cfg80211.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> index 8a862f718d5c..95105e597160 100644
> --- a/drivers/staging/wlan-ng/cfg80211.c
> +++ b/drivers/staging/wlan-ng/cfg80211.c
> @@ -331,9 +331,8 @@ static int prism2_scan(struct wiphy *wiphy,
>  	for (i = 0;
>  		(i < request->n_channels) && i < ARRAY_SIZE(prism2_channels);
>  		i++)
> -		msg1.channellist.data.data[i] =
> -			ieee80211_frequency_to_channel(
> -				request->channels[i]->center_freq);
> +		msg1.channellist.data.data[i] = ieee80211_frequency_to_channel(
> +						request->channels[i]->center_freq);
>  	msg1.channellist.data.len = request->n_channels;
>
>  	msg1.maxchanneltime.data = 250;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190309031718.GA18429%40branx011-Vostro-430.
> For more options, visit https://groups.google.com/d/optout.
>

