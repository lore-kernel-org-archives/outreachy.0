X-GM-THRID: 6750702621918494720
X-Received: by 2002:a1c:f20e:: with SMTP id s14mr3859719wmc.118.1571770920767;
        Tue, 22 Oct 2019 12:02:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:efce:: with SMTP id i14ls9285505wrp.10.gmail; Tue, 22
 Oct 2019 12:01:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxXNkY9LFp2nt6W1Fdsvz4lHfA5dOD23Mo8+gGRzWVSazE2K+/u+q15X9oBJrzmmJb0aZyb
X-Received: by 2002:a5d:4f89:: with SMTP id d9mr4998429wru.286.1571770919428;
        Tue, 22 Oct 2019 12:01:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571770919; cv=none;
        d=google.com; s=arc-20160816;
        b=uAJMOE730gZ2MiyZlejemMukwsEjnXNbfcrU28L6qlrkgmDB7sbUdLvt4a1X69i2fT
         sZfYjLQ8WAQd1gSWTNFWJo3/AdugSws8P9vNRi328kKRyRQd0yMXv0ds5Umn4DS/ZEg2
         2KVaOPEVQvk76Mc9mA5MoUIPlMjJrzHV4KfniruCjUHYEFYoCRiMyRyteMGfurjm8CRT
         do9/14LNZkqejfhWdyE58VA0zGc6t6xWsyGWVzxKGU57Jn/iAMC8KqIkJE3UODmnCGLl
         5hwad9lS5n2j/e9NSiZmJMkFaKxhs/kwnU2vZCSDHBY6dOmsSrOGfn/KNKszmS8jrXuk
         78hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=td4k0shmKmcW8w2bO79E5FoQeYUnpll+oLkRorLUyxs=;
        b=FOXAPXreC4oIPSFV2rK7uR96xkKyz8C8lYDXMj1SnCrDvMOttKXSadDbI7O4447MX/
         CiHxyCiimhVEvOi3kdcws+u12Abt2GAyyu8+shtWrNUqtBiReeAEhfkdK67IqOvvxM/C
         9LWn3hRh6iqmRieokbT4slXdrLOGhQTVfRhHY9ERd3kLCZp/Qxxt8H/Uz8oqga49tlTH
         9ZQwy2CdsrdOpIg3NlYSlDbvJqaq+425Fc7R1lJlUn/RX9gEoiXY0ij0RulECqBW7Koz
         7OVQlBxFHnlnhW/Tw2QwYjy1H4DtZzngqYroHsJRyCOlXBkA9DncibPtWNXiuJ++CAho
         kL8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p15si994731wrj.0.2019.10.22.12.01.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Oct 2019 12:01:59 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,217,1569276000"; 
   d="scan'208";a="323819085"
Received: from lstlambert-658-1-191-178.w80-13.abo.wanadoo.fr (HELO hadrien) ([80.13.206.178])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Oct 2019 21:01:58 +0200
Date: Tue, 22 Oct 2019 21:01:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: julia@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [PATCH] staging: uwb: fix coccinelle warnings of comparison to
 bool
In-Reply-To: <20191022185328.9387-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1910222101240.2349@hadrien>
References: <20191022185328.9387-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 22 Oct 2019, Jules Irenge wrote:

> Fix warnings of comparision to bool.
> Issue detected by coccinelle tool.
>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> ---
>  drivers/staging/uwb/rsv.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/uwb/rsv.c b/drivers/staging/uwb/rsv.c
> index f45a04ff7275..d593a41c3d8d 100644
> --- a/drivers/staging/uwb/rsv.c
> +++ b/drivers/staging/uwb/rsv.c
> @@ -614,7 +614,7 @@ int uwb_rsv_try_move(struct uwb_rsv *rsv, struct uwb_mas_bm *available)
>  	struct uwb_rsv_move *mv;
>  	int ret = 0;
>
> -	if (bow->can_reserve_extra_mases == false)
> +	if (!bow->can_reserve_extra_mases)
>  		return -EBUSY;
>
>  	mv = &rsv->mv;
> @@ -643,7 +643,7 @@ void uwb_rsv_handle_drp_avail_change(struct uwb_rc *rc)
>  	struct uwb_rsv *rsv;
>  	struct uwb_mas_bm mas;
>
> -	if (bow->can_reserve_extra_mases == false)
> +	if (!bow->can_reserve_extra_mases)
>  		return;
>
>  	list_for_each_entry(rsv, &rc->reservations, rc_node) {
> --
> 2.21.0
>
>

