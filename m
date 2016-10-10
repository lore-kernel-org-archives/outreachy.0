X-GM-THRID: 6338829541865160704
X-Received: by 10.107.155.198 with SMTP id d189mr7960686ioe.63.1476083345813;
        Mon, 10 Oct 2016 00:09:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.44.208 with SMTP id e16ls8923405otd.6.gmail; Mon, 10 Oct
 2016 00:09:05 -0700 (PDT)
X-Received: by 10.157.26.119 with SMTP id u52mr8855106otu.101.1476083345471;
        Mon, 10 Oct 2016 00:09:05 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si8252120par.0.2016.10.10.00.09.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 00:09:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B52592C;
	Mon, 10 Oct 2016 07:09:04 +0000 (UTC)
Date: Mon, 10 Oct 2016 09:09:13 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] Staging: ks7010: Replace printk with netdev_*
Message-ID: <20161010070913.GA25825@kroah.com>
References: <20161009203937.GA1549@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161009203937.GA1549@domino-MS-16Y1>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Oct 09, 2016 at 11:39:37PM +0300, Mihaela Muraru wrote:
> This is a patch to ks_hostif.c file that fixes up a checkpatch.pl
> 
> WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then
> dev_info(dev, ... then pr_info(... to printk(KERN_INFO ...
> 
> For netdev devices netdev_info and netdev_warn is preferred over
> printk(KERN_INFO/WARN..).
> 
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> 
> ---
> Changes in v2:
> 	-rebase the staging-testing branch

Really?  It still does not apply :(

Note, many people seem to be working on this same file, in the same
area, for some reason...

thanks,

greg k-h

