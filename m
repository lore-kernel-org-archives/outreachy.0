X-GM-THRID: 6330241382632914944
X-Received: by 10.66.217.134 with SMTP id oy6mr9718743pac.31.1474013073410;
        Fri, 16 Sep 2016 01:04:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.228.13 with SMTP id o13ls945791ith.4.canary; Fri, 16 Sep
 2016 01:04:31 -0700 (PDT)
X-Received: by 10.107.174.135 with SMTP id n7mr9884084ioo.20.1474013071534;
        Fri, 16 Sep 2016 01:04:31 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id si10si2451605pab.1.2016.09.16.01.04.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 01:04:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D09918F5;
	Fri, 16 Sep 2016 08:04:30 +0000 (UTC)
Date: Fri, 16 Sep 2016 10:04:36 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alison Schofield <amsfield22@gmail.com>
Cc: Rehas Sachdeva <aquannie@gmail.com>, outreachy-kernel@googlegroups.com,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: accel: Fix indentation
Message-ID: <20160916080436.GA15427@kroah.com>
References: <20160914172924.GA27415@toblerone>
 <20160914174716.GA2989@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160914174716.GA2989@d830.WORKGROUP>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Wed, Sep 14, 2016 at 10:47:16AM -0700, Alison Schofield wrote:
> On Wed, Sep 14, 2016 at 10:59:24PM +0530, Rehas Sachdeva wrote:
> > This patch fixes the checkpatch.pl warning:
> > WARNING: Statements should start on a tabstop
> > 
> > Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> 
> Hi Rehas, 
> This is a valid fix, but it was already submitted.
> You wouldn't have easily known that.  
> 
> It's in iio git tree, not yet sync'd back to staging.
> Not sure what the take-away or advice on this situation is.
> 
> Greg?

I was behind in syncing up with the iio tree, that's now taken care of,
sorry.

greg k-h

