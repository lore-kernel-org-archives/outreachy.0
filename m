X-GM-THRID: 6619819947345313792
X-Received: by 2002:a1c:f609:: with SMTP id w9-v6mr416946wmc.5.1541333025521;
        Sun, 04 Nov 2018 04:03:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:f014:: with SMTP id a20-v6ls987336wmb.21.gmail; Sun, 04
 Nov 2018 04:03:44 -0800 (PST)
X-Google-Smtp-Source: AJdET5ftq59xx2B8489ilhKXFsG/zDgCwah2hlXl4KjFREhYYKK01f4eULcXKFFh+pn9UgV+Ifrv
X-Received: by 2002:a7b:c018:: with SMTP id c24-v6mr416279wmb.7.1541333024611;
        Sun, 04 Nov 2018 04:03:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541333024; cv=none;
        d=google.com; s=arc-20160816;
        b=CmF7F7bVbmlmveW8NT5Ygl6znSDTbWLVhvGTgBhg4J7Fi1j/QE8WPHCfEGPx6rW4Yi
         aFCyJzWUZy92MJhCd8G111xn3FLLd9qHioVAnevYW2hR93Mt2WfTYZpS5Go0zR1dKYkh
         hmD+yzL0yHNuRz/lzWKPmbUu5mWJL0xQ9q+FyjDzS359antqzR/6a4mO712qwuniCa9A
         /ZX8YPtEgCoMeT7uKKzUXFHbmGVnIDVghzRARYinyrrwHgYeBntSlembRZdwDH5pDLLw
         +wD9PGQ8caYvO+KmtsBsDJ9SrpoqDPJmB5C6yhwcnJjXN+PAhfCtShEqTL2E9a9F23B2
         enXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=3on4NB5GywoH6Cli3jhJepaYh14FGvhmMt51vZXrwpY=;
        b=LMwpavwi+hHZuMQlhiaINKunQOcHeDMFdWfNdV6MnmkEg9rxo732+uC+wfbEyYfHcV
         eINKpyHncrcvAw460R7oodDijd+S9q5H+f+QVdI8h7t01q+SCK0/8jxE23MGZjhLiipQ
         0EF3zTNKiU3OUmfOAlFJfP9AEaJXoPwTjBE3s/Kr0ruLM0op3W2SX1PUfk0qcOiup+b2
         flhFe1dUfMu5OlxWDoopy2Q9HDVYzSV4q9imS/Er/JIcCaf9RnEJAziPL1z3u8/9VTGp
         2K2PnIdpQyjf6jcInAIh/gLIdKea3iwjb/osORI/81ReixaPfAOESYhjq403eBnsrjRb
         WJkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o9-v6si1033276wmh.2.2018.11.04.04.03.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 04:03:44 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,464,1534802400"; 
   d="scan'208";a="284277166"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Nov 2018 13:03:43 +0100
Date: Sun, 4 Nov 2018 13:03:43 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: remove unmatched
 right bracket
In-Reply-To: <20181104120107.GA12077@kvasir.local>
Message-ID: <alpine.DEB.2.21.1811041302560.2605@hadrien>
References: <20181104020212.GA18914@kvasir.local> <alpine.DEB.2.21.1811040726060.2448@hadrien> <20181104120107.GA12077@kvasir.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 4 Nov 2018, Ioannis Valasakis wrote:

> On Sun, Nov 04, 2018 at 07:27:27AM +0100, Julia Lawall wrote:
> >
> >
> > On Sun, 4 Nov 2018, Ioannis Valasakis wrote:
> >
> > > Remove unmatched right bracket.
> > > Reported by uncrustify.
> > >
> > > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> >
> > Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> >
> > I wondered how such a problem could go unnoticed, but this file seems to
> > have a lot of other compilation problems that could perhaps also be fixed
> > up.
> Weird indeed. I was wondering myself after compiling the modules but I
> noticed that camera isn't compile by running a make. Could you let me
> know how did you find out the compilation problems, i.e. how did you try
> compiling camera.c, so that I can replicate?

make drivers/staging/greybus/camera.o

julia


>
> thanks
> ioannis
> >
> > julia
> >
> > > ---
> > >  drivers/staging/greybus/camera.c | 1 -
> > >  1 file changed, 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
> > > index 6dded10f4155..c6d65430ea4c 100644
> > > --- a/drivers/staging/greybus/camera.c
> > > +++ b/drivers/staging/greybus/camera.c
> > > @@ -1190,7 +1190,6 @@ static int gb_camera_debugfs_init(struct gb_camera *gcam)
> > >  		debugfs_create_file(entry->name, entry->mask,
> > >  				    gcam->debugfs.root, gcam,
> > >  				    &gb_camera_debugfs_ops);
> > > -		}
> > >  	}
> > >
> > >  	return 0;
> > > --
> > > 2.19.1
> > >
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181104020212.GA18914%40kvasir.local.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181104120107.GA12077%40kvasir.local.
> For more options, visit https://groups.google.com/d/optout.
>

