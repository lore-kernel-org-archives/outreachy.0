X-GM-THRID: 6257451974694797312
X-Received: by 10.112.209.6 with SMTP id mi6mr724285lbc.15.1457217839562;
        Sat, 05 Mar 2016 14:43:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.150.129 with SMTP id y123ls202182lfd.38.gmail; Sat, 05 Mar
 2016 14:43:58 -0800 (PST)
X-Received: by 10.112.149.200 with SMTP id uc8mr734008lbb.6.1457217838971;
        Sat, 05 Mar 2016 14:43:58 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 185si162944wml.0.2016.03.05.14.43.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 14:43:58 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9C04BDD1;
	Sat,  5 Mar 2016 22:43:57 +0000 (UTC)
Date: Sat, 5 Mar 2016 14:43:57 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Eva Rachel Retuya <eraretuya@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: gdm72xx: drop wrapper
 function 'netlink_exit'
Message-ID: <20160305224357.GA12917@kroah.com>
References: <1456926561-29543-1-git-send-email-eraretuya@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1456926561-29543-1-git-send-email-eraretuya@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Mar 02, 2016 at 09:49:21PM +0800, Eva Rachel Retuya wrote:
> Remove 'netlink_exit' and place a direct call to
> 'netlink_kernel_release' since this is used only once. Coccinelle
> semantic patch used to apply the change:
> 
> @remove_prototype@
> @@
> -void netlink_exit(...);
> 
> @remove_def@
> @@
> 
> -void netlink_exit(...)
> -{
> - 	netlink_kernel_release(...);
> -}
> 
> @remove_call@
> expression arg;
> @@
> 
> -netlink_exit(
> +netlink_kernel_release(
> 			arg);
> 
> Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
> ---
>  drivers/staging/gdm72xx/gdm_wimax.c | 2 +-
>  drivers/staging/gdm72xx/netlink_k.c | 5 -----
>  drivers/staging/gdm72xx/netlink_k.h | 1 -
>  3 files changed, 1 insertion(+), 7 deletions(-)

Doesn't apply to my tree :(



