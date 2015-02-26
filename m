X-GM-THRID: 3862924623872
X-Received: by 10.236.229.233 with SMTP id h99mr9441294yhq.42.1424982135848;
        Thu, 26 Feb 2015 12:22:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.246.8 with SMTP id xs8ls131350obc.8.gmail; Thu, 26 Feb
 2015 12:22:15 -0800 (PST)
X-Received: by 10.182.110.200 with SMTP id ic8mr9748284obb.34.1424982135638;
        Thu, 26 Feb 2015 12:22:15 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si261694pac.0.2015.02.26.12.22.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 12:22:15 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 441B2B48;
	Thu, 26 Feb 2015 20:22:15 +0000 (UTC)
Date: Thu, 26 Feb 2015 12:22:15 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Fix simple_strtoul
 is obsolete, use kstrtoul instead
Message-ID: <20150226202215.GB24106@kroah.com>
References: <1424976767-7344-1-git-send-email-yeliztaneroglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424976767-7344-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 26, 2015 at 08:52:47PM +0200, Yeliz Taneroglu wrote:
> This patch fixes "simple_strtoul is obsolete, use kstrtoul instead"
> warning in kobjects.c
> 
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/fbtft/fb_tls8204.c | 177 -------------------------------------

Why did you delete this entire file in this patch?

thanks,

greg k-h

