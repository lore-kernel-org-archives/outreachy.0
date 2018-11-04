X-GM-THRID: 6620100063939002368
X-Received: by 2002:a1c:9c55:: with SMTP id f82-v6mr556652wme.14.1541365186556;
        Sun, 04 Nov 2018 12:59:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:c90:: with SMTP id 138-v6ls1049458wmm.13.gmail; Sun, 04
 Nov 2018 12:59:45 -0800 (PST)
X-Google-Smtp-Source: AJdET5c30ESCS5ypJtZVXKGbk0KfpZvdqok+QyoOnpiDhupduRzNOQ2JU94ZfnoaQYH/lTNHIV7c
X-Received: by 2002:a1c:f20d:: with SMTP id s13-v6mr550013wmc.3.1541365185673;
        Sun, 04 Nov 2018 12:59:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541365185; cv=pass;
        d=google.com; s=arc-20160816;
        b=ETNmVls685yclxRWQosm/nYLl56WcgOiI/3aaroIWPbFCfvLBdAD3Jq/beFW37HTZH
         4TquaDSkC5F/2/tEWP6eNEZhiTJ9h4gvHE3qPwtgYizNTondm9GXRRc1hbpc+PoxvkHh
         9JglXsqTMADF4INj4plruFY341fV+L6v3+vkBmq7H+YD06q+farc5ivwS9qpDEF0j8jU
         9iRwTv36yBUr9FcAebcSf9MdhPQ/CTL0UPmWF6cltykcbTSu+oPH/T7zl41pXcqb2188
         qSkKK1IL/Wt/BLyufB5s4Rn7r/tgDnKvevrQS3RCHHqaSL9RubLl7AykIloUQLemwOSR
         eDkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=f7Hom/qualoqZKIZXa8ehY2BVVdWzkQPwR0/cWKuieU=;
        b=J1dB7IXrVlNZeoOhBxbPGSJ1JOvc7F/qibxUy6RnT0TAHi88yx5mOvXHnqgWI04yIs
         jcP4BY7qVcST1xqtwmqpJ6rBkLvAS2+WDYQvCLEzRfkq/xsJbelK0wVesHqHgUU5ONW8
         G8EQ0XQ+TtcILWt+kOkQdvjsqaxElH/fJaRECzn85fSiYwP8pXZgBBJdeuNWeMble4zl
         fohF/RrkBtrbhyFeSP8UD+5NgKLo3rKe40VFjVhEIHy4KqJP635dZD9lyiA+Ljg0QBoo
         uA7w8CslNMsKqk/nCx8CnK9z7HWHgCs2qUSQtaPalH86TLPzxkOwdtGUwIbwMwCQgiaD
         V/aA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=QOFGnahc;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id z62-v6si129100wmc.2.2018.11.04.12.59.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 12:59:45 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=QOFGnahc;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541365183; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=cOCVuEhdQyM4b6f6mjaCRbEru4EIGFV8h5UKhlcxN0QSNu8mOcvsv8pAwO6q0eTsIN0n8b27bIm1qe7V5xCC1eLJyMo29Ab58bMBrils9+2/KFNRjyay0dAOC+uaYeat/0cCtxnYOaxKqk94WYwYx1kUwTWFXoYuZrAxBE9br0c=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541365183; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=f7Hom/qualoqZKIZXa8ehY2BVVdWzkQPwR0/cWKuieU=; 
	b=FPihQ2HIEGWZHn1SH0PAgEDjvzV1u8BpRSl1kOX20SXLurRk876xI1vXU6PZaPmIc17X+AaMtjLScMm+9i3mP42gl84o0yAys0VxUSa8A1sXv84MI5jDKaTVZQOvMIRZTb4uGAGvu5e2wbcX8DX07LtKen/1fUg3lO6tVjT62HY=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541365183;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=2008; bh=f7Hom/qualoqZKIZXa8ehY2BVVdWzkQPwR0/cWKuieU=;
	b=QOFGnahcwb97VM2cMwIXTQiROsHL7osqvrJaN4wxmbAUFkoN5FxChReV3usb8mI9
	1gfjYVyqxOe6t/VGvWvIN0WD0gfmI0TFOVoJGfg78Woggb05ToOuRS22zESwc94tI62
	wDy7nirgCmZlx/F/Sid6fnvthjAqzuxSKromspqk=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541365182883896.2512324820171; Sun, 4 Nov 2018 21:59:42 +0100 (CET)
Date: Sun, 4 Nov 2018 20:59:41 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Coccinelle fails
Message-ID: <20181104205941.GA4843@kvasir.local>
References: <20181104200908.GA26807@kvasir.local>
 <alpine.DEB.2.21.1811042112160.2360@hadrien>
 <20181104201811.GA26434@kvasir.local>
 <alpine.DEB.2.21.1811042134590.2360@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1811042134590.2360@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Sun, Nov 04, 2018 at 09:35:55PM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 4 Nov 2018, Ioannis Valasakis wrote:
> 
> > On Sun, Nov 04, 2018 at 09:14:25PM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Sun, 4 Nov 2018, Ioannis Valasakis wrote:
> > >
> > > > Any idea why if I try to run coccinelle in report mode it fails? E.g.:
> > > > make coccicheck MODE=report M=drivers/staging/speakup/
> > > >
> > > > coccicheck failed
> > > > make: *** [Makefile:1650: coccicheck] Error 2
> > >
> > > What version of Coccinelle do you have?  You can put DEBUG_FILE=cocci.err
> > > on the command line, which should give some more information about the
> > > problem.
> > coccinelle is in version (1.0.4.deb-3+b4). After running with the debug
> > file I am getting this "Fatal error:
> > exception Sys_error("pool_zalloc-simple: No such file or directory")."
> 
> OK, I don'treally understand the message, but it would be better to use a
> more recent version.  You can get the most recent version from github:
> 
> https://github.com/coccinelle/coccinelle
I can verify that it works with the latest version (1.0.7). Apprently
the experimental version on Debian still gives an error: 
"Semantic patch uses python, but Coccinelle has been compiled without
Python support". FYI!

Thanks
ioannis
> 
> julia
> 
> >
> > thanks
> > ioannis
> > >
> > > julia
> > >
> > > >
> > > > Thank you
> > > > ioannis
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181104200908.GA26807%40kvasir.local.
> > > > For more options, visit https://groups.google.com/d/optout.
> > > >
> >
> >


