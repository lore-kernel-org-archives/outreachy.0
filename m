X-GM-THRID: 6336898988213534720
X-Received: by 10.176.84.7 with SMTP id n7mr4568996uaa.31.1475424677384;
        Sun, 02 Oct 2016 09:11:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.140.150 with SMTP id o144ls3368917iod.48.gmail; Sun, 02
 Oct 2016 09:11:15 -0700 (PDT)
X-Received: by 10.107.32.72 with SMTP id g69mr3733433iog.89.1475424675820;
        Sun, 02 Oct 2016 09:11:15 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id o72si2709557vkc.0.2016.10.02.09.11.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Oct 2016 09:11:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.214.2.210])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 9789C8DC;
	Sun,  2 Oct 2016 16:11:14 +0000 (UTC)
Date: Sun, 2 Oct 2016 18:11:20 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Anchal Jain <anchalj109@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: rtl8188eu: core: rtw_ap: Replace memcmp()
 with ether_addr_equal()
Message-ID: <20161002161120.GC22039@kroah.com>
References: <20161002160401.GA4550@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161002160401.GA4550@life-desktop>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Sun, Oct 02, 2016 at 09:34:17PM +0530, Anchal Jain wrote:
> When comparing MAC addresses, use ether_addr_equal instead of memcmp to
> ETH_ALEN length.
> 
> Signed-off-by: Anchal Jain <anchalj109@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_ap.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
> index fbe9941..6a3dc5e 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
> @@ -1163,7 +1163,7 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
>  		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
>  		plist = plist->next;
>  
> -		if (!memcmp(paclnode->addr, addr, ETH_ALEN)) {
> +		if (!ether_addr_equal(paclnode->addr, addr)) {
>  			if (paclnode->valid) {
>  				added = true;
>  				DBG_88E("%s, sta has been added\n", __func__);
> @@ -1223,7 +1223,7 @@ int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
>  		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
>  		plist = plist->next;
>  
> -		if (!memcmp(paclnode->addr, addr, ETH_ALEN)) {
> +		if (!ether_addr_equal(paclnode->addr, addr, ETH_ALEN)) {
>  			if (paclnode->valid) {
>  				paclnode->valid = false;
>  
> -- 
> 1.9.1

I don't see a change here that will fix the build warnings, what did you
do differently from version 1?

Always put that information in the patch, below the --- line, as it is
described in Documentation/SubmittingPatches

thanks,

greg k-h

