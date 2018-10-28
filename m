X-GM-THRID: 6617179960834523136
X-Received: by 2002:aa7:d152:: with SMTP id r18-v6mr1823734edo.2.1540758694743;
        Sun, 28 Oct 2018 13:31:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:1b4d:: with SMTP id p13-v6ls1011445ejg.5.gmail; Sun,
 28 Oct 2018 13:31:33 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dSwef5drZGVi8SXHF9os/sLtSmutfFWcNtpFglHANFUp9xsFjcqAwr557KiTIYnZhJPBOG
X-Received: by 2002:a17:906:6ace:: with SMTP id q14-v6mr845526ejs.7.1540758693973;
        Sun, 28 Oct 2018 13:31:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1540758693; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y4CBlvYto/t7i1BO3wxtMyRp2sdtXS01UNE8lYNyRf3gceLM8uPndgMXn+hUb+t8cF
         JEpFdldbLR6+07YzRLdsJimOs6P86kYPU3DKwjJCli1nA4r9HWhxwckQlW3hIKS8PH7X
         9MXtZEk6NWQSSfIptijK2Ws+B6Xcd76HXWFk+gL/sYj2SPfdnHEW3FMF3foODITPxKsB
         5SqQ/HBCvi1PtSW7DVSiDtcpl6h32c1KR5ezG/vI020KFtAyHpRCEz0f0+axegYv31NT
         27Kkq9NrmeldzalXuTcy/bQH0O7ncS5vbpTqepYfjD/OHYZXGfJq/XGj7/WXmKFE+jQf
         MI6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=d53H/wvOxcEMmCJ4RSVYT0Qgr6TkyGv3Lxq6EJuJFmU=;
        b=Lke4zO9zIv0yi8puPYOGXkAnGV/PPJnOkIrH4HD9zeCyNodk3TVNjSKX1uamtclO5D
         4HFO9e+ZcRiBzNIjhLyUl9z4tRIIG4haxl6txSZ+Cv8rIibxK6SsrCQfKmiPjJ9/0Y+/
         QYKsrRpfN05BaWWeDoydj8T0i3hKXu2zqSQEgHNJtSq7PV9HUWhtvUQBLyqY27g8/nBq
         OQ9RYnJkIHOkbLOzZGr9khyTPUaN8RTaNlezPeMAOCUQYTcJmI5yfSQT6n2J18JvNFrX
         CarvQzXx3nkPPJNBgggD1Zi2lOHQUmExkXUfZSzZFt/MEGF7u6Ya83cdNg8mD0aOHXuH
         Ohzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=SbsCGmhi;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [31.186.226.243])
        by gmr-mx.google.com with ESMTPS id z4-v6si161821edp.1.2018.10.28.13.31.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Oct 2018 13:31:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 31.186.226.243 as permitted sender) client-ip=31.186.226.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=SbsCGmhi;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1540758692; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=NroUXEDPjLJM7CyDR9uADpjk68QBORGL5naZC+0/9KBi7MjyH6SwWvYM6H1TuHlSeUsOwXwCYC1x96gJIAca11VU6cdXO6+9pV3LoQpd6rPIHyzqvu6OtyEUXgxAeOuT5aBGCPuhGyGXstcptwvQ757l1PJR/oLn0lMESBnrYZs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1540758692; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=d53H/wvOxcEMmCJ4RSVYT0Qgr6TkyGv3Lxq6EJuJFmU=; 
	b=aWPS65L029H/KSDzpuJ8z6bX0rWd5It+Q2YXhdYrc2UCebfwhav+0bhiVKrKyt/kopXmORyRWEbkaf/T+EBfqNW+XzPHiPEMg5tUq6+yf5Y5QJZo5aLawClB9sQDP1kOA26bm4JUhV086FQoMF5PGLAjaMOaYKkTdH4DMz0yWUs=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1540758692;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1377; bh=d53H/wvOxcEMmCJ4RSVYT0Qgr6TkyGv3Lxq6EJuJFmU=;
	b=SbsCGmhiD9mqjaXQ3ZL2IlAF+auBPBUR1XkaDh4T6a2ErzCPHrY2Kl7UcKKenjlQ
	LV8NNyuIKvR52XWM/hsQFOWlyY4qlSzl0MUkFAvOjXirF0zPgYenDksDNrDQqQIFfqV
	ZJL3vmlAbw7r3v0B8RlkjjvrATseat8eC3ni5iBY=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1540758691443599.1213207143503; Sun, 28 Oct 2018 21:31:31 +0100 (CET)
Date: Sun, 28 Oct 2018 20:31:30 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] FirstPatch Wiki Change
Message-ID: <20181028203130.GA6859@kvasir.local>
References: <20181027231742.GA11614@kvasir.local>
 <alpine.DEB.2.21.1810280627040.2450@hadrien>
 <20181028202052.GA21843@kvasir.local>
 <alpine.DEB.2.21.1810282127140.2433@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1810282127140.2433@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Sun, Oct 28, 2018 at 09:29:00PM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 28 Oct 2018, Ioannis Valasakis wrote:
> 
> > On Sun, Oct 28, 2018 at 06:27:29AM +0100, Julia Lawall wrote:
> > >
> > >
> > > On Sun, 28 Oct 2018, Ioannis Valasakis wrote:
> > >
> > > > Hi all!
> > > >
> > > > I wanted to added a few changed to the FirstPatch Outreachy
> > > > Kernelnewbies wiki but I get the option that the page is immutable. On
> > > > top of that, when I am choosing Load/Save from the menu, I don't get the
> > > > whole page 'source' but a very tiny version of it.
> > > >
> > > > Anyone knows how could I edit and send my Wiki patch over to you? Thank
> > > > you for the help :)
> > >
> > > What are your changes?
> >
> > I want to add my personal mutt settings (as I couldn't connect with the
> > default recommendations) as I believe it can help future applicants.
> 
> This seems fine.
> 
> >
> > Also I want to correct a few mistakes and add a summary section. I hope
> > that makes sense.
> 
> I'm not sure what you mean by a summary section.  Perhaps post it to the
> mailing list first.
> 
> >
> > >
> > > I can make you a site editor, and then you can make the changes directly.
> >
> > That would be great! Thanks.
> 
> I need to know your username.  I would suggest IoannisValasakis.
That's my username already :) 

ta
> 
> julia


