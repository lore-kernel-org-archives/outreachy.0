X-GM-THRID: 6616189865324183552
X-Received: by 2002:a17:906:25c1:: with SMTP id n1-v6mr1631658ejb.12.1540809885856;
        Mon, 29 Oct 2018 03:44:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:bc02:: with SMTP id j2-v6ls1898327edh.3.gmail; Mon, 29
 Oct 2018 03:44:45 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cWtbG97NpOpSYZFTv0JxZ2m+tQQ4GU1RNeBCnRc5LRi/uxheRqiKJ4+NGJA3QfFhOspbSP
X-Received: by 2002:a50:eb4c:: with SMTP id z12-v6mr1942955edp.0.1540809885033;
        Mon, 29 Oct 2018 03:44:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540809885; cv=none;
        d=google.com; s=arc-20160816;
        b=sAPC6mdNLNqcNG0gKFrkiE0WRtcsP15bLCuDxuNltUm11F1V1mvDZZ+HPOob1VS6Fo
         Oios0PP1PJbqGYyOwNgkNsVkv5g+od7IG2JVw4rERqK9CwJXfMOvoV5YcawmcUnY91MI
         oS8NQzLDJO7NBheXx3CjyFzS/xeFZcU6OeLL8Qprfkwphl2ReST6gQEvG+lThrU7BqUs
         eaPfADCq+ufVeQbSK+Z/stFk79pQo6WazlbDAeLGQurLX+rhCbsTX4uYYkH2dGwSC0zP
         bHCCaWLIpVZ7zQws07Vpp9lt0/0owFRHV8fkq+kR0GBKGAOutua75h/RcSZ5ybKCOcuo
         8JIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=SE5AwintgRHu8Vi3xCrAS47cVU7lWttQtFtz6tBtR+U=;
        b=xC4yjfMf3HwjEeCFEXsHbgTKUG7tnfJqjNqTHRa4RmF7SXC1RyKFItrzrcXhly+BQz
         80AVJrmeZymD1yYq/1VvO40wT4P82p7+4BuzRgfopJhkKY+tXcwIUap/Cedv1yvX96Qn
         ZpuvnjcmIyeIfHeG+A/FSVHUsmeIQPI3akap5tlYnPxZVsHLWUPci2GLjSGc6hJ4q+2t
         J6ODoR9Nroku68shQ0rIf6KALlB/9lUAygQSwI0XJB5tGXdeRGqtVsbkBjLFRRjAt1/O
         4JzOdvXu4NEz76bUcuULR8hKBQ7Aylh9GipcMYxXH7SIdVvIzVIP3YsxYxqkkgq0irV+
         355w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m25-v6si562881ejb.1.2018.10.29.03.44.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Oct 2018 03:44:44 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,439,1534802400"; 
   d="scan'208";a="283670385"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Oct 2018 11:44:44 +0100
Date: Mon, 29 Oct 2018 11:44:35 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Kim Bradley <kim.jamie.bradley@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCHv2] Staging: rts5208: Capitalise
 preprocessor variable names
In-Reply-To: <20181029103817.GA7719@xubuntu-vm>
Message-ID: <alpine.DEB.2.20.1810291144183.20217@hadrien>
References: <20181029103817.GA7719@xubuntu-vm>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 29 Oct 2018, Kim Bradley wrote:

> Capitalise header preprocesser variable names (and all
> occurences) to remove checkpatch camelcase warnings.
>
> Signed-off-by: Kim Bradley <kim.jamie.bradley@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
> v2: Left some camel-case uses (namely xD) - they may refer to
> xD picture cards, as suggested by Julia Lawall <julia.lawall@lip6.fr>
>
>  drivers/staging/rts5208/xd.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h
> index bf21bf0d1616..57b94129b26f 100644
> --- a/drivers/staging/rts5208/xd.h
> +++ b/drivers/staging/rts5208/xd.h
> @@ -90,7 +90,7 @@
>  #define	NO_OFFSET			0x0
>  #define	WITH_OFFSET			0x1
>
> -#define	Sect_Per_Page			4
> +#define	SECT_PER_PAGE			4
>  #define	XD_ADDR_MODE_2C			XD_ADDR_MODE_2A
>
>  #define ZONE0_BAD_BLOCK			23
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181029103817.GA7719%40xubuntu-vm.
> For more options, visit https://groups.google.com/d/optout.
>

