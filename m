X-GM-THRID: 6619077441472167936
X-Received: by 2002:a17:906:4f95:: with SMTP id o21-v6mr1484226eju.6.1541153175810;
        Fri, 02 Nov 2018 03:06:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:1b4d:: with SMTP id p13-v6ls2983852ejg.5.gmail; Fri,
 02 Nov 2018 03:06:14 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dESFafglY5XowWFWtBIurad59R4HkZ0b+zAMVQ3xk8ViamfiXRUESVeXhIqrcwRbCZqt1t
X-Received: by 2002:a17:906:2cd4:: with SMTP id r20-v6mr1468838ejr.5.1541153174951;
        Fri, 02 Nov 2018 03:06:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541153174; cv=pass;
        d=google.com; s=arc-20160816;
        b=jmE5CJ6/E4m8etqyVIk4SPqk2F8MgVxA5iNeB8CQLLkYEnCEtSmViJoBGyMp0mX9+Z
         JA/6aO0NHZgxuIK70HoJOuJFTecRyVS/4mmfjsN5/Dxdw5d5e3TEYCqhqIJ6Invi+Xll
         TP4tNixaDGFTpVJtoWCoqMvAOcwuejttXetl36jrprfgQBEfEx2r7VsCqFjz3B0EzeeS
         AR1hO3HLGAgtDE58mz+pWtqXnNvYAnH2ZnQD+dFPSUrYBSOddJqwN9RgzQwwAoecgOnW
         62Obtm2Tf+G8xNx6CouUVByC92CdSDFjW8Pq6ItDOlGYnueVcL0VKsdakoLQxEgrH8i+
         +zHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Ese/IUf8TDG3/vfR9AOWDEIOvtx0Th/SN6OEQ3+2Whk=;
        b=ygW5T1XU9vC9HZ8RlaSZ4Tv8YP6qpTMVy8i1uDgp1D6W5QCA2CG2OUtKzGY2lElS9r
         NFMkOeW5+EsDew5bGlP1pVhfBgdTHkCh8semnnd8+HsMkN5o0EqxZ9a6ZcxlMHzzI+m3
         nktKpPGwKQlReO5KH9Egy/3s+k8t6IMa9SHajopQZVFLzwP+P+AEkRsxB5QiDvMA7Pov
         gTvW70UhEij2uMRduURIlCFNwp+lmlHdASX9T3UmH1NW5h02k7Vx1jsGZVDYk0ak6UOX
         M5w+J7wrHK4sUvb1wmuc2hh5Fh4DCIGi1Eir6+lPJChRLVEsPkj7zOq0SXhAouybuPVE
         BYsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=MsS9NV61;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id x43-v6si1079038edd.4.2018.11.02.03.06.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 03:06:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=MsS9NV61;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541153171; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=AsmTdSsRnA2iiniT81HNSOb2ujyrQ1ohVnda4aFALKatNgFUQQyQhyius3TDH/Ty5IVy2l0nGVnNBfdee90JvM7lSdIlCgk79Px7uBwL56CV8yZu+TRNosMOaXuvZq4gbRHwT1Nx15PXEkfaSW++vrQHaxygLgiVMwLk6LjY8ps=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541153171; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=Ese/IUf8TDG3/vfR9AOWDEIOvtx0Th/SN6OEQ3+2Whk=; 
	b=Nf4zdwgRLtO/p0/GbPCu+B4kSzhVZMYAtmzo4f1IrsCeTBojgiCRa0Cn7B2F+gZQo0sOXvC+dhdAtVxLivYgGfJlo5pYuzy4vTb/Kn07P60YZ/RzOAe21ML7VKt5hDlCzYONB4jjqU8AABVoNfK+bVcDtnICyGbf5YuiBPKpY+A=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541153171;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=3320; bh=Ese/IUf8TDG3/vfR9AOWDEIOvtx0Th/SN6OEQ3+2Whk=;
	b=MsS9NV61tOE45plUEknV3OtX/0EbGR+8Zwpcyum0PT9AzZz80XFR1dyoCFszQKL0
	JPPc97U3DajCQcDrLVnjU31oapfYsyr11yqYjCgBWv9iqGEAZtlBuTKItAzG8MTZgKl
	FK2/e6uDQ18SeMHeuI3KXRynbiPyBP3flThMzo4I=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541153169151251.5840304645011; Fri, 2 Nov 2018 11:06:09 +0100 (CET)
