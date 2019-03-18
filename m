X-GM-THRID: 6669620815232761856
X-Received: by 2002:ac2:4292:: with SMTP id m18mr729757lfh.3.1552893365475;
        Mon, 18 Mar 2019 00:16:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:3612:: with SMTP id d18ls325791lja.8.gmail; Mon, 18 Mar
 2019 00:16:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyZa+V7G32KVUAbtWU8T+AqPyLjrZ11DQGC70BCGRK3PFA1X2azloewHstFcFQzJEInE0UZ
X-Received: by 2002:a2e:290:: with SMTP id y16mr834356lje.20.1552893364651;
        Mon, 18 Mar 2019 00:16:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552893364; cv=none;
        d=google.com; s=arc-20160816;
        b=C5W3bsyqMWmuPe5m2jdLv7DFh9A1Bu5hTND9acOrj5EbX6CdcWKt+av8nbsbIik+hR
         5ltvptjhPhq8fMybMDvZrVa/TFf4et2rA+PRdG32m/BKojw0e8ILgVoA7Av/FrGWS7Vr
         AvJmY/EZl1Bb/A70PJ48gXOrgN5B7X/6C5MlaPmxyWwlkGTsNk2JgTMX/CFPeUT+U6S6
         myt5mhxPqaQLINb/fLbIV6PBC0g4cqfHf9cJfn4JMyZGs0oD8ryLMyqabWXwZ1LOqc4K
         zfIPH7TPWXiFZ9XWSIu1Ti1QSc7PvlF4K8/lJe0BDovNG1P8HtEveMWeEMioHkRQ2+tC
         g2qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Z6GN6FZJEoJrGvh3805irFQIZQoA57xJ/2rfJa92yqM=;
        b=QhKoQx/I1gvtQrz92MeHV98O1+bVEBGqlwCTAj8SYD2cfvYXI4moi+A0cr9l42q3vc
         LFu4vjp1Y3ii4u8VsCKsOhRxaXWb5YBagYQwjG1UQEVjHNc6BWJG/uZbdDTUlnyGilt1
         u5VwA/dpcbNY4tXt8pU1QUASLT3pACoDkUf4t70ReGo5giQhusf0GrD91aRsah+Q7oTa
         RXepFPFYuJkXqA3L0afJn+v2bOy/D/GnY5574resBwrwKLjz5iWS7Zkhr81xyuvOuRp3
         20630UVRMuWZGMgdGuYHTi3vfkVr8dKZbGiviAoIHi8eKb0vbYtSSgOVX12Z8FrLO1wh
         p8pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h14si524479lja.2.2019.03.18.00.16.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 00:16:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,493,1544482800"; 
   d="scan'208";a="374442262"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Mar 2019 08:16:03 +0100
Date: Mon, 18 Mar 2019 08:16:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: greybus: give comment
In-Reply-To: <1552892088-20069-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
Message-ID: <alpine.DEB.2.21.1903180814280.2824@hadrien>
References: <1552892088-20069-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 18 Mar 2019, Payal Kshirsagar wrote:

> Comment given to struct mutex lock; in file named as
> drivers/staging/greybus/audio_codec.h at line no. 75
> This object is being used in audio_codec.c,audio_topology.c files.
>
> Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
> ---
>  drivers/staging/greybus/audio_codec.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/audio_codec.h b/drivers/staging/greybus/audio_codec.h
> index 9ba09ea..31e857f 100644
> --- a/drivers/staging/greybus/audio_codec.h
> +++ b/drivers/staging/greybus/audio_codec.h
> @@ -72,7 +72,7 @@ struct gbaudio_codec_info {
>  	struct list_head module_list;
>  	/* to maintain runtime stream params for each DAI */
>  	struct list_head dai_list;
> -	struct mutex lock;
> +	struct mutex lock; /* protect critical section for audio gb */

I don't think the information provided by the comment is helpful.  All
locks protect critical sections.  It's likely that this lock protects
fields in the same structure, but which ones?  Do all accesses to the
structure need the lock or only certain ones.

julia

>  };
>
>  struct gbaudio_widget {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1552892088-20069-1-git-send-email-payal.s.kshirsagar.98%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

