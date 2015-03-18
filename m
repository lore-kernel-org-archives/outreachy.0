X-GM-THRID: 8809633284096
X-Received: by 10.67.29.201 with SMTP id jy9mr68719067pad.9.1426671814276;
        Wed, 18 Mar 2015 02:43:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.33 with SMTP id c33ls413913iod.44.gmail; Wed, 18 Mar
 2015 02:43:34 -0700 (PDT)
X-Received: by 10.70.124.135 with SMTP id mi7mr54388953pdb.8.1426671814013;
        Wed, 18 Mar 2015 02:43:34 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id gb13si3003971pac.2.2015.03.18.02.43.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 02:43:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id F2737A80;
	Wed, 18 Mar 2015 09:43:32 +0000 (UTC)
Date: Wed, 18 Mar 2015 10:43:30 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: prism2sta: Replace memcpy
 with ether_add_copy
Message-ID: <20150318094330.GA30348@kroah.com>
References: <1426599089-26954-1-git-send-email-ciorneiioana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1426599089-26954-1-git-send-email-ciorneiioana@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 17, 2015 at 03:31:29PM +0200, Ioana Ciornei wrote:
> Replace memcpy() with ether_addr_copy() when using __aligned(2) Ethernet
> addresses.
> Changes done using the following coccinelle script:
> 
> @@
> expression e1, e2;
> @@
> 
> - memcpy(e1, e2, ETH_ALEN);
> + ether_addr_copy(e1, e2); 
> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
>  drivers/staging/wlan-ng/prism2sta.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

You need to "prove" that this type of change is acceptable before I can
take it, sorry.

thanks,

greg k-h

