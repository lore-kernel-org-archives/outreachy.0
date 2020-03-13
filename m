X-GM-THRID: 6803797198848917504
X-Received: by 2002:a2e:9e16:: with SMTP id e22mr10003413ljk.220.1584134622362;
        Fri, 13 Mar 2020 14:23:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:3cd:: with SMTP id f13ls2165789ljp.4.gmail; Fri, 13
 Mar 2020 14:23:40 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv2H7kuK4UkLZvMDvRJNKDa6gMZqHE9JDqElIiSPc6+BcIc8joEC7Y0gUng1WLP1lG0aXox
X-Received: by 2002:a2e:9949:: with SMTP id r9mr7861661ljj.135.1584134620804;
        Fri, 13 Mar 2020 14:23:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584134620; cv=none;
        d=google.com; s=arc-20160816;
        b=qkfJZiy54fVAXvr8yFYqXVHW+PEwAvil+hqsjNcngqYTfTQcRzf37FvxOYZnH/j7WQ
         +VptDBKnSuudHeXqJbKTc7fD/CxRIBbIOJ60pjUHIwbtFADEKyLug6TUdqTGfnzJyN3C
         +2q67C4B/HC14LOkZkZEHaSRZuxloCVpsM312y1cnxG2vSna6L9kMxhqesNRiIt7RCmF
         HnueuEeFuhZdnzf5q0CcNPEGFHc55gxFARZ93F1JTErqpKWX7D4/UXvpD5HeddJcyur4
         S8IZSNua2WyK8H099ltraQj+FzQIQWexY1Qzg+3E1PDChe2E6JukViVmTKFYxPno0LA2
         D/Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=0xnAYaonaD4l4tAPOp7sQk4gYyqYhSZ6OMnjVGkQPF4=;
        b=UEtpoRNDh4/6GhOkqu8OLgCP+vDAARZbLK7+o5ZG0ZsdvC71KZ5uJp6tIcUOEb8JVP
         T5hqAAKb6FIZjBoVaH8TKtIZV7Z7ZgF6hTgisb6eLw2qE1uGlkZjQMORJPgYrm6LY20m
         eG9L9tXfKQtpkUdST+gJ0tHEBP7ZDWQoxQ+5ZR5YiDNR/Eh4zzkFrdYb5CKCS+8IFIm1
         2IP7xIJB4RBWevd9QDlfwN6SWbn4ws53szZtJk32SihMOt6yiQ7HEYsklQ54C+mr3pK/
         gdd12Sh40DGTPJuIbwQIzXjEFwiSHNbeyxByv0jE9SFZw8bvuhkEe7yCfSim00+dcckg
         jp8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d12si462455lfi.2.2020.03.13.14.23.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2020 14:23:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,550,1574118000"; 
   d="scan'208";a="342327686"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2020 22:23:39 +0100
Date: Fri, 13 Mar 2020 22:23:39 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: media: hantro: add
 parentheses
In-Reply-To: <20200313211946.GA1217@kaaira-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.21.2003132222380.2355@hadrien>
References: <20200313204739.32676-1-kgupta@es.iitr.ac.in> <20200313204739.32676-6-kgupta@es.iitr.ac.in> <alpine.DEB.2.21.2003132204070.2355@hadrien> <20200313211946.GA1217@kaaira-HP-Pavilion-Notebook>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 14 Mar 2020, Kaaira Gupta wrote:

> On Fri, Mar 13, 2020 at 10:05:08PM +0100, Julia Lawall wrote:
> >
> >
> > On Sat, 14 Mar 2020, Kaaira Gupta wrote:
> >
> > > Add parentheses around `reg_name` to be safe of precedence issues in
> > > a Macro in file hantro_postproc.c. Warning reported by checkpatch.pl
> > >
> > > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > > ---
> > >  drivers/staging/media/hantro/hantro_postproc.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
> > > index d99238f4753c..c731cda822c2 100644
> > > --- a/drivers/staging/media/hantro/hantro_postproc.c
> > > +++ b/drivers/staging/media/hantro/hantro_postproc.c
> > > @@ -22,7 +22,7 @@
> > >  #define HANTRO_PP_REG_WRITE_S(vpu, reg_name, val) \
> > >  { \
> > >  	hantro_reg_write_s((vpu), \
> > > -			   &(vpu)->variant->postproc_regs->reg_name, \
> > > +			   &(vpu)->variant->postproc_regs->(reg_name), \
> >
> > Does this compile?  I didn't know that you could put parentheses around a
> > field name.
> >
> > Maybe the macro isn't actually used?
> >
> > In any case, I don't think any precedence problem is possible.
>
> In such a case where I have to remove a patch from the patchset, should
> I send a different patchset or should I write in the log of the cover
> letter that a patch was deleted?

Explaining the change in the log would be fine.  eg

v2: renumbered the patch to account for a deleted patch in the series

julia

>
> >
> > julia
> >
> > >  			   (val)); \
> > >  }
> > >
> > > --
> > > 2.17.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200313204739.32676-6-kgupta%40es.iitr.ac.in.
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.2003132204070.2355%40hadrien.
>

