X-GM-THRID: 6249315383712415744
X-Received: by 10.182.221.129 with SMTP id qe1mr35785444obc.7.1455068852393;
        Tue, 09 Feb 2016 17:47:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.136.202 with SMTP id s71ls100738ioi.85.gmail; Tue, 09 Feb
 2016 17:47:32 -0800 (PST)
X-Received: by 10.66.63.104 with SMTP id f8mr34607086pas.6.1455068851971;
        Tue, 09 Feb 2016 17:47:31 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 12si89689pfb.1.2016.02.09.17.47.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 17:47:31 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A50F9F28;
	Wed, 10 Feb 2016 01:47:31 +0000 (UTC)
Date: Tue, 9 Feb 2016 17:47:31 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Dilek Uzulmez <dilekuzulmez@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: Add spaces around
 '+'
Message-ID: <20160210014731.GA23508@kroah.com>
References: <1455032114-4661-1-git-send-email-dilekuzulmez@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1455032114-4661-1-git-send-email-dilekuzulmez@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Feb 09, 2016 at 05:35:14PM +0200, Dilek Uzulmez wrote:
> Add space around operator '+'. Problem found using
> checkpatch.pl
> CHECK: spaces preferred around that '+' (ctx:VxV)
> 
> Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
> ---
>  drivers/staging/rtl8712/hal_init.c | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)

This change is already in my tree, make sure you always work against the
linux-next, or even better, the staging.git tree, using the
staging-testing branch.

thanks,

greg k-h

