X-GM-THRID: 6205602461234757632
X-Received: by 10.112.142.195 with SMTP id ry3mr2449906lbb.22.1444925417078;
        Thu, 15 Oct 2015 09:10:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.91.205 with SMTP id p196ls171592lfb.28.gmail; Thu, 15 Oct
 2015 09:10:15 -0700 (PDT)
X-Received: by 10.112.202.165 with SMTP id kj5mr2351427lbc.5.1444925415890;
        Thu, 15 Oct 2015 09:10:15 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q6si1091949wif.2.2015.10.15.09.10.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 09:10:15 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,686,1437429600"; 
   d="scan'208";a="182988785"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Oct 2015 18:10:15 +0200
Date: Thu, 15 Oct 2015 18:10:11 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
cc: Cristina Moraru <cristina.moraru09@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: dgnc: Fix lines over 80
 characters
In-Reply-To: <20151015064546.GA3134@sudip-pc>
Message-ID: <alpine.DEB.2.10.1510151808510.2350@hadrien>
References: <1444854375-22873-1-git-send-email-cristina.moraru09@gmail.com> <20151015064546.GA3134@sudip-pc>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

> >
> > -	spinlock_t	bd_intr_lock;	/* Used to protect the poller tasklet and
> > -					 * the interrupt routine from each other.
> > +	spinlock_t	bd_intr_lock;	/* Used to protect the poller tasklet
> > +					 * and the interrupt routine from each
> > +					 * other.
> >  					 */
> This is not the multiline comment style. It should be:
>
> /*
>  * Used to protect the poller tasklet
>  * and the interrupt routine from each
>  * other.
>  */

Not sure what you are suggesting.  If you think that the comment should be
moved over to the leftmost column, then there is no need for so many
newlines.  But maybe it would look odd with some comments on the far left
and some to the right of the declarations?

julia

