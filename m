X-GM-THRID: 6670186659940663296
X-Received: by 2002:a5d:638b:: with SMTP id p11mr1251307wru.6.1553025277323;
        Tue, 19 Mar 2019 12:54:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:e2d1:: with SMTP id d17ls1941657wrj.8.gmail; Tue, 19 Mar
 2019 12:54:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzx0TbJ0Tj73kIVGz+O2l+3ThZ7bdwXaq0l9R++p+olqFSqXHedWB5O5F/pxmv9JCVV+LEc
X-Received: by 2002:adf:e7c5:: with SMTP id e5mr387156wrn.27.1553025276541;
        Tue, 19 Mar 2019 12:54:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553025276; cv=none;
        d=google.com; s=arc-20160816;
        b=CRtB4yLPDm+Argt7NDv1zuYicRmgpA0qThwlKdgthoDdmCTNu9H30fIl60IDbwuifX
         uC55V4Q4PQvVVOSC//iTaSSIDCr0sN6RxSxN2qOSt2fzzqyMWTnUNGk9fOYJPMYgtFpc
         kuSnclf2k3J9ik890pNba8WTZKYjb72mhJZlpydDsX8pSU1VmTONfMUftdGXqTMNetuw
         blY1bKETwc6Pciswca0TE/ya4bFIv+PwJIyO+YIn6cXrtlldSZlY3+IvkBCeQvumiroW
         SiSOM4ptzJwmeUHJW7vhbq//YOPE1UNkqQ+MZCMkmiEFzYcGwkDfYJdxeTvZxa8QxUS9
         VE3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=EWpyumKirPJIbrbcSeVPVKNr3gH2HLggfm/HQORNF+Y=;
        b=fvK4PKh3Gc9IJ7sQm5k9ssyWt5IA2qOrxG9TmEmT75QNtYs8xOsIgZjbsb+ttgZX2L
         KE/Pe9EbH288pWwdkpw3jT9fGg5XcxfWMS68GtjfFE6LnSLKZbPGPuFLi4clJ7GNmjBi
         aQNfo8zCFgQs4BuTESkKbXoBtdK/sl7qPzpyHF3ABF63m2EoaE2SJP1w6Zw/5PHuVmxW
         iKVV7X7fJl6pn7nnjv/jX8beWcp4vYy4V8fhEnNDwZ1H+ynx5QX8lLuKl3kbiRDE6nNG
         dUtreH4vL58l5/QeXAamgzd6GbBKX8BuuuHHcIQLBrTKeUtcFVfCYv8rfbf0QV7+Dlqo
         L7Pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v17si43325wmc.4.2019.03.19.12.54.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 12:54:36 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,245,1549926000"; 
   d="scan'208";a="300008174"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2019 20:54:35 +0100
Date: Tue, 19 Mar 2019 20:54:35 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
cc: rspringer@google.com, toddpoynor@google.com, benchan@chromium.org, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: gasket: Remove return
 variable
In-Reply-To: <20190319192911.8526-1-nishka.dasgupta@yahoo.com>
Message-ID: <alpine.DEB.2.21.1903192054230.2460@hadrien>
References: <20190319192911.8526-1-nishka.dasgupta@yahoo.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 20 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:

> Remove return variable and return the return value directly. Issue
> suggested by ret.cocci.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/gasket/apex_driver.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
> index 0578bf1ba1e9..a5da9bbd8396 100644
> --- a/drivers/staging/gasket/apex_driver.c
> +++ b/drivers/staging/gasket/apex_driver.c
> @@ -439,9 +439,7 @@ static int apex_reset(struct gasket_dev *gasket_dev)
>  		if (ret)
>  			return ret;
>  	}
> -	ret = apex_quit_reset(gasket_dev);
> -
> -	return ret;
> +	return apex_quit_reset(gasket_dev);
>  }
>
>  /*
> --
> 2.19.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190319192911.8526-1-nishka.dasgupta%40yahoo.com.
> For more options, visit https://groups.google.com/d/optout.
>

