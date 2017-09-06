X-GM-THRID: 6462748484201086976
X-Received: by 10.28.158.23 with SMTP id h23mr66629wme.5.1504726966193;
        Wed, 06 Sep 2017 12:42:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.229.14 with SMTP id c14ls2529391wmh.3.canary-gmail; Wed, 06
 Sep 2017 12:42:45 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb5s0PRw+n3mNV7L/dK+TAMM5FHvhxxLmFfE9RAcHZqOFZ6ny99jzHCjFp6PCPszL7peb/3f
X-Received: by 10.223.151.69 with SMTP id r63mr13789wrb.3.1504726965034;
        Wed, 06 Sep 2017 12:42:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504726964; cv=none;
        d=google.com; s=arc-20160816;
        b=E7plu5y7eqK3SvCWjLRNg/DMjumMrtaOYIsuJrZyDtLYGTOaXjtkTOrzFcGXMfagXM
         i5KvwGkIh1lbHSHo74n79XoJtD4inGwB/ujqwjcdePulPkF3cFdisIcZfWGz8h1DqsPQ
         30ZPL1ZjvYz9FE15SrsJVj9zvnJeMUf6kOlMrpUusvmL9Ew8mWQWxxxA5rbk2Ylm/44S
         DYPYTTNEjobFsz8odbd7yTlkioBdpon5wC64JZQxd6USwo/9/USrtb6fNNSd0hgSLvx5
         +SHknSDL9+n5DJ4BMOIzlH/R7aZ9K6DoHI6BLcJ3eu56W7PPRPFsgYYAT+FN8D2WAYMk
         lqWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=7pwmpbszMHbZOnBvSaZNZo61KlOBA2WjuG4fyHfzvqY=;
        b=IUzk/DN0SvQazVzo0pIwrtw0B85Wz7tQjsW5PqZ3AVANdGYBcquje9QogoZ6Q92SEZ
         ycybRBSvnDdV9EysqQCxW+Rf1Vm0JQCOW6VA/fMxY8tk/c/0zfQfxylTkivhE8gKawbk
         seAYK2Jc2HDs22vauBNLzpBwJYdGnzTIJAE4jAkXBAFW79kV3eo7ityVaB4iT1oEFyAJ
         kgrAiWgTTSIa/TYE9p6oOgAhA+lumYANgtk6gT0cj825Sin5AKfKbojkfEQ6FwZf5Mxc
         QMmbzBz/DEi96QSpfad+aOvOcvffpsDqURt08jBt/c87MfB0hMSt22vITw3NJJlsjOBI
         zrHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i17si164289wmh.9.2017.09.06.12.42.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Sep 2017 12:42:44 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,355,1500933600"; 
   d="scan'208";a="289892743"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Sep 2017 21:42:44 +0200
Date: Wed, 6 Sep 2017 21:42:44 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: gregkh@linuxfoundation.org, gilad@benyossef.com, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: ccree: ssi_cipher.c: Correct
 spelling mistake.
In-Reply-To: <1504725863-8495-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709062138320.2984@hadrien>
References: <1504725863-8495-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 7 Sep 2017, Srishti Sharma wrote:

> Correct spelling of counter in comment .


Welcome, and congratulations on submitting the first patch for this round
:)

> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
>  drivers/staging/ccree/ssi_cipher.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/ccree/ssi_cipher.c b/drivers/staging/ccree/ssi_cipher.c
> index 8d31a93..99232b2 100644
> --- a/drivers/staging/ccree/ssi_cipher.c
> +++ b/drivers/staging/ccree/ssi_cipher.c
> @@ -702,7 +702,7 @@ static int ssi_blkcipher_complete(struct device *dev,
>
>  	ssi_buffer_mgr_unmap_blkcipher_request(dev, req_ctx, ivsize, src, dst);
>
> -	/*Set the inflight couter value to local variable*/
> +	/*Set the inflight counter value to local variable*/

The change in itself looks fine, but actually the comment is kind of
incomprehensible.  It could be better as "Store ... in a local variable".
Also, the comment doesn't follow the kernel style.  Look at other comments
in this file or comments in other files to see what is wrong.

julia


>  	inflight_counter =  ctx_p->drvdata->inflight_counter;
>  	/*Decrease the inflight counter*/
>  	if (ctx_p->flow_mode == BYPASS && ctx_p->drvdata->inflight_counter > 0)
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504725863-8495-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

