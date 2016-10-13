X-GM-THRID: 6340772217806127104
X-Received: by 10.66.16.73 with SMTP id e9mr1148650pad.2.1476334821066;
        Wed, 12 Oct 2016 22:00:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.7 with SMTP id h7ls5416335otb.23.gmail; Wed, 12 Oct
 2016 22:00:20 -0700 (PDT)
X-Received: by 10.13.252.5 with SMTP id m5mr1375940ywf.156.1476334820489;
        Wed, 12 Oct 2016 22:00:20 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p70si1439212vkd.0.2016.10.12.22.00.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2016 22:00:20 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,338,1473112800"; 
   d="scan'208";a="240560404"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Oct 2016 07:00:04 +0200
Date: Thu, 13 Oct 2016 07:00:04 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elise Lennion <elise.lennion@gmail.com>
cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: sm750fb: Remove unnecessary
 comments.
In-Reply-To: <20161013023427.GA23337@lennorien.com>
Message-ID: <alpine.DEB.2.10.1610130658020.3260@hadrien>
References: <20161013023427.GA23337@lennorien.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Wed, 12 Oct 2016, Elise Lennion wrote:

> Comments are needed to help the reader to understand the code better.

This is not a helpful log message.  It suggests that you are going to add
comments.  Actually, the whole commit message does not say anything about
what you did.  It would be better to say something like:

Remove function comments that merely restate the function name.

julia

>
> Functions shouldn't have comments to restate their names.
>
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_power.h | 8 --------
>  1 file changed, 8 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_power.h b/drivers/staging/sm750fb/ddk750_power.h
> index ba0b3f5..7b24f11 100644
> --- a/drivers/staging/sm750fb/ddk750_power.h
> +++ b/drivers/staging/sm750fb/ddk750_power.h
> @@ -15,15 +15,7 @@ DPMS_t;
>  }
>
>  void ddk750_setDPMS(DPMS_t);
> -
> -/*
> - * This function sets the current power mode
> - */
>  void set_power_mode(unsigned int powerMode);
> -
> -/*
> - * This function sets current gate
> - */
>  void set_current_gate(unsigned int gate);
>
>  /*
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161013023427.GA23337%40lennorien.com.
> For more options, visit https://groups.google.com/d/optout.
>

