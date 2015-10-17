X-GM-THRID: 6206326590573379584
X-Received: by 10.107.37.206 with SMTP id l197mr1422459iol.17.1445060965790;
        Fri, 16 Oct 2015 22:49:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.82.102 with SMTP id g93ls1867239qgd.19.gmail; Fri, 16 Oct
 2015 22:49:25 -0700 (PDT)
X-Received: by 10.140.196.76 with SMTP id r73mr15865602qha.3.1445060965368;
        Fri, 16 Oct 2015 22:49:25 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id zg1si2422310pbb.2.2015.10.16.22.49.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 22:49:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EF62C67;
	Sat, 17 Oct 2015 05:49:24 +0000 (UTC)
Date: Fri, 16 Oct 2015 22:49:24 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: iio: cdc: ad7150: Remove
 unused macros
Message-ID: <20151017054924.GA18400@kroah.com>
References: <1445023006-10140-1-git-send-email-shraddha.6596@gmail.com>
 <1445023006-10140-2-git-send-email-shraddha.6596@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1445023006-10140-2-git-send-email-shraddha.6596@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Oct 17, 2015 at 12:46:45AM +0530, Shraddha Barke wrote:
> Remove the macros since they are not used anywhere throughout the
> kernel.
> 
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
>  drivers/staging/iio/cdc/ad7150.c | 10 ----------
>  1 file changed, 10 deletions(-)

No, for stuff like this that describes hardware, it's good to leave all
of the information in the driver that we can get.  It can only help out
later, so please leave stuff like this alone.

thanks,

greg k-h

