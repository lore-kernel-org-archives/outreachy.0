X-GM-THRID: 6648489836544
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,79ba7d9a9b59f96e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.160.176 with SMTP id xl16mr4093291wib.6.1425494956230;
        Wed, 04 Mar 2015 10:49:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.221.41 with SMTP id qb9ls186263wic.16.canary; Wed, 04 Mar
 2015 10:49:15 -0800 (PST)
X-Received: by 10.180.8.67 with SMTP id p3mr4087510wia.7.1425494955895;
        Wed, 04 Mar 2015 10:49:15 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r6si391368wix.0.2015.03.04.10.49.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Wed, 04 Mar 2015 10:49:15 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,689,1418079600"; 
   d="scan'208";a="102126329"
Received: from unknown (HELO [132.207.219.129]) ([132.207.219.129])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 04 Mar 2015 19:49:05 +0100
Date: Wed, 4 Mar 2015 13:49:02 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6656: Fix prefer
 ether_addr_copy() over memcpy()
In-Reply-To: <1425494204-8831-1-git-send-email-yeliztaneroglu@gmail.com>
Message-ID: <alpine.DEB.2.10.1503041348470.2811@hadrien>
References: <1425494204-8831-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 4 Mar 2015, Yeliz Taneroglu wrote:

> Fixed the checkpatch.pl warning in rxtx.c file
> WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet
> addresses are __aligned(2)

You need to provide evidence that it is aligned.

julia

>
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/vt6656/rxtx.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
> index 33baf26..f6c2cf8 100644
> --- a/drivers/staging/vt6656/rxtx.c
> +++ b/drivers/staging/vt6656/rxtx.c
> @@ -755,9 +755,9 @@ static void vnt_fill_txkey(struct vnt_usb_send_context *tx_context,
>  		else
>  			mic_hdr->hlen = cpu_to_be16(22);
>
> -		memcpy(mic_hdr->addr1, hdr->addr1, ETH_ALEN);
> -		memcpy(mic_hdr->addr2, hdr->addr2, ETH_ALEN);
> -		memcpy(mic_hdr->addr3, hdr->addr3, ETH_ALEN);
> +		ether_addr_copy(mic_hdr->addr1, hdr->addr1);
> +		ether_addr_copy(mic_hdr->addr2, hdr->addr2);
> +		ether_addr_copy(mic_hdr->addr3, hdr->addr3);
>
>  		mic_hdr->frame_control = cpu_to_le16(
>  			le16_to_cpu(hdr->frame_control) & 0xc78f);
> @@ -765,7 +765,7 @@ static void vnt_fill_txkey(struct vnt_usb_send_context *tx_context,
>  				le16_to_cpu(hdr->seq_ctrl) & 0xf);
>
>  		if (ieee80211_has_a4(hdr->frame_control))
> -			memcpy(mic_hdr->addr4, hdr->addr4, ETH_ALEN);
> +			ether_addr_copy(mic_hdr->addr4, hdr->addr4);
>
>
>  		memcpy(key_buffer, tx_key->key, WLAN_KEY_LEN_CCMP);
> --
> 1.8.3.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1425494204-8831-1-git-send-email-yeliztaneroglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

