X-GM-THRID: 2843857649664
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,837e11d1bf93e34c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.80.7 with SMTP id n7mr1463352wix.0.1424711756132;
        Mon, 23 Feb 2015 09:15:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.19.165 with SMTP id g5ls464728lae.68.gmail; Mon, 23 Feb
 2015 09:15:55 -0800 (PST)
X-Received: by 10.112.144.130 with SMTP id sm2mr1557350lbb.9.1424711755581;
        Mon, 23 Feb 2015 09:15:55 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ta1si733761wic.1.2015.02.23.09.15.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 09:15:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,631,1418079600"; 
   d="scan'208";a="101044428"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2015 18:15:55 +0100
Date: Mon, 23 Feb 2015 18:15:47 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Katie Dunne <kdunne@mail.ccsf.edu>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Replace simple_strtoul
 with kstroul
In-Reply-To: <20150223160750.GA3917@katie-Inspiron-5748>
Message-ID: <alpine.DEB.2.10.1502231813080.2479@hadrien>
References: <20150223160750.GA3917@katie-Inspiron-5748>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 23 Feb 2015, Katie Dunne wrote:

> Addresses checkpatch.pl warning:
> WARNING: simple_strtoul is obsolete, use kstroul instead

There is no such function.  There is a function kstrtoul, but it doesn't
take the same set of arguments, and you have to argue carefully that the
transformed code has the same semantics.

Your code should not have compiled.  If you think that you compiled it,
check whether you have a .o file for your .c file. If not, then you need
to adjust your configuration to be sure to be compiling this code.

julia

>
> Makes the indicated replacement
>
> Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
> ---
>  drivers/staging/speakup/varhandlers.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/speakup/varhandlers.c b/drivers/staging/speakup/varhandlers.c
> index 1b0d1c0..f89306d 100644
> --- a/drivers/staging/speakup/varhandlers.c
> +++ b/drivers/staging/speakup/varhandlers.c
> @@ -324,7 +324,7 @@ char *spk_s2uchar(char *start, char *dest)
>  {
>  	int val = 0;
>
> -	val = simple_strtoul(skip_spaces(start), &start, 10);
> +	val = kstroul(skip_spaces(start), &start, 10);
>  	if (*start == ',')
>  		start++;
>  	*dest = (u_char)val;
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150223160750.GA3917%40katie-Inspiron-5748.
> For more options, visit https://groups.google.com/d/optout.
>

