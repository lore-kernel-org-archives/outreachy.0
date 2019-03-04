X-GM-THRID: 6664599067722514432
X-Received: by 2002:a1c:c00c:: with SMTP id q12mr72528wmf.5.1551733947332;
        Mon, 04 Mar 2019 13:12:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:48c:: with SMTP id 134ls63082wme.5.gmail; Mon, 04 Mar
 2019 13:12:26 -0800 (PST)
X-Google-Smtp-Source: APXvYqz6P6emvhIHTzNewexar350bbY3izxCUeEfZpdgK5slUW68tpx+6TL9yai16NRigKoj3v7p
X-Received: by 2002:a1c:a8c1:: with SMTP id r184mr67622wme.4.1551733946587;
        Mon, 04 Mar 2019 13:12:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551733946; cv=none;
        d=google.com; s=arc-20160816;
        b=nacPLSo4hAFiE5Za17fnj+QTrz/T3PkD7bxtXxAYPrM2OmAZUK8PhDPfylLRrNvUTh
         M6LeYNr1a6kG3d+Sp6VXov4uTjo7+Cl2uFCfieLRqimW6tyxwyq+dddIGOKcF8G/QcVt
         IDiwdOFZAYHg3qLn6BdcMs1KzGQwFg29GGKJoGkLbyOm6RG8ZTToGU6uv/LRdZMpOplk
         whNuT9vJW7KLSSErVD3odgvXKZh9V/MncRjgKWMCwpzo5gXuFrwGhauIWxS7Niv0jhnx
         giNkJbElAT5n5AkJuDFGALPCVkXCkIAg9VxWwURENtB5cMR5RDb2g+wijJA+qHcNNB8V
         J3ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=gUTbvC9rqts0xCCV/3vY574eRrQTujIOx7+Ein4Utqo=;
        b=oDsr9/avq+VxdamO+B7zFysjMhRybv65Yb4TR7D10iTO12Dki+qSMTtJb0gpRp4tRq
         9ZrnlmfHNICl7D8wPu9qT3nq1jYg0OoCc9Zb2NDAT3UM3+PkBq9IpnhL5NNjqby9pMzf
         zL26y7aS/YSkOejfP09CSdOyFOGsgmrohruN2vWRDxUwpcIy6h/oETcgIN/N5z6/60l+
         jVnG2FxQ5tYJ6Udda2t/szPqA79zh7eUkj8GhTz9YAe+4sxRxG95meu+NIheRszSElB/
         bK1UnTZLw2ichmW56p7glt/OCWQ8kpVQXKRbsimw9B3j4K/Nl34QD+eKFSdN3IfXvqRz
         K1tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q192si256861wme.3.2019.03.04.13.12.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 13:12:26 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,441,1544482800"; 
   d="scan'208";a="298077536"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2019 22:12:25 +0100
Date: Mon, 4 Mar 2019 22:12:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: Greg KH <gregkh@linuxfoundation.org>, 
    Nishka Dasgupta <nishka.dasgupta@yahoo.com>, johan@kernel.org, 
    elder@kernel.org, outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: greybus: Add brackets
 to avoid precedence issues
In-Reply-To: <CAC4++KAwPEjSSTbgnRYXCU=z_WNJAs3rbAtL0XboZ-OCmjCmrg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903042210360.2591@hadrien>
References: <20190304173947.30135-1-nishka.dasgupta@yahoo.com> <20190304190228.GD13830@kroah.com> <CAC4++KAwPEjSSTbgnRYXCU=z_WNJAs3rbAtL0XboZ-OCmjCmrg@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 5 Mar 2019, Nishka Dasgupta wrote:

> On Tue, Mar 5, 2019 at 12:32 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Mon, Mar 04, 2019 at 11:09:47PM +0530, Nishka Dasgupta wrote:
> > > Add parentheses around arguments to avoid precedence issues. Issue found
> > > by Checkpatch.
> > >
> > > Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> > > ---
> > >  drivers/staging/greybus/camera.c | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
> > > index 615c8e7fd51e..7b653a4fd63f 100644
> > > --- a/drivers/staging/greybus/camera.c
> > > +++ b/drivers/staging/greybus/camera.c
> > > @@ -180,9 +180,9 @@ static const struct gb_camera_fmt_info *gb_camera_get_format_info(u16 gb_fmt)
> > >
> > >  #define GB_CAMERA_MAX_SETTINGS_SIZE  8192
> > >
> > > -#define gcam_dbg(gcam, format...)    dev_dbg(&gcam->bundle->dev, format)
> > > -#define gcam_info(gcam, format...)   dev_info(&gcam->bundle->dev, format)
> > > -#define gcam_err(gcam, format...)    dev_err(&gcam->bundle->dev, format)
> > > +#define gcam_dbg((gcam), format...)  dev_dbg(&gcam->bundle->dev, format)
> > > +#define gcam_info((gcam), format...) dev_info(&gcam->bundle->dev, format)
> > > +#define gcam_err((gcam), format...)  dev_err(&gcam->bundle->dev, format)
> >
> > Please explain how adding an extra () helps anything here.
> >
> > I think checkpatch is very confused.  Always use your brain when running
> > it, as it is just a perl script and sometimes gets things wrong (like
> > here.)
> I thought adding brackets just demarcates the parameter(s)? If that is
> not necessary or useful, then I won't submit this patch in future.

I'm not sure what this does.  A macro parameter list shouldn't have
parentheses in it.  I wonder if cpp sees the parentheses and decides it is
not a paramater list, but rather part of the macro body?  Are these macros
actually used?  If not you can just remove them.

julia


>
> > thanks,
> >
> > greg k-h
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190304190228.GD13830%40kroah.com.
> > For more options, visit https://groups.google.com/d/optout.
> - Nishka
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAC4%2B%2BKAwPEjSSTbgnRYXCU%3Dz_WNJAs3rbAtL0XboZ-OCmjCmrg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

