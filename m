X-GM-THRID: 6806824358191824896
X-Received: by 2002:adf:8385:: with SMTP id 5mr12180633wre.35.1584961768570;
        Mon, 23 Mar 2020 04:09:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:548b:: with SMTP id h11ls1998511wrv.9.gmail; Mon, 23 Mar
 2020 04:09:27 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsx3AWyIuoWhMWa3RbhLP7kNEmpnwIlyCZ54NcKQSlckO1MU62XscTlhEPl4WBje8W1wYeV
X-Received: by 2002:adf:84c2:: with SMTP id 60mr29768132wrg.399.1584961767096;
        Mon, 23 Mar 2020 04:09:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584961767; cv=none;
        d=google.com; s=arc-20160816;
        b=GaQ3AUQXvrQ/+SsskE6qGReqPFRkz/LWBlUTK8/rY6CLIq56I89EYskiyvbtmz9TjW
         GMlBP9cNTkyh/OCd56oauMwfXqTkYRFpm2hhnWE+1Fwt/05PrPh1q0cIvofiRvRux2rC
         nAuRG0x/gWpPgloG6+olE71KbykuzRGkwkpN8mVI//9KUQBp3N75OdDLZVuYbbsnttKT
         nAJNFzsfIqmNPKiKPvu4gKCm6ttLJ+8dXsrAjol4LzpuJ70jXNbqBAAR9g8ptzq0UWTl
         0yTglWli3CYNTRh6tXVXODxtUF0m2jDLcNh/65Oruf//32NPs1DvraV/TT6W5oxTLpIU
         Djaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Y2TD9rx9h229G9ibpVLd1QNOeRNfASTcQN1vD3JLH4w=;
        b=gFnHOb0vws46MdFQ8vj1FIDD27CbcCc3WHDZ51tleoR+4ycCJneiSWgcvGnP9Ee4xZ
         DtMniArM7pHLHUDKb7cSQF7Yd+ugLn60TO2G4E6Je834H0wplgb+ZOSFalyqVDANpE0y
         EzJPbISiNv9OoUklBDRKROUxUdrdLWmJ0ed6R3vYU5TKHtGCcDpABj44ehj6E2Ahp89C
         6gKzOcmbJHRXErXAUVvsSVZDL6LjMGCJ3UWldEx6oS1JuldRR2/8rlqqqVRgcBEmtxy8
         OM+p9OiiZjwZ5iXGNXmOBEmuUv4yw3+Kh2Enrrqg20/5lmEJ/+3aS22qMxnT4L4mt4C7
         q6jQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q205si669251wme.4.2020.03.23.04.09.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 04:09:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,296,1580770800"; 
   d="scan'208";a="343271452"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2020 12:09:26 +0100
Date: Mon, 23 Mar 2020 12:09:26 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Gokce Kuler <gokcekuler@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: hp100: Remove unnecessary
 braces
In-Reply-To: <20200322235103.GA14205@siyah2>
Message-ID: <alpine.DEB.2.21.2003231208381.3054@hadrien>
References: <20200322235103.GA14205@siyah2>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 23 Mar 2020, Gokce Kuler wrote:

> Delete unnecessary blank line.

The subject line and the commit log don't match.  No braces are removed,
but one brace is moved to the right.  It's not clear why.

julia

>
> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/hp/hp100.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> index 43607fb..32a9e29 100644
> --- a/drivers/staging/hp/hp100.c
> +++ b/drivers/staging/hp/hp100.c
> @@ -2792,8 +2792,7 @@ void hp100_RegisterDump(struct net_device *dev)
>  			/* Display Register contents except data port */
>  			if (((Register != 0x10) && (Register != 0x12)) || (Page > 0))
>  				printk("0x%.2x = 0x%.4x\n", Register, inw(ioaddr + Register));
> -
> -		}
> +			}
>  	}
>  	hp100_page(PERFORMANCE);
>  }
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200322235103.GA14205%40siyah2.
>

