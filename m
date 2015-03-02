X-GM-THRID: 5277654974464
X-Received: by 10.182.148.164 with SMTP id tt4mr22915191obb.30.1425258520054;
        Sun, 01 Mar 2015 17:08:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.167 with SMTP id k7ls797877igx.16.canary; Sun, 01 Mar
 2015 17:08:39 -0800 (PST)
X-Received: by 10.66.119.231 with SMTP id kx7mr24986431pab.14.1425258519870;
        Sun, 01 Mar 2015 17:08:39 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id q9si455331pds.2.2015.03.01.17.08.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 17:08:39 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 903F6475;
	Mon,  2 Mar 2015 01:08:39 +0000 (UTC)
Date: Sun, 1 Mar 2015 17:08:39 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Use netdev_info
 instead of printk.
Message-ID: <20150302010839.GA12616@kroah.com>
References: <20150228231831.GA10144@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150228231831.GA10144@localhost>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 01, 2015 at 04:48:31AM +0530, Navya Sri Nizamkari wrote:
> This patch uses netdev_info instead of printk(KERN_INFO..)
> as this is network driver to fix the following
> checkpatch.pl warning:
> 
> WARNING: Prefer netdev_info(netdev, ... then dev_info(dev, ...
> then pr_info(...  to printk(KERN_INFO ...
> 
> Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl8192e/rtl_wx.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)

This doesn't apply cleanly to my tree anymore.  Can you refresh it
against my staging-testing branch of staging.git and resend?

thanks,

greg k-h

