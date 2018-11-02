X-GM-THRID: 6619077441472167936
X-Received: by 2002:a1c:f016:: with SMTP id a22-v6mr23447wmb.0.1541142951351;
        Fri, 02 Nov 2018 00:15:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4dd0:: with SMTP id f16-v6ls2970314wru.18.gmail; Fri, 02
 Nov 2018 00:15:50 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fN2Ii02tukfb3KVYl3JriHub4Jr0DiGo2eYfWCJowgW3qlts/Bpq3ar9Kx9GW36U8K4ILQ
X-Received: by 2002:adf:eb85:: with SMTP id t5-v6mr1052940wrn.32.1541142950630;
        Fri, 02 Nov 2018 00:15:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541142950; cv=none;
        d=google.com; s=arc-20160816;
        b=NbrTNgDDowVpIRghUdx5gKq/MhhRec8+gfSjSM78F+I7qXhBOqcYXLXMx0a9x3XjeN
         Wyz9GQ8xh7znIG8ghthOydRrAFYEtnkp52Zfy7oz+TnRNo2zWe5hnRhW9NsLaAfYL85+
         Tky2RkbGEPoetf1FBQl2/m+SaufYdYtjipeF//qOMTtHsNBjdnU/2BDU8N58UxB1uODf
         yLtOZRTg+O1z2fQlhtV3o7nHusApcTeYuKVEvB6caRTDfjTFXkr8E0lMKIqi15iV6SZe
         XZJqCiGcWLE7X5MdvOIKu6mkNNL+vR7X6LfsqkgRIAFZy1E5PvUmM/gKo6EYs7RWnYiH
         +wow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=6yk0l7SgLl2jlfVLwNRVymkGDbaa4rL6MMpRjX437Qk=;
        b=ayWivTtr8c9w9ECRh9KOP+Mrt9pOQG5zJAaOX8cdvJhQSGjpfb7N9aOySAYnkxBKd7
         LYs7ZD/Czvx2rr+PkxyYPCwOSZJHqMM5mdmbU1VboJscYS7u3g/F22cbj7OhUe9bsLT6
         VRYgnSEvo4iMg7Zp/i0h4NuXND8PldeoXh33huVZnACTpyOYMuFk+IZYcAHZU6O6iefc
         wa5ppZ6Lss2fI8wUMQUwtg8IY5U+rhSv1X24cWukvL1T4gYd+lyN5AFwdJ5VbZs85Et1
         pzYhF+5pwYw+7kPxKSTvha149wz6TCDru73TTbyQN7Pc+nX6Kc20PvWNtYkvPGyKiIou
         gfEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 191-v6si21204wmv.0.2018.11.02.00.15.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 00:15:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,454,1534802400"; 
   d="scan'208";a="284138601"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Nov 2018 08:15:50 +0100
Date: Fri, 2 Nov 2018 08:15:49 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: greybus Fix styling,
 parenthesis matching
In-Reply-To: <833e98c464540e296f7a577fe672ab5c7931ee10.1541123999.git.code@wizofe.uk>
Message-ID: <alpine.DEB.2.21.1811020810590.3064@hadrien>
References: <cover.1541123999.git.code@wizofe.uk> <833e98c464540e296f7a577fe672ab5c7931ee10.1541123999.git.code@wizofe.uk>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 2 Nov 2018, Ioannis Valasakis wrote:

> Fix two instances where a styling issue is found. That is unmatched
> parentheses correct to match.

This makes three changes and the second one is quit incorrect.
The first sentence of the log message gives no information.  I don't know
what s styling issue is; there are lots of them.  I don't understand the
second sentence, and I don't see the connection with the change that is
made.  It looks like Align parameters to the right side of the
corresponing (.

Sorry to be picky about your English, which seems to not be your native
language.  I realize that of my suggestions, only "avoid fix" is the only
one that is easily generalizable.  Still it is important to be clear.  For
what you want to say, try to find an appropriate verb, and put it at the
beginning of the sentence.  Your messages often contain many words, with
the important part coming later.

julia


> Reported by checkpatch.
>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/greybus/core.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
> index dafa430d176e..d28773e06838 100644
> --- a/drivers/staging/greybus/core.c
> +++ b/drivers/staging/greybus/core.c
> @@ -28,7 +28,7 @@ int greybus_disabled(void)
>  EXPORT_SYMBOL_GPL(greybus_disabled);
>
>  static bool greybus_match_one_id(struct gb_bundle *bundle,
> -				     const struct greybus_bundle_id *id)
> +				 const struct greybus_bundle_id *id)
>  {
>  	if ((id->match_flags & GREYBUS_ID_MATCH_VENDOR) &&
>  	    (id->vendor != bundle->intf->vendor_id))
> @@ -48,7 +48,7 @@ static bool greybus_match_one_id(struct gb_bundle *bundle,
>  static const struct greybus_bundle_id *
>  greybus_match_id(struct gb_bundle *bundle, const struct greybus_bundle_id *id)
>  {
> -	if (id == NULL)
> +	if (!id == NULL)
>  		return NULL;
>
>  	for (; id->vendor || id->product || id->class || id->driver_info;
> @@ -266,7 +266,7 @@ static int greybus_remove(struct device *dev)
>  }
>
>  int greybus_register_driver(struct greybus_driver *driver, struct module *owner,
> -		const char *mod_name)
> +			    const char *mod_name)
>  {
>  	int retval;
>
> --
> 2.19.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/833e98c464540e296f7a577fe672ab5c7931ee10.1541123999.git.code%40wizofe.uk.
> For more options, visit https://groups.google.com/d/optout.
>

