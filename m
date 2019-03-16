X-GM-THRID: 6669000631583244288
X-Received: by 2002:ac2:4427:: with SMTP id w7mr503421lfl.17.1552762706409;
        Sat, 16 Mar 2019 11:58:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:85c6:: with SMTP id h6ls1536635ljj.0.gmail; Sat, 16 Mar
 2019 11:58:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzJ7HzBu/dAmBpOnl7Dkpfx856M4Pyyb1Gk2a42TcNEMKYLjSTj6KfDokrakrc7pPFlpy6p
X-Received: by 2002:a2e:8ec9:: with SMTP id e9mr522166ljl.6.1552762705502;
        Sat, 16 Mar 2019 11:58:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552762705; cv=none;
        d=google.com; s=arc-20160816;
        b=E12zAYomEsmLvkuz/pE3WU0hz9aJmCZ2ZERDzPwwjwVhixfDmDX3CPMSOl+hfANeY5
         N74Qz5YMz2rE/CESd9M+AQjcWz9bPQg5r8NijjFtT7Q4j6apaqpWee73hxLLNLu55gh1
         rF7fUKJ7X44nMEUNw2kHZuwn9Q0OXzmVTZ2HEKtds0s3OqyYLVcYGV3fxDp6cGgWckE2
         nBKw53JGvBKGBFxx1qEGflB6b2YGjrrqdcL27fKDy7EHznlG5mrlub8KnRzspQn4eZLs
         eqSJ3xeI8/h87AfLO0+9s8sXB8xcVpT4W8P+1jNckjbgdzX17EV2BS8eHTDiYaw17zxR
         +CKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=NanWpEz5EH77kAvWg4Rm+IqT60PZ5n+dMgB+BSwg6Nk=;
        b=y0OF/0dntqYAPczn3gWStkGZA5qC9fzlu/ZOV6A+VJamGKR//vrLc9jpbsVqmTNahf
         a1GumgXackB2tPCSt+h5vrjj4a+ghO+zkc3A/+lgmGGCCCuCXRCtocnHoivDlSqel5Pg
         MY6ePNCCiNqoty1Q5++GWaN5VMxjMZddJ9cTsVnAiOa1CaLr96i3jx1OU2Rbv5aCynwR
         nQS+CxqcOpp/ljBAi9bLaf8f376SZS1i79C7dDeOq8nFIyxKTNLLC6ZRZMhMcXmoRY6M
         lE9tY/oWquSrt8bK6S9gwDMNOjKFcrEnlfR1f30fNIAphCNWQRntvz/0NZzPux1+Zv4g
         llbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y1si329805lfe.1.2019.03.16.11.58.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 11:58:25 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,486,1544482800"; 
   d="scan'208";a="374091802"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 19:58:24 +0100
Date: Sat, 16 Mar 2019 19:58:24 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 2/2] Staging: mt7621-mmc: Modify
 the return type for all possible values
In-Reply-To: <20190316172404.10694-3-bhanusreemahesh@gmail.com>
Message-ID: <alpine.DEB.2.21.1903161954430.2487@hadrien>
References: <20190316172404.10694-1-bhanusreemahesh@gmail.com> <20190316172404.10694-3-bhanusreemahesh@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Bhanusree Pola wrote:

> -Change the return type in function prototype and function definition
> of the function msdc_do_command
> -Change to static int from static unsigned int  as the member error
> of the structure struct mmc_command is of type int.

The explanation doesn't flow very well.  It looks like the second
point justifies the change described in the first point.  The -s are not
really a good idea.  They force the reader to guess how the two pieces of
information are related.  You should explain this.  Explain what is the
relevance of the error field.

> -Align the arguments to match the open parenthesis.

You don't have to mention this, because you are fixing a problem that you
caused.

julia

>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/mt7621-mmc/sd.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/mt7621-mmc/sd.c b/drivers/staging/mt7621-mmc/sd.c
> index 8857cdb9dafd..049b312131a9 100644
> --- a/drivers/staging/mt7621-mmc/sd.c
> +++ b/drivers/staging/mt7621-mmc/sd.c
> @@ -168,10 +168,10 @@ static u32 hclks[] = {50000000}; /* +/- by chhung */
>  #define PHYSADDR(a)             ((a) & 0x1fffffff)
>  #endif
>  /* end of +++ */
> -static unsigned int msdc_do_command(struct msdc_host   *host,
> -				    struct mmc_command *cmd,
> -				    int                 tune,
> -				    unsigned long       timeout);
> +static int msdc_do_command(struct msdc_host   *host,
> +		           struct mmc_command *cmd,
> +			   int                 tune,
> +		           unsigned long       timeout);
>
>  static int msdc_tune_cmdrsp(struct msdc_host *host, struct mmc_command *cmd);
>
> @@ -535,10 +535,10 @@ static unsigned int msdc_command_resp(struct msdc_host   *host,
>  	return cmd->error;
>  }
>
> -static unsigned int msdc_do_command(struct msdc_host   *host,
> -				    struct mmc_command *cmd,
> -				    int                 tune,
> -				    unsigned long       timeout)
> +static int msdc_do_command(struct msdc_host   *host,
> +			   struct mmc_command *cmd,
> +			   int                 tune,
> +		           unsigned long       timeout)
>  {
>  	if (msdc_command_start(host, cmd, timeout))
>  		goto end;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190316172404.10694-3-bhanusreemahesh%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

