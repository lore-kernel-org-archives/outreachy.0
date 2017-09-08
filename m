X-GM-THRID: 6463467119656828928
X-Received: by 10.223.160.199 with SMTP id n7mr217630wrn.15.1504893718575;
        Fri, 08 Sep 2017 11:01:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.15.203 with SMTP id 72ls51922lfp.50.gmail; Fri, 08 Sep 2017
 11:01:56 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb4l9gVJWGJpKYy4aCF+KqVAUhKb7DoQd5mzAopBuKV5mPsNR9zTp4FEc9BsECQcAstEf6GW
X-Received: by 10.46.7.26 with SMTP id 26mr277852ljh.5.1504893716811;
        Fri, 08 Sep 2017 11:01:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504893716; cv=none;
        d=google.com; s=arc-20160816;
        b=qI0XF8PL9/ff7GNHf/WyG+oN1WRyg3nFzaCpjundmpxTLozCoGGCtplIvpEnOxKk7T
         nAW1m/NqrLlICKG7StyOCOedjBUuTXPoOLLnTtcxFWEqV0lL3wQg9kgy0vpa2p0MUKbN
         bNW1+9pmMdkEAPAlkSETSy7keK1pxx0SD5CwIMPrODTL8LVl92aB42CvQYrn41p3uq8l
         VX4ISVq67mU0lKM+s0ecPLn9oIBNahfi/rEJEpGOQNOWofx5G/GN4vsTcB10h44DYAhn
         ivVSwlzLVlJaEsrVe9HLirH2Gq5EUO3dhRGBpZNIKlkmGQ4Ohni3tbICnx8DCLcpsGvr
         cQtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=dhhYAXlR5mjkFh2kZkaRWTHbXME7iSJ90rlgDjhKyRc=;
        b=w7VwhEymcPWUknNN9umleUBwQ+hrAg76aqUyUytpCwMD6mBMqC75w1e8WK5jLKP2PV
         lyHBXFLEDNxRHJvBV2iVLt29hL+2UmsCEG/N40e2VjkXM4GjVt3FGbNoCLraeiN2dH3s
         5BnXBMKi/Hdy/Sb6+E03WZ5tQzTy8yKaF2K+6VogIlcwOz2bE41NfoMLSe+ZNUfAuDB1
         lMflTD3EZuqEB+b4eVddaVGPNlmBXgr9mDq8ta80yUPTnekflU3O9Z2u+DfV7czwFqAR
         MoVp/9duiPQmxqUCk/H8ImXCNlGICHQcMQOT1Oz26so0yNCOoTsc71W9nATisGO3xEQB
         FBuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o7si43157wme.1.2017.09.08.11.01.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 11:01:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,362,1500933600"; 
   d="scan'208";a="290222874"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Sep 2017 20:01:56 +0200
Date: Fri, 8 Sep 2017 20:01:27 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: typec: tcpm: Rewrite
 comparison to NULL pointer
In-Reply-To: <1504893085-6113-1-git-send-email-harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1709082001100.22293@hadrien>
References: <1504893085-6113-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 8 Sep 2017, Harsha Sharma wrote:

> Make code more concise and readable
>
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Change in v3:
>  -Change in subject and log message
> Change in v2:
>  -Change in subject
>  -Change in log message
>  drivers/staging/typec/tcpm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/typec/tcpm.c b/drivers/staging/typec/tcpm.c
> index 630fe75..9f4a5a5 100644
> --- a/drivers/staging/typec/tcpm.c
> +++ b/drivers/staging/typec/tcpm.c
> @@ -982,7 +982,7 @@ static void svdm_consume_modes(struct tcpm_port *port, const __le32 *payload,
>  	}
>  	port->partner_altmode[pmdata->altmodes] =
>  		typec_partner_register_altmode(port->partner, paltmode);
> -	if (port->partner_altmode[pmdata->altmodes] == NULL) {
> +	if (!port->partner_altmode[pmdata->altmodes]) {
>  		tcpm_log(port,
>  			 "Failed to register alternate modes for SVID 0x%04x",
>  			 paltmode->svid);
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504893085-6113-1-git-send-email-harshasharmaiitr%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

