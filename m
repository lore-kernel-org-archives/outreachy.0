X-GM-THRID: 6463464119976591360
X-Received: by 10.25.209.74 with SMTP id i71mr303031lfg.15.1504892606430;
        Fri, 08 Sep 2017 10:43:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.9.137 with SMTP id 131ls132366wmj.18.gmail; Fri, 08 Sep
 2017 10:43:25 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDIr7XcZgigmTWZYefN7BPPU9uabPkApqoySNFrun/LjwkGZb/znc/4XNBxAlgllcBXHLad
X-Received: by 10.28.21.65 with SMTP id 62mr286092wmv.22.1504892605359;
        Fri, 08 Sep 2017 10:43:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504892605; cv=none;
        d=google.com; s=arc-20160816;
        b=Piwovw/yxgEXmhd6nNQkpRdslEZ2yvJkLfASDDAWV93U2o9eBo1uruHOksT0NXk790
         yG84N8Iu2zrQtO8GQQvcMHcr6E9zjg2yAGRFGXHjFWbxAx7q0JTAki3rc8ug4Ds6OlLE
         z5PuWg+gntce4LQcZHAEgj6ntUT+YpddO5ttCJajijuNrlh3meMAQMCspGE6EKeHpErR
         BDA5zw8jSJ8bHKWO/1ji+wM7IKHUBszKWhy2mKcrPzaLG/UQZRp0AlkTFwUPiRYYmqRI
         T+aX+QBaOD1+LcsOxvePKZYHnZsteXGDHvcWpLo7JMRMDMeoABh90gnPaFLu4WVfhe7X
         Abiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=aBDUyFkMDQJpjgAuL777o9i2tEHPqkfpS7nKeygWCcc=;
        b=LmLeGEtvluzgtLI1qAwhinYyBNOgB0d9zD30oCmpWh8XamaqXuPG8Z0RWwq95myjP0
         hkAokHgI3x8o5KP3S0xKXHChgPR4UWJHfx0dsXXrdeXEzbzk/NYYTQqkaqbUIQFuvGQe
         2wmYUUR1ml9D4wQeikN2Zew3kZEpBFGkoUeSw6LD+AiFZnW0oVufVafxVwHliItunPSv
         9VNPeOvuvWTu+3wzQuAST/RplAPFB4r3uXI8mtW0ulRueLeG9V0afbKSmcHOa96ewfDa
         MfaedIKTbalyfycF/HRIIhrHYUZehWTq6zsfWsaZEkaRtU2HW7IIBS+3sW6N+sQm5RiF
         c7eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 74si166537wmf.8.2017.09.08.10.43.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 10:43:25 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,362,1500933600"; 
   d="scan'208";a="236829113"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Sep 2017 19:43:24 +0200
Date: Fri, 8 Sep 2017 19:42:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Harsha Sharma <harshasharmaiitr@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: typec: tcpm: Comparison
 to NULL pointer
In-Reply-To: <1504892391-5607-1-git-send-email-harshasharmaiitr@gmail.com>
Message-ID: <alpine.DEB.2.20.1709081941430.22293@hadrien>
References: <1504892391-5607-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Maybe "Rewrite comparison to NULL pointer" in the subject to include what
was done, not just code was touched.

On Fri, 8 Sep 2017, Harsha Sharma wrote:

> Makes code more concise and readable

Makes -> Make.  Commit logs should be written in the imperative, like you
are telling someone what to do.

julia

> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504892391-5607-1-git-send-email-harshasharmaiitr%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

