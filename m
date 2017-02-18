X-GM-THRID: 6388519093491728384
X-Received: by 10.25.22.85 with SMTP id m82mr1518428lfi.24.1487447212842;
        Sat, 18 Feb 2017 11:46:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.6 with SMTP id i6ls355581ljb.3.gmail; Sat, 18 Feb 2017
 11:46:51 -0800 (PST)
X-Received: by 10.25.151.69 with SMTP id z66mr1379299lfd.12.1487447211785;
        Sat, 18 Feb 2017 11:46:51 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si435204wmg.3.2017.02.18.11.46.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 11:46:51 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,174,1484002800"; 
   d="scan'208";a="261107404"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2017 20:46:51 +0100
Date: Sat, 18 Feb 2017 20:46:50 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
cc: simran singhal <singhalsimran0@gmail.com>, gregkh@linuxfoundation.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 6/6] staging: rtl8192e: Removed
 unnecessary parentheses
In-Reply-To: <1487445694.2198.26.camel@perches.com>
Message-ID: <alpine.DEB.2.20.1702182046330.2383@hadrien>
References: <20170218183648.GA2680@singhal-Inspiron-5558>  <alpine.DEB.2.20.1702182012240.2383@hadrien> <1487445694.2198.26.camel@perches.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 18 Feb 2017, Joe Perches wrote:

> On Sat, 2017-02-18 at 20:12 +0100, Julia Lawall wrote:
> > On Sun, 19 Feb 2017, simran singhal wrote:
> > > Extra parentheses were causing checkpatch issues
> > > and were removed.
> []
> > > diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> []
> > > @@ -663,13 +663,13 @@ void HTInitializeHTInfo(struct rtllib_device *ieee)
> > >  	pHTInfo->CurrentMPDUDensity = pHTInfo->MPDU_Density;
> > >  	pHTInfo->CurrentAMPDUFactor = pHTInfo->AMPDU_Factor;
> > >
> > > -	memset((void *)(&(pHTInfo->SelfHTCap)), 0,
> > > +	memset((void *)(&pHTInfo->SelfHTCap), 0,
> >
> > You don't need the parens around the argument of the cast either.
>
> Nor need the cast at all.
>
> 	memset(&pHTInfo->SelfHTCap, 0, sizeof(pHTInfo->SelfHTCap));
>
> etc...

Indeed.  Thanks!

julia

