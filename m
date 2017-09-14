X-GM-THRID: 6465611589668044800
X-Received: by 10.28.136.143 with SMTP id k137mr114084wmd.3.1505417879664;
        Thu, 14 Sep 2017 12:37:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.27.27 with SMTP id b27ls462394ljb.8.gmail; Thu, 14 Sep 2017
 12:37:58 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QABAwdzApbEQTtzKErDNNlXaIZBmhLLwawelpIX6nAvWo3buEEI8p2uAbjvgPgsDYd5PkFl
X-Received: by 10.25.22.24 with SMTP id m24mr1976955lfi.36.1505417878295;
        Thu, 14 Sep 2017 12:37:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505417878; cv=none;
        d=google.com; s=arc-20160816;
        b=JYwlKEnQWjljbvG0/bGru/tVTbfj8yndSO6B+Fpp0o8clO+bxSIV9YjRZlhvZYZgiJ
         LT+VsLqMZDsOb0m2PywqMn1GSxahPO7yORC9+IFmWvw7NQsyyR4JDhuipEgDSk6zXEyF
         dIH3BRDVWVBwt67CktEEubKj6FrE08be0oEuei54gNDyvYgIhJRIB/u27nOLhb2ieLGK
         84YKqrpSI+rEbqiZu/qxvDMWzCiSNyeWVk42H+A5M4ZqSrg3kCM3XVuAOOOgfhniMB8S
         35g+sSM6JUlkE2RKJiROHnLb70YM7YkLLOMdbTWfXf2d8PNMWrznQWzA+8VyxoWQgohd
         zCOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=EYofnqhDOM3uPkBnJchkEDkYjT3uLaCGGcn2MD0OBhI=;
        b=c9w7WgMjFNdE5jV7GIQXR5GQCTqyp0d+Y//0CZB+Wnnlc/RmwTwdRKYfcQ8DaDz+x3
         vM7+pmQOCU26bKg3PYiMmzWR5vBdWHl4tNRqGn1INFI4bjToaG+wAnRcQ3Iexe4kT+yF
         0Lzr0twaAaxLQAA3YZaYdJj1wRJD4J0l71eMiFXrJ1fUjAcXI1ArVVONgKj6bRcP5aMq
         MNMZR7v27yglIoipDcKncPZXBV97DWYok05Tz1Sk/lKt6RA63Ck7IUQ8Z4zuE2wo8Lfs
         +CMQQ1oH39kX5QWdcxJwRkizd0Fc6X20vHEzdXx+1Ud6PL8Uj4tVVY6eOff3PeEXshTg
         Hxnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q145si95810wme.4.2017.09.14.12.37.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 12:37:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,394,1500933600"; 
   d="scan'208";a="237543688"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Sep 2017 21:37:57 +0200
Date: Thu, 14 Sep 2017 21:37:57 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>, 
    Andreas Dilger <andreas.dilger@intel.com>, 
    James Simmons <jsimmons@infradead.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: lustre: fix macro
 definitions warnings
In-Reply-To: <ba81893e8d74ca5367f14caa8b4b221df25efdff.1505414917.git.aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709142137000.2650@hadrien>
References: <cover.1505414917.git.aastha.gupta4104@gmail.com> <ba81893e8d74ca5367f14caa8b4b221df25efdff.1505414917.git.aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII


On Fri, 15 Sep 2017, Aastha Gupta wrote:

> This patch fixes checkpatch.pl warning for macro definitions.
>
> 1. single line macro definitions should not be in do-while block.
> 2. macros with complex values should be enclosed in parentheses.

This one could be merged with the other two.  The part that should have
been put into a separate patch was the removal of the two macros that are
never used.

julia

>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/lustre/lustre/include/lu_object.h | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
> index 4e4bcf4..abbb4d6 100644
> --- a/drivers/staging/lustre/lustre/include/lu_object.h
> +++ b/drivers/staging/lustre/lustre/include/lu_object.h
> @@ -1163,10 +1163,8 @@ do {					\
>  		.lct_fini = mod##_key_fini	      \
>  	}
>
> -#define LU_CONTEXT_KEY_INIT(key)			\
> -do {						    \
> -	(key)->lct_owner = THIS_MODULE;		 \
> -} while (0)
> +#define LU_CONTEXT_KEY_INIT(key) ((key)->lct_owner = THIS_MODULE)
> +
>
>  int lu_context_key_register(struct lu_context_key *key);
>  void lu_context_key_degister(struct lu_context_key *key);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/ba81893e8d74ca5367f14caa8b4b221df25efdff.1505414917.git.aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

