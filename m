X-GM-THRID: 6620380698493583360
X-Received: by 2002:adf:ae19:: with SMTP id x25-v6mr2157411wrc.4.1541427778754;
        Mon, 05 Nov 2018 06:22:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:b7c2:: with SMTP id t2-v6ls5468878wre.27.gmail; Mon, 05
 Nov 2018 06:22:58 -0800 (PST)
X-Google-Smtp-Source: AJdET5dlkCSJUbetbxa93c09Mu5XkRTQrr2WN5dmhliVCgh1mHal1yt/zTKyWe8wiy13p/gicLXk
X-Received: by 2002:adf:9bc9:: with SMTP id e9-v6mr2223258wrc.2.1541427778195;
        Mon, 05 Nov 2018 06:22:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541427778; cv=none;
        d=google.com; s=arc-20160816;
        b=PvrbLlhPOVPmJSXES3IvOUVlXptLCkl19nFDLNF7bXTDTHHLsDsctN8Kc6f6/ydIR6
         LBzRBWD/oZ8ECDDjta3F0oZP1u45Ia4bb6wxPGRxyL7zjQ6E+V9EO39RnRtSh0Re8YGt
         VAqaK6/qDkrraFYgw/mKZEZXIPW/2b8Mpu4XQGCJDLljJSYue8BsvooKvGJenWSorGEH
         EFzFputriPsoNkBVOl+DEr7amsaeG7VQ/KPcA8UDv5im/Np/GItly/7xRfQ8AmopBO5y
         6zahqDDCBo9DZjTrS1i1RV/GFp0w5z2pmYbUsXY69b9tp1YwsSgdOYG8AlFAUgJDtTHK
         EYpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=LRSjHI2kZwukAEeEnOjEHepIO+MAbhtaDWUF8aozUWA=;
        b=C0sp8bzeAR+oGeBINdiBLD/RouIdsoGS/43BKQCutF8bW5BvXF8mGM0iD9YoE6FacP
         fwG+QDfPm3O/vY/nfY9Ho5OZC7khQFp8SZSS734SBiSoSNK8cimK0r9WY+Yd3qf7Z7gC
         Jt1S3BCDNU0bOb25/tXTPqlxqnluFpsZphcj/k1GyohiSDUrzfgxqbNvd41wOocd8P4N
         kWDoTQ7SpXOe7UEwOigUe6R1fRv9iqsfhKstkzfBza6DyVhjgiXjhSHXUq0DZlB17RxP
         89JSq7hgfSPXQFr8bn4TPB2a8zVkEUdrBk5ENVuK3+ZpSNHTyOKudkLQveP+8/+yD6x1
         N1zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id z62-v6si162990wmc.2.2018.11.05.06.22.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Nov 2018 06:22:58 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,468,1534802400"; 
   d="scan'208";a="284388983"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Nov 2018 15:22:52 +0100
Date: Mon, 5 Nov 2018 15:22:40 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 05/14] staging: greybus Shorten
 comparison to NULL
In-Reply-To: <abb81a5c17d259dcd043049d3d77b704a364b437.1541427415.git.code@wizofe.uk>
Message-ID: <alpine.DEB.2.20.1811051522080.31780@hadrien>
References: <cover.1541427415.git.code@wizofe.uk> <abb81a5c17d259dcd043049d3d77b704a364b437.1541427415.git.code@wizofe.uk>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 5 Nov 2018, Ioannis Valasakis wrote:

> Shorten pointer NULL check by simple truth test
> Reported by checkpatch.
>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/greybus/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
> index d28773e06838..0ed3b0ffee5a 100644
> --- a/drivers/staging/greybus/core.c
> +++ b/drivers/staging/greybus/core.c
> @@ -48,7 +48,7 @@ static bool greybus_match_one_id(struct gb_bundle *bundle,
>  static const struct greybus_bundle_id *
>  greybus_match_id(struct gb_bundle *bundle, const struct greybus_bundle_id *id)
>  {
> -	if (!id == NULL)
> +	if (id)

This is not the right starting point.  It is on top of on of your
incorrect patches.  Overall, I think you have done something wrong in
redoing this series.

julia

>  		return NULL;
>
>  	for (; id->vendor || id->product || id->class || id->driver_info;
> --
> 2.19.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/abb81a5c17d259dcd043049d3d77b704a364b437.1541427415.git.code%40wizofe.uk.
> For more options, visit https://groups.google.com/d/optout.
>

