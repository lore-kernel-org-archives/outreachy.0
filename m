X-GM-THRID: 6620100063939002368
X-Received: by 2002:ab0:3004:: with SMTP id f4mr17849977ual.3.1541363924767;
        Sun, 04 Nov 2018 12:38:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:8e01:: with SMTP id q1ls97901vkd.2.gmail; Sun, 04 Nov
 2018 12:38:44 -0800 (PST)
X-Google-Smtp-Source: AJdET5cGCrhATd55eJJe0KYpG0aYQDOzuPmY3p/xx84E742ltknf99vb8I0zk1RMOT2yY9/HH19E
X-Received: by 2002:a1f:3151:: with SMTP id x78-v6mr17930803vkx.21.1541363924085;
        Sun, 04 Nov 2018 12:38:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1541363924; cv=pass;
        d=google.com; s=arc-20160816;
        b=aw6ac5elfEtKT0Y8xEU/8LQvqBeeA9/JApgS6nhVRptd8wNFpmG1Yk7t/QcPcU530x
         Bm4z845OYfq7KRyUFZ7mcfHlhrpGQ2b43vCwmjhQ3jDH4Ee7y1TqX6jM74PHV4RxsfYM
         gohH8fcxLwIhQvGi965fpM94DzOZElU81srIZvF45Bd/XixZuGNG934o7c7D/LgFlm4K
         yvy5gqy9BCQvlB+R9uqCIeO8cU4Igx3BRxuP4Z679ft/yE7y6FKtmk9yFinXxf3wsCYo
         yx6xmHLqvCShs2w5zkhdJyq/+iAi6Ee958jsKs2Y98nV7reZ+cQsalkNxvyThZ2LXj1g
         tbZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=WYZ+1/Abkq+NOlj/O5Ne1VIH7rUrXKyqPb0I4NI/XbY=;
        b=PmhswT2/4gpjsF9Al9Hbp6AgFcQjvzbn1i7lBjFy4lceiztNSIV5zwP3oyp4Azg0bF
         Ml3USiYmHN/U8GFPgH7u7YgTrXM40rIOwzx1Kphx5IWHRBZ/yw815uLqZJi6Ht9SzGWf
         pdFLdMhQ2M8bvKEhLDlxifRdbyNzUPaOTEP3m4j8/hrDwDG+TA1uSgsafpc53hBvTnVJ
         xP4hlXlZmnPLHB7sGLYtm/yoIuqMAyoIZxuL3iHLl1ioikG194shBg+0t0n6Iw4Fl4Ib
         KLcTrkaJW4LJmqElT5sdF8yUotPoNUzs/nnswTztvAKsWdPrJsioBjI2n+TCYtZnCGLK
         zuEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=e57iRS4n;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id w206-v6si1513833vkw.5.2018.11.04.12.38.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 12:38:43 -0800 (PST)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=e57iRS4n;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541363919; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=BcMGJtHARxdPqZaw/vwW7xV9gcEPmNY2OXGQBUFJ+nYxD6u/jOREsoyIvB/oHvWhD+/7dhbwf3QMhUolM6FFOO/NqnABn45CwlG36zuN5CMOVe2qiAFgFpWZy5cUu5QqGZzs5bC6waVcdGxle26UGo7ag1zkx/S1pJR3dYpNaDw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541363919; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=WYZ+1/Abkq+NOlj/O5Ne1VIH7rUrXKyqPb0I4NI/XbY=; 
	b=VM6NTfvpJDbVCXd9NAulYvD8nykQ1DfDzJXapCZBuwjrckDI71mZlAiiVW8RVQnd2jAiik3ZVJ0yAJbLOmewM1p7KXD2rw5A7SsS8DYmJc550i8oi/mTbYwFU8pwI7FfTzFpL4Fj8xNkLQR3XBdRg0tNJolcQQtxYbYEGlAyzf8=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541363919;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=2010; bh=WYZ+1/Abkq+NOlj/O5Ne1VIH7rUrXKyqPb0I4NI/XbY=;
	b=e57iRS4nhCQtei2YC7hpE3O/LojU/73205PAkU519+mNBSpUpaDCZRQoa4C0siMj
	ha+K4kCcTsDZHiSH7t0WgrXC0BwcaZVb6KiD01TD0JxkzGvdxkLKvSZ/XnUzdYkdh4V
	q9g2aFs9Jo3YLrEejpSSq666LltNpEqz6xo7o5ao=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541363917358733.4957924826051; Sun, 4 Nov 2018 21:38:37 +0100 (CET)
Date: Sun, 4 Nov 2018 20:38:36 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Coccinelle fails
Message-ID: <20181104203836.GA3413@kvasir.local>
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
> 
> julia
> 
Sounds like looking for this file but it seems to be correct on my
system: $ find . -name "pool_zalloc-simple*"
./scripts/coccinelle/api/alloc/pool_zalloc-simple.cocci

I'll download the latest version and let you know.

Thanks
ioannis
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


