X-GM-THRID: 6330985798002802688
X-Received: by 10.107.136.144 with SMTP id s16mr632699ioi.67.1474147813899;
        Sat, 17 Sep 2016 14:30:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.153.9 with SMTP id b9ls2301021ioe.23.gmail; Sat, 17 Sep
 2016 14:30:13 -0700 (PDT)
X-Received: by 10.67.12.205 with SMTP id es13mr12353776pad.45.1474147813490;
        Sat, 17 Sep 2016 14:30:13 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si3769765pfw.1.2016.09.17.14.30.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 14:30:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id CBA1D8D7;
	Sat, 17 Sep 2016 21:30:12 +0000 (UTC)
Date: Sat, 17 Sep 2016 23:30:18 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Sandhya Bankar <bankarsandhya512@gmail.com>
Cc: outreachy-kernel@googlegroups.com, wsa@the-dreams.de,
	elfring@users.sourceforge.net, sudipm.mukherjee@gmail.com
Subject: Re: [PATCH] Staging: ks7010: Drop memory allocation cast.
Message-ID: <20160917213018.GA16657@kroah.com>
References: <20160916173854.GA3176@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160916173854.GA3176@sandhya>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Fri, Sep 16, 2016 at 11:08:54PM +0530, Sandhya Bankar wrote:
> Drop cast on the result of kzalloc.
> 
> The semantic patch that makes this change is as follows:
> 
> @@
> type T;
> @@
> 
> - (T *)
>   (\(kmalloc\|kzalloc\|kcalloc\|kmem_cache_alloc\|kmem_cache_zalloc\|
>    kmem_cache_alloc_node\|kmalloc_node\|kzalloc_node\)(...))
> 
> 
> Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> ---
>  drivers/staging/ks7010/ks7010_sdio.c |    3 +--
>  1 files changed, 1 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
> index f9aec4f..c40e6c5 100755

All of your patches have the file permissions issue, please fix it up
and resend all of them, I've had to drop all of your pending patches
from my to-apply queue because of this.

thanks,

greg k-h

