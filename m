X-GM-THRID: 6338573306714652672
X-Received: by 10.200.56.15 with SMTP id q15mr4873582qtb.51.1476023556920;
        Sun, 09 Oct 2016 07:32:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.174 with SMTP id d43ls7864032otd.11.gmail; Sun, 09 Oct
 2016 07:32:36 -0700 (PDT)
X-Received: by 10.129.179.130 with SMTP id r124mr7049727ywh.27.1476023556520;
        Sun, 09 Oct 2016 07:32:36 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si7446426par.0.2016.10.09.07.32.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 07:32:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D84C125A;
	Sun,  9 Oct 2016 14:32:35 +0000 (UTC)
Date: Sun, 9 Oct 2016 16:32:44 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elise Lennion <elise.lennion@gmail.com>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 3/4] staging: wilc1000: Replace printk() with
 pr_info().
Message-ID: <20161009143244.GA4541@kroah.com>
References: <20161009031023.GA11944@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161009031023.GA11944@lennorien.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Oct 09, 2016 at 12:10:23AM -0300, Elise Lennion wrote:
> Fix checkpatch warning:
> 
> WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...
> 
> Replace printk(KERN_INFO...) by pr_info() for more uniform error reporting.
> 
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_debugfs.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

You need to put below the --- line what changed in v2 of this patch.

thanks,

greg k-h

