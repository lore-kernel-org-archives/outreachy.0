X-GM-THRID: 6202030500933009408
X-Received: by 10.66.147.165 with SMTP id tl5mr2756539pab.21.1444043186228;
        Mon, 05 Oct 2015 04:06:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.16.165 with SMTP id h5ls1264949obd.93.gmail; Mon, 05 Oct
 2015 04:06:25 -0700 (PDT)
X-Received: by 10.182.191.34 with SMTP id gv2mr3333690obc.40.1444043185934;
        Mon, 05 Oct 2015 04:06:25 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id j22si2360078ywg.2.2015.10.05.04.06.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 04:06:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [166.170.36.102])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D1B9720C3;
	Mon,  5 Oct 2015 11:06:21 +0000 (UTC)
Date: Mon, 5 Oct 2015 12:06:14 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Shraddha Barke <shraddha.6596@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] Staging: wilc1000:
 wilc_wfi_cfgoperations: Replace memset with eth_zero_addr
Message-ID: <20151005110614.GA23775@kroah.com>
References: <1444026634-14551-1-git-send-email-shraddha.6596@gmail.com>
 <1444026634-14551-2-git-send-email-shraddha.6596@gmail.com>
 <20151005095302.GA5600@kroah.com>
 <alpine.DEB.2.10.1510051128050.2665@hadrien>
 <20151005104438.GA7040@kroah.com>
 <alpine.DEB.2.10.1510051148590.2665@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1510051148590.2665@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 05, 2015 at 11:49:24AM +0100, Julia Lawall wrote:
> On Mon, 5 Oct 2015, Greg KH wrote:
> 
> > On Mon, Oct 05, 2015 at 11:28:27AM +0100, Julia Lawall wrote:
> > > On Mon, 5 Oct 2015, Greg KH wrote:
> > >
> > > > On Mon, Oct 05, 2015 at 12:00:33PM +0530, Shraddha Barke wrote:
> > > > > Use eth_zero_addr to assign the zero address to the given address
> > > > > array instead of memset when second argument is address of zero.
> > > >
> > > > How do you know that this is safe to do?  You need to document the heck
> > > > out of this and why you know this is ok.  See other patches that do this
> > > > for examples of what you need to do.
> > >
> > > This one is just a memset, so I guess there are no constraints on is use?
> >
> > I do not know, I thought the constraints were there for all eth_*
> > function calls.
> 
> The definition is just:
> 
> 244 static inline void eth_zero_addr(u8 *addr)
> 245 {
> 246         memset(addr, 0x00, ETH_ALEN);
> 247 }

Ah, didn't know that, nevermind then.

Shraddha, can you please resend this series?

thanks,

greg k-h

