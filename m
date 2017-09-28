X-GM-THRID: 6470748769991262208
X-Received: by 10.28.144.196 with SMTP id s187mr59862wmd.29.1506589750679;
        Thu, 28 Sep 2017 02:09:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.141.225 with SMTP id o88ls998711wrb.3.gmail; Thu, 28 Sep
 2017 02:09:09 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBFTD16VpO7zftX81UdVtKV+Zl36eaq7ex1y2iAmqx6xQscpfrgVtE1D+BO2Cr/OMVbMJsH
X-Received: by 10.28.55.209 with SMTP id e200mr65071wma.0.1506589749826;
        Thu, 28 Sep 2017 02:09:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506589749; cv=none;
        d=google.com; s=arc-20160816;
        b=EmuDna4qyhaZaBPx2n/OdLxsJxMB7DID2JTugvnZtfXsOKNqlblSthNgI/ZTB598Nb
         eR7Sv/fBwxI1idpxOGfPFgVF+cq0+F14GZWT+a5fAwoyJd+fAsGnU/p7REY0fetvkMD9
         Ye1BWhSKogKphj9zDzkP5D5QGnxyatZ4IbXKu5ntgv8IXMBvvwE+Dd5fP7EVJx690Cho
         VTxdVn8pwZTdGOAZfpc+H6v2eRiT83bGpBxQ8NYRAZNecc/FnCfFQPdKl2JxaOTNkv7w
         bPPqlBsvm/BXsVMqx46km0WfhADpqIF/6KX06cxJaTqbRo+2dZARLtDcYmjzc5DRDaYF
         tuSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=Dw3a0szVJmTmD+S4OjLnxb0a82a9ojdy6K3TBrA3dTI=;
        b=QYvkay21SXwCzjJVslreyT9YlGv4TrSEQ1zLOe6Ic9cHt2bjc2qRAWLkZ3nyjQODBw
         aWk7yk3oAG1c3u5lylcOsVYKT/zAm0E3rgIf9/ae3imeU6TvKP6VwnEs3686Q1e+L9Bh
         0+2oyh+QZccr7OXLvsPIg2p/KbINHNGWBtzpnNyoyjtzlfgH2016nvy7rwxD0RacbRZi
         HMLn1CazlbUr3H2oEz+8OlsXSl7ksfcdXrrW0LCgRIpeRC0bS+fEDn3gdwqFAbNxKq5Q
         mKP3V13dbd2WtTqZWwfzKpcnm2lXC1/3W2pWGN4KcoOMdKghiodi4n11cCjU7i+Dof1A
         AcWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b85si114129wme.2.2017.09.28.02.09.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 02:09:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,449,1500933600"; 
   d="scan'208";a="239001371"
Received: from mx.artech.at (HELO hadrien.local) ([188.21.106.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Sep 2017 11:09:09 +0200
Date: Thu, 28 Sep 2017 11:09:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Keerthi Reddy <keerthigd4990@gmail.com>
cc: eric@anholt.net, stefan.wahren@i2se.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vc04_services: remove unused
 variables control and status
In-Reply-To: <20170928084954.GA4170@manoharreddy>
Message-ID: <alpine.DEB.2.20.1709281106560.2865@hadrien>
References: <20170928084954.GA4170@manoharreddy>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 28 Sep 2017, Keerthi Reddy wrote:

> the volatile variables control, status are not
> used. Delete them.

It could be useful to give some information about how you have checked
this.  Simply compiling the directory might not be good enough, if there
are uses under ifdefs.  Grep could be a reasonable solution.

Also, I would say that these are fields rather than variables, as they are
part of a structure rather than variables in a function.

julia

>
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-audio/bcm2835.h | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
> index 379604d..f1e43e4 100644
> --- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
> +++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
> @@ -123,8 +123,6 @@ struct bcm2835_alsa_stream {
>  	struct snd_pcm_indirect pcm_indirect;
>
>  	spinlock_t lock;
> -	volatile unsigned int control;
> -	volatile unsigned int status;
>
>  	int open;
>  	int running;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170928084954.GA4170%40manoharreddy.
> For more options, visit https://groups.google.com/d/optout.
>

