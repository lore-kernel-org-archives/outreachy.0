X-GM-THRID: 5931983175680
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bd66ad1392ef0d48
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.122.35 with SMTP id lp3mr361183pab.38.1425408407573;
        Tue, 03 Mar 2015 10:46:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.39.74 with SMTP id n71ls290525ion.54.gmail; Tue, 03 Mar
 2015 10:46:47 -0800 (PST)
X-Received: by 10.43.144.81 with SMTP id jp17mr2460025icc.25.1425408407364;
        Tue, 03 Mar 2015 10:46:47 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m1si235780pdc.0.2015.03.03.10.46.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 10:46:47 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.135.0.216])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 1366AAF4;
	Tue,  3 Mar 2015 18:46:47 +0000 (UTC)
Date: Tue, 3 Mar 2015 09:05:33 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Somya Anand <somyaanand214@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH V2 2/2] Staging: media: omap24xx:
 Merge quoted string across lines
Message-ID: <20150303170533.GB11303@kroah.com>
References: <1425321027-20698-1-git-send-email-somyaanand214@gmail.com>
 <1425321027-20698-2-git-send-email-somyaanand214@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1425321027-20698-2-git-send-email-somyaanand214@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 03, 2015 at 12:00:27AM +0530, Somya Anand wrote:
> This patch fixes a coding style issue by merging a splitted
> quoted string across lines for better readability.
> 
> Signed-off-by: Somya Anand <somyaanand214@gmail.com>
> ---
>  drivers/staging/media/omap24xx/omap24xxcam.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

This file isn't even in the tree, make sure you are working against the
proper kernel version.

thanks,

greg k-h

