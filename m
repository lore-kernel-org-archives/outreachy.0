X-GM-THRID: 3091917176832
X-Received: by 10.194.161.194 with SMTP id xu2mr1642187wjb.1.1424727016120;
        Mon, 23 Feb 2015 13:30:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.104.5 with SMTP id ga5ls618744wib.10.gmail; Mon, 23 Feb
 2015 13:30:15 -0800 (PST)
X-Received: by 10.180.160.176 with SMTP id xl16mr729424wib.6.1424727015833;
        Mon, 23 Feb 2015 13:30:15 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cl5si780903wib.3.2015.02.23.13.30.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 13:30:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,633,1418079600"; 
   d="scan'208";a="101063162"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2015 22:30:15 +0100
Date: Mon, 23 Feb 2015 22:30:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: bcm: Fix line over 80
 characters
In-Reply-To: <1424726514-4921-1-git-send-email-yeliztaneroglu@gmail.com>
Message-ID: <alpine.DEB.2.02.1502232229080.2047@localhost6.localdomain6>
References: <1424726514-4921-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 23 Feb 2015, Yeliz Taneroglu wrote:

> Fix checkpatch.pl issues with line over
> 80 characters in InterfaceIdleMode.c
> 
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/bcm/InterfaceIdleMode.c | 3 ++-

This driver was removed on October 15, 2014:

commit d09e9b160fc18116942101743693f5535bc5136a
Author: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Date:   Wed Oct 15 15:53:27 2014 -0700

    staging: bcm: remove driver

Please update your kernel.  All of your effort on making patches is going 
to waste because your code base is out of date.

julia





>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/bcm/InterfaceIdleMode.c b/drivers/staging/bcm/InterfaceIdleMode.c
> index 612c89f..448b632 100644
> --- a/drivers/staging/bcm/InterfaceIdleMode.c
> +++ b/drivers/staging/bcm/InterfaceIdleMode.c
> @@ -211,7 +211,8 @@ static int InterfaceAbortIdlemode(struct bcm_mini_adapter *Adapter,
>  		else
>  			BCM_DEBUG_PRINT(Adapter, DBG_TYPE_OTHERS,
>  				IDLE_MODE, DBG_LVL_ALL,
> -				"Number of completed iteration to read chip-id :%lu", itr);
> +				"Number of completed iteration to read chip-id :%lu",
> +			       itr);
>  
>  		status = wrmalt(Adapter, SW_ABORT_IDLEMODE_LOC,
>  				&Pattern, sizeof(status));
> -- 
> 1.8.3.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424726514-4921-1-git-send-email-yeliztaneroglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

