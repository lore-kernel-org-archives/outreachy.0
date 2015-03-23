X-GM-THRID: 9691594752000
X-Received: by 10.50.30.106 with SMTP id r10mr15851359igh.0.1427152973727;
        Mon, 23 Mar 2015 16:22:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.167.210 with SMTP id q201ls1913995ioe.98.gmail; Mon, 23
 Mar 2015 16:22:53 -0700 (PDT)
X-Received: by 10.66.136.175 with SMTP id qb15mr1905945pab.11.1427152973562;
        Mon, 23 Mar 2015 16:22:53 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id iw3si277985pbd.1.2015.03.23.16.22.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2015 16:22:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 46D2B982;
	Mon, 23 Mar 2015 23:22:51 +0000 (UTC)
Date: Mon, 23 Mar 2015 22:43:02 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Marianne Moeller Knudsen <marianne@masu.dk>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: Replace printk
 with netdev_info
Message-ID: <20150323214302.GA24016@kroah.com>
References: <20150323180424.GA2636@debianvm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150323180424.GA2636@debianvm>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Mon, Mar 23, 2015 at 07:04:24PM +0100, Marianne Moeller Knudsen wrote:
> Replace printk(KERN_INFO...) by netdev_info for more uniform error
> reporting. Issue found by checkpatch.
> 
> Signed-off-by: Marianne Moeller Knudsen <marianne@masu.dk>
> ---
>  drivers/staging/rtl8192e/rtl819x_TSProc.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
> index c51f7e0..949cba4 100644
> --- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
> +++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
> @@ -479,7 +479,7 @@ void RemovePeerTS(struct rtllib_device *ieee, u8 *Addr)
>  
>  	list_for_each_entry_safe(pTS, pTmpTS, &ieee->Tx_TS_Admit_List, List) {
>  		if (memcmp(pTS->Addr, Addr, 6) == 0) {
> -			printk(KERN_INFO "====>remove Tx_TS_admin_list\n");
> +			netdev_info(ieee->dev, "====>remove Tx_TS_admin_list\n");
>  			RemoveTsEntry(ieee, pTS, TX_DIR);
>  			list_del_init(&pTS->List);
>  			list_add_tail(&pTS->List, &ieee->Tx_TS_Unused_List);

Someone already sent this patch before you did :(

