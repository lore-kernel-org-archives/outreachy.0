X-GM-THRID: 6250819727244918784
X-Received: by 10.50.50.208 with SMTP id e16mr9950106igo.12.1455497042861;
        Sun, 14 Feb 2016 16:44:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.20.36 with SMTP id k4ls619774ige.13.gmail; Sun, 14 Feb 2016
 16:44:02 -0800 (PST)
X-Received: by 10.66.220.67 with SMTP id pu3mr13586899pac.19.1455497042575;
        Sun, 14 Feb 2016 16:44:02 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ui7si3040626pab.0.2016.02.14.16.44.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 16:44:02 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4CD10EE3;
	Mon, 15 Feb 2016 00:44:02 +0000 (UTC)
Date: Sun, 14 Feb 2016 16:44:02 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: xgifb: Fix comment style
Message-ID: <20160215004402.GA1579@kroah.com>
References: <20160213220936.GA22396@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160213220936.GA22396@janani-Inspiron-3521>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Feb 13, 2016 at 05:09:36PM -0500, Janani Ravichandran wrote:
> Fix comments to use trailing */ on separate lines and * on subsequent
> lines. Found by checkpatch.pl 
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
> Changes since v1:
>  * Corrected accidentally modified comment in line 56 in the previous
>    patch

Always run your patches through checkpatch so you don't get grumpy
emails from maintainers telling you to run your patch through
checkpatch...

I can't take this :(


