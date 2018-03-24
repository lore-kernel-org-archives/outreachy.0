X-GM-THRID: 6536482227090358272
X-Received: by 2002:a19:2a8b:: with SMTP id q11-v6mr2052865lfq.15.1521895694524;
        Sat, 24 Mar 2018 05:48:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.124.5 with SMTP id x5ls549857ljc.8.gmail; Sat, 24 Mar 2018
 05:48:13 -0700 (PDT)
X-Google-Smtp-Source: AG47ELu1eYGGSyTN0qyL+jtAwNlBouv8xVtiVZ6lWXmeEFdts9QXiBqJiG+NCQHHcV0VUbpBnDpN
X-Received: by 10.46.20.11 with SMTP id u11mr1986898ljd.39.1521895693694;
        Sat, 24 Mar 2018 05:48:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521895693; cv=none;
        d=google.com; s=arc-20160816;
        b=0+4wGdovyxKLLsnHhaD856D68JMIQTmPY2c2rO8GTu1LBpLZfIp0UdsH+GkPTcJNDS
         e/+ggTtwGVU+ujPXLru5PiiFpIdTzbOULOXRHR3cJ4wodTs7H9MpPPwLakI28nZLETpf
         FMsjAWNGwwpUkuPJYzYKX2DApwiuCw9Y+p7lNIRbRz958rkFDEK/fTzVG2j6Pd3JXLW4
         LMQmbodXA3nJYrp3o/UzKx+Veq/H9t91efOuAUw16eUwdlmWrtMp6KXC//p3dbXC9a6D
         QkKn5ldl5LXSfbtnDcs0fbJDKvq1jPL52XKFD3NTmdCFKBqx0NuNTgUO+Hm8/rp2T/S3
         LPeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=Eq4Cil2tyt6XP+JgCka2pbLbht8dtP/+zrRfCtFvnqo=;
        b=SicvDYmgCJJnopw+XBLw2cJaeZvR+KP3UYGrI4msu2BEV7JpPK0gJzHvUeykFAwWix
         7ZmAcOjiRjVrteWQxao8lisqPXiJwoIx83/c+iai+Ql04JBkbG9QPtfcCtyHoL3nTzCO
         HeK2DxM2GgRGkde3gMgc3QJleIjqmpmfC26Rzx9eoFm+J1Tej2dLkp0Xk/2dr+gx1JnE
         H46KYZ+1is7shGOqiH6/H1HADKOHrrChr9P4k2DXfzBAoo22fcqZ7JE/sqNJga2yQeXb
         LpNMfxKK6EQwuzOh50aFxFUc44/XvYfmFwEXkue80pYvGpl+KkKr4ye0oC49AuA59WFU
         LnNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d22si267770ljg.4.2018.03.24.05.48.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 05:48:13 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,354,1517871600"; 
   d="scan'208";a="259661773"
Received: from unknown (HELO [10.71.3.76]) ([209.118.33.125])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2018 13:47:55 +0100
Date: Sat, 24 Mar 2018 08:47:52 -0400 (EDT)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: gregk@linuxfoundation.org, mchehab@kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [RESEND PATCH] staging:media:davinci_vpfe:
 Remove explicit function name in string
In-Reply-To: <1521893340-28090-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803240847070.2577@hadrien>
References: <1521893340-28090-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The subject line should not have staging:media:davinci_vpfe:, with
everything concatenated like that.  Use git log to see what others have
done on this file.

julia

On Sat, 24 Mar 2018, Nishka Dasgupta wrote:

> Change explicit use of function name in string to "%s...", __func__.
> Issue found with checkpatch.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
>  drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> index 7d3349b..0f94b8e 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
> @@ -703,7 +703,7 @@ static int ipipe_get_gamma_params(struct vpfe_ipipe_device *ipipe, void *param)
>  	       (table_size * sizeof(struct vpfe_ipipe_gamma_entry)));
>
>  	if (!gamma->bypass_g && !gamma_param->table_g) {
> -		dev_err(dev, "ipipe_get_gamma_params: table ptr empty for G\n");
> +		dev_err(dev, "%s: table ptr empty for G\n", __func__);
>  		return -EINVAL;
>  	}
>  	memcpy(gamma_param->table_g, gamma->table_g,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521893340-28090-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

