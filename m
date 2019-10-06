X-GM-THRID: 6744763915639455744
X-Received: by 2002:a17:906:d792:: with SMTP id pj18mr13146693ejb.327.1570388471778;
        Sun, 06 Oct 2019 12:01:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:1114:: with SMTP id qu20ls2077235ejb.7.gmail; Sun,
 06 Oct 2019 12:01:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx2rDK6pWLaSTVOh02XVNGCka8vzqSbZzBVMS+ZPGRFEtv76j0hWe+mDZdtazjuS6Lcg4LY
X-Received: by 2002:a17:906:b84d:: with SMTP id ga13mr20913099ejb.236.1570388470875;
        Sun, 06 Oct 2019 12:01:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570388470; cv=none;
        d=google.com; s=arc-20160816;
        b=Y9tJe5KYerlx7zqM3a39DrKHCw6NfwfxRg2Xge4a8qLZ0b7w72OJ6RodLWH2xWUQ2G
         sPMo0VvCb+g7YJoPgpTFzq6FaKRBAU+L6DnOPTqxP/wf/1yHsBllADkF/GXSp7JzwBOp
         J+54eBcuYoab2r8mgaJwG9zeAuNn6A8fqZa4e4u0Uu0WdHlz7qBbqa4J7vws/XGziWd7
         IQAglFXXQ8tLLpMslm0CyD0aXlhJv9EijlnQSZ40Z2NaRjKXUDFc65MhORxfwtLzSe9c
         rCts9Gf84bIjGGhMOgFUKNDc6kKEOIm7BC+33S51kHR6zAl5qxh6xbuomwMx5EJjy7Fv
         PHHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=V33D25uRvnaDPVixKN7diR7/9t+gB4XrO+BEX46UOnE=;
        b=n4ClzL4cOw2NhkRjPjaUdERQd8czqciZQg024ky1BBXVS2dj043sS+vt/Nytbrr5ju
         RxXqyX0tUkQ7rdMDGcqpKaT5LSLgjMQBU3CJ5c7TZr2jeteMKIcX4L8hNxFba2kwMWXJ
         sY2Gq2ZzyH9DaADB5XZ6diMckw16nVqsgkjlZY06h8b24Fq8PkxJj3pKx3eOTfgVrTUo
         v79oD2oqZ+pRCvAtgCADdM61lcTwCg4N5QVheTfwSFG7EcQF0iKWyJka2UHLzwM/O4Uu
         Iah7AGYpVOrxZOa4F05COsDpgh257jZlJNUboj9/7HrKa2xbZfDrC96QaCtHcaqv+zvK
         vt4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d11si538694edh.3.2019.10.06.12.01.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 12:01:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,265,1566856800"; 
   d="scan'208";a="321778515"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Oct 2019 21:01:09 +0200
Date: Sun, 6 Oct 2019 21:01:09 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org, 
    olsonse@umich.edu, hsweeten@visionengravers.com, abbotti@mev.co.uk
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Capitalize macro
 name to fix camelcase checkpatch warning
In-Reply-To: <20191006184827.12021-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1910062100530.2515@hadrien>
References: <20191006184827.12021-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 6 Oct 2019, Jules Irenge wrote:

> Capitalize RANGE_mA to fix camelcase check warning.
> Issue reported by checkpatch.pl

I guess mA means something, so it would be better to keep it?

julia

