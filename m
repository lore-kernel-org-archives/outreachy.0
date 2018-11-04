X-GM-THRID: 6619819947345313792
X-Received: by 2002:a17:906:1806:: with SMTP id v6-v6mr2275060eje.9.1541333323202;
        Sun, 04 Nov 2018 04:08:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:b7db:: with SMTP id i27-v6ls1098375ede.7.gmail; Sun, 04
 Nov 2018 04:08:42 -0800 (PST)
X-Google-Smtp-Source: AJdET5dRR3i6U2NTCSSHbLPbi8qG1dL3VHzkiHHXMtk05B6wicTSEBJHNEKCg45sRUbU4wLmF/24
X-Received: by 2002:a50:e78e:: with SMTP id b14-v6mr1793174edn.9.1541333322392;
        Sun, 04 Nov 2018 04:08:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541333322; cv=pass;
        d=google.com; s=arc-20160816;
        b=RRHWxBnnQEVdzxKipo3Y6EylRJLgbYEYFysnrh59seCetdbauMQbuT3O0decSR5uxG
         wkh3dKMVNTXxrazk7DQfjcGw5x+etPt/XsPu3TH9CTTAWZld7X0CiwD83NhRbDtGwGtq
         cgNMsXHC+vCfyGqOGNBRU1DTh7og/7+dWKk5BF/nvFagP7zpbkxJd9AvmB6+m0b//jEa
         1UrE57WP3K4uZsVoLbOnucoRh5HTULNRCUW1JccYdrVNntQHiTxrwqAtOfPskV91mffx
         0gv3R0u4idoeCm5UhNs4fNER4TDND0QAwd+gMfo8szRazjUk9A9xWpHW8BS+xHn1/dHo
         xa9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tL/B6+UXNzGBD4Gikl51hBdofHOh+OIW88v3Ul+4HtY=;
        b=PwibeAlEAgGG/LBF0mVFJECwXVSpRLaYzyPeO+PDyhwcwBA4BV6/jFFtOguCrokk7D
         VerqoBKftHGLWIKuKK/XV2/bVgajq2+s9BUc48E4djXVZ4cTQid5DEVSRR29VV8leJ4g
         ymUI87xTYEM4DwGXBsjz8qEBoi9UNHPhvK4Wlib2/p2D6HpuyqcCakcYthbu0ouuJ/pp
         ZPH8UKDeShKNC+dzNIjHVkqFZJo1dCJ7mwEMCLSHtOzYBy5dHu3Wno1nUhHtB+GdYn3L
         ejQaOxBJKPs9vmWU5Nau/YiJHENCvndAILQicTQjkS01FJwS94W1mAsu3QjCx/E7rydO
         bs4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="R/iakzAs";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id x43-v6si1331014edd.4.2018.11.04.04.08.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 04:08:42 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b="R/iakzAs";
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541333319; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=AN1aDmjZIVIT+BUYsxji1kBHjg3VJKzgwjIHaUp4b91nMzlzlB0goQ4CPjd6fII/sFV76QXxSGSXEdxVavXnRO/o6V03vMtGqpMhzgMxgg2ZsG/fmqSL4ferZWZ19uxz6ZTGGj4L+6j0YwKjneYxz7GSQxnukLJu5oMD2RnulY4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541333319; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=tL/B6+UXNzGBD4Gikl51hBdofHOh+OIW88v3Ul+4HtY=; 
	b=C45YjDQG5yBeypZpWwAjsIK6YrOQ8XGd0jRWv2g5QbGnYDfQo1pbjyWcYEeJqCxUIF/cWrstl2KxOCLk4m/G70IWjqPLefXvByvkgYbf54UnD5QA/19lFQqw4Hm9Fd4NrYYikjjaCK0oaN76x78BKUBr5LraZd4c1CBNVTMbzLw=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541333319;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=2944; bh=tL/B6+UXNzGBD4Gikl51hBdofHOh+OIW88v3Ul+4HtY=;
	b=R/iakzAsXvmvrOKFrBjgrNg+54FYEnwQ9l9YAptKMOcQZOPgmJYk3BRdSwVPrOXZ
	3UWKTr2wi0yZs/5HJmXtXY02sE9bNW6kXuqtVctQSP+7AC7Sj88B/ghSrEtuyMv/451
	o/VO8q7WPHRiDb7SensNADgkOKZtVQRHf/HTiND4=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541333316856151.64567233126002; Sun, 4 Nov 2018 13:08:36 +0100 (CET)
Date: Sun, 4 Nov 2018 12:08:35 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: remove unmatched
 right bracket
Message-ID: <20181104120835.GA14527@kvasir.local>
References: <20181104020212.GA18914@kvasir.local>
 <alpine.DEB.2.21.1811040726060.2448@hadrien>
 <20181104120107.GA12077@kvasir.local>
 <alpine.DEB.2.21.1811041302560.2605@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1811041302560.2605@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Sun, Nov 04, 2018 at 01:03:43PM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 4 Nov 2018, Ioannis Valasakis wrote:
> 
> > On Sun, Nov 04, 2018 at 07:27:27AM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Sun, 4 Nov 2018, Ioannis Valasakis wrote:
> > >
> > > > Remove unmatched right bracket.
> > > > Reported by uncrustify.
> > > >
> > > > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > >
> > > Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> > >
> > > I wondered how such a problem could go unnoticed, but this file seems to
> > > have a lot of other compilation problems that could perhaps also be fixed
> > > up.
> > Weird indeed. I was wondering myself after compiling the modules but I
> > noticed that camera isn't compile by running a make. Could you let me
> > know how did you find out the compilation problems, i.e. how did you try
> > compiling camera.c, so that I can replicate?
> 
> make drivers/staging/greybus/camera.o
Of course, you do that from the top level directory. I was running make
from inside the greybus folder and I was getting path include errors! 

thanks!
> 
> julia
> 
> 
> >
> > thanks
> > ioannis
> > >
> > > julia
> > >
> > > > ---
> > > >  drivers/staging/greybus/camera.c | 1 -
> > > >  1 file changed, 1 deletion(-)
> > > >
> > > > diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
> > > > index 6dded10f4155..c6d65430ea4c 100644
> > > > --- a/drivers/staging/greybus/camera.c
> > > > +++ b/drivers/staging/greybus/camera.c
> > > > @@ -1190,7 +1190,6 @@ static int gb_camera_debugfs_init(struct gb_camera *gcam)
> > > >  		debugfs_create_file(entry->name, entry->mask,
> > > >  				    gcam->debugfs.root, gcam,
> > > >  				    &gb_camera_debugfs_ops);
> > > > -		}
> > > >  	}
> > > >
> > > >  	return 0;
> > > > --
> > > > 2.19.1
> > > >
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181104020212.GA18914%40kvasir.local.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181104120107.GA12077%40kvasir.local.
> > For more options, visit https://groups.google.com/d/optout.
> >


