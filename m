X-GM-THRID: 6202030500933009408
X-Received: by 10.129.70.6 with SMTP id t6mr27494639ywa.5.1444041887411;
        Mon, 05 Oct 2015 03:44:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.26.134 with SMTP id a128ls1667065ioa.108.gmail; Mon, 05
 Oct 2015 03:44:46 -0700 (PDT)
X-Received: by 10.67.24.39 with SMTP id if7mr4454236pad.24.1444041886916;
        Mon, 05 Oct 2015 03:44:46 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id i77si2350929ywg.4.2015.10.05.03.44.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 03:44:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [166.170.36.102])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D9ADF20DB;
	Mon,  5 Oct 2015 10:44:43 +0000 (UTC)
Date: Mon, 5 Oct 2015 11:44:38 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Shraddha Barke <shraddha.6596@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] Staging: wilc1000:
 wilc_wfi_cfgoperations: Replace memset with eth_zero_addr
Message-ID: <20151005104438.GA7040@kroah.com>
References: <1444026634-14551-1-git-send-email-shraddha.6596@gmail.com>
 <1444026634-14551-2-git-send-email-shraddha.6596@gmail.com>
 <20151005095302.GA5600@kroah.com>
 <alpine.DEB.2.10.1510051128050.2665@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1510051128050.2665@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 05, 2015 at 11:28:27AM +0100, Julia Lawall wrote:
> On Mon, 5 Oct 2015, Greg KH wrote:
> 
> > On Mon, Oct 05, 2015 at 12:00:33PM +0530, Shraddha Barke wrote:
> > > Use eth_zero_addr to assign the zero address to the given address
> > > array instead of memset when second argument is address of zero.
> >
> > How do you know that this is safe to do?  You need to document the heck
> > out of this and why you know this is ok.  See other patches that do this
> > for examples of what you need to do.
> 
> This one is just a memset, so I guess there are no constraints on is use?

I do not know, I thought the constraints were there for all eth_*
function calls.

thanks,

greg k-h

