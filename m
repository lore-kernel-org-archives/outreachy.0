X-GM-THRID: 6865699209216
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1f5d1c1fbc348787
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.142.69 with SMTP id r5mr58887327icu.3.1426517274834;
        Mon, 16 Mar 2015 07:47:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.231 with SMTP id v94ls2794502qgd.78.gmail; Mon, 16 Mar
 2015 07:47:54 -0700 (PDT)
X-Received: by 10.236.50.227 with SMTP id z63mr66739850yhb.4.1426517274662;
        Mon, 16 Mar 2015 07:47:54 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ni4si1940526pdb.2.2015.03.16.07.47.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 07:47:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (samsung-greg.wifi.rsr.lip6.fr [132.227.77.84])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AD80AA78;
	Mon, 16 Mar 2015 14:47:53 +0000 (UTC)
Date: Mon, 16 Mar 2015 15:47:06 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vaishali Thakkar <vthakkar1994@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [RESEND PATCH 0/2] Staging: rtl8712: Use
 del_timer_sync
Message-ID: <20150316144706.GA24906@kroah.com>
References: <cover.1426054595.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426054595.git.vthakkar1994@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 11, 2015 at 11:50:39AM +0530, Vaishali Thakkar wrote:
> This patch-set introduces the use of timer API function
> del_timer_sync instead of driver specific functions
> _cancel_timer_ex and _cancel_timer. Though definition
> of these functions were returning del_timer, here
> del_timer_sync is a preferred solution as besides
> deactivating a timer, it also ensures that the timer is
> stopped on all CPUs before the driver exists.
> 
> All of these changes are done using Coccinelle.
> 
> Vaishali Thakkar (2):
>   Staging: rtl8712: Eliminate _cancel_timer_ex
>   Staging: rtl8712: Eliminate use of _cancel_timer
> 
>  drivers/staging/rtl8712/os_intfs.c        |  14 +--
>  drivers/staging/rtl8712/osdep_service.h   |  11 ---
>  drivers/staging/rtl8712/rtl8712_led.c     | 146 +++++++++++++++---------------
>  drivers/staging/rtl8712/rtl871x_cmd.c     |   3 +-
>  drivers/staging/rtl8712/rtl871x_mlme.c    |  10 +-
>  drivers/staging/rtl8712/rtl871x_pwrctrl.c |   2 +-
>  drivers/staging/rtl8712/rtl871x_sta_mgt.c |   2 +-
>  drivers/staging/rtl8712/rtl871x_xmit.c    |   5 +-
>  8 files changed, 88 insertions(+), 105 deletions(-)

Why is this a "resend"?  did I miss the first version?

