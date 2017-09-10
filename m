X-GM-THRID: 6463658667322376192
X-Received: by 10.28.0.7 with SMTP id 7mr535446wma.26.1505021555534;
        Sat, 09 Sep 2017 22:32:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.218.193 with SMTP id r184ls609263wmg.13.gmail; Sat, 09 Sep
 2017 22:32:34 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDefEk/MfcknpO+wkU8xk+LLcwxgDBiR0HfgTODb0EvB4jdB9OoaYdN7HNzeduV5xmRPQvx
X-Received: by 10.28.54.30 with SMTP id d30mr526374wma.6.1505021554618;
        Sat, 09 Sep 2017 22:32:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505021554; cv=none;
        d=google.com; s=arc-20160816;
        b=mQQLY/cxWmR9BJCZFQjSDCnmHFY1VAIX1UO2qVNwfZyVIPyNRlvHpj3QHcJpe7CgBY
         JWA7tz6IdP4apIex2DJE2PXrQ/2zop289/Jl75gA1w5IaIVDYG4brn1bP1DVWMQBsSCG
         F7/eaQ/xGqbjq+HKCBzhrAMpURdJImMbSXJb1uaCAXr1z3yW66ES6f0LLhS13c4xaxqE
         FnrLuleM04uTA/Hg0tHJ7/PFN7vyH0sEh8nrWSWtFasKCuOotaSiKf4ybsRyIzSrfJEO
         aCxKp20KHd69olUlJBV3OcYg2/jakmmqtjUcdhKJx7+PjMtn0HPde00e7OkFexCgk4LD
         dmsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=o/fKt/GqIE3In0EvD6nZ2a43b8DBSXSq3gdJr13+ESw=;
        b=caUM2J1dPCaJSlPmxC2kZ+QS44LwvPgxRoOOYKOe9OjsMMHqGHr6sWpqmebA7kXvRV
         NDlXgKnQxbgvq1qx29m/I5Q6tphXmW6XBxv3bLtYd2DoB3nTg3vrt4rv3XxXN1Uhtz/r
         FSuuQwPf1ybamufamfye/v3j72j6SC3SeNvgA6TkbaNSxDHQXO7nay8Oq2oSsNqgH1mb
         Hkevlh/haCHP6N6fOAaYsWu9H8NrDpEmzxafvl5jz5J5X9dU/5+zM5MQxnpkg9VelXux
         MxQGlLlNYlN4A7tC8xkT3SK55+1ILDr4Fkn2eHpOaBuzC55pLgEAgDTHaNWifGneKoQk
         34iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d82si283821wmd.1.2017.09.09.22.32.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 22:32:34 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,371,1500933600"; 
   d="scan'208";a="290331324"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Sep 2017 07:32:34 +0200
Date: Sun, 10 Sep 2017 07:32:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    w.d.hubbs@gmail.com, chris@the-brannons.com
Subject: Re: [Outreachy kernel] [PATCH V3] Staging: speakup: Change symbolic
 permission from 'S_IRUGO' to '0444'
In-Reply-To: <20170910022921.GA24582@meghana-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1709100732220.2063@hadrien>
References: <20170910022921.GA24582@meghana-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 10 Sep 2017, Meghana Madhyastha wrote:

> This fixes the following warning reported by checkpath.pl.
> WARNING: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>
> Changes in v2:
>   - Make the commit message more clearer and the title more concise
>
> Changes in v3:
>   -Mention the changes below ---
>
>  drivers/staging/speakup/speakup_acntsa.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/speakup/speakup_acntsa.c b/drivers/staging/speakup/speakup_acntsa.c
> index 0e10404..4331584 100644
> --- a/drivers/staging/speakup/speakup_acntsa.c
> +++ b/drivers/staging/speakup/speakup_acntsa.c
> @@ -136,7 +136,7 @@ static int synth_probe(struct spk_synth *synth)
>  }
>
>  module_param_named(ser, synth_acntsa.ser, int, 0444);
> -module_param_named(dev, synth_acntsa.dev_name, charp, S_IRUGO);
> +module_param_named(dev, synth_acntsa.dev_name, charp, 0444);
>  module_param_named(start, synth_acntsa.startup, short, 0444);
>
>  MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170910022921.GA24582%40meghana-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

