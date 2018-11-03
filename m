X-GM-THRID: 6619412092796534784
X-Received: by 2002:a1c:7305:: with SMTP id d5-v6mr4076wmb.1.1541228099431;
        Fri, 02 Nov 2018 23:54:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:96c9:: with SMTP id y192-v6ls635641wmd.5.canary-gmail;
 Fri, 02 Nov 2018 23:54:58 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dWgp/TCRKr8UfuEJu1oVjj3IPxOvTW5TnI6cXom3kyPslqNLQKjGhw/M4GRhCleu5lszyG
X-Received: by 2002:a1c:7ecf:: with SMTP id z198-v6mr4025wmc.24.1541228098700;
        Fri, 02 Nov 2018 23:54:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541228098; cv=none;
        d=google.com; s=arc-20160816;
        b=FR6Nh7dyLkldbCxL66fXZoJudh41vohlWbM+MxdTokWWCGqgm10fz1MeMEVfAfMXSb
         7tmuTQY/FQ5ZRrCBqjmttYjgs6muq0l/VnZlz58m5tKzTP2ixDk00BLBxATfRVnpueMb
         NICrJYoz63S0DM1VYGsRIrAMFvBj1F/5FQgVY19R1VHauBVbIYOcb7yX8ZRarE04Q29S
         o+IP7uVTYGa82EB8Lhvo9XMj4OSiz697j87T/5FHrKTFZ9Ds+PfT2S37jVLdaRvIMv0W
         cIh5rHCHRLuoBJSJth2glHnwnISNDtOkjnE9qV6UZ80I1wui8U/CMCXF4HcTPggmUt4p
         cStw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=MegX5q7Lw/5V6rlujlqy9kZ0cgkeiU6/ORgHZ0zlnlE=;
        b=ZYX2Vw5HOPe3+HMUkBKB2DKGSdbsSrIRR5rszKSHuBaPW0wCdORC5EqUYd7BDz/NsV
         LzYfEeVv5WQYYYpktHIO/YxF4JOA2PVcTogpu8TzGm63XyLJqJcA/ORWuRGzDsIYROV4
         waM+x7TVO/HRGi6NFAmGMR7Gp5qblAgEuqyWywoNQXdMi9ZOpext6NwGDfX0SmI0hF/M
         5zDRlBe7MHq16/LFHNYfwxp7e8k1bq2qy6iBrPH6P/v55VBs7cg3aSiVI4Qiz2wkh5+8
         PCKOqt/qLG3H+4mMS+LvDmqe8iMiL2Rt6vgCpz2WHmgcnOQ1vFU0wZfzp9NCkIeV8t6o
         P0vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 18-v6si113167wrb.2.2018.11.02.23.54.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 23:54:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,458,1534802400"; 
   d="scan'208";a="284220983"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Nov 2018 07:54:57 +0100
Date: Sat, 3 Nov 2018 07:54:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: Add extra space
 around OR operator
In-Reply-To: <20181102233924.GA16172@kvasir.local>
Message-ID: <alpine.DEB.2.21.1811030754290.2922@hadrien>
References: <20181102233924.GA16172@kvasir.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 2 Nov 2018, Ioannis Valasakis wrote:

> Add extra spaces around the OR operator.

"extra" sounds superfluous.  Add spaces around the | operator.

julia

> Reported by checkpatch.
>
> Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> ---
>  drivers/staging/greybus/greybus_protocols.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/greybus/greybus_protocols.h b/drivers/staging/greybus/greybus_protocols.h
> index f38f4a8db2b7..5783f715bdc2 100644
> --- a/drivers/staging/greybus/greybus_protocols.h
> +++ b/drivers/staging/greybus/greybus_protocols.h
> @@ -866,10 +866,10 @@ struct gb_pwm_disable_request {
>  /* Should match up with modes in linux/spi/spi.h */
>  #define GB_SPI_MODE_CPHA		0x01		/* clock phase */
>  #define GB_SPI_MODE_CPOL		0x02		/* clock polarity */
> -#define GB_SPI_MODE_MODE_0		(0|0)		/* (original MicroWire) */
> -#define GB_SPI_MODE_MODE_1		(0|GB_SPI_MODE_CPHA)
> -#define GB_SPI_MODE_MODE_2		(GB_SPI_MODE_CPOL|0)
> -#define GB_SPI_MODE_MODE_3		(GB_SPI_MODE_CPOL|GB_SPI_MODE_CPHA)
> +#define GB_SPI_MODE_MODE_0		(0 | 0)		/* (original MicroWire) */
> +#define GB_SPI_MODE_MODE_1		(0 | GB_SPI_MODE_CPHA)
> +#define GB_SPI_MODE_MODE_2		(GB_SPI_MODE_CPOL | 0)
> +#define GB_SPI_MODE_MODE_3		(GB_SPI_MODE_CPOL | GB_SPI_MODE_CPHA)
>  #define GB_SPI_MODE_CS_HIGH		0x04		/* chipselect active high? */
>  #define GB_SPI_MODE_LSB_FIRST		0x08		/* per-word bits-on-wire */
>  #define GB_SPI_MODE_3WIRE		0x10		/* SI/SO signals shared */
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181102233924.GA16172%40kvasir.local.
> For more options, visit https://groups.google.com/d/optout.
>

