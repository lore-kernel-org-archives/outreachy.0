X-GM-THRID: 6528703529529376768
X-Received: by 10.80.232.139 with SMTP id f11mr2850725edn.5.1520095332399;
        Sat, 03 Mar 2018 08:42:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.170.50 with SMTP id o47ls6129263edc.3.gmail; Sat, 03 Mar
 2018 08:42:11 -0800 (PST)
X-Google-Smtp-Source: AG47ELt/GwEWupMMR3qnCBadKuFi4K196KdLm71xOmTFdMn0eYEcXjoX1oB78vYjOb3kMK/WefPi
X-Received: by 10.80.243.7 with SMTP id p7mr2852126edm.1.1520095331478;
        Sat, 03 Mar 2018 08:42:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520095331; cv=none;
        d=google.com; s=arc-20160816;
        b=cfdEfq5Zt+ikrVPU1i6cGnDuSbm3mJSBlkOOR8+i7KleQOwLSy3WawaaRoyKjHkjLC
         p4mYWgRIWpeD3DWxeA7Y+MvcFh3HNqQ0MOgd/26ItZtzf52TLMslYMO20EG2X/ik/g/5
         R/UtaBsJyVlDkls/9dhEISC8V3IQso1fA4IneqmQq/qmoaHpXep1A1n4qG8aIitVtBFV
         6iWuql/K3XjkJ5aQdNcnUB7tFbMsl0YcHIsnTtD0nVVycTTiBR5yw3D5wwL26bOqBLQ/
         JqbMZ6MlL3xWuq7ALyeaJFdVIOj3Sa5CVxOALZFLu3czVQKzsf5kkqfzsEKeUQCx2KrF
         GARQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=BP71UJQzfBkYtNvndbetncyMlqjerYGVxOJ1G+eyfXo=;
        b=YQofB6Tj/6MEm0HW1xv2hDip5bH5Q6cvWkJhPlAVOgrQZ+Ls2bFeEvaKJK8mxaNtJN
         Ya8pp/iTicXplNXAt/3ctYOVPXy/9VdSmjVEUzXbIF+GDJeG20Abt2EKYFALgG6bwa5X
         k9K4bw1g7Z6oJn1AZ7V9uGp9yki8bxOdQfURVu568ZGOhE3vW+c0/R3cxkrUjuYF3S/w
         sWOYJrbZGqhq+L2jq9BPFYDV1pnTAimmk1vjtNhUYTuJanYHG5eCCkwHSuCNZ5xdpks/
         YqjgVqbJgg7fyI5EdkIkXWNf2oiLuwZqsv1YgkVFFhIJ1HKa/CJr7uk9E0r4kxmNcraK
         Z0FQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y16si584589edc.1.2018.03.03.08.42.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 08:42:11 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,418,1515452400"; 
   d="scan'208";a="316224938"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2018 17:42:11 +0100
Date: Sat, 3 Mar 2018 17:42:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] infiniband: hw: Drop unnecessary
 continue
In-Reply-To: <20180303162457.GA21730@seema-Inspiron-15-3567>
Message-ID: <alpine.DEB.2.20.1803031741400.9544@hadrien>
References: <20180303162457.GA21730@seema-Inspiron-15-3567>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 3 Mar 2018, Arushi Singhal wrote:

> Continue at the bottom of a loop are removed.
> Issue found using drop_continue.cocci Coccinelle script.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
> Changes in v2:
> - Braces is dropped from if with single statement.
>
>  drivers/infiniband/hw/qib/qib_init.c | 4 +---

You should be working on drivers/staging code.

julia


>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/infiniband/hw/qib/qib_init.c b/drivers/infiniband/hw/qib/qib_init.c
> index 3990f38..6c68f8a 100644
> --- a/drivers/infiniband/hw/qib/qib_init.c
> +++ b/drivers/infiniband/hw/qib/qib_init.c
> @@ -678,11 +678,9 @@ int qib_init(struct qib_devdata *dd, int reinit)
>  		lastfail = qib_create_rcvhdrq(dd, rcd);
>  		if (!lastfail)
>  			lastfail = qib_setup_eagerbufs(rcd);
> -		if (lastfail) {
> +		if (lastfail)
>  			qib_dev_err(dd,
>  				"failed to allocate kernel ctxt's rcvhdrq and/or egr bufs\n");
> -			continue;
> -		}
>  	}
>
>  	for (pidx = 0; pidx < dd->num_pports; ++pidx) {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180303162457.GA21730%40seema-Inspiron-15-3567.
> For more options, visit https://groups.google.com/d/optout.
>

