X-GM-THRID: 6620100063939002368
X-Received: by 2002:a1c:7ecf:: with SMTP id z198-v6mr546138wmc.24.1541366688097;
        Sun, 04 Nov 2018 13:24:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:8b88:: with SMTP id n130-v6ls1062472wmd.0.canary-gmail;
 Sun, 04 Nov 2018 13:24:47 -0800 (PST)
X-Google-Smtp-Source: AJdET5eICO8xcvT6U0O0aTKub2y16kvkUyXGRm7x9gH0UY5BwC6L/HbgYTbD3c3KnFug27G7KPwQ
X-Received: by 2002:a1c:d8a:: with SMTP id 132-v6mr520462wmn.21.1541366687384;
        Sun, 04 Nov 2018 13:24:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541366687; cv=pass;
        d=google.com; s=arc-20160816;
        b=Naefl8AMEQJD6tYWrXeySbFb0HZNiiz85H5quLdZUi/qcweyP5LJ7fFcCjYt1Nh/3x
         1c440sA0G+EnBYgzWfBdU0oCCgxhdIgKCsaQJinogL3TJGdnV5T+iwBZdxvyTgVK/bxt
         xNzW/6Ayb4FCEea0wC6IC857sktZ4F3pmhaeJAyWrwkDlMGKI66uRi9eLiH17mJ9YHOz
         VWlIfk1Rg9tBSg3qIcnW+3HAB7rNjOsCWVZsitV4WzalEDlAfRovrhGmCLAAmnSlSB88
         vmLOkHWTD4hIC98mtES/U6ffCVWqtDNOOswQc/TWkQHRfez1X+OJ2CXvCa97CPdjZcrT
         5CSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=iuT0fZ4weo5/zh+UCmNG813nx1deMOyY5TQraRWu37c=;
        b=LU0LUPUpqsOId78KPUhYz10NGgQ0J58Q1XEmDd0gKboza6DBi1haqY1fSAEY0vCHCL
         0cesSw9Xj1pEHpKzhcPh5JrrQpo4OYe+Yt0pufVgZcjRKsoY4Rr+UchTRvysGMouoA/u
         fMJBwVv/nSW1883kpbwSpVkxaYymdiiXo7V8k/t7wlbiLPvShn25WbUoGQ6UfcQTs6Rt
         tw5NNNc8hvppEo5pV4BQqGRoKZCFVserhdGl/6xSOyOfAAnFAvNGrh9tM+3eG8Isivti
         Uhr6XNYpHV6gJs7LqVpRpqCndFxdiK07oBpQadIjsh3695+85vLwf+YIVTVPUgLoUYmA
         R95g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=JNsm7PQN;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id e5-v6si1109383wru.1.2018.11.04.13.24.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 13:24:47 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=JNsm7PQN;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541366684; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=U8dFXcZTglMZORaUD4ZYo2N1evrQUHMfPf8J7sn5osEHdVavg3sKgnc+0pZsNQwi/1BrkAh9Vzgc9MO+aEe/7XLzymHEBJ/VccoVK1DjQWmOqFN//DRNV1tYzUDEXTIThkNubvycEJrxhfuGVt2eyNcCcEYRA81Dbz5fCQrQGS0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541366684; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=iuT0fZ4weo5/zh+UCmNG813nx1deMOyY5TQraRWu37c=; 
	b=g9joF0fteQ/whwQ3M/TWQP02EhLwk18xh0PEWUmXgxE7VkGrMypf818TZQgF71zcmI7hO81D9yZTWLp4SZuWHtd4ifeoWoqyVtQvvkPWkrVzG651wlOwgoVdkJ4pQAthskYScagBxTITGfMacxJ8726p+zYDg/IT4O9GiQupN7c=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541366684;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1690; bh=iuT0fZ4weo5/zh+UCmNG813nx1deMOyY5TQraRWu37c=;
	b=JNsm7PQNbxQOP5d2cDyEzRF+XPn5IVof3OyNJgi9GY5E/y6yloar3YP+943S5szv
	wIQFkeDAl27uZ3nMtYvYyJG/ZL+WRy7UW/i8JekNr5YR81BRRxhLIpaP88jlrEwhgz2
	v/OL3CBq7n2cfoLmlUobW21vfD5/98tvN3acqWW4=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541366682421989.6290697188633; Sun, 4 Nov 2018 22:24:42 +0100 (CET)
Date: Sun, 4 Nov 2018 21:24:41 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Coccinelle fails
Message-ID: <20181104212441.GA21556@kvasir.local>
References: <20181104200908.GA26807@kvasir.local>
 <alpine.DEB.2.21.1811042112160.2360@hadrien>
 <20181104201811.GA26434@kvasir.local>
 <alpine.DEB.2.21.1811042134590.2360@hadrien>
 <20181104205941.GA4843@kvasir.local>
 <alpine.DEB.2.21.1811042202480.2360@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1811042202480.2360@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Sun, Nov 04, 2018 at 10:03:21PM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 4 Nov 2018, Ioannis Valasakis wrote:
> 
> > On Sun, Nov 04, 2018 at 09:35:55PM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Sun, 4 Nov 2018, Ioannis Valasakis wrote:
> > >
> > > > On Sun, Nov 04, 2018 at 09:14:25PM +0100, Julia Lawall wrote:
> > > > >
> > > > >
> > > > > On Sun, 4 Nov 2018, Ioannis Valasakis wrote:
> > > > >
> > > > > > Any idea why if I try to run coccinelle in report mode it fails? E.g.:
> > > > > > make coccicheck MODE=report M=drivers/staging/speakup/
> > > > > >
> > > > > > coccicheck failed
> > > > > > make: *** [Makefile:1650: coccicheck] Error 2
> > > > >
> > > > > What version of Coccinelle do you have?  You can put DEBUG_FILE=cocci.err
> > > > > on the command line, which should give some more information about the
> > > > > problem.
> > > > coccinelle is in version (1.0.4.deb-3+b4). After running with the debug
> > > > file I am getting this "Fatal error:
> > > > exception Sys_error("pool_zalloc-simple: No such file or directory")."
> > >
> > > OK, I don'treally understand the message, but it would be better to use a
> > > more recent version.  You can get the most recent version from github:
> > >
> > > https://github.com/coccinelle/coccinelle
> > I can verify that it works with the latest version (1.0.7). Apprently
> > the experimental version on Debian still gives an error:
> > "Semantic patch uses python, but Coccinelle has been compiled without
> > Python support". FYI!
> 
> The experimental version on Debian is which Coccinelle version?
This is the one: https://packages.debian.org/experimental/coccinelle
> 
> julia


