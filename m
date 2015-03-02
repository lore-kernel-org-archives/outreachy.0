X-GM-THRID: 5258052894720
X-Received: by 10.112.13.228 with SMTP id k4mr756513lbc.8.1425325429233;
        Mon, 02 Mar 2015 11:43:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.99.229 with SMTP id et5ls624175wib.40.canary; Mon, 02 Mar
 2015 11:43:48 -0800 (PST)
X-Received: by 10.180.160.176 with SMTP id xl16mr2454773wib.6.1425325428007;
        Mon, 02 Mar 2015 11:43:48 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id i7si735381wif.0.2015.03.02.11.43.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 11:43:47 -0800 (PST)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.17.13;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue101) with ESMTPSA (Nemesis) id 0MaJR2-1YDBEG3pAe-00Jnbz; Mon, 02 Mar
 2015 20:43:44 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Navya Sri Nizamkari <navyasri.tech@gmail.com>, julia.lawall@lip6.fr
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Remove semicolon after if.
Date: Mon, 02 Mar 2015 20:43:44 +0100
Message-ID: <8725552.xzSNgMC7iJ@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <7fa85094-1be3-4341-a682-3a1926457344@googlegroups.com>
References: <20150228220347.GA5430@localhost> <5610621.s2AZIK4DQm@wuerfel> <7fa85094-1be3-4341-a682-3a1926457344@googlegroups.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:iDASbVcqZC1CS2Uffh27FZD4jXnEgsPWwdeQImcXG0Pc1mBDIxt
 jvbL3xmmb9Si7ldqJQ8AhGSoQTrrGFLJSKfoQnOXtdvA/RtLq86OCTZBqXXrSPUJMAznJwd
 pUO6ulnwo3SHjn8wU7B4Y85WwrxupxuWsuQsFsFkJqyD7mzRiVUSlddK3H414cD3Stx8Thr
 lgKFkQ+iSegnE4d9BOxMA==
X-UI-Out-Filterresults: notjunk:1;

On Monday 02 March 2015 10:09:38 Navya Sri Nizamkari wrote:
> On Monday, March 2, 2015 at 1:35:40 PM UTC+5:30, Arnd Bergmann wrote:
> >
> > On Sunday 01 March 2015 16:37:57 Julia Lawall wrote: 
> > > >       while (inb(dev->iobase + DAS1800_STATUS) & FNE) { 
> > > >               dpnt = inw(dev->iobase + DAS1800_FIFO); 
> > > >               /* convert to unsigned type if we are in a bipolar mode 
> > */ 
> > > > -             if (!unipolar) 
> > > > -                     ; 
> > > > -             dpnt = munge_bipolar_sample(dev, dpnt); 
> > > > +             if (!unipolar) { 
> > > > +             dpnt = mungef_bipolar_sample(dev, dpnt); 
> > > 
> > > You need some indentation here. 
> > > 
> > > julia 
> > > 
> > > >               comedi_buf_write_samples(s, &dpnt, 1); 
> > > > - 
> > > > +             } 
> >
> > It rather looks to me that the patch fundamentally changes the 
> > behavior of the function, but calling two functions conditionally 
> > that were called unconditionally previously. 
> >
> > There is also a typo in 'mungef_bipolar_sample' that will prevent 
> > this from compiling. 
> >
> >         Arnd 
> >
> 
> If it's changing the way the functions are being called, I'll simply remove 
> the if condition, fix the typo with proper indentation and send a newer 
> version.
> 

Yes, I think that would be ok. This is the sort of code that is clearly
bogus, but it's hard to tell why. It was originally written as

	if (!unipolar) ;

when the code was initially merged, which was likely already the result
of a cleanup gone wrong, and it was later changed to

	if (!unipolar)
		;

which is obviously still doing nothing, but more obvious at that.

	Arnd


