X-GM-THRID: 6255482024290680832
X-Received: by 10.112.209.6 with SMTP id mi6mr726302lbc.15.1457218542141;
        Sat, 05 Mar 2016 14:55:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.26.131 with SMTP id a125ls217078lfa.102.gmail; Sat, 05 Mar
 2016 14:55:41 -0800 (PST)
X-Received: by 10.112.210.129 with SMTP id mu1mr691321lbc.3.1457218541539;
        Sat, 05 Mar 2016 14:55:41 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id v68si147738wmd.1.2016.03.05.14.55.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 14:55:41 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 36828DE5;
	Sat,  5 Mar 2016 22:55:40 +0000 (UTC)
Date: Sat, 5 Mar 2016 14:55:39 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [RESEND PATCH] Staging: comedi: Use
 DIV_ROUND_CLOSEST
Message-ID: <20160305225539.GB28583@kroah.com>
References: <1456467894-14246-1-git-send-email-bhumirks@gmail.com>
 <1456470746-19844-1-git-send-email-bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1456470746-19844-1-git-send-email-bhumirks@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Feb 26, 2016 at 12:42:26PM +0530, Bhumika Goyal wrote:
> The macro DIV_ROUND_CLOSEST performs the computation (x + d/2)/d and
> makes the code more readable.
> Done using coccinelle:
> 
> @@
> expression x,divisor;
> @@
> - (((x) + ((divisor) / 2)) / (divisor))
> + DIV_ROUND_CLOSEST(x,divisor)
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/comedi/drivers/ni_mio_common.c | 18 +++++++-----------
>  1 file changed, 7 insertions(+), 11 deletions(-)

Why RESEND?  Please always say why you resent a patch if you do so.


