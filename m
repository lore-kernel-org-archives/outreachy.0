X-GM-THRID: 6463802191249408000
X-Received: by 10.28.16.71 with SMTP id 68mr465767wmq.12.1504976267629;
        Sat, 09 Sep 2017 09:57:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.85 with SMTP id t21ls98488ljd.9.gmail; Sat, 09 Sep 2017
 09:57:46 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAP3ZEU+m671idlBxVO+vERk4u3ZQtZCRb8mpAEvI3h6WKG97/7wDfGqv7A3CAi74Ob906p
X-Received: by 10.25.228.134 with SMTP id x6mr351683lfi.33.1504976266170;
        Sat, 09 Sep 2017 09:57:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504976266; cv=none;
        d=google.com; s=arc-20160816;
        b=EIvCkf6tWH4RQDXLYVv0jz/ASkMLT4wUMH32QcPDIufieSRspKo93YYKNI8PV+iOoR
         CplM3ijFcQ1S9BBXh/NQTmgg4r2mpKrbvUOT5NeVJDreKAfsozFSQWOvEX18AmojYE78
         Pam1Scvw7ynpHQR+y2swNqMLKVyjrpnUSxN30ooWeE0tkN1ZjqKBLzr4jqQBg2sCuqwV
         x82+qOjowuflqrPPWgGMHTfSAT0lbqaikPKqRaZ5WLDrzdjuAZipCsUxGEbnFjUQ4we2
         rNCp+XG1UdhS6wXScnfH4f3zcLIrLErYWPZDyw2/qLryUV8joxYuLUWdmuCeUy3hlhiU
         VJDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=zIeA+xbY9nB3Ht6FNkMepPyPZOmQILxdf2L7UnyCs8M=;
        b=YTBoZb+SMHwF4fjn8CgyrzNqw48OFdiCYKZrDTJdMFCt/apBxPcm2WEw29+vHP5DZo
         zSevXJczMMMyBRGCcxFiewt4ZX6FwGqA54zMVNfYYRqggIFup5LDivAru6l7dFwbOdO0
         2M07lov0roC4BeAVTYeQf1npDDHjYrcfoTx0Zri88eODg+wm1DNXZtEq9qcisgJN43lt
         AXrfSqXtzjygagrY5SADVISCFEkrf064B7nzzSr+GCdcTqqWbOUpexQmXwSTtJc1ftlH
         NX85j1DngI4ZsyS+zDh1Vcb1sAukkLpk15deFLXdzPA9Cy8H8l2Qk+5Gp2AKprAN/DJv
         8ZYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b130si246121wme.0.2017.09.09.09.57.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 09:57:46 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,367,1500933600"; 
   d="scan'208";a="290298282"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Sep 2017 18:57:27 +0200
Date: Sat, 9 Sep 2017 18:57:26 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    w.d.hubbs@gmail.com, chris@the-brannons.com
Subject: Re: [Outreachy kernel] [PATCH V2] Staging: speakup: Replace symbolic
 permission
In-Reply-To: <20170909153338.GA21938@meghana-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1709091856150.2149@hadrien>
References: <20170909153338.GA21938@meghana-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 9 Sep 2017, Meghana Madhyastha wrote:

> Replace S_IRUGO by 0444 in module parameter declaration. 0444 is more
> readable and matches the style used in other declarations nearby.
>
> Problem found using checkpatch.
>
> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
>
> Changes in v2:
>   - Make the commit message more clearer and the title more concise

It was good to put the change information, but it belongs under the ---.
The text under the --- disappears when the patch is committed.  After that
time, people will not be interested in the change information, because the
version veing referred to is not committed.

julia

> ---
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170909153338.GA21938%40meghana-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

