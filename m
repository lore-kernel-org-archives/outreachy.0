X-GM-THRID: 6253454979365863424
X-Received: by 10.112.201.104 with SMTP id jz8mr2666660lbc.13.1456008771475;
        Sat, 20 Feb 2016 14:52:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.1.196 with SMTP id 187ls169294wmb.5.canary; Sat, 20 Feb
 2016 14:52:51 -0800 (PST)
X-Received: by 10.28.45.151 with SMTP id t145mr376783wmt.6.1456008771001;
        Sat, 20 Feb 2016 14:52:51 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id e130si652951wme.2.2016.02.20.14.52.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 14:52:50 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9E9EFFA8;
	Sat, 20 Feb 2016 22:52:49 +0000 (UTC)
Date: Sat, 20 Feb 2016 14:52:49 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: wlan-ng: Convert explicit
 comparison to NULL to !x.
Message-ID: <20160220225249.GA9545@kroah.com>
References: <20160220115438.GA3260@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160220115438.GA3260@sandhya>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Feb 20, 2016 at 05:24:38PM +0530, Sandhya Bankar wrote:
> Convert explicit comparison to NULL to !x.
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> ---
> Changes in v3:
> *In v2,missed to add comment below --- so adding comment  
> *Adding Full name in signed-off-by line.
> 

You sent 2 patches with the identical subject: line, yet they did
different things.  I can't accept that, please make them unique.

thanks,

greg k-h

