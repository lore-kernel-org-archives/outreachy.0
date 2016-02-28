X-GM-THRID: 6256394426333003776
X-Received: by 10.112.200.68 with SMTP id jq4mr1110521lbc.3.1456680843569;
        Sun, 28 Feb 2016 09:34:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.213.83 with SMTP id m80ls213360wmg.47.gmail; Sun, 28 Feb
 2016 09:34:03 -0800 (PST)
X-Received: by 10.28.128.204 with SMTP id b195mr679250wmd.7.1456680842985;
        Sun, 28 Feb 2016 09:34:02 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h73si351617wme.0.2016.02.28.09.34.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 09:34:02 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,516,1449529200"; 
   d="scan'208";a="166245485"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2016 18:34:02 +0100
Date: Sun, 28 Feb 2016 18:34:01 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: Remove print
 statements and debug messages
In-Reply-To: <1456680329-31568-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.02.1602281830531.2147@localhost6.localdomain6>
References: <1456680329-31568-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 28 Feb 2016, Bhumika Goyal wrote:

> The  memory allocation functions generates a call stack containing
> all the context information on failure, so print statements and debug
> messages can be removed on failure of these functions. Also remove
> unwanted {} around if block after removal of these messages.
> Done using coccinelle:
> 
> @@
> expression e;
> @@
> 
> e=\(kmalloc\|kmalloc\|kmalloc_array\|alloc_netdev\|kzalloc\|
>    devm_kzalloc\|devm_ioremap\)(...);
> ...

The semantic patch would be a little nicer with

... when != e = e1

here, to indicate that e has not been redefined.  Otherwise, if there is 
actually no null test for this specific call, and the variable is defined 
later, you could end up removing a debug message for something else.

> if(!e){
> - \(DBG_8723A\|printk\|pr_err\|CERROR\|DBG_88E\)(...);
> ...when any
> }

This is a bit restrictive in that it requires the debug message to come 
first.  It could be reasonable to put a ... before the print statement.  
If you put ... without any when annotation, it will ensure that there is 
no earlier print statement, and you will be dropping the first one, which 
is probably what you want.

julia

> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/rtl8723au/hal/usb_ops_linux.c     | 6 +-----
>  drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c | 3 ---
>  2 files changed, 1 insertion(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723au/hal/usb_ops_linux.c b/drivers/staging/rtl8723au/hal/usb_ops_linux.c
> index 371e6b3..5c81ff4 100644
> --- a/drivers/staging/rtl8723au/hal/usb_ops_linux.c
> +++ b/drivers/staging/rtl8723au/hal/usb_ops_linux.c
> @@ -256,12 +256,8 @@ static void usb_read_interrupt_complete(struct urb *purb)
>  				c2w = kmalloc(sizeof(struct evt_work),
>  						GFP_ATOMIC);
>  
> -				if (!c2w) {
> -					printk(KERN_WARNING "%s: unable to "
> -					       "allocate work buffer\n",
> -					       __func__);
> +				if (!c2w)
>  					goto urb_submit;
> -				}
>  
>  				c2w->adapter = padapter;
>  				INIT_WORK(&c2w->work, rtw_evt_work);
> diff --git a/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
> index cf0daa1..722d5f5 100644
> --- a/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
> +++ b/drivers/staging/rtl8723au/os_dep/ioctl_cfg80211.c
> @@ -2608,8 +2608,6 @@ static int rtw_cfg80211_add_monitor_if(struct rtw_adapter *padapter, char *name,
>  	/*  wdev */
>  	mon_wdev = kzalloc(sizeof(struct wireless_dev), GFP_KERNEL);
>  	if (!mon_wdev) {
> -		DBG_8723A("%s(%s): allocate mon_wdev fail\n", __func__,
> -			  padapter->pnetdev->name);
>  		ret = -ENOMEM;
>  		goto out;
>  	}
> @@ -3260,7 +3258,6 @@ int rtw_wdev_alloc(struct rtw_adapter *padapter, struct device *dev)
>  	/*  wdev */
>  	wdev = kzalloc(sizeof(struct wireless_dev), GFP_KERNEL);
>  	if (!wdev) {
> -		DBG_8723A("Couldn't allocate wireless device\n");
>  		ret = -ENOMEM;
>  		goto free_wiphy;
>  	}
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1456680329-31568-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

