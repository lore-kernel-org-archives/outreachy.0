X-GM-THRID: 6620100063939002368
X-Received: by 2002:a2e:844d:: with SMTP id u13-v6mr148132ljh.17.1541365404788;
        Sun, 04 Nov 2018 13:03:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:2f12:: with SMTP id v18-v6ls735438ljv.2.gmail; Sun, 04
 Nov 2018 13:03:24 -0800 (PST)
X-Google-Smtp-Source: AJdET5fiRUodSgix950xToOtVdk/yQ92171eWMvTxbJSug7Kd8miC2NCNt8HIbxbHV6PZtvC8cVj
X-Received: by 2002:a2e:9c4a:: with SMTP id t10-v6mr1645600ljj.16.1541365403992;
        Sun, 04 Nov 2018 13:03:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541365403; cv=none;
        d=google.com; s=arc-20160816;
        b=wY5B8yQEfzgwE7DYrsRaaOtnB74KjVd500O3gmfjLW4yQAGS53NJug8N0zeI6STgO5
         zO+Mk6HrKlYeqbCFU0s99eLPx/3xNhAHufdWzC9z6r8bYllmQUz74PBnLRxWnP6QjTdO
         ZjxhZgObHKFBOWLe0ttaok4uREvHV+Of5FhFYrgtYR/g/Oz3kZGv/7ESxdiBsWCGs6Hn
         ooUmSeLd1yjInBE2yhNwf8KmYlR15x2uB4qctZuzy8Uo6112hcpLLIm3q2MLA1ZnTDI0
         hglffgFdHVe5FBvhwyEh/ilPGS6fD4lKLqwmrHVymqKYjKAyg/BXj04IEvfFoBXUg4Ev
         S3Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=8L5VyOq+rMyj/PUuciRRbgCl4jnXswjc9BBe6X7OPOs=;
        b=KXq8pwhQlTxqJ013WsS2Km1dtYQ9SHYZT6Aw5k4wf4mEqMlYGv7HVJxssAVK6pfj4Q
         WHSgrr3O970+M+aNqZMG35pUchtUh00PU8MTBekWvk3GaX/MW32qYJhPiLkgrrhF40/L
         sRWM6l7D+WFd1fubFRDhmmO6FkQcAEUDKXv4u623w8o8xsPVfQyGzTDj2jFldIeZvgij
         2dCtF5L4Ub8ge7fLkmvPq0QbPf7lKOkVYmYxvNzGsf9ezUJkd4nXGf6ueIRYGFE5MI/x
         queO3O5ujdI2R3ZdJb96jmuFFmS0p9Ly549U4qWWBAHDPYvlxx2iJMoJx1OjGIpVkg/w
         bJAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i127-v6si876864lfi.1.2018.11.04.13.03.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 13:03:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,465,1534802400"; 
   d="scan'208";a="354061059"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Nov 2018 22:03:22 +0100
Date: Sun, 4 Nov 2018 22:03:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Coccinelle fails
In-Reply-To: <20181104205941.GA4843@kvasir.local>
Message-ID: <alpine.DEB.2.21.1811042202480.2360@hadrien>
References: <20181104200908.GA26807@kvasir.local> <alpine.DEB.2.21.1811042112160.2360@hadrien> <20181104201811.GA26434@kvasir.local> <alpine.DEB.2.21.1811042134590.2360@hadrien> <20181104205941.GA4843@kvasir.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 4 Nov 2018, Ioannis Valasakis wrote:

> On Sun, Nov 04, 2018 at 09:35:55PM +0100, Julia Lawall wrote:
> >
> >
> > On Sun, 4 Nov 2018, Ioannis Valasakis wrote:
> >
> > > On Sun, Nov 04, 2018 at 09:14:25PM +0100, Julia Lawall wrote:
> > > >
> > > >
> > > > On Sun, 4 Nov 2018, Ioannis Valasakis wrote:
> > > >
> > > > > Any idea why if I try to run coccinelle in report mode it fails? E.g.:
> > > > > make coccicheck MODE=report M=drivers/staging/speakup/
> > > > >
> > > > > coccicheck failed
> > > > > make: *** [Makefile:1650: coccicheck] Error 2
> > > >
> > > > What version of Coccinelle do you have?  You can put DEBUG_FILE=cocci.err
> > > > on the command line, which should give some more information about the
> > > > problem.
> > > coccinelle is in version (1.0.4.deb-3+b4). After running with the debug
> > > file I am getting this "Fatal error:
> > > exception Sys_error("pool_zalloc-simple: No such file or directory")."
> >
> > OK, I don'treally understand the message, but it would be better to use a
> > more recent version.  You can get the most recent version from github:
> >
> > https://github.com/coccinelle/coccinelle
> I can verify that it works with the latest version (1.0.7). Apprently
> the experimental version on Debian still gives an error:
> "Semantic patch uses python, but Coccinelle has been compiled without
> Python support". FYI!

The experimental version on Debian is which Coccinelle version?

julia

