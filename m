X-GM-THRID: 6329809349955813376
X-Received: by 10.46.33.96 with SMTP id h93mr3667808ljh.4.1473776243260;
        Tue, 13 Sep 2016 07:17:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.210.79 with SMTP id j76ls332393wmg.25.gmail; Tue, 13 Sep
 2016 07:17:22 -0700 (PDT)
X-Received: by 10.28.55.196 with SMTP id e187mr258563wma.5.1473776242688;
        Tue, 13 Sep 2016 07:17:22 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p199si1446918wmd.1.2016.09.13.07.17.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 07:17:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,328,1470693600"; 
   d="scan'208";a="236298191"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Sep 2016 16:17:22 +0200
Date: Tue, 13 Sep 2016 16:17:20 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, w.d.hubbs@gmail.com, 
    chris@the-brannons.com, kirk@reisers.ca, samuel.thibault@ens-lyon.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: speakup: replace
 simple_strtoul by kstrtoul
In-Reply-To: <20160913133212.7830-1-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.10.1609131614050.3355@hadrien>
References: <20160913133212.7830-1-gs051095@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 13 Sep 2016, Gargi Sharma wrote:

> Making changes to add a check to the value returned by kstrtoul. Also,
> updating temp since it is being used afterwards.

This patch doesn't do what the subject says.  It looks like you picked up
from your previous patch, whereas you should have picked up from the state
before that patch, to do the whole thing at once.


> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/speakup/kobjects.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
> index 884b2eb..e42be0f 100644
> --- a/drivers/staging/speakup/kobjects.c
> +++ b/drivers/staging/speakup/kobjects.c
> @@ -154,7 +154,13 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
>  			continue;
>  		}
>
> -		err = kstrtoul(cp, 10, &index);
> +		temp = cp;

I don't think this is correct.  Look at the definition of simple_strtoul
and see what the second argument is supposed to end up being initialized
to.

I suspect that it is not possible, or at least not very convenient, to use
kstrtoul in these cases.

julia

> +		err = kstrtoul(temp, 10, &index);
> +		if (err < 0) {
> +			retval = err;
> +			break;
> +		}
> +
>  		if (index > 255) {
>  			rejected++;
>  			cp = linefeed + 1;
> @@ -785,7 +791,12 @@ static ssize_t message_store_helper(const char *buf, size_t count,
>  			continue;
>  		}
>
> -		err = kstrtoul(cp, 10, &index);
> +		temp = cp;
> +		err = kstrtoul(temp, 10, &index);
> +		if (err < 0) {
> +			retval = err;
> +			break;
> +		}
>
>  		while ((temp < linefeed) && (*temp == ' ' || *temp == '\t'))
>  			temp++;
> --
> 2.9.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160913133212.7830-1-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

