X-GM-THRID: 2843857649664
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,837e11d1bf93e34c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.181.29.66 with SMTP id ju2mr2223454wid.1.1424794285054;
        Tue, 24 Feb 2015 08:11:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.94.34 with SMTP id cz2ls68719wib.46.canary; Tue, 24 Feb
 2015 08:11:23 -0800 (PST)
X-Received: by 10.180.91.76 with SMTP id cc12mr2226671wib.7.1424794283243;
        Tue, 24 Feb 2015 08:11:23 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id ev8si928551wib.3.2015.02.24.08.11.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Tue, 24 Feb 2015 08:11:23 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,639,1418079600"; 
   d="scan'208";a="101175589"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Feb 2015 17:11:22 +0100
Date: Tue, 24 Feb 2015 17:11:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Katie Dunne <kdunne@mail.ccsf.edu>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [RFC v2] Staging: speakup: Replace simple_strtoul
 with kstrtoul
In-Reply-To: <20150224155911.GA31347@katie-Inspiron-5748>
Message-ID: <alpine.DEB.2.10.1502241703060.18704@hadrien>
References: <20150224155911.GA31347@katie-Inspiron-5748>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 24 Feb 2015, Katie Dunne wrote:

> When compiling the following patch I get two warnings:
>
> WARNING: return makes pointer from integer without a cast
> return -EINVAL;
> ^

You have two return statements.  One says return -EINVAL and one says
return start.  Start is a pointer.  -EINVAL is an integer.  If a function
wants to return an integer from a pointer-typed function, it can use
ERR_PTR(-EINVAL).

On the other hand, that would just make the types work out.  It seems that
you are significantly changing the semantics of the function.  For
example, the caller does not currently expect an error value.  Removing
simple_strtoul is often very complicated.  You need to consider several
cases:

What does it do on a string that contains only an unsigned long?
What does it do on a string that contains an unsigned long followed by
something else?
What does it do on a string that contains something else entirely?

You will see that kstrtoul does not have exactly the same behavior on
these three cases.  So then you have to adjust this function so that the
effect is the same.

> WARNING: Cast from pointer to integer of different size
> *dest = (u_char)res;
>          ^

Res is a pointer to unsigned long, thus probably 32 or 64 bits.  u_char is
only 8 bits, and not a pointer.  Perhaps throwing away all the bits is
not what is intended.

>
> -	val = kstroul(skip_spaces(start), &start, 10);
> +	val = kstrtoul(skip_spaces(start), 10, res);

Note that this is a patch against your previous change rather than against
the original code.  Even when you just want feedback, it would be good to
provide the original code so that one could understand the change in the
proper context.

julia


> +		if (val)
> +			return -EINVAL;
>  	if (*start == ',')
>  		start++;
> -	*dest = (u_char)val;
> +	*dest = (u_char)res;
>  	return start;
>  }
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20150224155911.GA31347%40katie-Inspiron-5748.
> For more options, visit https://groups.google.com/d/optout.
>

