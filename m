X-GM-THRID: 6205602461234757632
X-Received: by 10.31.170.17 with SMTP id t17mr13477302vke.2.1445874835784;
        Mon, 26 Oct 2015 08:53:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.22.70 with SMTP id b6ls912948igf.16.gmail; Mon, 26 Oct 2015
 08:53:55 -0700 (PDT)
X-Received: by 10.66.100.166 with SMTP id ez6mr16589632pab.44.1445874835404;
        Mon, 26 Oct 2015 08:53:55 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id sm2si2231830pab.0.2015.10.26.08.53.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 08:53:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacfv9 with SMTP id fv9so200717052pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 08:53:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=N23rWIfgTP/Y6NWzNg8NMq4N547NTH5ZuickT4jmb8Q=;
        b=b9V5R5AwDQycFrKVu8cVCwo58jVZvFIu1MXqdvbliWt1uGFaIQ3KZAwzcXOCskc60W
         ozAvqlhMCtTxgPy9tTFOgiOCcSYrUaokhaSO8qsr1l7+ApLxZPLdOK6AP+3uVPoFmpRr
         J240opUcA9VcAGe1+yrQ0uq2gQNRZv+uOBOSQfj9x+sreIpBFEnHMeDe/bAkTBK8Dnfu
         fTIiMcV8ziuCm82t93QnoDemxz6O3lOEpL6DhEfueUhId4uU44ANqBqNQ1Zzm8ffI0a8
         LtUPzZBv+GaTzWgdw3/1nB9CP251tHt3NBK1XHjqvkHBnLQAoI/sYCpVsajqLzY/IC14
         Jz1A==
X-Received: by 10.68.87.161 with SMTP id az1mr22719892pbb.57.1445874835245;
        Mon, 26 Oct 2015 08:53:55 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.177.228])
        by smtp.gmail.com with ESMTPSA id xm9sm34707693pbc.32.2015.10.26.08.53.52
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 08:53:54 -0700 (PDT)
Date: Mon, 26 Oct 2015 21:23:42 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Cristina Moraru <cristina.moraru09@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: Fix lines over 80
 characters
Message-ID: <20151026155342.GA31787@sudip-pc>
References: <1444854375-22873-1-git-send-email-cristina.moraru09@gmail.com>
 <20151015064546.GA3134@sudip-pc>
 <alpine.DEB.2.10.1510151808510.2350@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1510151808510.2350@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Oct 15, 2015 at 06:10:11PM +0200, Julia Lawall wrote:
> > >
> > > -	spinlock_t	bd_intr_lock;	/* Used to protect the poller tasklet and
> > > -					 * the interrupt routine from each other.
> > > +	spinlock_t	bd_intr_lock;	/* Used to protect the poller tasklet
> > > +					 * and the interrupt routine from each
> > > +					 * other.
> > >  					 */
> > This is not the multiline comment style. It should be:
> >
> > /*
> >  * Used to protect the poller tasklet
> >  * and the interrupt routine from each
> >  * other.
> >  */
> 
> Not sure what you are suggesting.  If you think that the comment should be
> moved over to the leftmost column, then there is no need for so many
> newlines.  But maybe it would look odd with some comments on the far left
> and some to the right of the declarations?
> 
Hi Julia,
Sorry for the confusion. I was just suggesting about the multiline
comment style. It should have been:

 - spinlock_t      bd_intr_lock;   /* Used to protect the poller tasklet and
 - 				    * the interrupt routine from each other.
 + spinlock_t 	   bd_intr_lock;   /*
 + 				    * Used to protect the poller tasklet
 +				    * and the interrupt routine from each
 +				    * other.
                                    */

Regards
sudip


