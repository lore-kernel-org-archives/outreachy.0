X-GM-THRID: 9347595763712
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1564ac45bb5dd367
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.181.12.74 with SMTP id eo10mr337439wid.2.1426928308995;
        Sat, 21 Mar 2015 01:58:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.104.227 with SMTP id gh3ls494665wib.19.canary; Sat, 21 Mar
 2015 01:58:28 -0700 (PDT)
X-Received: by 10.180.81.134 with SMTP id a6mr335821wiy.1.1426928308631;
        Sat, 21 Mar 2015 01:58:28 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id na10si59569wic.0.2015.03.21.01.58.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 01:58:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,441,1422918000"; 
   d="scan'208";a="104208543"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 21 Mar 2015 09:58:27 +0100
Date: Sat, 21 Mar 2015 09:58:27 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/3] Staging: wlan-ng: Remove struct
 typedefs.
In-Reply-To: <cover.1426920752.git.vatikaharlalka@gmail.com>
Message-ID: <alpine.DEB.2.02.1503210958010.2010@localhost6.localdomain6>
References: <cover.1426920752.git.vatikaharlalka@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 21 Mar 2015, Vatika Harlalka wrote:

> Remove struct typedefs and rename structs accordingly
> as per kernel code conventions.

It's nice to get rid of these typedefs.  Did you do it all by hand?

julia


> 
> Vatika Harlalka (3):
>   Staging: wlan-ng: Remove typedef prism2sta_authlist_t
>   Staging: wlan-ng: Remove typedef prism2sta_accesslist_t
>   Staging: wlan-ng: Remove typedef hfa384x_t
> 
>  drivers/staging/wlan-ng/hfa384x.h     |  80 +++++++--------
>  drivers/staging/wlan-ng/hfa384x_usb.c | 178 +++++++++++++++++-----------------
>  drivers/staging/wlan-ng/prism2mgmt.c  |  20 ++--
>  drivers/staging/wlan-ng/prism2mgmt.h  |   4 +-
>  drivers/staging/wlan-ng/prism2mib.c   |  36 +++----
>  drivers/staging/wlan-ng/prism2sta.c   |  40 ++++----
>  drivers/staging/wlan-ng/prism2usb.c   |   8 +-
>  7 files changed, 183 insertions(+), 183 deletions(-)
> 
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1426920752.git.vatikaharlalka%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

