X-GM-THRID: 6667559870599790592
X-Received: by 2002:a7b:c0c8:: with SMTP id s8mr351876wmh.6.1552414557119;
        Tue, 12 Mar 2019 11:15:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:dc0e:: with SMTP id t14ls4426745wri.6.gmail; Tue, 12 Mar
 2019 11:15:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyZgR49KxczDowmJESOeAvJAWP7F4cI7V84gGGggCjmewnzluP0EgAKACkC2NIoikN+f8VJ
X-Received: by 2002:a5d:400b:: with SMTP id n11mr621958wrp.7.1552414556241;
        Tue, 12 Mar 2019 11:15:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552414556; cv=none;
        d=google.com; s=arc-20160816;
        b=dhTKZ8M4lSpnaYYW8uhJP4QkfaiQW5LhJcRl44HkG/Mh0+MjB4ZXfm90Y7mcLwel7f
         4bCUPEKCVgsjJIsU7Q5JJjcN+JYtGCEbAJY4i1WSURho8a86uMV7R15g+XSlyDjiFS/b
         pGa6MaSQ5mlm/erEK7r8PafUAb5HT112QTQGi4q1zZLGPm1hBDJiiVniS0gqTLvsKEN4
         UOCMvfoqf9ou+2AKiqGJPwRN9Yu+Vc6sl0M2R9gw3tsgl6WpT2gvJ1qHBCkyOfXTphkx
         S96g2/qoFz0XC8qUIERl/NIlwX4VSEgsWV8w6oz06osFenyiGSjD8kNZK4a+YptLXAE7
         5b8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=BEFxBDTLWBg+BLvb3uMFMGxoR4qLvHXq2r06jnsya7Q=;
        b=n7I5/srTE76abrb+SAdbhMKgPGsfCNz1i//fPo2bRYLur0RhuvEtxMqJd2PGQLJDXu
         kZ1NuY0TkhmLRvZF8K7nErkVLgK2xUvWxC2xFiRSrSMcTB3gf/O09z7oxnvz66qzOHDh
         ewNRJxktIApEiw2WwMblkDEeIugG52OTFIkk82JTh1TUZX5kmaFedFEc8aW7r3/wG6Xy
         iqHmiIkhEjNjortThRIiKv7gdHtxn+Kc40u3rU+MzfpiMsKfnPqBS9xFVy2FJa/OPspH
         1FGAYOGhzaHXZ77N9PVEnCOjG4DVb5PRwmMRdRi0iaGaMYrGCEsHetjzYk7m1KGBhf6N
         T2rA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q192si133886wme.3.2019.03.12.11.15.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 11:15:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,471,1544482800"; 
   d="scan'208";a="373118744"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2019 19:15:56 +0100
Date: Tue, 12 Mar 2019 19:15:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Remove an unnecessary
 initialization in function
In-Reply-To: <20190312180344.GA17075@madhuleo>
Message-ID: <alpine.DEB.2.20.1903121912480.4097@hadrien>
References: <20190312173730.23281-1-madhumithabiw@gmail.com> <alpine.DEB.2.20.1903121850370.4097@hadrien> <20190312180344.GA17075@madhuleo>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 12 Mar 2019, Madhumthia Prabakaran wrote:

> On Tue, Mar 12, 2019 at 06:52:44PM +0100, Julia Lawall wrote:
> >
> >
> > On Tue, 12 Mar 2019, Madhumitha Prabakaran wrote:
> >
> > > Remove an unnecessary initialization of local variable dt_stat in function.
> > > Issue suggested by Coccinelle using ret.cocci.
> > >
> > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > ---
> > >  drivers/staging/speakup/speakup_decpc.c | 5 ++---
> > >  1 file changed, 2 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/staging/speakup/speakup_decpc.c b/drivers/staging/speakup/speakup_decpc.c
> > > index 459ee0c0bd57..3ad49bb93829 100644
> > > --- a/drivers/staging/speakup/speakup_decpc.c
> > > +++ b/drivers/staging/speakup/speakup_decpc.c
> > > @@ -233,9 +233,8 @@ static struct spk_synth synth_dec_pc = {
> > >
> > >  static int dt_getstatus(void)
> > >  {
> > > -	dt_stat = inb_p(speakup_info.port_tts) |
> > > -		 (inb_p(speakup_info.port_tts + 1) << 8);
> > > -	return dt_stat;
> > > +	return inb_p(speakup_info.port_tts) |
> > > +	       (inb_p(speakup_info.port_tts + 1) << 8);
> >
> > This doesn't look correct, because dt_stat is not declared in this
> > function.  Did you get this result from the semantic patch that is at:
> >
> > https://kernelnewbies.org/JuliaLawall
> >
> > That says "local idexpression ret;", so it should only report on the case
> > where the variable is declared in the same function.
> >
> > julia
> >
> > >  }
> > >
> > >  static void dt_sendcmd(u_int cmd)
> > > --
> > > 2.17.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190312173730.23281-1-madhumithabiw%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1903121850370.4097%40hadrien.
> > For more options, visit https://groups.google.com/d/optout.
>
> Yes.
>
> 1. I created a file in home ret.cocci, which is
>
> @@
> local idexpression ret;
> expression e;
> @@
>
> -ret =
> +return
>      e;
> -return ret;
>
> 2. I run a command
> spatch --sp-file ret.cocci --no-includes --dir git/kernels/staging/drivers/staging/ > ret.out
> which generated this file.

The approach looks fine, but I don't get any output related to that file.
Can you double check that your semantic patch is exactly as you have put
it above?  What do you get when you run it giving the name of the specific
file?

julia

>
> Please correct me, if I'm wrong here
>
> Thanks,
> Madhu
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190312180344.GA17075%40madhuleo.
> For more options, visit https://groups.google.com/d/optout.
>

