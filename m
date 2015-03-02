X-GM-THRID: 4691261915136
X-Received: by 10.42.43.199 with SMTP id y7mr25677381ice.9.1425258193898;
        Sun, 01 Mar 2015 17:03:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.209 with SMTP id p78ls1204614ioi.71.gmail; Sun, 01 Mar
 2015 17:03:13 -0800 (PST)
X-Received: by 10.66.131.37 with SMTP id oj5mr24583596pab.12.1425258193741;
        Sun, 01 Mar 2015 17:03:13 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bo1si1322064pbc.0.2015.03.01.17.03.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 17:03:13 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7D4B9475;
	Mon,  2 Mar 2015 01:03:13 +0000 (UTC)
Date: Sun, 1 Mar 2015 17:03:13 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Vaishali Thakkar <vthakkar1994@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: rtl8712: Eliminate use
 of _init_timer
Message-ID: <20150302010313.GA6918@kroah.com>
References: <cover.1425058745.git.vthakkar1994@gmail.com>
 <043ec4bb089d339de22164416866e2fce2a5bb6a.1425058745.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <043ec4bb089d339de22164416866e2fce2a5bb6a.1425058745.git.vthakkar1994@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 11:26:22PM +0530, Vaishali Thakkar wrote:
> This patch introduces the use of API function setup_timer
> instead of driver specific function _init_timer as it is
> the preferred and standard way to setup and set the timer.
> Also, definition of function _init_timer is removed as it
> is no longer needed after this change.
> 
> This is done using Coccinelle and semantic patch used for
> this is as follows:
> 
> @@ expression x, y; identifier a, b;@@
> 
> - _init_timer (&x, y, a, b);
> + setup_timer (&x, a, (unsigned long)b);
> 
> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> ---
>  drivers/staging/rtl8712/mlme_linux.c      | 27 +++++++++++++--------------
>  drivers/staging/rtl8712/os_intfs.c        |  4 ++--
>  drivers/staging/rtl8712/osdep_service.h   |  9 ---------
>  drivers/staging/rtl8712/recv_linux.c      |  5 +++--
>  drivers/staging/rtl8712/rtl8712_led.c     |  3 ++-
>  drivers/staging/rtl8712/rtl871x_pwrctrl.c |  4 ++--
>  6 files changed, 22 insertions(+), 30 deletions(-)

This patch adds a bunch of compiler warnings, so I can't take it :(

Please fix up and resend, and be more careful in the future.

thanks,

greg k-h

