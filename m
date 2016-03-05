X-GM-THRID: 6257901855301435392
X-Received: by 10.112.54.202 with SMTP id l10mr715258lbp.14.1457207779226;
        Sat, 05 Mar 2016 11:56:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.89.133 with SMTP id n127ls215735lfb.82.gmail; Sat, 05 Mar
 2016 11:56:18 -0800 (PST)
X-Received: by 10.112.126.67 with SMTP id mw3mr681004lbb.17.1457207778621;
        Sat, 05 Mar 2016 11:56:18 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 185si150693wml.0.2016.03.05.11.56.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 11:56:18 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 3D4EFC37;
	Sat,  5 Mar 2016 19:56:17 +0000 (UTC)
Date: Sat, 5 Mar 2016 11:56:16 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: wiretest: Remove int
 typecast of offsetof().
Message-ID: <20160305195616.GA15835@kroah.com>
References: <20160303105513.GA5491@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160303105513.GA5491@sandhya>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Mar 03, 2016 at 04:25:13PM +0530, Sandhya Bankar wrote:
> Remove int typecast of offsetof().
> As per below coccinelle rule:
> 
> @@
> type T;
> expression E;
> @@
> 
> - (int)(offsetof(T,E))
> + offsetof(T,E)
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
>  drivers/staging/lustre/lustre/ptlrpc/wiretest.c | 2842 +++++++++++------------
>  1 file changed, 1421 insertions(+), 1421 deletions(-)

You didn't even test-build this patch, please NEVER do that as it breaks
the development workflow of a maintainer and makes them really grumpy :(

greg k-h

