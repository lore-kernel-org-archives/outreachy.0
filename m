X-GM-THRID: 6619380955766325248
X-Received: by 2002:a1c:2d4b:: with SMTP id t72-v6mr7540wmt.18.1541229430431;
        Sat, 03 Nov 2018 00:17:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:60f:: with SMTP id 15-v6ls639023wmg.19.gmail; Sat, 03
 Nov 2018 00:17:09 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cSZlh6/o/77NRfhn3K1eTiNVZWfhOQY+fcMUt9Kgkv4kmfHoh5CXEhwHIiOPusS0uk1t3e
X-Received: by 2002:a1c:f308:: with SMTP id q8-v6mr7929wmq.0.1541229429523;
        Sat, 03 Nov 2018 00:17:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541229429; cv=none;
        d=google.com; s=arc-20160816;
        b=QEjQY7SkZQbzkQIbV7bStu3nCJ0fL/gVJtRSIDhu3XN0+7pTvD5URZWGzW1GM/uKau
         EupraREsW9myIFqQN6mGiwW+BL9MhpM+rkG0MnIucEOOOqVn2d3mDsk8qhOW/7HsLmpj
         XcbfWP2wbYlvIQmIBdZBb5ecSPuJ+n3f2apyCSX4xQ8DFRLnsXA/mmDEiF9Kve6zu3L9
         DIRXJvRMbvD1AjcFijpFfYb4rPH03WiTqHLBc9eYMq6GhvR/TVeZPp3+zg5kDYPvKnf6
         431NAhrUTIwe/ewaYivfzTQYS0Kuny6MwPPHn4vETjuN2WU58U9OLTuTg3qOWNDvc0Lm
         Vo6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=NAqSVB6bRjsClnpL+KqPG7zQEnlHmVWEOayOOP+y1Dg=;
        b=QojXfslrPlYmXKWPh9xmwriYTdFDxlsdM8if9Qn8VWPyQMp7tI9k3o/taOyuZxxi/5
         i9YzE2MaAtcvv/wHNP7zsD1TtUo+Ys8p5u5s1/4hm3J/tn15i776KrokDeaTWbgVB8U7
         ROKos2oNrA/XRCnRjBermTkb1xHetcbIqMTbPGXXIhs5JVOKKeSRndL48MErsy5Pdg5F
         uBtoKNRg80f2Zz8RzAXJlYlbW+xjuUYxNqXAGZxnZcCOxBdbqWKE/uJM4BwrWiFfdIRF
         Ap12CWuZsSYrOgL9SWwOfid59LI5xUEItvJdr/RZgXpP/yFhNdjPsbxIJSOlt32q/4ni
         dbjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 191-v6si135664wmv.0.2018.11.03.00.17.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 00:17:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,459,1534802400"; 
   d="scan'208";a="284221899"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Nov 2018 08:17:08 +0100
Date: Sat, 3 Nov 2018 08:17:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v3 1/5] staging: greybus Align parameters
 to parentheses
In-Reply-To: <537e6bd9f572df1cce6fc8624471a9c7c2714c35.1541194567.git.code@wizofe.uk>
Message-ID: <alpine.DEB.2.21.1811030816270.2922@hadrien>
References: <cover.1541194567.git.code@wizofe.uk> <537e6bd9f572df1cce6fc8624471a9c7c2714c35.1541194567.git.code@wizofe.uk>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 2 Nov 2018, Ioannis Valasakis wrote:

> Align parameters to the right side of the left parentheses
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

This change is still wrong and is still not coveredby the log message.

I think it would be better to start over rather than trying to fix up this
series, because it is not progressing.

julia

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
> ta
> ioannis
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/537e6bd9f572df1cce6fc8624471a9c7c2714c35.1541194567.git.code%40wizofe.uk.
> For more options, visit https://groups.google.com/d/optout.
>

