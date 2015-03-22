X-GM-THRID: 9590400876544
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,885fbfd306c38f9f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.87.141 with SMTP id ay13mr10681047lab.3.1427040074952;
        Sun, 22 Mar 2015 09:01:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.102 with SMTP id q6ls601954laa.24.gmail; Sun, 22 Mar
 2015 09:01:14 -0700 (PDT)
X-Received: by 10.152.20.41 with SMTP id k9mr2735327lae.10.1427040074290;
        Sun, 22 Mar 2015 09:01:14 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id na10si299174wic.0.2015.03.22.09.01.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sun, 22 Mar 2015 09:01:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,447,1422918000"; 
   d="scan'208";a="105098627"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Mar 2015 17:01:13 +0100
Date: Sun, 22 Mar 2015 17:01:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: sm750fb: Remove struct
 typedefs
In-Reply-To: <20150322155542.GA1063@amitoj-Inspiron-3542>
Message-ID: <alpine.DEB.2.10.1503221656510.2475@hadrien>
References: <20150322155542.GA1063@amitoj-Inspiron-3542>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 22 Mar 2015, Amitoj Kaur Chawla wrote:

> Remove typedef for struct. Warning found using checkpatch.pl
> WARNING: do not add new typedefs

This is not correct.  First, the syntax of typedef is as follows:

typedef {type} {typename};

By removing the word typedef, you make something like:

{type} {typename};

But now typename is interpreted as the name of an identifier.  You have a
useless variable, and if typename was every used, then you should have
syntax errors.  If you think that you have compiled the code that uses
this type name, then you have probably not.  Check that there is a .o file
for each .c file that references this type.

The proper way to remove the typedef is to remove both typedef and the
type name, and then adjust the uses of the type name to refer to {type}.
You may also want to change the name of type to be more friendly, as when
typedef is used, it is often the type name that is friendly.  You can
often use type name.  If it has the form foo_t, it would be better to drop
the final _t.

You can find many examples of correct typedef removals in the outreachy
mailing list.

julia

> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_chip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
> index 03d96c0..74a3642 100644
> --- a/drivers/staging/sm750fb/ddk750_chip.c
> +++ b/drivers/staging/sm750fb/ddk750_chip.c
> @@ -2,7 +2,7 @@
>  #include "ddk750_reg.h"
>  #include "ddk750_chip.h"
>  #include "ddk750_power.h"
> -typedef struct _pllcalparam{
> +struct _pllcalparam {
>  	unsigned char power;/* d : 0~ 6*/
>  	unsigned char pod;
>  	unsigned char od;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150322155542.GA1063%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.
>

