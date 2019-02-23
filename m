X-GM-THRID: 6661032131712516096
X-Received: by 2002:a17:906:584c:: with SMTP id h12mr853012ejs.2.1550906677361;
        Fri, 22 Feb 2019 23:24:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9835:: with SMTP id g50ls2059993edb.9.gmail; Fri, 22 Feb
 2019 23:24:36 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZHNDtyyTDn+0RQw9bqUlP70Kt9k7Iq6/ybhqQHqZWIDrI31aJCnsy1UB5oj8q1SD71PF72
X-Received: by 2002:a50:eb05:: with SMTP id y5mr946061edp.5.1550906676591;
        Fri, 22 Feb 2019 23:24:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550906676; cv=none;
        d=google.com; s=arc-20160816;
        b=xwlxNmJMdYQvxavrTgzZFIRLjf49WwOzZklHiDct1Qe7Llrg1BtAqw4BdRzxuVuqbq
         gsn+KadvQsbD4WIYZnVpLjhxCx4j2+tXX2OII2YkNpa+mFDyI4Ckmjqv19DStrO4bKXO
         K153kDfV+nw88r4aJPoJi5+lqxQC3IM9JQq6RlA9TUEr9WChKXRTRi6CPpE1QA/Xn9HG
         mtfzUgqwrz1Fa6hrzzyO9dYxhT0wn0dv5VB1iDHVX4D2fGyoVhwVS9Eh931POKxT5wIp
         aVnEvC5hQmYo3fDSHb/X4k7F5VulhVcjoYVyZChw7tYv5ADPAmDP17m7M73/tWtv6G4C
         EQNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=X/UderVIlJ3P+KmBgvtrradM/4OziO8/OTAZ3UXeu+w=;
        b=NUuRc5ORfdD5m5/G1UOJtL0GPyFzBNQBbdrcyqq7QdNr7SVsXiNh2qXMDyrlT+Fs8E
         lakKVAQBHGpD9l/E73uksFTI62Xqd7tJdCkqUUYBn9Rf+piJvjzJpN6z0IC4plF4a0FB
         Dib7Nv/PWdtCsoiv5gexcpLfQR2I69tlBjQGW0DTRpIlROwx/FzA342I1WDztglU38vi
         qPvdGX5htEU7iEbbyMMbaGm5baR25YKk4S2uONzv96HBquUqagVM7NQYYmBLGVvBmhXo
         4CyE4AHp1jlfs8GBkEN8vwNIbQn5mT7x6ytBBSBOIjKnWTBbb+6MiOaRctYIk7JfwrR5
         KM+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id u9si201388edp.1.2019.02.22.23.24.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 23:24:36 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,402,1544482800"; 
   d="scan'208";a="297082663"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Feb 2019 08:24:35 +0100
Date: Sat, 23 Feb 2019 08:24:35 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: Fix missing a blank
 line after declarations
In-Reply-To: <20190223032632.18892-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1902230822370.2612@hadrien>
References: <20190223032632.18892-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 22 Feb 2019, Madhumitha Prabakaran wrote:

> This patch fix a warning
> WARNING: Missing a blank line after declarations
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750_accel.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/sm750fb/sm750_accel.h b/drivers/staging/sm750fb/sm750_accel.h
> index c4f42002a50f..018adf3d82a1 100644
> --- a/drivers/staging/sm750fb/sm750_accel.h
> +++ b/drivers/staging/sm750fb/sm750_accel.h
> @@ -223,4 +223,5 @@ int sm750_hw_imageblit(struct lynx_accel *accel,
>  		 u32 fColor,   /* Foreground color (corresponding to a 1 in the monochrome data */
>  		 u32 bColor,   /* Background color (corresponding to a 0 in the monochrome data */
>  		 u32 rop2);
> +

This doesn't look useful.  Actually checkpatch is just based on regular
expressions, so it doesn't have a global view of the code.  The blank line
is to separate local variables in a block, ie { ... } from the main code
in the block.  That is not the case here.

julia

>  #endif
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190223032632.18892-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

