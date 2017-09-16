X-GM-THRID: 6466363123603341312
X-Received: by 10.28.72.135 with SMTP id v129mr583434wma.14.1505567975371;
        Sat, 16 Sep 2017 06:19:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.19.211 with SMTP id 202ls756915wmt.25.canary-gmail; Sat, 16
 Sep 2017 06:19:34 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb50El6yn14sncxfXmFUAY1qLt60ZU6Kx2xcRt1oUri9vlM931tBbWP7LtXuW0qKUv6CcVaP
X-Received: by 10.223.172.8 with SMTP id v8mr1756689wrc.32.1505567974429;
        Sat, 16 Sep 2017 06:19:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505567974; cv=none;
        d=google.com; s=arc-20160816;
        b=h42VQN/vtJTfveG/UDJc3CWugLa7QAy/2B0wDxbxAxoSO9Qvm4+6NVRM0Lz1TDHlrz
         k2x9p4EJ0euFQbl9gVrUwg6AOhZism8MmG09wb8/KE3XT2hEwK6T5gW+yTJW0Nr8xgHi
         dFgZ9o+KRkoRrhapB8E5kvYlNYLiGZCLdYP+bt8joRUN4KpJCabkrJQw5s1223ScpC2H
         IpGEDR3HwFWZiOGfaoD3IRvXEMpwth/D6q8iSx3DCorsPGPBdmQMfVvOheb90bxX0Yl5
         /6TC29C/5UXNSRfln03ub8BbUE9PAGLpHXkFAjMXmQ+pFQqM15N+SlgiM2fyNdGSBDfR
         t83w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=OulW/bdnlgJxb7wvLnOEbjz2+y8e1ymW3vLOiVzmsdo=;
        b=b0lnQjMTfgToqMythCU5aKYrSUPRG2gsKWV9YXElFZOK6egpHIowQgZrTx3bHNff7e
         dOXgqOEyZQbJaPN8KUWIhrm/F7U/6FfKHw0u7pnh9PQgPBeRvhqTphdAOtf1qo+ncH/E
         1CGI/rPuuci2yvu4n9DVhUYh3EjbcU6PdD+0hWLvaUd47Ljnexykzdh84y2KXUGwerih
         lqf9eBrzwQYprg9yOcTxpCSgIC1AGoWe4dFMvJy7+eMkQXal04YTJBQ2unNApAsQ3PlO
         y3+JSeUWDUGxT9zqzWDtJc3DGLm8jMtHcjdiZWhkd6G4FSIdIHQZ+XcBmmdbcZpVOicc
         4HbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p200si206159wmg.4.2017.09.16.06.19.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 06:19:34 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,402,1500933600"; 
   d="scan'208";a="291382056"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 15:19:33 +0200
Date: Sat, 16 Sep 2017 15:19:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, Lidza Louina <lidza.louina@gmail.com>, 
    Mark Hounschell <markh@compro.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: remove unused macro
 definition
In-Reply-To: <1505567481-16496-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709161517560.2943@hadrien>
References: <1505567481-16496-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Aastha Gupta wrote:

> This patch removes unused macro definition in dgnc_driver.h
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_driver.h | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
> index d69d9c0..a19427b 100644
> --- a/drivers/staging/dgnc/dgnc_driver.h
> +++ b/drivers/staging/dgnc/dgnc_driver.h
> @@ -213,7 +213,6 @@ struct dgnc_board {
>  #define UN_BUSY		0x0008		/* Some work this channel */
>  #define UN_BREAKI	0x0010		/* Input break received	*/
>  #define UN_PWAIT	0x0020		/* Printer waiting for terminal	*/
> -#define UN_TIME		0x0040		/* Waiting on time */
>  #define UN_EMPTY	0x0080		/* Waiting output queue empty */
>  #define UN_LOW		0x0100		/* Waiting output low water mark*/
>  #define UN_EXCL_OPEN	0x0200		/* Open for exclusive use */

I don't think this is a good idea.  Even if the macro is not used, it does
show what that particular bit is used for.

It's fine to remove macros that are somehow more freestanding.

julia

