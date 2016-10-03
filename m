X-GM-THRID: 6336950026186522624
X-Received: by 10.66.161.130 with SMTP id xs2mr5993219pab.40.1475489691131;
        Mon, 03 Oct 2016 03:14:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.167.13 with SMTP id q13ls3543561ioe.40.gmail; Mon, 03 Oct
 2016 03:14:46 -0700 (PDT)
X-Received: by 10.98.28.21 with SMTP id c21mr2651607pfc.26.1475489686688;
        Mon, 03 Oct 2016 03:14:46 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si6998536par.0.2016.10.03.03.14.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 03:14:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.214.2.210])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EDD9971;
	Mon,  3 Oct 2016 10:14:45 +0000 (UTC)
Date: Mon, 3 Oct 2016 12:14:46 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Rehas Sachdeva <aquannie@gmail.com>, outreachy-kernel@googlegroups.com,
	Bryan O'Donoghue <pure.logic@nexus-software.ie>,
	Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>
Subject: Re: [Outreachy kernel] [Outreachy Kernel] [PATCH] staging: greybus:
 Constify local struct gb_loopback_stats
Message-ID: <20161003101446.GC6060@kroah.com>
References: <20161002192224.GA5295@toblerone>
 <alpine.DEB.2.10.1610022135511.3327@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1610022135511.3327@hadrien>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Oct 02, 2016 at 09:36:39PM +0200, Julia Lawall wrote:
> 
> 
> On Mon, 3 Oct 2016, Rehas Sachdeva wrote:
> 
> > The local declaration "struct gb_loopback_stats reset" is not modified
> > throughout its scope and hence can be made const. Done using Coccinelle.
> >
> > Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> > ---
> >  drivers/staging/greybus/loopback.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
> > index 7882306..fb5a068 100644
> > --- a/drivers/staging/greybus/loopback.c
> > +++ b/drivers/staging/greybus/loopback.c
> > @@ -837,7 +837,7 @@ static int gb_loopback_request_handler(struct gb_operation *operation)
> >
> >  static void gb_loopback_reset_stats(struct gb_loopback *gb)
> >  {
> > -	struct gb_loopback_stats reset = {
> > +	const struct gb_loopback_stats reset = {
> 
> Should it also be static?  I recall this comment being made in another
> case, but I don't know what the tradeoffs are.

I'll let Bryan answer that one, he should know...

Bryan?


