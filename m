X-GM-THRID: 6660473635314073600
X-Received: by 2002:a24:152:: with SMTP id 79mr9928998itk.9.1550765688643;
        Thu, 21 Feb 2019 08:14:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:820d:: with SMTP id o13ls998006jag.0.gmail; Thu, 21 Feb
 2019 08:14:47 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaIKZEaGy5wkbDZjI+6PYXU4RhOchccmLntEnvfh5N2C2w1WqszVNDcGJzoRDnMMh4Xs1z9
X-Received: by 2002:a02:9d03:: with SMTP id n3mr24256169jak.0.1550765687838;
        Thu, 21 Feb 2019 08:14:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550765687; cv=none;
        d=google.com; s=arc-20160816;
        b=tXFhbvbqBWSqmbS0FmOZD9nWSTGB4gSzbEP03v0dJIOs+SwUuwZ8iSN3fpBUqRTsi0
         LQTBy2VQqYncdn9+2XRhwlPJyyZbBZDHyVAfar+QUtfDOfDfTLCI5vUzZrKkDf+H7W68
         Sb+ejMMAUvbn5acn3XY0BpM88cFrv2r6ETRiva+e01HjKlwpCK+XN8h/WRGhOHccD44u
         tt4N9cfA7GkOcBnyccYmafRQMrV5VXoxqZjyrZ/VI/eazVFpl8kz9tBP9ZoG7/suX5/z
         pKNn6RYVNy86LYbL048STQshoXUQwgPQVywdqzbN+wPt672M2Tl9LcFUGYsUfNs9n0Tp
         0sRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6SYovGFwo0I1oBGYOMFaGEBjoap7bj03uz1cA9cjyjc=;
        b=un6na7Uk4Fq0Jrq+h9O3ynucDPkyB/tVI/fQtwNiY0yHq5fLpMilrRyQ1VLNyl3nLv
         wO0D+b31HtYpAmJXLb84VRNOE8NrP28bM5XGcuITbKhjgQMiyEkkjXIob44U6aB3x7Om
         OFYSu1CVilEuq1oS46H+FcEjAppdigxqo4hTriIDSA62zhVXtfEJNONFrjoj3usiCQP1
         HLKZ/lvR1IIROvJGgjPp7FOZ/7va4NNqEtMM7yHIWuJJyjQJ3YokPUCKxNfS3bofSmhX
         c4JkdoOF7A8bVIsY8WCVCYnLMxqnh5mlLLYOsg3PrrrdmVYpc52okzoVueQ2RkuOqsJh
         rRUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ukd0VbUx;
       spf=pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 77si394379ita.2.2019.02.21.08.14.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 08:14:47 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ukd0VbUx;
       spf=pass (google.com: domain of srs0=u/6v=q4=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=u/6V=Q4=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C32CD20836;
	Thu, 21 Feb 2019 16:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1550765687;
	bh=vRTsEt7WDe5ZG29Y1eqEiB6jeEnmRONU6UJyAgk2toQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ukd0VbUxv4EgeJ/3nA4oekQZQOUyvW74RYHcnsRJsVhmEMHgwKF1B1xtQwihyWv17
	 WjyRPEtxCtUlS5dKYFjth5balYGMXLyXglWvG1ybcRkRmVUfNzFgFn+/nkuHZVE84L
	 5gmzX1Rx3W1RWXZxhi85Rkc8v7oudp78K7y2O6NA=
Date: Thu, 21 Feb 2019 17:14:44 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 0/3] Staging: fbtft: Fix Various Checkpatch issues
Message-ID: <20190221161444.GD25800@kroah.com>
References: <20190221151918.GA1764@bhanusree-MacBookAir>
 <20190221160127.GC23121@kroah.com>
 <CAB0Mk-Nt58V4_bGqFiDD5RyHEU68Azfk=1qCM-QqSiQEihr05g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAB0Mk-Nt58V4_bGqFiDD5RyHEU68Azfk=1qCM-QqSiQEihr05g@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Thu, Feb 21, 2019 at 09:35:29PM +0530, Bhanusree Mahesh wrote:
> On Thu, 21 Feb 2019 at 21:31, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Thu, Feb 21, 2019 at 08:49:18PM +0530, Bhanusree Pola wrote:
> > > This series cleans the following checkpatch.pl issues:
> > >
> > > CHECK: Extra blank line not required before closing brace '}'
> > > WARNING:EXPORT_SYMBOL(foo); should follow its function/variable
> > > WARNING:line over 80 characters
> > >
> > > Bhanusree Pola (3):
> > >   Staging: fbtft: Remove extra blank line before '}'
> > >   Staging: fbtf: Declare Exprot symbols immediately
> > >   Staging: fbtft: Fix line over 80 characters warning
> > >
> > >  drivers/staging/fbtft/fbtft-core.c | 11 +++++------
> > >  1 file changed, 5 insertions(+), 6 deletions(-)
> >
> > Your patches are not "threaded", like I asked for last time.  How are
> > you sending these out?  git send-email should do it automatically.
> >
> i'm sending each patch separately using mutt.

Ok, when doing that, make sure you properly thread them.  You can do
that by "replying" to the previous email you sent, and keeping the
"In-Reply-To:" line in the header.

Or you can use git send-email :)

You might want to get send-email working, as you are sending lots of
patches, it makes things much easier.

thanks,

greg k-h

