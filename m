X-GM-THRID: 195205005312
X-Received: by 10.66.119.174 with SMTP id kv14mr9489295pab.21.1424975307974;
        Thu, 26 Feb 2015 10:28:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.227 with SMTP id b90ls254424qge.49.gmail; Thu, 26 Feb
 2015 10:28:27 -0800 (PST)
X-Received: by 10.236.1.200 with SMTP id 48mr8965691yhd.41.1424975307708;
        Thu, 26 Feb 2015 10:28:27 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si215838pdb.1.2015.02.26.10.28.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 10:28:27 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 5C924B8A;
	Thu, 26 Feb 2015 18:28:27 +0000 (UTC)
Date: Thu, 26 Feb 2015 10:28:27 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: replace memcpy by
 ether_addr_copy
Message-ID: <20150226182827.GA1267@kroah.com>
References: <20150217200055.GA11277@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150217200055.GA11277@localhost.localdomain>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Feb 17, 2015 at 10:00:55PM +0200, Aya Mahfouz wrote:
> This patch fixes the following checkpatch.pl warning:
> 
> Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are
> __aligned(2)
> 
> The changes were applied using the following coccinelle
> rule: 
> @@ expression e1, e2; @@
> - memcpy(e1, e2, ETH_ALEN);
> + ether_addr_copy(e1, e2); 
> 
> All variables defined in vnt_mac_set_key start at even offsets
> making the variables aligned to the u16 datatype.
> 
> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> ---
>  drivers/staging/vt6656/mac.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6656/mac.c b/drivers/staging/vt6656/mac.c
> index bb37e33..5958ecf 100644
> --- a/drivers/staging/vt6656/mac.c
> +++ b/drivers/staging/vt6656/mac.c
> @@ -126,7 +126,7 @@ void vnt_mac_set_keyentry(struct vnt_private *priv, u16 key_ctl, u32 entry_idx,
>  	offset += (entry_idx * MISCFIFO_KEYENTRYSIZE);
>  
>  	set_key.u.write.key_ctl = cpu_to_le16(key_ctl);
> -	memcpy(set_key.u.write.addr, addr, ETH_ALEN);
> +	ether_addr_copy(set_key.u.write.addr, addr);
>  
>  	/* swap over swap[0] and swap[1] to get correct write order */
>  	swap(set_key.u.swap[0], set_key.u.swap[1]);

This patch breaks the build, please _always_ test build your patches :(

thanks,

greg k-h

