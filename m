X-GM-THRID: 9490543935488
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8bbd6d04c601b280
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.44.161 with SMTP id f1mr2010355obm.33.1427152923216;
        Mon, 23 Mar 2015 16:22:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.45.162 with SMTP id o2ls804516obm.0.gmail; Mon, 23 Mar
 2015 16:22:03 -0700 (PDT)
X-Received: by 10.182.129.166 with SMTP id nx6mr1809301obb.35.1427152923022;
        Mon, 23 Mar 2015 16:22:03 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id iw3si277822pbd.1.2015.03.23.16.22.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2015 16:22:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E03F3A79;
	Mon, 23 Mar 2015 23:22:01 +0000 (UTC)
Date: Mon, 23 Mar 2015 22:37:23 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 08/10] Staging: rtl8712: Fix incorrect
 assignment type in rtl8712_xmit.c
Message-ID: <20150323213723.GA935@kroah.com>
References: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com>
 <68911b4fb09acb91c39291e2596ce73cc3e8e2f2.1426983594.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <68911b4fb09acb91c39291e2596ce73cc3e8e2f2.1426983594.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 22, 2015 at 06:22:27AM +0530, Vatika Harlalka wrote:
> This patch is to fix Sparse warnings due to incorrect assignment
> type in rtl8712_xmit.c
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl8712_xmit.c | 26 +++++++++++++-------------
>  1 file changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
> index 732e774..c0c86ef 100644
> --- a/drivers/staging/rtl8712/rtl8712_xmit.c
> +++ b/drivers/staging/rtl8712/rtl8712_xmit.c
> @@ -550,22 +550,22 @@ static void update_txdesc(struct xmit_frame *pxmitframe, uint *pmem, int sz)
>  			 * This will maybe make the handshake smooth.
>  			 */
>  			/*driver uses data rate*/
> -			ptxdesc->txdw4 = cpu_to_le32(0x80000000);
> -			ptxdesc->txdw5 = cpu_to_le32(0x001f8000);/*1M*/
> +			ptxdesc->txdw4 = 0x80000000;
> +			ptxdesc->txdw5 = 0x001f8000;/*1M*/

Eeek, this just broke the driver!

