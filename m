X-GM-THRID: 6202030500933009408
X-Received: by 10.112.132.6 with SMTP id oq6mr5037290lbb.1.1444042189844;
        Mon, 05 Oct 2015 03:49:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.17.70 with SMTP id g67ls443589lfi.13.gmail; Mon, 05 Oct
 2015 03:49:48 -0700 (PDT)
X-Received: by 10.112.138.4 with SMTP id qm4mr3863494lbb.6.1444042188214;
        Mon, 05 Oct 2015 03:49:48 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ch7si348541wib.2.2015.10.05.03.49.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 03:49:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,638,1437429600"; 
   d="scan'208";a="181107665"
Received: from 089-101-192072.ntlworld.ie (HELO hadrien.local) ([89.101.192.72])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 05 Oct 2015 12:49:30 +0200
Date: Mon, 5 Oct 2015 11:49:24 +0100 (IST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg KH <gregkh@linuxfoundation.org>
cc: Julia Lawall <julia.lawall@lip6.fr>, 
    Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] Staging: wilc1000:
 wilc_wfi_cfgoperations: Replace memset with eth_zero_addr
In-Reply-To: <20151005104438.GA7040@kroah.com>
Message-ID: <alpine.DEB.2.10.1510051148590.2665@hadrien>
References: <1444026634-14551-1-git-send-email-shraddha.6596@gmail.com> <1444026634-14551-2-git-send-email-shraddha.6596@gmail.com> <20151005095302.GA5600@kroah.com> <alpine.DEB.2.10.1510051128050.2665@hadrien> <20151005104438.GA7040@kroah.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 5 Oct 2015, Greg KH wrote:

> On Mon, Oct 05, 2015 at 11:28:27AM +0100, Julia Lawall wrote:
> > On Mon, 5 Oct 2015, Greg KH wrote:
> >
> > > On Mon, Oct 05, 2015 at 12:00:33PM +0530, Shraddha Barke wrote:
> > > > Use eth_zero_addr to assign the zero address to the given address
> > > > array instead of memset when second argument is address of zero.
> > >
> > > How do you know that this is safe to do?  You need to document the heck
> > > out of this and why you know this is ok.  See other patches that do this
> > > for examples of what you need to do.
> >
> > This one is just a memset, so I guess there are no constraints on is use?
>
> I do not know, I thought the constraints were there for all eth_*
> function calls.

The definition is just:

244 static inline void eth_zero_addr(u8 *addr)
245 {
246         memset(addr, 0x00, ETH_ALEN);
247 }

julia

