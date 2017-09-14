X-GM-THRID: 6465493198864121856
X-Received: by 10.28.88.197 with SMTP id m188mr81744wmb.4.1505368769439;
        Wed, 13 Sep 2017 22:59:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.65.81 with SMTP id o78ls340911lja.34.gmail; Wed, 13 Sep
 2017 22:59:28 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAaKWXEIGg+bpiyQ5prLsU+y7XPxh7sjHoQYgGHw1+uID5324efUVtG8tSq8OxJ9vRiXAs5
X-Received: by 10.25.79.23 with SMTP id d23mr1153778lfb.34.1505368768134;
        Wed, 13 Sep 2017 22:59:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505368768; cv=none;
        d=google.com; s=arc-20160816;
        b=RHLCf1w6TywR0ygug0KES5N13HoSDSrN7uo/Zv5KF4Wzky06utReUkuAXekXnm7Vo2
         /xbaJkxeXaNWAR3dyy95VmyTFinK6LUR1pF8j6zfGVSUry7EXtKEj6G0NRnvlk6vsWtv
         I6PE0JW4252okTc0TOp7bZqh6P8EXgrZfOZVVyfjpTIdA0IHhjlOvCmE2D1Rrj2Ia9Os
         mpuT7GdWENVFhth15WYHvPALUlWbnE/usXDUE0v1wUtJawx/WeFDXU12S8WPOo/3zSdU
         +dRZLKH3kjdQUfLbWnqaROX39iuZxyDu4cigxzkZEwJt85jJAFSTjDhWIGLcyFyZ+t4C
         azDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=JZSzpkAB7sqpSSc95wsHEKL5aSRr8eCU+kTBCuj5ugU=;
        b=DS4fk7yHTTpMtNZC4LIvww+YpoB6xAOkwX6l4fLVmlbMo3rYN9DP+zylZMkiwySPJk
         lChiJMgxQl4OxHMk1IRh2sh+kG56R77IEaGtHnNsEl9Ivc2QeRMoNPufJ6zZMEDz7oQ1
         BERceW6qZd1FrqA9Za2ysHHwamknSOl8j/2BgahZMb9wv1CX6vYHcDT/pg8Mmv0wnCqY
         qkSyJgo2iOZNb03gZIL1ATTOU+h11Q21VAoGRuR4kmZHHpTmkHNvLn8lmiRtchNuSheP
         ua2D9JW/CL/utHLZb6cfEpMjPQo5a4CD3uAwBtIp61kjeHhYY0IBoaurwkyHPzwBYIvj
         TmGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i4si35657wmi.8.2017.09.13.22.59.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 22:59:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,391,1500933600"; 
   d="scan'208";a="237422386"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Sep 2017 07:59:27 +0200
Date: Thu, 14 Sep 2017 07:59:26 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Haneen Mohammed <hamohammed.sa@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Samuel Ortiz <samuel@sortiz.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, netdev@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: irda: Remove typedef
 struct
In-Reply-To: <20170914045538.GA24121@Haneen>
Message-ID: <alpine.DEB.2.20.1709140759020.2091@hadrien>
References: <20170914045538.GA24121@Haneen>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 13 Sep 2017, Haneen Mohammed wrote:

> This patch remove typedef from a structure with all its ocurrences
> since using typedefs for structures is discouraged.
> Issue found using Coccinelle:
>
> @r1@
> type T;
> @@
>
> typedef struct { ... } T;
>
> @script:python c1@
> T2;
> T << r1.T;
> @@
> if T[-2:] =="_t" or T[-2:] == "_T":
> 	coccinelle.T2 = T[:-2];
> else:
> 	coccinelle.T2 = T;
>
> print T, coccinelle.T2
>
> @r2@
> type r1.T;
> identifier c1.T2;
> @@
> -typedef
> struct
> + T2
> { ... }
> -T
> ;
>
> @r3@
> type r1.T;
> identifier c1.T2;
> @@
> -T
> +struct T2
>
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/irda/include/net/irda/qos.h | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/staging/irda/include/net/irda/qos.h b/drivers/staging/irda/include/net/irda/qos.h
> index 05a5a24..a0315b5 100644
> --- a/drivers/staging/irda/include/net/irda/qos.h
> +++ b/drivers/staging/irda/include/net/irda/qos.h
> @@ -58,23 +58,23 @@
>  #define IR_16000000 0x02
>
>  /* Quality of Service information */
> -typedef struct {
> +struct qos_value {
>  	__u32 value;
>  	__u16 bits; /* LSB is first byte, MSB is second byte */
> -} qos_value_t;
> +};
>
>  struct qos_info {
>  	magic_t magic;
>
> -	qos_value_t baud_rate;       /* IR_11520O | ... */
> -	qos_value_t max_turn_time;
> -	qos_value_t data_size;
> -	qos_value_t window_size;
> -	qos_value_t additional_bofs;
> -	qos_value_t min_turn_time;
> -	qos_value_t link_disc_time;
> +	struct qos_value baud_rate;       /* IR_11520O | ... */
> +	struct qos_value max_turn_time;
> +	struct qos_value data_size;
> +	struct qos_value window_size;
> +	struct qos_value additional_bofs;
> +	struct qos_value min_turn_time;
> +	struct qos_value link_disc_time;
>
> -	qos_value_t power;
> +	struct qos_value power;
>  };
>
>  extern int sysctl_max_baud_rate;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170914045538.GA24121%40Haneen.
> For more options, visit https://groups.google.com/d/optout.
>

