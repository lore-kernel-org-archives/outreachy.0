X-GM-THRID: 6465611589668044800
X-Received: by 10.25.59.12 with SMTP id i12mr1544657lfa.32.1505417692640;
        Thu, 14 Sep 2017 12:34:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.208.70 with SMTP id h67ls910149wmg.26.gmail; Thu, 14 Sep
 2017 12:34:51 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBdUxlDzdeYTlMyEE8qnwaw6Vkf6/M/3UyP70xTjPTnGYLqZWGVzvfkj/tH6SCOtyVajUHd
X-Received: by 10.28.99.67 with SMTP id x64mr108433wmb.31.1505417691455;
        Thu, 14 Sep 2017 12:34:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505417691; cv=none;
        d=google.com; s=arc-20160816;
        b=tQy1kbvql7kpjFVZq4OOGwPnsbK4W8bfT7DBCUSrGV5K49ZncvYURA6BSkacj4YEc+
         kY7GpzuUwlo6sn4Y7GqfZ+cQth4AjZm3CMy2ozx/04cGAfMkjNk+RGxfsIG+FkNEVjuE
         j7C5vE1h2UoytzXTbyVfMQttTefUcCVEy7NC7o32T8x0WjrZHIayN7EHtmMH1XTqfztZ
         1LGcF16BiY3CYI19u+q2SGzgjtAqdYgdATT1kh9iUxMABukOwUzajQk0h7ZSFtOjYauG
         x/zUuuE/iiKfdHTI0HZQ5dBEj82P+vyNEZHkPVZB6CWoYgQjl4HD1Wz52u7K57e74iC2
         id7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=7SU8aQkxMKJk5fY/B7PBdIoF7PgiujjXJM82GOG2q/c=;
        b=PoNe/0nHHRowln8S5LU0y87JhnwQVC7/weI8xN2myAZ5YyXcWC+cL3XoquGm+fpazT
         cPWk2UKOB++LSbx7CWwZsnyyyWo2tGtdjOdtiJTdu5bx1xrobULL+3IkDIsUhc1AD2hM
         0rr1cCmsi/LzD9CUXNfwWgnrlkuSi35LnhC/oYOI51P0eTiy6OSi5PoMLkDaewHxCr3s
         SbEx/cnBwCR+neQtUqYq1LJfBMBksWJUxMHJ1UmUyPdRcQkbEQ/KP1sZ6YLtofq/UPJ8
         NN++vCmVWpj7t4MkL/xbzm9gQgDVutqgPhLZEUstx8c4eXH1GiPWRgyn2q2kwiod+xZi
         SPhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i4si56013wmi.8.2017.09.14.12.34.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 12:34:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,394,1500933600"; 
   d="scan'208";a="237543491"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Sep 2017 21:34:50 +0200
Date: Thu, 14 Sep 2017 21:34:50 +0200 (CEST)
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
Message-ID: <alpine.DEB.2.20.1709142134230.2650@hadrien>
References: <cover.1505414917.git.aastha.gupta4104@gmail.com> <ba81893e8d74ca5367f14caa8b4b221df25efdff.1505414917.git.aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 15 Sep 2017, Aastha Gupta wrote:

> This patch fixes checkpatch.pl warning for macro definitions.
>
> 1. single line macro definitions should not be in do-while block.
> 2. macros with complex values should be enclosed in parentheses.

The second warning is not addressed in the patch.

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

No need to add a blank line.

julia

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

