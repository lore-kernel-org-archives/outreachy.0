X-GM-THRID: 6203986156822986752
X-Received: by 10.194.94.66 with SMTP id da2mr1631615wjb.7.1444671108878;
        Mon, 12 Oct 2015 10:31:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.84.1 with SMTP id i1ls515797lfb.15.gmail; Mon, 12 Oct 2015
 10:31:48 -0700 (PDT)
X-Received: by 10.112.181.10 with SMTP id ds10mr5831653lbc.3.1444671108266;
        Mon, 12 Oct 2015 10:31:48 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id q6si532296wif.2.2015.10.12.10.31.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 10:31:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id q12so30287417wie.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 10:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=tYPiS9sDAdJQ3u9lxsr2Ol+mGFSOSuMz52RNh/KvCDY=;
        b=cUNxB9JyWVTABE4XjBBfHKxf+Ohxec178tqoVOZGLuWw8ge9p3F9nN7ofpIMKuquer
         fuP1poSXkv4J5mDKAXNEPpq0NkldbawpXGFy7plHOSgKeOuyaamT0jyQgSC9wzUktXff
         rkP0GJdslb2i57uUNNlC/Tr0sygO/bCvTvWKQvLU3P1v8Evz4KtZV4R0pLkzRD4XZWQO
         8XOkR7wKA5Z3TLfdD0/47n8wrdDRYiUPdQwQClhpPJYVgcNUH+YEdXyzfFdTCryCF+jF
         +8dw8Zwbr3aOk4vIOEfblHLJ6L4dPoj2XT7YXkiRKQJnMIJgaA1POQZBV3GatxfbleNA
         W2EQ==
MIME-Version: 1.0
X-Received: by 10.194.236.200 with SMTP id uw8mr30430129wjc.126.1444671108086;
 Mon, 12 Oct 2015 10:31:48 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Mon, 12 Oct 2015 10:31:48 -0700 (PDT)
In-Reply-To: <1444540283-9605-4-git-send-email-shraddha.6596@gmail.com>
References: <1444540283-9605-1-git-send-email-shraddha.6596@gmail.com>
	<1444540283-9605-4-git-send-email-shraddha.6596@gmail.com>
Date: Mon, 12 Oct 2015 20:31:48 +0300
Message-ID: <CAEnQRZD83hXXSzk=gBSgn7+F85L=PECwQizpp50xHwOv4Y_FQg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4 3/3] Staging: rtl8192u: ieee80211:
 ieee80211_rx: Remove commented printk messages
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Shraddha Barke <shraddha.6596@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 11, 2015 at 8:11 AM, Shraddha Barke <shraddha.6596@gmail.com> wrote:
> Remove commented out printk messages since they are not needed. Also remove
> the unnecessary braces and blank lines
>
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
> Changes in v4-
>  Updated commit message
>
> Changes in v3-
>  Removed braces and blank line
>
> Changes in v2-
>  Fixed subject line.
>
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 15 +--------------
>  1 file changed, 1 insertion(+), 14 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index 0aa9021..4b5f32d 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -492,14 +492,10 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
>  //     }
>         if ((*last_seq == seq) &&
>             time_after(*last_time + IEEE_PACKET_RETRY_TIME, jiffies)) {
> -               if (*last_frag == frag){
> -                       //printk(KERN_WARNING "[1] go drop!\n");
> +               if (*last_frag == frag)
>                         goto drop;
> -
> -               }
>                 if (*last_frag + 1 != frag)
>                         /* out-of-order fragment */
> -                       //printk(KERN_WARNING "[2] go drop!\n");
>                         goto drop;
>         } else
>                 *last_seq = seq;
> @@ -510,7 +506,6 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
>
>  drop:
>  //     BUG_ON(!(fc & IEEE80211_FCTL_RETRY));
> -//     printk("DUP\n");
>
>         return 1;
>  }
> @@ -578,14 +573,12 @@ void ieee80211_indicate_packets(struct ieee80211_device *ieee, struct ieee80211_
>
>                 /* Indicat the packets to upper layer */
>                         if (sub_skb) {
> -                               //printk("0skb_len(%d)\n", skb->len);
>                                 sub_skb->protocol = eth_type_trans(sub_skb, ieee->dev);
>                                 memset(sub_skb->cb, 0, sizeof(sub_skb->cb));
>                                 sub_skb->dev = ieee->dev;
>                                 sub_skb->ip_summed = CHECKSUM_NONE; /* 802.11 crc not sufficient */
>                                 //skb->ip_summed = CHECKSUM_UNNECESSARY; /* 802.11 crc not sufficient */
>                                 ieee->last_rx_ps_time = jiffies;
> -                               //printk("1skb_len(%d)\n", skb->len);
>                                 netif_rx(sub_skb);
>                         }
>                 }
> @@ -795,7 +788,6 @@ static u8 parse_subframe(struct sk_buff *skb,
>         if (rx_stats->bContainHTC) {
>                 LLCOffset += sHTCLng;
>         }
> -       //printk("ChkLength = %d\n", LLCOffset);
>         // Null packet, don't indicate it to upper layer
>         ChkLength = LLCOffset;/* + (Frame_WEP(frame)!=0 ?Adapter->MgntInfo.SecurityInfo.EncryptionHeadOverhead:0);*/
>
> @@ -1340,14 +1332,12 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>                                 }
>
>                                 /* Indicat the packets to upper layer */
> -                               //printk("0skb_len(%d)\n", skb->len);
>                                 sub_skb->protocol = eth_type_trans(sub_skb, dev);
>                                 memset(sub_skb->cb, 0, sizeof(sub_skb->cb));
>                                 sub_skb->dev = dev;
>                                 sub_skb->ip_summed = CHECKSUM_NONE; /* 802.11 crc not sufficient */
>                                 //skb->ip_summed = CHECKSUM_UNNECESSARY; /* 802.11 crc not sufficient */
>                                 ieee->last_rx_ps_time = jiffies;
> -                               //printk("1skb_len(%d)\n", skb->len);
>                                 netif_rx(sub_skb);
>                         }
>                 }
> @@ -1758,8 +1748,6 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
>
>                         offset = (info_element->data[2] >> 1)*2;
>
> -                       //printk("offset1:%x aid:%x\n",offset, ieee->assoc_id);
> -
>                         if(ieee->assoc_id < 8*offset ||
>                                 ieee->assoc_id > 8*(offset + info_element->len -3))
>
> @@ -2070,7 +2058,6 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
>                 case MFIE_TYPE_COUNTRY:
>                         IEEE80211_DEBUG_SCAN("MFIE_TYPE_COUNTRY: %d bytes\n",
>                                              info_element->len);
> -                       //printk("=====>Receive <%s> Country IE\n",network->ssid);
>                         ieee80211_extract_country_ie(ieee, info_element, network, network->bssid);//addr2 is same as addr3 when from an AP
>                         break;
>  /* TODO */
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1444540283-9605-4-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

