X-GM-THRID: 6339162656111329280
X-Received: by 10.13.231.68 with SMTP id q65mr7789754ywe.58.1476024388225;
        Sun, 09 Oct 2016 07:46:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.174 with SMTP id d43ls7871047otd.11.gmail; Sun, 09 Oct
 2016 07:46:27 -0700 (PDT)
X-Received: by 10.157.45.200 with SMTP id g66mr7156160otb.84.1476024387926;
        Sun, 09 Oct 2016 07:46:27 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 80si3731148pfw.0.2016.10.09.07.46.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 07:46:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 518AE7AA;
	Sun,  9 Oct 2016 14:46:27 +0000 (UTC)
Date: Sun, 9 Oct 2016 16:46:36 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Bhumika Goyal <bhumirks@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: rtl8192e: Remove ternary
 operator
Message-ID: <20161009144636.GA11833@kroah.com>
References: <1475951297-10364-1-git-send-email-bhumirks@gmail.com>
 <20161009142656.GA27065@kroah.com>
 <alpine.DEB.2.10.1610091635130.3462@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1610091635130.3462@hadrien>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Oct 09, 2016 at 04:36:34PM +0200, Julia Lawall wrote:
> 
> 
> On Sun, 9 Oct 2016, Greg KH wrote:
> 
> > On Sat, Oct 08, 2016 at 11:58:17PM +0530, Bhumika Goyal wrote:
> > > Relational and logical operators evaluate to either true or false.
> > > Explicit conversion is not needed so remove the ternary operator.
> > > Done using coccinelle:
> > >
> > > @r@
> > > expression A,B;
> > > symbol true,false;
> > > binary operator b = {==,!=,&&,||,>=,<=,>,<};
> > > @@
> > > - (A b B) ? true : false
> > > + A b B
> > >
> > > Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> > > ---
> > >  drivers/staging/rtl8192e/rtl819x_HTProc.c | 12 ++++--------
> > >  drivers/staging/rtl8192e/rtllib.h         |  2 +-
> > >  2 files changed, 5 insertions(+), 9 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> > > index dd9c0c8..8cd51a9 100644
> > > --- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
> > > +++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> > > @@ -558,19 +558,15 @@ void HTOnAssocRsp(struct rtllib_device *ieee)
> > >  #endif
> > >  	HTSetConnectBwMode(ieee, (enum ht_channel_width)(pPeerHTCap->ChlWidth),
> > >  			  (enum ht_extchnl_offset)(pPeerHTInfo->ExtChlOffset));
> > > -	pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth == 1) ?
> > > -				 true : false);
> > > +	pHTInfo->bCurTxBW40MHz = (pPeerHTInfo->RecommemdedTxWidth == 1);
> >
> > Ugh, I _hate_ ? : statements.
> >
> > Just write the thing out, is this easy to read as is?
> >
> > >  	pHTInfo->bCurShortGI20MHz = ((pHTInfo->bRegShortGI20MHz) ?
> > > -				    ((pPeerHTCap->ShortGI20Mhz == 1) ?
> > > -				    true : false) : false);
> > > +				    (pPeerHTCap->ShortGI20Mhz == 1) : false);
> > >  	pHTInfo->bCurShortGI40MHz = ((pHTInfo->bRegShortGI40MHz) ?
> > > -				     ((pPeerHTCap->ShortGI40Mhz == 1) ?
> > > -				     true : false) : false);
> > > +				     (pPeerHTCap->ShortGI40Mhz == 1) : false);
> >
> > Is this?  Kernel code is meant to be read by humans first, and the
> > compiler second.  None of this will be any different if you write out a
> > if () statement.  Please just do that instead.
> 
> Wouldn't && or || be nicer if possible?  If the == 1 are actually testing
> booleans, it could be quite concise.

Yes, maybe, but never ? : if at all possible (as function arguments it
makes sense.)

thanks,

greg k-h

