X-GM-THRID: 6803797198848917504
X-Received: by 2002:a17:906:749c:: with SMTP id e28mr13800236ejl.139.1584134542545;
        Fri, 13 Mar 2020 14:22:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:5a82:: with SMTP id l2ls6135558ejq.0.gmail; Fri, 13
 Mar 2020 14:22:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtl9y6YiJFiRvAiUMHisx2Qxad8IMa0+Sno+V9bR7iq/08Tg4tFlzC5H5QvFRkULr47zATd
X-Received: by 2002:a17:906:4917:: with SMTP id b23mr13864115ejq.207.1584134541124;
        Fri, 13 Mar 2020 14:22:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584134541; cv=none;
        d=google.com; s=arc-20160816;
        b=U8Ix/AmDt4KUjxu73oP+vs77cxdhNhOKcJ2NALxXIUJ8GesFDkb7pyD/F4M04Jid0g
         QONUkOIvO1XmncPy/oSoYM+FIlubuohTZN1nuc42mpnQy57yvSEKddDtJtcdP4e1gORy
         d3VkxC3UlF2wEODldfIGJ4kp3K/hQ9S5CDGxhsv9KsgAIampbX5YMNO4HC08wD6C5bcV
         Ql8+H0iQcI/ogBbtIO0Ovp+TQ74fsi+bxTGLyc1rSTK/l+KXd2JQRXw6ud4wKQOfqzix
         mgVwgBRQ35m0WQHMeXIyRMn4Y5/cJq+/4tsZMnc25XjWfdpYjHXy03QlL26VhxTjJgJG
         KbVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=WXrfxzokD/ytuBi855Z6ShuzwS0MmtadW5Ms/vsXWBg=;
        b=pOG+OyWB8TBWFuGv75tcLqh+JdTN0NX93n1iXO39t6UlCLnv1C7QL6KwTxqeiYUnVG
         GRYxtPM595yuJrMJHSTbpHTbYLVYP9a/VcEVNF2Or6965hVMjvzj66it6p8+tBTElCHf
         M3dS+xgNZfnpd7aafeZR4bVAotudDh2YyC6CnUeNtzkMNEkIXDewhprY4z/pxAmu4MZY
         +/MhPHv+5VghHr8QeumFEnW1qCpt4S4sIjidYlSMRJWlmZYuVeMOAX8wKPZFz8Dokjez
         6AR4pkmX4s2P3r4zN6cXZcIBdRtg4vqZ3cXzzNBHgBFwUxZRISq2D4maR/3PtvkOeWNU
         Snrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d7si490047edo.5.2020.03.13.14.22.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2020 14:22:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,550,1574118000"; 
   d="scan'208";a="342327626"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2020 22:22:18 +0100
Date: Fri, 13 Mar 2020 22:22:18 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 5/5] staging: media: hantro: add
 parentheses
In-Reply-To: <20200313211007.GA1084@kaaira-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.21.2003132221520.2355@hadrien>
References: <20200313204739.32676-1-kgupta@es.iitr.ac.in> <20200313204739.32676-6-kgupta@es.iitr.ac.in> <alpine.DEB.2.21.2003132204070.2355@hadrien> <20200313211007.GA1084@kaaira-HP-Pavilion-Notebook>
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
>
> Yes it compiles.

It's not so easy to tell if a macro compiles.  You have to be sure that
the macro is actually used.

julia

>
> >
> > Maybe the macro isn't actually used?
> >
> > In any case, I don't think any precedence problem is possible.
>
> Yes, you are right. There won't be any precedence issues in this case.
> Sorry for the misunderstanding.
>
> Thanks!
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
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200313211007.GA1084%40kaaira-HP-Pavilion-Notebook.
>

