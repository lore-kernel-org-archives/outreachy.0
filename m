X-GM-THRID: 6749515623301120000
X-Received: by 2002:a05:6402:1519:: with SMTP id f25mr21702081edw.65.1571603377065;
        Sun, 20 Oct 2019 13:29:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:559:: with SMTP id k25ls389340eja.5.gmail; Sun, 20
 Oct 2019 13:29:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwSOT8M+NyArKJ5vMcNLi78CdvKs7xBCln40hWffAq5x9DrLWF9PQhlTdoG22SBZjZQmdfq
X-Received: by 2002:a17:906:2d49:: with SMTP id e9mr18773759eji.240.1571603376071;
        Sun, 20 Oct 2019 13:29:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571603376; cv=none;
        d=google.com; s=arc-20160816;
        b=LA2BNg7F/Yne1LISBn19a6xReq4QRAmu6Eqz25QqABXNZ600i/g273kfRtF8K4Uqts
         mAxi3FEt4/N0h2zWDbhvXkKAfZmATd+jwbe7oTRk5uH5YQur6kJ1OggDJfFxZmpIKsTP
         uEGySg/NcoIdVf1D/08B/gsagMGXz8HumomqrMlNs7EDMLFtYerPpYs7VtgGKzkSS+Sg
         GvuyymUa/sndbVjgqXTUPuJUNbR1wck+YmJ6Dw6YUhKkp60M+xoha7WnXrANuVBMJJMM
         Yfdslon5VztZ7auyU9mH/4p0SowcCa6IZmxXvVTo/wS0W8EKFJbIao7Pcgt0Rwy1KR9X
         GcQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=JuafAuJM9hKGsP5GBgFxzO4kvEo/JghFytSykCNUosY=;
        b=VjH+8GSGRgWDuMjg6lP0lbUI9wMsmDOmzxCIrzyhWKCkJI8qghIqkVA0OtwfnQsafE
         HAfGx2vhVSQOaHSzyhSAcUqqhhf/wZbUZXnJyz7jyM3uKksmxsXrn8syp1IdTHPG3i0t
         aw8EPG3wv1CrQDvVbGt/IMUmqoUNsD6MRWjntMJdgSQRberj8B/mhHdpPy42l80AMXAq
         EHPWmbtGzX0lyFqKD9JQfaFMQhpUiYQ+ddYqlBq0HrEm6UOxiIiyc3Y1wzdh/3s2vZE4
         fBOLnJv6FXh+HPmW1J27g0i3K6OZeM0//v8SLTU2BNaunzi9lCJQ+1zLQ34OGQZo2j7M
         mNnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c31si557599edb.0.2019.10.20.13.29.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Oct 2019 13:29:36 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,320,1566856800"; 
   d="scan'208";a="407084399"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Oct 2019 22:29:35 +0200
Date: Sun, 20 Oct 2019 22:29:35 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
cc: Dan Carpenter <dan.carpenter@oracle.com>, 
    Jules Irenge <jbi.octave@gmail.com>, devel@driverdev.osuosl.org, 
    outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] Re: [PATCH v1 1/5] staging: wfx: fix warnings
 of no space is necessary
In-Reply-To: <7ef650e0a6487a3eefc8df9eaf0ab20b5d26bad1.camel@perches.com>
Message-ID: <alpine.DEB.2.21.1910202227480.10441@hadrien>
References: <20191019140719.2542-1-jbi.octave@gmail.com>   <20191019140719.2542-2-jbi.octave@gmail.com>  <20191019142443.GH24678@kadam>   <alpine.LFD.2.21.1910191603520.6740@ninjahub.org>   <20191019180514.GI24678@kadam>   <336960fdf88dbed69dd3ed2689a5fb1d2892ace8.camel@perches.com>
  <20191020191759.GJ24678@kadam>  <6e6bc92cac0858fe5bd37b28f688d3da043f4bef.camel@perches.com>  <alpine.DEB.2.21.1910202149140.10441@hadrien> <7ef650e0a6487a3eefc8df9eaf0ab20b5d26bad1.camel@perches.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 20 Oct 2019, Joe Perches wrote:

> On Sun, 2019-10-20 at 21:52 +0200, Julia Lawall wrote:
> > On Sun, 20 Oct 2019, Joe Perches wrote:
> []
> > > There's probably a generic cocci mechanism to check function
> > > prototypes and then remove uses of unnecessary void pointer casts
> > > in function calls.  I'm not going to try to figure out that syntax.
> >
> > With the --recursive-includes option, perhaps:
> >
> > @r@
> > identifier f;
> > parameter list[n] ps;
> > type T;
> > identifier i;
> > @@
> >
> > T f(ps, void *i, ...);
> >
> > @@
> > expression e;
> > identifier r.f;
> > expression list[r.n] es;
> > @@
> >
> > f(es,
> > - (void *)(e)
> > + e
> >   ,...)
> >
> > This of course only works for functions that have prototypes, and not for
> > macros.  It will also run slowly.
>
> You are not kidding about slow, but it doesn't seem to work
> for mem<foo>, maybe because system includes aren't analyzed.

No they are not.

> Single file processing time on an XPS13 averages more than
> 100 seconds per file.

Not surprising.

Actually, --include-headers-for-types should provide some benefit.  That
discards the header files after the type inference.

> Also:
>
> 	expression e;
>
> could probably be better as:
>
> 	type T;
> 	T *p;

Good point.  expression *e; would be sufficient.

julia

>
> as some of the expressions cast to void are int or size_t
> and it's probably better to restrict the conversions to
> just pointer or array types.
>
>
>

