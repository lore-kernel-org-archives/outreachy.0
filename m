X-GM-THRID: 6338829541865160704
X-Received: by 10.13.220.66 with SMTP id f63mr7616854ywe.129.1476024497965;
        Sun, 09 Oct 2016 07:48:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.203.7 with SMTP id u7ls2681460itg.16.canary; Sun, 09 Oct
 2016 07:48:15 -0700 (PDT)
X-Received: by 10.66.217.196 with SMTP id pa4mr6337254pac.16.1476024495564;
        Sun, 09 Oct 2016 07:48:15 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si7452865par.0.2016.10.09.07.48.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 07:48:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D995325A;
	Sun,  9 Oct 2016 14:48:14 +0000 (UTC)
Date: Sun, 9 Oct 2016 16:48:22 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: ks7010: Replace printk with netdev_*
Message-ID: <20161009144822.GA15170@kroah.com>
References: <20161007205559.GA11103@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161007205559.GA11103@domino-MS-16Y1>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Fri, Oct 07, 2016 at 11:55:59PM +0300, Mihaela Muraru wrote:
> This is a patch to ks_hostif.c file that fixes up a checkpatch.pl
> 
> WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then
> dev_info(dev, ... then pr_info(... to printk(KERN_INFO ...
> 
> For netdev devices netdev_info and netdev_warn is preferred over
> printk(KERN_INFO/WARN..).
> 
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/ks7010/ks_hostif.c | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)

This no longer applies to my tree, can you rebase against the
staging-testing branch and resend it?

thanks,

greg k-h

