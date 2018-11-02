X-GM-THRID: 6619077441472167936
X-Received: by 2002:a1c:9902:: with SMTP id b2-v6mr73058wme.4.1541162633329;
        Fri, 02 Nov 2018 05:43:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:7e0f:: with SMTP id z15-v6ls441310wmc.10.canary-gmail;
 Fri, 02 Nov 2018 05:43:52 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dd8Ri2vC++VSwaLzKBh10ev2nlkNGnP/CjhclNXKGLwSpVww+ZeO/PpaETS9EhxeUYu9/k
X-Received: by 2002:a1c:c02:: with SMTP id 2-v6mr84779wmm.16.1541162632484;
        Fri, 02 Nov 2018 05:43:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541162632; cv=none;
        d=google.com; s=arc-20160816;
        b=PwE1PFmEA8dpSUyx0Mg8Wpq9LcOTd5acjQOLBN71VXr32ktVs/AO2uLWqCj74JRPJR
         KiqJwCFRw429VuYXS84l2Er04hKStEbn8bg7KzE+Pc49YRCS6lL807t1T9DBYhOIC56R
         2FiBqIq9hmJhDfULeiFglI8SbdQdwPkFtqFmDj598teraOaE7newQ8jsj2j4LuQO0Qaq
         6vnM9rZEznMJXJPv7kYMth2OJQj+cdof5ue1BD+pm34ZHfjgsZpEDOgaJJRqLS9kV0ps
         PIREKGk+mWNleB7XA2EfaOjIWkjI3r1v/Why+nkB+89YQIvxHLozjIzILiydhGm4Grur
         VhHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=A1h6VnZbqSS1cjUVr36bm5r3y1yIbbh2gE52wrIb4P4=;
        b=jgV0BDHjxCvkuz2jeRCgKUIj4CLHH6u6fLy5HVmQmqsjT/Wu/CnpqMSSya+eIEgPMA
         bI+OEixu21IDseAQM7YRuV9aBU9nNNDW+6LLsaFVQyFzwxDKCNa9vKyNqGth7x5SOX3u
         fETysX+uWIx62OHU0iYW3a6DLzRPpqmt9MMr4DGhefmk16PcCKgJzKroYIXF4tQTWGEj
         j3YAAw84kxJooZbfOMDYET/3f81kwTOFJpVKLl/vQgUzPFAM2oRlwcqB7v2zp5oU6hr+
         9qBSNs8926KBm6izBQMUxOh7UaTShLB/cFqE+0/xqWnriUo9lY2Hx3gpgx9yaPQGhYG7
         E7/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n6-v6si452011wrj.4.2018.11.02.05.43.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 05:43:52 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,455,1534802400"; 
   d="scan'208";a="353904452"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Nov 2018 13:43:52 +0100
Date: Fri, 2 Nov 2018 13:43:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 4/5] staging: greybus Match with
 open parentheses
In-Reply-To: <20181102122539.GA1372@kvasir.local>
Message-ID: <alpine.DEB.2.20.1811021343160.3863@hadrien>
References: <cover.1541123999.git.code@wizofe.uk> <202cacec28435d2bb33fa9873f8fef9e451dada7.1541123999.git.code@wizofe.uk> <20181102045300.GA11843@kroah.com> <20181102122539.GA1372@kvasir.local>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 2 Nov 2018, Ioannis Valasakis wrote:

> On Fri, Nov 02, 2018 at 05:53:00AM +0100, Greg KH wrote:
> > On Fri, Nov 02, 2018 at 02:04:49AM +0000, Ioannis Valasakis wrote:
> > > Fix the arguments by open parentheses
> > > Reported by checkpatch.
> > >
> > > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > > ---
> > >  drivers/staging/greybus/control.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
> > > index 9c453e0b1b33..08a51c652a10 100644
> > > --- a/drivers/staging/greybus/control.h
> > > +++ b/drivers/staging/greybus/control.h
> > > @@ -41,7 +41,7 @@ int gb_control_get_bundle_versions(struct gb_control *control);
> > >  int gb_control_connected_operation(struct gb_control *control, u16 cport_id);
> > >  int gb_control_disconnected_operation(struct gb_control *control, u16 cport_id);
> > >  int gb_control_disconnecting_operation(struct gb_control *control,
> > > -					u16 cport_id);
> > > +				       u17 cport_id);
> >
> > I don't think you built this code :(
> I did built it indeed but I didn't include the module on the make
> menuconfig, so I had the false impression of compiling. Silly me.

You can check for a .o file of the .c file you have modified.

julia

>
> Thanks gregkh for the node.
>
> ta
> ioannis
> >
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181102122539.GA1372%40kvasir.local.
> For more options, visit https://groups.google.com/d/optout.
>

