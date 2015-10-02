X-GM-THRID: 6200896862154653696
X-Received: by 10.66.124.131 with SMTP id mi3mr12814683pab.32.1443784791195;
        Fri, 02 Oct 2015 04:19:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.4.39 with SMTP id h7ls480068igh.14.gmail; Fri, 02 Oct 2015
 04:19:50 -0700 (PDT)
X-Received: by 10.107.30.76 with SMTP id e73mr13449777ioe.16.1443784790594;
        Fri, 02 Oct 2015 04:19:50 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a11si636327igv.3.2015.10.02.04.19.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Oct 2015 04:19:50 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,622,1437429600"; 
   d="scan'208";a="180660125"
Received: from unknown (HELO hadrien.local) ([89.202.203.52])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Oct 2015 13:19:48 +0200
Date: Fri, 2 Oct 2015 13:19:48 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shivani Bhardwaj <shivanib134@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: board: Fixed the error
 for implicit declaration of function
In-Reply-To: <b520f0bf-34b7-41a1-948f-7ca510325cfd@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1510021318460.2515@hadrien>
References: <20151002040637.GA41415@ubuntu> <b520f0bf-34b7-41a1-948f-7ca510325cfd@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-709415649-1443784788=:2515"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-709415649-1443784788=:2515
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 2 Oct 2015, Shivani Bhardwaj wrote:

> Hi Julia! I have a doubt. I think I'm having trouble with the header file
> because it declares the function prototype with an extern keyword (I'm not
> sure if memory allocation plays a role in this). And, if the function has
> been declared in some header file then re-declaration of it won't be a good
> practice, I suppose. Please tell me whether extern has to do anything with
> it or not. This is the header file
> http://lxr.free-electrons.com/source/include/linux/of.h#L189.

Why did you suggest to add an include of prom.h rather than of of.h?

You shouldn't declare such a generic function in the specific driver.

julia

> Thank you.
>
> On Friday, October 2, 2015 at 9:36:47 AM UTC+5:30, Shivani Bhardwaj wrote:
>       Fixed the error for implicit declaration of the function
>       'of_find_all_nodes' by adding the appropriate header file and
>       declaring
>       the function before it has been called.
>
>       Signed-off-by: Shivani Bhardwaj: <shivanib134@gmail.com>
>       ---
>        drivers/staging/board/board.c | 2 ++
>        1 file changed, 2 insertions(+)
>
>       diff --git a/drivers/staging/board/board.c
>       b/drivers/staging/board/board.c
>       index 29d456e..8d0ac82 100644
>       --- a/drivers/staging/board/board.c
>       +++ b/drivers/staging/board/board.c
>       @@ -19,11 +19,13 @@
>        #include <linux/of_irq.h>
>        #include <linux/platform_device.h>
>        #include <linux/pm_domain.h>
>       +#include <asm/prom.h>
>        
>        #include "board.h"
>        
>        static struct device_node *irqc_node __initdata;
>        static unsigned int irqc_base __initdata;
>       +struct device_node *of_find_all_nodes(struct device_node
>       *prev);
>        
>        static bool find_by_address(u64 base_address)
>        {
>       --
>       2.1.0
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/b520f0bf-34b7-41a1-948f-
> 7ca510325cfd%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-709415649-1443784788=:2515--

