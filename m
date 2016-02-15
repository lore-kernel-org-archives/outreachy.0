X-GM-THRID: 6250833929703522304
X-Received: by 10.66.141.36 with SMTP id rl4mr13985421pab.3.1455497530011;
        Sun, 14 Feb 2016 16:52:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.33.74 with SMTP id p10ls651902igi.23.gmail; Sun, 14 Feb
 2016 16:52:09 -0800 (PST)
X-Received: by 10.107.136.23 with SMTP id k23mr14724707iod.23.1455497529718;
        Sun, 14 Feb 2016 16:52:09 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ui7si3043066pab.0.2016.02.14.16.52.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 16:52:09 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6990F1059;
	Mon, 15 Feb 2016 00:52:09 +0000 (UTC)
Date: Sun, 14 Feb 2016 16:52:09 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: most: hdm-dim2: Use devm_
 functions
Message-ID: <20160215005209.GA19167@kroah.com>
References: <20160213174801.GA15312@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160213174801.GA15312@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Feb 13, 2016 at 11:18:01PM +0530, Amitoj Kaur Chawla wrote:
> Devm_ functions allocate memory that is released when a driver
> detaches. Replace kzalloc, ioremap and request_irq with their devm_*
> counterparts in the probe function of a platform device which were
> originally freed in the remove function.
> 
> Also, unnecessary labels have been removed and header file
> linux/device.h has been added to ensure devm_* routine declarations
> are unambiguously available.

That's a lot to just do in one patch :(

Do only one conversion at a time, and be _VERY_ careful about the
request_irq() change, that has some tricky side-affects if you don't
watch out.  If you don't know about the side affects, don't make the
change please.

So please break this up into different patches, and no need for the
device.h change, that's not needed at all.

thanks,

greg k-h