>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/comedi/comedidev.h           | 2 +-
>  drivers/staging/comedi/drivers/adv_pci1724.c | 4 ++--
>  drivers/staging/comedi/drivers/dac02.c       | 2 +-
>  drivers/staging/comedi/range.c               | 6 +++---
>  4 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/comedi/comedidev.h b/drivers/staging/comedi/comedidev.h
> index 54c091866777..2fc536db203c 100644
> --- a/drivers/staging/comedi/comedidev.h
> +++ b/drivers/staging/comedi/comedidev.h
> @@ -603,7 +603,7 @@ int comedi_check_chanlist(struct comedi_subdevice *s,
>
>  #define RANGE(a, b)		{(a) * 1e6, (b) * 1e6, 0}
>  #define RANGE_ext(a, b)		{(a) * 1e6, (b) * 1e6, RF_EXTERNAL}
> -#define RANGE_mA(a, b)		{(a) * 1e6, (b) * 1e6, UNIT_MA}
> +#define RANGE_MA(a, b)		{(a) * 1e6, (b) * 1e6, UNIT_MA}
>  #define RANGE_unitless(a, b)	{(a) * 1e6, (b) * 1e6, 0}
>  #define BIP_RANGE(a)		{-(a) * 1e6, (a) * 1e6, 0}
>  #define UNI_RANGE(a)		{0, (a) * 1e6, 0}
> diff --git a/drivers/staging/comedi/drivers/adv_pci1724.c b/drivers/staging/comedi/drivers/adv_pci1724.c
> index e8ab573c839f..f20d710c19d3 100644
> --- a/drivers/staging/comedi/drivers/adv_pci1724.c
> +++ b/drivers/staging/comedi/drivers/adv_pci1724.c
> @@ -64,8 +64,8 @@
>  static const struct comedi_lrange adv_pci1724_ao_ranges = {
>  	4, {
>  		BIP_RANGE(10),
> -		RANGE_mA(0, 20),
> -		RANGE_mA(4, 20),
> +		RANGE_MA(0, 20),
> +		RANGE_MA(4, 20),
>  		RANGE_unitless(0, 1)
>  	}
>  };
> diff --git a/drivers/staging/comedi/drivers/dac02.c b/drivers/staging/comedi/drivers/dac02.c
> index 5ef8114c2c85..4503cbdf673c 100644
> --- a/drivers/staging/comedi/drivers/dac02.c
> +++ b/drivers/staging/comedi/drivers/dac02.c
> @@ -54,7 +54,7 @@ static const struct comedi_lrange das02_ao_ranges = {
>  		UNI_RANGE(10),
>  		BIP_RANGE(5),
>  		BIP_RANGE(10),
> -		RANGE_mA(4, 20),
> +		RANGE_MA(4, 20),
>  		RANGE_ext(0, 1)
>  	}
>  };
> diff --git a/drivers/staging/comedi/range.c b/drivers/staging/comedi/range.c
> index 89d599877445..dacdd7b6f1a0 100644
> --- a/drivers/staging/comedi/range.c
> +++ b/drivers/staging/comedi/range.c
> @@ -23,11 +23,11 @@ const struct comedi_lrange range_unipolar5 = { 1, {UNI_RANGE(5)} };
>  EXPORT_SYMBOL_GPL(range_unipolar5);
>  const struct comedi_lrange range_unipolar2_5 = { 1, {UNI_RANGE(2.5)} };
>  EXPORT_SYMBOL_GPL(range_unipolar2_5);
> -const struct comedi_lrange range_0_20mA = { 1, {RANGE_mA(0, 20)} };
> +const struct comedi_lrange range_0_20mA = { 1, {RANGE_MA(0, 20)} };
>  EXPORT_SYMBOL_GPL(range_0_20mA);
> -const struct comedi_lrange range_4_20mA = { 1, {RANGE_mA(4, 20)} };
> +const struct comedi_lrange range_4_20mA = { 1, {RANGE_MA(4, 20)} };
>  EXPORT_SYMBOL_GPL(range_4_20mA);
> -const struct comedi_lrange range_0_32mA = { 1, {RANGE_mA(0, 32)} };
> +const struct comedi_lrange range_0_32mA = { 1, {RANGE_MA(0, 32)} };
>  EXPORT_SYMBOL_GPL(range_0_32mA);
>  const struct comedi_lrange range_unknown = { 1, {{0, 1000000, UNIT_none} } };
>  EXPORT_SYMBOL_GPL(range_unknown);
> --
> 2.21.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191006184827.12021-1-jbi.octave%40gmail.com.
>

