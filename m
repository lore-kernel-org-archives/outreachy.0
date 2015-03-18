X-GM-THRID: 8658120343552
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2a5fd0519661ea9d
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.70.234 with SMTP id p70mr73741208yhd.56.1426673988778;
        Wed, 18 Mar 2015 03:19:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.162 with SMTP id o34ls456126ioi.64.gmail; Wed, 18 Mar
 2015 03:19:48 -0700 (PDT)
X-Received: by 10.50.117.8 with SMTP id ka8mr3926593igb.6.1426673988550;
        Wed, 18 Mar 2015 03:19:48 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gu4si3038993pac.1.2015.03.18.03.19.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 03:19:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 89A81A80;
	Wed, 18 Mar 2015 10:19:47 +0000 (UTC)
Date: Wed, 18 Mar 2015 11:19:45 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Darshana Padmadas <darshanapadmadas@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/5] Replace memcpy with
 ether_addr_copy and fix checkpatch warning
Message-ID: <20150318101945.GB5422@kroah.com>
References: <cover.1426533157.git.darshanapadmadas@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426533157.git.darshanapadmadas@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 17, 2015 at 12:48:10AM +0530, Darshana Padmadas wrote:
> This patch set replaces memcpy with ether_addr_copy if the 
> addresses of the structures are aligned. Structure layout is 
> shown by using the Pahole tool.
> 
> This patch set fixes the following warning reported by checkpatch:
> WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are __aligned(2)
> 
> Darshana Padmadas (5):
>   Staging: rtl8192e: Replace memcpy with ether_addr_copy
>   Staging: rtl8192e: Use ether_addr_copy instead of memcpy
>   Staging: rtl8192e: Use ether_addr_copy replacing memcpy
>   Staging: rtl8192e: Use ether_addr_copy for aligned addresses
>   Staging: rtl8192e: replace memcpy with ether_addr_copy for aligned
>     structures
> 
>  drivers/staging/rtl8192e/rtl819x_BAProc.c    |  4 ++--
>  drivers/staging/rtl8192e/rtllib_crypt_tkip.c | 10 ++++----
>  drivers/staging/rtl8192e/rtllib_rx.c         | 34 ++++++++++++++--------------
>  drivers/staging/rtl8192e/rtllib_softmac.c    | 12 +++++-----
>  drivers/staging/rtl8192e/rtllib_tx.c         |  6 ++---
>  5 files changed, 33 insertions(+), 33 deletions(-)

You did not test build these patches, they break the build horribly :(

ALWAYS test-build your patches before sending them out, it's rude to
have to have other people find problems with them.

thanks,

greg k-h

