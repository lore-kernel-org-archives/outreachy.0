X-GM-THRID: 8800398475264
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1ad4f5129e9b727
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.3.106 with SMTP id 70mr74942221yhg.20.1426673981894;
        Wed, 18 Mar 2015 03:19:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.72 with SMTP id j69ls390662iod.67.gmail; Wed, 18 Mar
 2015 03:19:41 -0700 (PDT)
X-Received: by 10.66.236.74 with SMTP id us10mr52389443pac.28.1426673981697;
        Wed, 18 Mar 2015 03:19:41 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id l3si3045688pdo.0.2015.03.18.03.19.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 03:19:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AB7DFA80;
	Wed, 18 Mar 2015 10:19:40 +0000 (UTC)
Date: Wed, 18 Mar 2015 11:19:38 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: p80211conv: Replace
 memcpy with ether_addr_copy
Message-ID: <20150318101938.GA5422@kroah.com>
References: <1426633858-22689-1-git-send-email-ciorneiioana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1426633858-22689-1-git-send-email-ciorneiioana@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 18, 2015 at 01:10:58AM +0200, Ioana Ciornei wrote:
> Replace memcpy() with ether_addr_copy() since addresses are __aligned(2).
> The 2 structures are aligned to u16:
> 
> struct p80211_hdr_a3 {
> 	__le16 fc;		/* 0	2 */
> 	u16 dur;		/* 2	2 */
> 	u8 a1[ETH_ALEN];	/* 4	6 */	
> 	u8 a2[ETH_ALEN];	/* 10	6 */
> 	u8 a3[ETH_ALEN];	/* 16	6 */
> 	u16 seq;		/* 22	2 */
> } __packed;
> 
> Total size: 24
> 
> struct wlan_ethhdr {
> 	u8 daddr[WLAN_ETHADDR_LEN];	/* 0	6 */
> 	u8 saddr[WLAN_ETHADDR_LEN];	/* 6	6 */
> 	u16 type;			/* 12	2 */
> } __packed;
> 
> Total size: 14
> 
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> ---
> 
> Changes in v2:
> 	- added explanations on why the addresses are aligned
> 
>  drivers/staging/wlan-ng/p80211conv.c | 21 +++++++++++----------
>  1 file changed, 11 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
> index bd69e8c..a51fbfe 100644
> --- a/drivers/staging/wlan-ng/p80211conv.c
> +++ b/drivers/staging/wlan-ng/p80211conv.c
> @@ -62,6 +62,7 @@
>  #include <linux/etherdevice.h>
>  #include <linux/if_ether.h>
>  #include <linux/byteorder/generic.h>
> 
>  #include <asm/byteorder.h>
>  
> @@ -178,21 +179,21 @@ int skb_ether_to_p80211(wlandevice_t *wlandev, u32 ethconv,

This patch is corrupted, it looks like you edited it by hand, which is
fine if you know the format, but when you don't, it breaks the tool and
can not be applied.

Look at that hunk above, it doesn't do anything, which is a hint that
something bad went wrong :(

Please fix up and resend.

thanks,

greg k-h

