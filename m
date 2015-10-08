X-GM-THRID: 6203360253861429248
X-Received: by 10.112.151.9 with SMTP id um9mr1765689lbb.19.1444332831529;
        Thu, 08 Oct 2015 12:33:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.253.231 with SMTP id ad7ls230384wid.11.gmail; Thu, 08 Oct
 2015 12:33:51 -0700 (PDT)
X-Received: by 10.194.118.65 with SMTP id kk1mr1790864wjb.5.1444332831204;
        Thu, 08 Oct 2015 12:33:51 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h2si349097wiy.0.2015.10.08.12.33.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 12:33:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,655,1437429600"; 
   d="scan'208";a="181828251"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 08 Oct 2015 21:33:50 +0200
Date: Thu, 8 Oct 2015 21:33:50 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: sm750fb: Remove space
 after opening brace
In-Reply-To: <65d703974d96550d8802203b4243da28797ae8bf.1444332001.git.amitoj1606@gmail.com>
Message-ID: <alpine.DEB.2.02.1510082133320.2165@localhost6.localdomain6>
References: <cover.1444332001.git.amitoj1606@gmail.com> <65d703974d96550d8802203b4243da28797ae8bf.1444332001.git.amitoj1606@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 9 Oct 2015, Amitoj Kaur Chawla wrote:

> Remove space after opening brace '{'. Problem found using
> checkpatch.pl
> CHECK: Blank lines aren't necessary after an open brace '{'
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index ebc3242..6f05f78 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -238,7 +238,6 @@ unsigned int ddk750_getVMSize(void)
>  
>  int ddk750_initHw(initchip_param_t *pInitParam)
>  {
> -
>  	unsigned int ulReg;
>  
>  <<<<<<< HEAD

Something went wrong here.

julia

> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/65d703974d96550d8802203b4243da28797ae8bf.1444332001.git.amitoj1606%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

