X-GM-THRID: 6664640601666879488
X-Received: by 2002:a9d:65d5:: with SMTP id z21mr34161oth.37.1551769844889;
        Mon, 04 Mar 2019 23:10:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:c189:: with SMTP id r131ls20754oif.6.gmail; Mon, 04 Mar
 2019 23:10:43 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZ5nPw0tFSkmKn4dJATMsy0vA0ysmVv1q2VZJ65bUXdY8Jgc9k9o7jOvO9u7DkojIZQ8vEK
X-Received: by 2002:aca:55ce:: with SMTP id j197mr14177460oib.55.1551769843932;
        Mon, 04 Mar 2019 23:10:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551769843; cv=none;
        d=google.com; s=arc-20160816;
        b=imEW2eSSXhLTuNvu+H3bguKGALcYkNb2ysB2PoPGTVPTHByBV0gbOmd+BVoVLSYde9
         Eu+0qFCgH2UmBba7PZBOUwMEaeeETcMEc2K1G6B7dcMunfUCu2sfeuKPD38uoxo+s9Qf
         pABhZng/1NWad1EWxzzVuAHsg54j6yFmzd2Q7Vj8DwMJwW9CqlnMGMHfzqZmotGVS0Lr
         2L3b1HiTdUx/jnBeGPQ1IG5O8O5FZy4a3aZqfL3JSvriYYZ6v9+EiJjAEtgx+gvcyPf9
         zzU90BWab9YWDZWixA8rFPMZuA0ZKL6NOsNlD2Y0UU7xUhDM0+I4os/4w221XJBMVhyi
         hwbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kQbhaiU0UO+ciO7EjOkq+fKa0EHYuIC8LCatOF+tTFg=;
        b=OwcmnHR11jGLwRu5C7uzQrYK0zK6VvJObmKLcwK2/nq8GjjQpMCjFV1z/zZ6sdnfVJ
         DY1Kv6CHa8okiUoLkZl1qDztDJKyrVULTxVtWsKWB9svw+zjVPZyRxFNn1yYEhUVAYz/
         XHSvazrg4/dG9kxLS5nH6kyISQsr3pqxOCmJFHagBLaMpYGoAUcNwilkf+458Bz5M0AL
         sta/+1wh9zzES4B71H7on01hUSubZF+Ujbyq+GbgiIkR2Ejg+aA9RIcbZELhVRbdmIbi
         k5/H763hjTmaeeQqJ3wK4uIPdhFGw60IdoSdMOaXSKWf7OrEKUV4p8updkYQ+T5a8kVG
         OP5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b="b5v/wWSE";
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id q206si280423oic.2.2019.03.04.23.10.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 23:10:43 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b="b5v/wWSE";
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-qt1-x843.google.com with SMTP id p48so8002828qtk.2
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 23:10:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kQbhaiU0UO+ciO7EjOkq+fKa0EHYuIC8LCatOF+tTFg=;
        b=b5v/wWSEpF8k+vrZQtEK2fR3OMXZ+yI5OzL3nHNJsBYr0skc8UQhlao8NHBpNEFD1A
         12r4cmSigXLLjQLxIyTgCLADAjCJ+lMh7EM1WrbweUEqhjAHqh7sHsntUUCEIaiSppsM
         XN+gG90h6B3C1FIGgpro4tpRRHlV0Tc+OUt98=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kQbhaiU0UO+ciO7EjOkq+fKa0EHYuIC8LCatOF+tTFg=;
        b=T0QxN0fpz/2hni0gepqMzfg2ms34ZQlqEb9pDD/CzAhqbtLP/mX/2Lnq4nVhSosLIm
         Fz4mee78/ayv9YiPsHGuCZhd7XYNcnMuH3uEOfLQWr81w3enmY5ZVVG+XONjbUQwRi+z
         DvWWYnv8CkKtR5WHNJ/hZjbP97klA86Pf75eZmDe4vOIgfQeDMl6eIItdJhuQASu7Xzs
         v5fJoir1DdHraN00gMrzehVCF1m9ZmHhwkQ38l0P7S8BCLDtMmgZP71w1Ctd0XOMrHjR
         8ZYniWeIRPxRxed4SiDjtsm/Zsp8nY2JFL1qdTnYvP2B9VTg525kfFP+f7LGcqCR/0WD
         SVyw==
X-Gm-Message-State: APjAAAUfDnEPI4bT+gfPx4Sc26ROQDJ1SgwgBurlCT0Jem7LgdnV1A8b
	c2TKPnGtTlIrEEIdMwcMjBz2GO4i/GA1O0UAqhb4+A==
X-Received: by 2002:ac8:37b0:: with SMTP id d45mr343811qtc.87.1551769843355;
 Mon, 04 Mar 2019 23:10:43 -0800 (PST)
MIME-Version: 1.0
References: <20190304183110.3702-1-nishka.dasgupta@yahoo.com> <alpine.DEB.2.21.1903042153230.2591@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903042153230.2591@hadrien>
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Date: Tue, 5 Mar 2019 12:40:29 +0530
Message-ID: <CAC4++KDuT_53zJ_h8n+8JpULcSexb+h23JadYuzNPDjf0A0U0A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Avoid multiple assignments
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>, Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
	teddy.wang@siliconmotion.com, Greg KH <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 5, 2019 at 2:24 AM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Tue, 5 Mar 2019, 'Nishka Dasgupta' via outreachy-kernel wrote:
>
> Something is going wrong in how you are sending your mail.  This message
> was put in the group's spam folder.  Maybe you are subscribed with a
> different address?
>
Yes, I am subscribed with nishka.dasgupta_ug18@ashoka.edu.in but I am
sending patches from nishka.dasgupta@yahoo.com. I tried to join the
kernel google group with my Yahoo address but it wouldn't let me; what
should I do?
> julia
>
>
>
> > Avoid multiple assignments in the same line. Issue found with
> > Checkpatch.
> >
> > Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> > ---
> >  drivers/staging/sm750fb/sm750.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> > index e9f10c2669ea..739841c3b5d6 100644
> > --- a/drivers/staging/sm750fb/sm750.c
> > +++ b/drivers/staging/sm750fb/sm750.c
> > @@ -782,7 +782,8 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
> >               0x800f0 + (int)crtc->channel * 0x140;
> >
> >       pr_info("crtc->cursor.mmio = %p\n", crtc->cursor.mmio);
> > -     crtc->cursor.maxH = crtc->cursor.maxW = 64;
> > +     crtc->cursor.maxW = 64;
> > +     crtc->cursor.maxH = crtc->cursor.maxW;
>
> Maybe it would be simpler to say = 64 both times?
Yes, it would, but I wasn't sure if it was important for maxH and maxW
to always have the same value; if so, then setting one to 64 and the
other to always have the same value as the first seemed safer. If they
don't have to be the same, I can change accordingly.

> julia
>
> >       crtc->cursor.size = crtc->cursor.maxH * crtc->cursor.maxW * 2 / 8;
> >       crtc->cursor.vstart = sm750_dev->pvMem + crtc->cursor.offset;
> >
> > --
> > 2.19.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190304183110.3702-1-nishka.dasgupta%40yahoo.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903042153230.2591%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

- Nishka

