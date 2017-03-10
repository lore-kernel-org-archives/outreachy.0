X-GM-THRID: 6395915539952173056
X-Received: by 10.129.106.70 with SMTP id f67mr8879744ywc.108.1489173063611;
        Fri, 10 Mar 2017 11:11:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.95.9 with SMTP id r9ls106072itb.14.gmail; Fri, 10 Mar 2017
 11:11:02 -0800 (PST)
X-Received: by 10.99.100.129 with SMTP id y123mr2710384pgb.101.1489173062744;
        Fri, 10 Mar 2017 11:11:02 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id g82si1911224pfb.5.2017.03.10.11.11.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 11:11:02 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 67so11727886pfg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 11:11:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4AWjoXiDuIMn1anZLbGPXhKAY3xYmb7Xm2kPdSjpJD4=;
        b=kwsiSvC/xn7M23YG/M5tEPxpDM7UHHC9vGFr6ZWECHm3hToTx8euZ6Go1HfkVltpp1
         V6uTMTw6YOqAK0TqYZ+eQKj9kvBO1y7d0w6JLEkCiFFAKqWlpUzPu+6JCs6+NJ9koRrc
         iJoKV6ZhkINCSPnLgWPYB7Y2nw9fMlY4MbpaJOMvP4CCipmES+4DrsOnqDRghoiWHe2j
         JRhHse2UoEQ6hIKqwS/WEvH4G91LCEPlVAXKcdlQv/0QeS39uEK2ciAWgNT4L0QHmpn2
         b1+vm0k6DiRf+O6eVxRLiVkBVAr5WyBTpAJ8ZQHKZnXFgGMs1SWPZkioLFQeVbl+EwLB
         sSeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4AWjoXiDuIMn1anZLbGPXhKAY3xYmb7Xm2kPdSjpJD4=;
        b=i30VAzhJ138i/Clx4wzwAUAu7VkpRFVW1m+qcrO1aolAPnzSDqxa3FIW0QupMxo15U
         bjwkcshFO7MzieSZ2e/FllQ2wXqP/2TMI4i+hCR3h1Uhu2oQv841yX3h1p8vozi7T+OB
         fTD5zkJ+ZXbhUxrfrDVyYj8uQLUfvWkM4dE0QsQpegfgyDAKlv362BtfdKr9wM3r0ZF4
         dGRQAmB6q6Kg0+bm/qPQ5vPRwEyXfkVmk9cEmMTfo8jCX38WIpHqox8rPOzE8gbE+Yzo
         FCsfEJmMJ2VZOwt3a/pQjyotoICYPYNTmjx3iYmmYNhXhn6dHM7EE1MvS8F75+fOPSpS
         D/4w==
X-Gm-Message-State: AMke39mEbn6TNeAV4KyKDfw0VtlG9zBe4oED5GacRZPDReak9b2rm3OFB3bPS5S6cSQqEw==
X-Received: by 10.99.123.1 with SMTP id w1mr22400993pgc.118.1489173062489;
        Fri, 10 Mar 2017 11:11:02 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id u78sm20020984pfa.101.2017.03.10.11.11.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 11:11:02 -0800 (PST)
Date: Fri, 10 Mar 2017 11:11:01 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/4] staging: wilc1000: linux_mon:
 Enhance code formatting
Message-ID: <20170310191100.GA23551@d830.WORKGROUP>
References: <20170310165847.4082-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170310165847.4082-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 10, 2017 at 06:58:47PM +0200, Tamara Diaconita wrote:
> Trims line size at 80 characters in linux_mon.c file by moving parts of some lines in new lines.
> 
> Fixed the checkpath.pl issue:
> CHECK: Line over 80 characters.
> 
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>

Tamara, Same comments from patch 1 about the subject & log message
apply here.  Patch below looks good to me.
alisons

