X-GM-THRID: 6251514840674729984
X-Received: by 10.112.156.33 with SMTP id wb1mr2240749lbb.7.1455930426458;
        Fri, 19 Feb 2016 17:07:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.42.196 with SMTP id q187ls118646lfq.30.gmail; Fri, 19 Feb
 2016 17:07:05 -0800 (PST)
X-Received: by 10.112.29.69 with SMTP id i5mr2175911lbh.15.1455930425840;
        Fri, 19 Feb 2016 17:07:05 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id v197si445933wmv.1.2016.02.19.17.07.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 17:07:05 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 6E74DE6A;
	Sat, 20 Feb 2016 01:07:04 +0000 (UTC)
Date: Fri, 19 Feb 2016 17:07:04 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Remove an
 unnecessary else after break
Message-ID: <20160220010704.GA3109@kroah.com>
References: <20160218161402.GA3219@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160218161402.GA3219@life-desktop>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Feb 18, 2016 at 09:44:10PM +0530, Anchal Jain wrote:
> Remove else after a break. Because else is generally not useful after a break or return.
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_wlan.c | 27 ++++++++++++---------------
>  1 file changed, 12 insertions(+), 15 deletions(-)

This patch doesn't apply against my staging-testing branch of the
staging.git tree.  Please rebase it and resend.

thanks,

greg k-h

