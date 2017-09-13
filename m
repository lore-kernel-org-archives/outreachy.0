X-GM-THRID: 6465205340686254080
X-Received: by 10.31.190.6 with SMTP id o6mr10451941vkf.55.1505303696598;
        Wed, 13 Sep 2017 04:54:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.41.196 with SMTP id p187ls3178820itp.9.gmail; Wed, 13 Sep
 2017 04:54:55 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb4AQUWbUavcwu6JhG2M4KwnYDZ2I/lE0GIfMOITj5kcvb5jPxGj1HgxyL1hAseFUGIHyUmU
X-Received: by 10.99.146.24 with SMTP id o24mr11044606pgd.166.1505303695637;
        Wed, 13 Sep 2017 04:54:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505303695; cv=none;
        d=google.com; s=arc-20160816;
        b=kMQjtlYUEvgFgxSlEgdIe9M+SdPLFSCEaZXTO+wIO94EpwIrfkDvNBKfWEHnQcDpRl
         lSR0Iqjjzs4M9hWUf7Fr3/okt5rhy0AeHjg2VxMOm2AnAq1oeyIn+nG7LAeZhrkJgG4u
         jxIHiKWk8KzleqqNayK+j0xJiOdPfCGOYUVYIL6/Z8RDKEjby3tT7f7w3PbK+bqSmsJC
         LtlE4uDtNWILyNyFbZUENKc3hDMx8EQe+yKCznEbPSoeDUk4UBJOraTteR4nQ4vNLfR3
         Pl5wtRyfFdv0DtZsZ05ZCbV6q5vS4hWx7xVoG+2IrA9jcTgIqVDzI89Cvfr2qqQhOPOQ
         Wu7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=GdcICFPef5VJen9q8OG7R7Xf3GD/BsUDxHZlibFNrC8=;
        b=oaw6Z+fzrAHEWdQWh6ecjvgk3VuZsfyj62qdvN04ITWyycvh59UItaTL/VE51Tnr/F
         vCMMp6Rml83aAb9/fKf8Ht5ZN16KbOSZdjOJtjAUSrPqpf3ObOrdY8XH5Y/b2jR9jWWy
         /ZdXPaYiT7V7j0D3c36UK9Ti5fHbAs9lVuyrdySLz0IICuF4Q9rWCuN3e/ud+03DbcnH
         ko6nPDwzmSM2EU7T8CzNKqOg/L1eefLXjc5CJiGNY8zxdkOBNZIEIZ0UonqEJoAXatMg
         0424GIBwNVZ1Usr6+mcI81zbbQA8gdjRzybT7f+GQ/GPBDOhKoXkD39DYuUJMy/JTO6W
         NpdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m186si24205itd.9.2017.09.13.04.54.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 04:54:55 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,387,1500933600"; 
   d="scan'208";a="237330325"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Sep 2017 13:54:53 +0200
Date: Wed, 13 Sep 2017 13:54:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: Daniel Vetter <daniel.vetter@intel.com>, 
    Jani Nikula <jani.nikula@linux.intel.com>, 
    Sean Paul <seanpaul@chromium.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/3] GPU: DRM: drm_agpsupport.c: Code
 cleanup
In-Reply-To: <cover.1505296813.git.meghana.madhyastha@gmail.com>
Message-ID: <alpine.DEB.2.20.1709131352550.26484@hadrien>
References: <cover.1505296813.git.meghana.madhyastha@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 13 Sep 2017, Meghana Madhyastha wrote:

> These patches fix the checkpath warnings and errors
> in drm_agpsupport.c
>
> Meghana Madhyastha (3):
>   GPU: DRM: Moved EXPORT_SYMBOL so that it immediately followed its
>     function
>   GPU: DRM: Replace "foo * bar" with "foo *bar"
>   GPU: DRM: Remove assignment in if condition
>
>  drivers/gpu/drm/drm_agpsupport.c | 41 ++++++++++++++++++++++------------------
>  1 file changed, 23 insertions(+), 18 deletions(-)

Are the DRM people going to pick this up?  Because Greg will not.  If you
do something that is outside staging at a mentor's suggestion it could be
good to make explicit that the mentor will make sure that the patch will
be applied.

thanks,
julia


>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1505296813.git.meghana.madhyastha%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