> ---
>  drivers/staging/wilc1000/linux_mon.c | 27 ++++++++++++++++++---------
>  1 file changed, 18 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
> index f328d75..6897a51 100644
> --- a/drivers/staging/wilc1000/linux_mon.c
> +++ b/drivers/staging/wilc1000/linux_mon.c
> @@ -68,18 +68,21 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
>  	if (pkt_offset & IS_MANAGMEMENT_CALLBACK) {
>  		/* hostapd callback mgmt frame */
>  
> -		skb = dev_alloc_skb(size + sizeof(struct wilc_wfi_radiotap_cb_hdr));
> +		skb = dev_alloc_skb(size +
> +			sizeof(struct wilc_wfi_radiotap_cb_hdr));
>  		if (!skb)
>  			return;
>  
>  		memcpy(skb_put(skb, size), buff, size);
>  
> -		cb_hdr = (struct wilc_wfi_radiotap_cb_hdr *)skb_push(skb, sizeof(*cb_hdr));
> +		cb_hdr = (struct wilc_wfi_radiotap_cb_hdr *)skb_push(skb,
> +			  sizeof(*cb_hdr));
>  		memset(cb_hdr, 0, sizeof(struct wilc_wfi_radiotap_cb_hdr));
>  
>  		cb_hdr->hdr.it_version = 0; /* PKTHDR_RADIOTAP_VERSION; */
>  
> -		cb_hdr->hdr.it_len = cpu_to_le16(sizeof(struct wilc_wfi_radiotap_cb_hdr));
> +		cb_hdr->hdr.it_len =
> +			cpu_to_le16(sizeof(struct wilc_wfi_radiotap_cb_hdr));
>  
>  		cb_hdr->hdr.it_present = cpu_to_le32(
>  				(1 << IEEE80211_RADIOTAP_RATE) |
> @@ -95,16 +98,19 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
>  		}
>  
>  	} else {
> -		skb = dev_alloc_skb(size + sizeof(struct wilc_wfi_radiotap_hdr));
> +		skb = dev_alloc_skb(size +
> +			sizeof(struct wilc_wfi_radiotap_hdr));
>  
>  		if (!skb)
>  			return;
>  
>  		memcpy(skb_put(skb, size), buff, size);
> -		hdr = (struct wilc_wfi_radiotap_hdr *)skb_push(skb, sizeof(*hdr));
> +		hdr = (struct wilc_wfi_radiotap_hdr *)skb_push(skb,
> +		       sizeof(*hdr));
>  		memset(hdr, 0, sizeof(struct wilc_wfi_radiotap_hdr));
>  		hdr->hdr.it_version = 0; /* PKTHDR_RADIOTAP_VERSION; */
> -		hdr->hdr.it_len = cpu_to_le16(sizeof(struct wilc_wfi_radiotap_hdr));
> +		hdr->hdr.it_len =
> +			cpu_to_le16(sizeof(struct wilc_wfi_radiotap_hdr));
>  		hdr->hdr.it_present = cpu_to_le32
>  				(1 << IEEE80211_RADIOTAP_RATE); /* | */
>  		hdr->rate = 5; /* txrate->bitrate / 5; */
> @@ -196,16 +202,19 @@ static netdev_tx_t WILC_WFI_mon_xmit(struct sk_buff *skb,
>  	skb_pull(skb, rtap_len);
>  
>  	if (skb->data[0] == 0xc0 && (!(memcmp(broadcast, &skb->data[4], 6)))) {
> -		skb2 = dev_alloc_skb(skb->len + sizeof(struct wilc_wfi_radiotap_cb_hdr));
> +		skb2 = dev_alloc_skb(skb->len +
> +			sizeof(struct wilc_wfi_radiotap_cb_hdr));
>  
>  		memcpy(skb_put(skb2, skb->len), skb->data, skb->len);
>  
> -		cb_hdr = (struct wilc_wfi_radiotap_cb_hdr *)skb_push(skb2, sizeof(*cb_hdr));
> +		cb_hdr = (struct wilc_wfi_radiotap_cb_hdr *)skb_push(skb2,
> +			sizeof(*cb_hdr));
>  		memset(cb_hdr, 0, sizeof(struct wilc_wfi_radiotap_cb_hdr));
>  
>  		cb_hdr->hdr.it_version = 0; /* PKTHDR_RADIOTAP_VERSION; */
>  
> -		cb_hdr->hdr.it_len = cpu_to_le16(sizeof(struct wilc_wfi_radiotap_cb_hdr));
> +		cb_hdr->hdr.it_len =
> +			cpu_to_le16(sizeof(struct wilc_wfi_radiotap_cb_hdr));
>  
>  		cb_hdr->hdr.it_present = cpu_to_le32(
>  				(1 << IEEE80211_RADIOTAP_RATE) |
> -- 
> 2.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170310165847.4082-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

