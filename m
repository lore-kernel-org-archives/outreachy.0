X-GM-THRID: 6465611589668044800
X-Received: by 10.223.172.196 with SMTP id o62mr1452885wrc.10.1505417765994;
        Thu, 14 Sep 2017 12:36:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.84.17 with SMTP id i17ls1754539wmb.20.canary-gmail; Thu, 14
 Sep 2017 12:36:04 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBS+OUKdLs9pWA890BAkk2IjpyjbNOvaAcwJntZy1qZ65RIfZBMqEvZQFCYCxQv8Z9rOy5K
X-Received: by 10.28.236.83 with SMTP id k80mr112429wmh.29.1505417764819;
        Thu, 14 Sep 2017 12:36:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505417764; cv=none;
        d=google.com; s=arc-20160816;
        b=Co3u1Uy9gEiYYx++x5NQi+8cpKGULaD7gsc/Y71Kfob+iE55tp/R6JBxs6WNX8FOrF
         QRuhZ0eio10Bv+lWtF/Z3yLe0DuQwsESAWbv04jZ01R9KYEuic0h1gL0svmg5BF+ivH1
         F735VQRUQDWGA3FvpAdME4IFtnOO5Wh585ziB4LXSxwAKCpiJWI1dcAJChIXZVhQfYLx
         Grmk9RL1C6s11UVHjQGdTzAc0pwJhcvWsVMa7XDZ4Y199f0e2Dk1/Xfl8OJWGJrY+9Z+
         rLylxWyl6I0BmR22C1DwwezqFh/ZBEGZ0riHEqICC0meHo0JDqjwax5xvC7D9K8F8nLn
         o93A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=tGOe1n8VY23xrwaXgDjf8kRjbehwbOWdx1bCdRB92TU=;
        b=bqlWgDeWI7t4M5KqqZJsrUcFTonhgi+sxWCCBRqLJAUrD0cMrZG3bP3FhPvhU1ZuAp
         qJ36lCPUsH1Dt7um6ChXqhs6bq0WkNQ/Wel/IZGC0KodDuQ5tyCbc0W7DZgiqj03tUXc
         fP1zkkQpSOMJGh5dkVGxYW/CRg7jKyZsuP3OCfx+aN1OFXLUjKl3Fmuy+fo26f6Jqu3W
         bm+iq2FEnBflIcSGqExuzgry9OgD6JMjnI3iIXxJL4Ms2UmVGQVaYbtG6IMCUg5GA6NR
         pcZ+8E7Fgi2uLi2u1pBI7s/2T7c9r5lk5h+smpQLDB0yvsHMrxrtj1MMMNuRAkDvdoQ+
         jlBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id m74si44739wma.0.2017.09.14.12.36.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 12:36:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,394,1500933600"; 
   d="scan'208";a="237543596"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Sep 2017 21:36:04 +0200
Date: Thu, 14 Sep 2017 21:36:03 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, Oleg Drokin <oleg.drokin@intel.com>, 
    Andreas Dilger <andreas.dilger@intel.com>, 
    James Simmons <jsimmons@infradead.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: lustre: enclose multi
 line macros in do-while block
In-Reply-To: <93cfc5fc6f59b33d9aca6dd3b33f86150e1f5abb.1505414917.git.aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709142135270.2650@hadrien>
References: <cover.1505414917.git.aastha.gupta4104@gmail.com> <93cfc5fc6f59b33d9aca6dd3b33f86150e1f5abb.1505414917.git.aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Patches 1 and 3 end up with the same subject line.  They do basically the
same thing in the same file, so they should be merged.

julia

On Fri, 15 Sep 2017, Aastha Gupta wrote:

> This patch fixes the checkpatch.pl warning:
>
> macros with multiple lines should be enclosed in do-while block
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/lustre/lustre/include/lu_object.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
> index a3c0481..4e4bcf4 100644
> --- a/drivers/staging/lustre/lustre/include/lu_object.h
> +++ b/drivers/staging/lustre/lustre/include/lu_object.h
> @@ -1151,8 +1151,10 @@ struct lu_context_key {
>  	struct __##mod##__dummy_fini {; } /* semicolon catcher */
>
>  #define LU_KEY_INIT_FINI(mod, type)   \
> +do {					\
>  	LU_KEY_INIT(mod, type);	\
> -	LU_KEY_FINI(mod, type)
> +	LU_KEY_FINI(mod, type); \
> +} while (0)
>
>  #define LU_CONTEXT_KEY_DEFINE(mod, tags)		\
>  	struct lu_context_key mod##_thread_key = {      \
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/93cfc5fc6f59b33d9aca6dd3b33f86150e1f5abb.1505414917.git.aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

