X-GM-THRID: 6619819947345313792
X-Received: by 2002:a1c:9c55:: with SMTP id f82-v6mr354941wme.14.1541312849441;
        Sat, 03 Nov 2018 23:27:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:f008:: with SMTP id a8-v6ls931212wmb.21.canary-gmail;
 Sat, 03 Nov 2018 23:27:28 -0700 (PDT)
X-Google-Smtp-Source: AJdET5due9RVZgNqIEx+gJBhvyFJkD9niA/Te3S06wjSJj4SMdPJGGfNxW0DGvllGYg+24JOJiQF
X-Received: by 2002:a1c:968b:: with SMTP id y133-v6mr362901wmd.12.1541312848536;
        Sat, 03 Nov 2018 23:27:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541312848; cv=none;
        d=google.com; s=arc-20160816;
        b=B7rwbSfHhcToEZxi7ZMzcaoDiMRnwLQO/gXmC0Ew/OQbYg2G+dNgJnIeieeBhWL2WP
         IW8A/ftxkKGVcBs3i0QttyGONtgJh+qnz/eb7hUnCmZyjWGGe0FwUQO32cvW1f13nDpv
         Uf1bbeRUw2MyTUeq3e7i3jq+MccQ7umzDVzoCQH/Jvo5z+d4i6FYh+JjxNO7VSc+TmwW
         gfx77J1lwFzRWdb/3XJRw/hZ9s0Jmva4I9klLFP71/4hsFvNul1Wz1vLVldIhIqEokku
         oBqB/9pPdseNVrt97G8E1z4RckqE7WBL6JFQ6GEjZTVr6K5oayUv2VHFtqcZ2yUbFjxz
         HRnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=R1WLHXXpVEaPd04KgJa4KtdrSoK3XMsVW82DOfZoCaE=;
        b=gL8lVbxuBJlNxuItM4Z9ou2sdgPPfg7XjKy7vEk7WRZKnp6CgVo785HFjM8AG/sOn2
         9HsN5vsiQ+Jm/OGj2tmEPIxaisTnDgoUI4lmX5T9vJmnJVpG1+uugRlNJecdonXn9On1
         OjQGoMmBBjv20QcApIbFlmvsYorThTOCajAbXfxq/LC1/mkgotVMXcVJuFAAEqpV1Fry
         c8Qid9IF3tJzDawMPhW9w3qkWGTziLnZ2GB47NtxK8BEMwriXsxHnWkDhdoLBEH5ApdJ
         DcL3zVQzftZzJ6RzWeP48xLeHM/LdAp4DOab2n35G5cT4bNLGBrP/MJxaEOtMozVGk0d
         bMTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b12-v6si415992wme.1.2018.11.03.23.27.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 23:27:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,463,1534802400"; 
   d="scan'208";a="284263691"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Nov 2018 07:27:27 +0100
Date: Sun, 4 Nov 2018 07:27:27 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: remove unmatched
 right bracket
In-Reply-To: <20181104020212.GA18914@kvasir.local>
Message-ID: <alpine.DEB.2.21.1811040726060.2448@hadrien>
References: <20181104020212.GA18914@kvasir.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 4 Nov 2018, Ioannis Valasakis wrote:

> Remove unmatched right bracket.
> Reported by uncrustify.
>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

I wondered how such a problem could go unnoticed, but this file seems to
have a lot of other compilation problems that could perhaps also be fixed
up.

julia

> ---
>  drivers/staging/greybus/camera.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
> index 6dded10f4155..c6d65430ea4c 100644
> --- a/drivers/staging/greybus/camera.c
> +++ b/drivers/staging/greybus/camera.c
> @@ -1190,7 +1190,6 @@ static int gb_camera_debugfs_init(struct gb_camera *gcam)
>  		debugfs_create_file(entry->name, entry->mask,
>  				    gcam->debugfs.root, gcam,
>  				    &gb_camera_debugfs_ops);
> -		}
>  	}
>
>  	return 0;
> --
> 2.19.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181104020212.GA18914%40kvasir.local.
> For more options, visit https://groups.google.com/d/optout.
>

