X-GM-THRID: 6807884729429262336
X-Received: by 2002:a05:6a00:8d:: with SMTP id c13mr3386313pfj.68.1585139809433;
        Wed, 25 Mar 2020 05:36:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:6542:: with SMTP id d2ls1732057pln.2.gmail; Wed, 25
 Mar 2020 05:36:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvIBL9zYTNydtMsro4aZV+2kFVkXM3JcJdtFkCEY7GHv9YOmqWol2H7M8e6QSzjrruIVCNB
X-Received: by 2002:a17:902:343:: with SMTP id 61mr3100151pld.332.1585139807971;
        Wed, 25 Mar 2020 05:36:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585139807; cv=none;
        d=google.com; s=arc-20160816;
        b=CUaNeVyslq2PzFZwmFREp9/lvcvj58hS7SNO/bEZdwX4GIabcP1s+fgwSL8Y7Mswfk
         o4dnfvHmOR5DXBKHjlZN/nGWzVzQvVG6Qqm0eSXYM5Y0ADBYIwkZFPc7HnyVmmarz+RD
         I7mhaPMvay/e1mWZVSJsJWRg/Mu+tWjHq25Qx5MBhLo7w/ojJjqAEA5GA5/bqKmjnNxZ
         E2lbePQaBMIixRwdY4BpZhXNRIRIU8v6dFRXloRFg7hioYB7UC8m6tXrorqbu6+0MMuB
         3TlFyyHkOxqbr0oEGfLqtJ2M6KkjojK9rZHyMrE98jcvvT53MIDpyjDAJuTLrhETR29c
         xYbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=A3xNOthemnoJ5wtawrmfdhsLz/EzQ1W/Vr+RrdfWh/w=;
        b=wXdHlEnPHRvkSal6OeFGCuPj4ALOkzvXR/+0Nne8pf2SezNfW1C7rv8NxUwzzHbOMJ
         Xr2pGAgfVYIKRLABzOQ/V3epEWMO0KHA7n7Mf3EaiUVllbEvWnHHHctIIHdStIulb9Yv
         F0lBVTE+f/e32IC3RGOdz7E5VSStpiesfI2vLyLhZmIL5r6ukwVbdhbXh6OxrgDNcDtl
         XtRK8KLdgv7/eFYk1k9WXeDwhXJgHlScJGUnA7XmlRvgOFGC/61hsjROp3W908IizWTC
         ZcD9cnETOD2OXEftoa+RDo78A8tcW7TUmVZQLT3yJAXFdc0qfiLbALOWXpwQ6+CPZ3SX
         bBgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dEQsyHym;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id np5si260226pjb.2.2020.03.25.05.36.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2020 05:36:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dEQsyHym;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 450B82076A;
	Wed, 25 Mar 2020 12:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585139807;
	bh=eHLRDeeFBjLXz8eEiIcZNIDQy0Zfd31tmHVXZfy3fQ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dEQsyHymVm/OU8hh1FZSgcMIuQ1+5hjtJRD4AEOu7HJmGn47yaUPhTJCgQE0gZpIj
	 +8eoVOp7xqQ5wq1sIENx79JgrYUSbVTWIekL3MjJZKba22kqK4DekdiHWeggeKYIZU
	 1W0AFbwnfocf/MYf+e9pJGGbehs8L1iCKtjXMlxI=
Date: Wed, 25 Mar 2020 13:36:44 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sam Muhammed <jane.pnx9@gmail.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/6] Staging: kpc2000: kpc_dma: Use
 spaces around operators.
Message-ID: <20200325123643.GA3454907@kroah.com>
References: <cover.1585082157.git.jane.pnx9@gmail.com>
 <d881bf9d5c442ae5a0d6669624355f7af73f5fac.1585082158.git.jane.pnx9@gmail.com>
 <alpine.DEB.2.21.2003242221390.3306@hadrien>
 <44ca99f66316430555a2da1379283ca846acb027.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <44ca99f66316430555a2da1379283ca846acb027.camel@gmail.com>

On Wed, Mar 25, 2020 at 04:00:36AM -0400, Sam Muhammed wrote:
> On Tue, 2020-03-24 at 22:22 +0100, Julia Lawall wrote:
> > 
> > On Tue, 24 Mar 2020, Sam Muhammed wrote:
> > 
> > > Cleanup Checkpatch.pl CHECKs about missing
> > > spaces around multiple operators.
> > >
> > > Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
> > > ---
> > >  drivers/staging/kpc2000/kpc_dma/fileops.c | 12 ++++++------
> > >  1 file changed, 6 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > index d93097ed781c..e599ae1bdfd0 100644
> > > --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > @@ -19,7 +19,7 @@ static inline
> > >  unsigned int  count_pages(unsigned long iov_base, size_t iov_len)
> > >  {
> > >  	unsigned long first = (iov_base             & PAGE_MASK) >> PAGE_SHIFT;
> > > -	unsigned long last  = ((iov_base+iov_len-1) & PAGE_MASK) >> PAGE_SHIFT;
> > > +	unsigned long last  = ((iov_base + iov_len - 1) & PAGE_MASK) >> PAGE_SHIFT;
> > 
> > It seems that the & operators were lined up before and that is not the
> > case any more.
> > 
> 
> Yes, why they were aligned anyways? 

Because it is easier to understand the code that way, don't you think?


