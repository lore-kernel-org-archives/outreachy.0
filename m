X-GM-THRID: 6252664504577949696
X-Received: by 10.112.129.65 with SMTP id nu1mr2632866lbb.18.1456008303428;
        Sat, 20 Feb 2016 14:45:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.15.170 with SMTP id 42ls201339lfp.35.gmail; Sat, 20 Feb
 2016 14:45:02 -0800 (PST)
X-Received: by 10.25.154.129 with SMTP id c123mr2595263lfe.1.1456008302919;
        Sat, 20 Feb 2016 14:45:02 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id h126si454561wme.0.2016.02.20.14.45.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 14:45:02 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7AB65114A;
	Sat, 20 Feb 2016 22:45:01 +0000 (UTC)
Date: Sat, 20 Feb 2016 14:45:01 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: Remove else after
 return in if statements
Message-ID: <20160220224501.GA21624@kroah.com>
References: <20160218211055.GA6343@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160218211055.GA6343@janani-Inspiron-3521>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Feb 18, 2016 at 04:10:55PM -0500, Janani Ravichandran wrote:
> This patch fixes the checkpatch warning that else is not generally
> useful after a break or return.
> Coccinelle patch used:
> 
> @rule1@
> expression e1;
> @@
> 	if(e1) { ... return ...; }
> -	else{
> 		...
> -	}
> 
> @rule2@
> expression e2;
> statement S1;
> @@
> 
> 	if(e2) { ... return ...; }
> -	else
> 		S1
> 
> Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
> ---
>  drivers/staging/iio/adc/ad7816.c    | 12 ++++++++----
>  drivers/staging/iio/adc/spear_adc.c |  5 ++---
>  2 files changed, 10 insertions(+), 7 deletions(-)

This patch conflicts with a patch someone else sent in 2 days prior for
one of these files. Can you please refresh your tree and rebase it and
resend?

thanks,

greg k-h

