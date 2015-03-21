X-GM-THRID: 9381605277696
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5ac3f70b1eabe1bb
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.45.7 with SMTP id i7mr13989634lam.9.1426944925148;
        Sat, 21 Mar 2015 06:35:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.42 with SMTP id y10ls542347lag.71.gmail; Sat, 21 Mar
 2015 06:35:24 -0700 (PDT)
X-Received: by 10.112.125.67 with SMTP id mo3mr12201636lbb.6.1426944924498;
        Sat, 21 Mar 2015 06:35:24 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cl5si85055wib.3.2015.03.21.06.35.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 06:35:24 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,442,1422918000"; 
   d="scan'208";a="104223958"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Mar 2015 14:35:08 +0100
Date: Sat, 21 Mar 2015 14:35:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Somya Anand <somyaanand214@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 0/2] Convert Macro into static
 inline function
In-Reply-To: <1426942225-7634-1-git-send-email-somyaanand214@gmail.com>
Message-ID: <alpine.DEB.2.02.1503211434560.2041@localhost6.localdomain6>
References: <1426942225-7634-1-git-send-email-somyaanand214@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

Looks better. Thanks.

julia

On Sat, 21 Mar 2015, Somya Anand wrote:

> Static inline function are generally preferred over macros because
> static inline functions have types and return values. But in order
> to change a macro into static inline function we have to check the
> calling sites of the macro and ensuring that the types of arguments
> in each case is same and also ensure that macro always returns same
> type.
> 
> This check is done via following coccinelle script.
> 
> Since this macro does not return anything, so coccinelle script can be
> simplified to avoid return type checks.
> 
> 
> @initialize:python@
> @@
> list = []
> 
> @rule1@
> type T;
> T e;
> expression list[n] es;
> @@
> class_export_rpc_inc(es,e,...);
> 
> @script:python rule2@
> e << rule1.e;
> T << rule1.T;
> @@
> list.append(T)
> 
> @finalize:python@
> @@
> possible = True
> for t in list:
>         if t != list[0]:
>                 possible = False
> 
> if possible:
>         print 'This patch is possible. Argument type:', list[0]
> else:
>         print 'This patch is not possible'
> 
> Somya Anand (2):
>   Staging: lustre: Convert macro class_export_rpc_inc into static inline
>     function
>   Staging: lustre: Convert macro class_export_rpc_dec into static inline
>     function
> 
>  drivers/staging/lustre/lustre/include/obd_class.h | 26 +++++++++++------------
>  1 file changed, 13 insertions(+), 13 deletions(-)
> 
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1426942225-7634-1-git-send-email-somyaanand214%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

