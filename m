X-GM-THRID: 8809633284096
X-Received: by 10.236.220.74 with SMTP id n70mr76467037yhp.40.1426674031240;
        Wed, 18 Mar 2015 03:20:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.98.138 with SMTP id ei10ls254039obb.12.gmail; Wed, 18 Mar
 2015 03:20:31 -0700 (PDT)
X-Received: by 10.182.47.228 with SMTP id g4mr77062555obn.5.1426674031056;
        Wed, 18 Mar 2015 03:20:31 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si3047545pac.0.2015.03.18.03.20.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 03:20:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 0BE92AAD;
	Wed, 18 Mar 2015 10:20:29 +0000 (UTC)
Date: Wed, 18 Mar 2015 11:20:27 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: prism2sta: Replace memcpy
 with ether_add_copy
Message-ID: <20150318102027.GA7734@kroah.com>
References: <1426634944-24980-1-git-send-email-ciorneiioana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1426634944-24980-1-git-send-email-ciorneiioana@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 18, 2015 at 01:29:04AM +0200, Ioana Ciornei wrote:
> Replace memcpy() with ether_addr_copy() since addresses are __aligned(2).
> The 2 structures are aligned to u16:
> 
> typedef struct hfa384x_authenticateStation_data {
> 	u8 address[ETH_ALEN];				/* 0	6 */
> 	u16 status;					/* 6	2 */
> 	u16 algorithm;					/* 8	2 */
> } __packed hfa384x_authenticateStation_data_t;
> 
> Total size: 10
> 
> typedef struct hfa384x_AuthRequest {
> 	u8 sta_addr[ETH_ALEN];				/* 0	6 */
> 	u16 algorithm;					/* 6	2 */
> } __packed hfa384x_AuthReq_t;
> Total size: 8
> 
> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
> 
> Changes in v2:
> 	- added 'linux/etherdevice.h'
> 	- add explanations on why the addresses are u16 aligned
> 
>  drivers/staging/wlan-ng/prism2sta.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
> index 854571f..1eb2e58 100644
> --- a/drivers/staging/wlan-ng/prism2sta.c
> +++ b/drivers/staging/wlan-ng/prism2sta.c
> @@ -59,6 +59,8 @@
>  #include <linux/netdevice.h>
>  #include <linux/workqueue.h>
>  #include <linux/byteorder/generic.h>
> +#include <linux/etherdevice.h>
> +
>  

Why include yet another blank line here?

Please don't.

