X-GM-THRID: 3543146692608
X-Received: by 10.236.43.146 with SMTP id l18mr9470162yhb.23.1424984230245;
        Thu, 26 Feb 2015 12:57:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.107.199 with SMTP id he7ls115400obb.76.gmail; Thu, 26 Feb
 2015 12:57:10 -0800 (PST)
X-Received: by 10.182.246.73 with SMTP id xu9mr9069852obc.17.1424984230057;
        Thu, 26 Feb 2015 12:57:10 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id hs7si258910pad.1.2015.02.26.12.57.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 12:57:10 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B5829B33;
	Thu, 26 Feb 2015 20:57:09 +0000 (UTC)
Date: Thu, 26 Feb 2015 12:57:09 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Vaishali Thakkar <vthakkar1994@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: rtl8188eu: Eliminate use
 of _init_timer
Message-ID: <20150226205709.GA20346@kroah.com>
References: <cover.1424930708.git.vthakkar1994@gmail.com>
 <a9e63f796f9f54a286ef73830c09c33e0f2d316d.1424930708.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a9e63f796f9f54a286ef73830c09c33e0f2d316d.1424930708.git.vthakkar1994@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 26, 2015 at 11:42:34AM +0530, Vaishali Thakkar wrote:
> This patch introduces the use of API function setup_timer
> instead of driver specific function _init_timer as it is
> the preferred and standard way to setup and set the timer.
> Also, definition of function _init_timer is removed as it
> is no longer needed after this change.
> 
> Here, some of cases are handled using Coccinelle and
> semantic patch used for this is as follows:
> 
> @@ expression x, y; identifier a, b;@@
> 
> - _init_timer (&x, y, a, b);
> + setup_timer (&x, a, (unsigned long)b);
> 
> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
> ---
> v1: Here, this patch has two line over 80 characters as
>     limiting them to 80 characters does not make code look
>     good and readable.
> 
>  drivers/staging/rtl8188eu/core/rtw_led.c          |  3 ++-
>  drivers/staging/rtl8188eu/core/rtw_pwrctrl.c      |  2 +-
>  drivers/staging/rtl8188eu/core/rtw_recv.c         |  2 +-
>  drivers/staging/rtl8188eu/include/osdep_service.h |  9 ---------
>  drivers/staging/rtl8188eu/os_dep/mlme_linux.c     | 18 ++++++++++++------
>  drivers/staging/rtl8188eu/os_dep/recv_linux.c     |  4 +++-
>  6 files changed, 19 insertions(+), 19 deletions(-)

Due to other changes in my tree, this patch no longer applies.  Can you
please redo it against my staging-testing branch of staging.git and
resend?

thanks,

greg k-h