Date: Fri, 2 Nov 2018 10:06:07 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH 1/5] staging: greybus Fix styling,
 parenthesis matching
Message-ID: <20181102100607.GA7873@kvasir.local>
References: <cover.1541123999.git.code@wizofe.uk>
 <833e98c464540e296f7a577fe672ab5c7931ee10.1541123999.git.code@wizofe.uk>
 <alpine.DEB.2.21.1811020810590.3064@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1811020810590.3064@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Fri, Nov 02, 2018 at 08:15:49AM +0100, Julia Lawall wrote:
> 
> 
> On Fri, 2 Nov 2018, Ioannis Valasakis wrote:
> 
> > Fix two instances where a styling issue is found. That is unmatched
> > parentheses correct to match.
> 
> This makes three changes and the second one is quit incorrect.
> The first sentence of the log message gives no information.  I don't know
> what s styling issue is; there are lots of them.  I don't understand the
> second sentence, and I don't see the connection with the change that is
> made.  It looks like Align parameters to the right side of the
> corresponing (.
> 
> Sorry to be picky about your English, which seems to not be your native
> language.  I realize that of my suggestions, only "avoid fix" is the only
> one that is easily generalizable.  Still it is important to be clear.  For
> what you want to say, try to find an appropriate verb, and put it at the
> beginning of the sentence.  Your messages often contain many words, with
> the important part coming later.
Indeed as you probably noticed, English isn't my first language. That is
to say though that writting descriptive commits needs also a different
approach. Don't be sorry, any room of improvement is important to be
able to write more clear commit messages. Thanks for the tips!

ta
ioannis

> 
> julia
> 
> 
> > Reported by checkpatch.
> >
> > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > ---
> >  drivers/staging/greybus/core.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
> > index dafa430d176e..d28773e06838 100644
> > --- a/drivers/staging/greybus/core.c
> > +++ b/drivers/staging/greybus/core.c
> > @@ -28,7 +28,7 @@ int greybus_disabled(void)
> >  EXPORT_SYMBOL_GPL(greybus_disabled);
> >
> >  static bool greybus_match_one_id(struct gb_bundle *bundle,
> > -				     const struct greybus_bundle_id *id)
> > +				 const struct greybus_bundle_id *id)
> >  {
> >  	if ((id->match_flags & GREYBUS_ID_MATCH_VENDOR) &&
> >  	    (id->vendor != bundle->intf->vendor_id))
> > @@ -48,7 +48,7 @@ static bool greybus_match_one_id(struct gb_bundle *bundle,
> >  static const struct greybus_bundle_id *
> >  greybus_match_id(struct gb_bundle *bundle, const struct greybus_bundle_id *id)
> >  {
> > -	if (id == NULL)
> > +	if (!id == NULL)
> >  		return NULL;
> >
> >  	for (; id->vendor || id->product || id->class || id->driver_info;
> > @@ -266,7 +266,7 @@ static int greybus_remove(struct device *dev)
> >  }
> >
> >  int greybus_register_driver(struct greybus_driver *driver, struct module *owner,
> > -		const char *mod_name)
> > +			    const char *mod_name)
> >  {
> >  	int retval;
> >
> > --
> > 2.19.1
> >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/833e98c464540e296f7a577fe672ab5c7931ee10.1541123999.git.code%40wizofe.uk.
> > For more options, visit https://groups.google.com/d/optout.
> >


