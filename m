X-GM-THRID: 6252998244395122688
X-Received: by 10.112.201.104 with SMTP id jz8mr2672145lbc.13.1456010289554;
        Sat, 20 Feb 2016 15:18:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.19.91 with SMTP id j88ls198848lfi.50.gmail; Sat, 20 Feb
 2016 15:18:08 -0800 (PST)
X-Received: by 10.112.54.202 with SMTP id l10mr2625927lbp.14.1456010288972;
        Sat, 20 Feb 2016 15:18:08 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id e130si655548wme.2.2016.02.20.15.18.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 15:18:08 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 91B11127B;
	Sat, 20 Feb 2016 23:18:07 +0000 (UTC)
Date: Sat, 20 Feb 2016 15:18:07 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/4] staging: rtl8712: Place constants
 on the right side
Message-ID: <20160220231807.GA8992@kroah.com>
References: <20160219134715.GA19976@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160219134715.GA19976@Karyakshetra>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Feb 19, 2016 at 07:17:15PM +0530, Bhaktipriya Shridhar wrote:
> Move constants to the right of binary operators.
> This issue was identified using the Coccinelle script
> misc/compare_const_fl.cocci
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/rtl8712/wifi.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

All 4 of these patches have the same subject: so I can't take them :(

Please fix up and resend.

thanks,

greg k-h

