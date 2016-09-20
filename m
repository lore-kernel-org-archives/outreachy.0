X-GM-THRID: 6332110016814776320
X-Received: by 10.200.46.229 with SMTP id i34mr5707391qta.60.1474372198178;
        Tue, 20 Sep 2016 04:49:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.193 with SMTP id b1ls1686167otd.19.gmail; Tue, 20 Sep
 2016 04:49:57 -0700 (PDT)
X-Received: by 10.129.83.6 with SMTP id h6mr5500459ywb.89.1474372197762;
        Tue, 20 Sep 2016 04:49:57 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id e66si2421589pfk.2.2016.09.20.04.49.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 04:49:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E8137413;
	Tue, 20 Sep 2016 11:49:56 +0000 (UTC)
Date: Tue, 20 Sep 2016 13:50:02 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/4] staging: i4l: act2000: Replace
 printk(KERN_WARNING..) with netdev_warn(dev, ..)
Message-ID: <20160920115002.GA14478@kroah.com>
References: <cover.1474308584.git.karniksayli1995@gmail.com>
 <93a41d1940c7d904b672acf7825392e37c9a213b.1474308584.git.karniksayli1995@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <93a41d1940c7d904b672acf7825392e37c9a213b.1474308584.git.karniksayli1995@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Mon, Sep 19, 2016 at 11:51:25PM +0530, sayli karnik wrote:
> This patch fixes the checkpatch warning:
> WARNING: Prefer [subsystem eg: netdev]_warn([subsystem]dev, ... then
> dev_warn(dev, ... then pr_warn(...  to printk(KERN_WARNING ...
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/i4l/act2000/act2000_isa.c | 20 +++++++++-----------
>  1 file changed, 9 insertions(+), 11 deletions(-)

This series doesn't apply to the tree at all, can you refresh and rebase
and resend?

thanks,

greg k-h

