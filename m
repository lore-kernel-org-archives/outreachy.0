X-GM-THRID: 6803797198848917504
X-Received: by 2002:adf:cf08:: with SMTP id o8mr18799849wrj.192.1584133510329;
        Fri, 13 Mar 2020 14:05:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a799:: with SMTP id j25ls5548892wrc.7.gmail; Fri, 13 Mar
 2020 14:05:09 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvZPtXdp4y8uqQ1zV4WMy61GXfddTsUGyQtK6+pU49ValMyn1LSuj5hnUm4FMezVbhjO2QF
X-Received: by 2002:adf:dec8:: with SMTP id i8mr20381605wrn.326.1584133508984;
        Fri, 13 Mar 2020 14:05:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584133508; cv=none;
        d=google.com; s=arc-20160816;
        b=PVcBkL3xGFRZIXMMZqanvUGj564mt6mylzyy/NLEjkzzW/zRG62PH6749kUHuoqWJS
         zQonWl7cRZefIdugoLJmDH5LmRgH2ULpA/UcX0Z4pGH+jwUuC7aQz8T+2nUlz1syvwti
         sEAxMjZMrE8yMvvPLQJmWH1H3SfRzmhR4Ehkk3E9qLgNykg5KIFZYYyO55TEZtN0Vuc3
         nSlqpYnSm+FzI2wQw+5jd7R4/5viTZdfCLXT1o9tgvOhfVygPoMb7GguqqEfU6Q+J4Us
         4Y5UBj7if/F0KX6RyESYSv93/I4S1d1IiP6HdBllBRoeI4XD6kIF5CPrsn+i3tGDn8jh
         gNAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=HMXwfKtPLdvwVlOnRHKaFebZukp5F9VNzMvVbBKDBcY=;
        b=xMntlWhpX64OauZaAAUzN73wred/I+Cneoj/pd3+3JlayuB59ZUH70O0v3HrTH+o4u
         +udvXcY5lS3JrGUGLPAwPfHh7zsuO+gQy6uoSSMC5ouHgp34n5xDwaF94oGwS1oo4UIQ
         etC/cqwEJDIiBICGUefau0DLCw7uT409n9ue6mN/eBLmCeuzgkuOfw0IJtsegMXzGs9j
         pT21rAgzWfTVGNzQznlpBvMl1WNHpHRikNKs6tdJrkre4rRUhxTHkZvoWevPQA/WzJ63
         nL8AKZdma8/52iVBa7HU4fTlx7x58glRBOn6BCHyeJwHluMD6HkWdUhZrQOIFoVXwFyV
         xgFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b16si200095wrx.0.2020.03.13.14.05.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2020 14:05:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,550,1574118000"; 
   d="scan'208";a="342326686"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2020 22:05:08 +0100
Date: Fri, 13 Mar 2020 22:05:08 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: media: hantro: add
 parentheses
In-Reply-To: <20200313204739.32676-6-kgupta@es.iitr.ac.in>
Message-ID: <alpine.DEB.2.21.2003132204070.2355@hadrien>
References: <20200313204739.32676-1-kgupta@es.iitr.ac.in> <20200313204739.32676-6-kgupta@es.iitr.ac.in>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 14 Mar 2020, Kaaira Gupta wrote:

> Add parentheses around `reg_name` to be safe of precedence issues in
> a Macro in file hantro_postproc.c. Warning reported by checkpatch.pl
>
> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
>  drivers/staging/media/hantro/hantro_postproc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
> index d99238f4753c..c731cda822c2 100644
> --- a/drivers/staging/media/hantro/hantro_postproc.c
> +++ b/drivers/staging/media/hantro/hantro_postproc.c
> @@ -22,7 +22,7 @@
>  #define HANTRO_PP_REG_WRITE_S(vpu, reg_name, val) \
>  { \
>  	hantro_reg_write_s((vpu), \
> -			   &(vpu)->variant->postproc_regs->reg_name, \
> +			   &(vpu)->variant->postproc_regs->(reg_name), \

Does this compile?  I didn't know that you could put parentheses around a
field name.

Maybe the macro isn't actually used?

In any case, I don't think any precedence problem is possible.

julia

>  			   (val)); \
>  }
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200313204739.32676-6-kgupta%40es.iitr.ac.in.
>

