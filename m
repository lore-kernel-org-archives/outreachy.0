X-GM-THRID: 6466839673682526208
X-Received: by 10.28.128.131 with SMTP id b125mr744452wmd.18.1505679036091;
        Sun, 17 Sep 2017 13:10:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.76.9 with SMTP id z9ls706292lja.24.gmail; Sun, 17 Sep 2017
 13:10:34 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QB7hAsgRvYrEOD7bZLeQJ6pPQkUz03bVnydZXM0n+QzYLKe9HCI8OD+t6A2tlN39lnvuEgT
X-Received: by 10.46.91.143 with SMTP id m15mr678928lje.2.1505679034666;
        Sun, 17 Sep 2017 13:10:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505679034; cv=none;
        d=google.com; s=arc-20160816;
        b=MgpIbuB1MJyWJjDzjSSAnVyuNiT2a2nTXUPzjGfCw/xI0oaB/3UIP4qsGnx1cfm8xv
         VQ20KGoRTSYfNXgAjdkmBhHxUYbXybc+FiYE0r2I5PNJZUmKXrU9UGCm7isY5GQzgJay
         wgMhUKtZQ0vvmP9JPSXPgp/2UFjhFBRtvPV/AVyF1L0BDnzLlpLbIw3KH7QQrA/bANl3
         cvfC04PFlBsXpHfOLIMn4ayZ7RQgFLMgq23Xqlf/l0zrMbbTYepbh+qn80bV7BxUy1//
         wywwqIVrvdye6ainMsNnQm1N9KLhG76TEESCnJKtjqX0O+fnUyexT9y4gtckL6viHaNI
         HtcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=+hx34FysEBwLk87DPfppRw4ZDxJaVSgw1ETyuJDEoWU=;
        b=s+CS1Rf/JZK1gYpRWDNw4t5km1vo1fY8Ng8hQXMM0UbSbMT/oYvaEa0S5dXRo60d9D
         295jpkIUyfKhnqIixjAz0crCtMuBR4kL1YO1MdCCEFosN3iWQ03dH3J7E4OIEMup4eZp
         GESf5Hh+nobn9Ht2AoTeGWN52jIBxfZGfpo8Q4tKO+KlU2CaTpWn2QHgJ7+km+D+JYms
         drM3+arg39vs0NZ+xaWf00g6iFhosReDMyf2FCHsgnck9OVvE+ubmLgJVvy8JOV64RRU
         oMMw1E+y+dE0OATSP2EcuSIiqLZLbJtXzN0CUa5Dpk3TF8mR0xn8MxGwNYdUKonhf9L3
         Qhuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 191si361234wmn.2.2017.09.17.13.10.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Sep 2017 13:10:34 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,409,1500933600"; 
   d="scan'208";a="291461087"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Sep 2017 22:10:33 +0200
Date: Sun, 17 Sep 2017 22:10:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, William Hubbs <w.d.hubbs@gmail.com>, 
    Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>, 
    Samuel Thibault <samuel.thibault@ens-lyon.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: remove NULL
 comparison
In-Reply-To: <1505678435-30853-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709172209160.1989@hadrien>
References: <1505678435-30853-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 18 Sep 2017, Aastha Gupta wrote:

> This was done using cocccinelle script:
> @@
> identifier arg;
> @@
>
> -arg==NULL
> +!arg

In general, there is no need to restrict this to an identifier, which will
only match a single variable name.  expression arg; would match
more general cases like x->y == NULL.

julia


>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/speakup/main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
> index 938a0aed..e215d05 100644
> --- a/drivers/staging/speakup/main.c
> +++ b/drivers/staging/speakup/main.c
> @@ -2096,7 +2096,7 @@ speakup_key(struct vc_data *vc, int shift_state, int keycode, u_short keysym,
>  	u_char shift_info, offset;
>  	int ret = 0;
>
> -	if (synth == NULL)
> +	if (!synth)
>  		return 0;
>
>  	spin_lock_irqsave(&speakup_info.spinlock, flags);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505678435-30853-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

