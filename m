X-GM-THRID: 6203986156822986752
X-Received: by 10.180.210.71 with SMTP id ms7mr1047388wic.4.1444496932572;
        Sat, 10 Oct 2015 10:08:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.226 with SMTP id fr2ls565957wib.50.canary; Sat, 10 Oct
 2015 10:08:51 -0700 (PDT)
X-Received: by 10.180.208.7 with SMTP id ma7mr1037090wic.5.1444496931473;
        Sat, 10 Oct 2015 10:08:51 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m4si158656wib.0.2015.10.10.10.08.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 10:08:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,664,1437429600"; 
   d="scan'208";a="182102775"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Oct 2015 19:08:51 +0200
Date: Sat, 10 Oct 2015 19:08:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 3/3] Staging: rtl8192u: ieee80211:
 ieee80211_rx: Remove commented printk messages
In-Reply-To: <1444495728-9945-4-git-send-email-shraddha.6596@gmail.com>
Message-ID: <alpine.DEB.2.10.1510101908310.2354@hadrien>
References: <1444495728-9945-1-git-send-email-shraddha.6596@gmail.com> <1444495728-9945-4-git-send-email-shraddha.6596@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 10 Oct 2015, Shraddha Barke wrote:

> Remove commented out printk messages since they are not needed.
>
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
> Changes in v3-
>  Removed braces and blank line

Actually, you should say in the commit message that you did these extra
steps.

julia

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
>  //	}
>  	if ((*last_seq == seq) &&
>  	    time_after(*last_time + IEEE_PACKET_RETRY_TIME, jiffies)) {
> -		if (*last_frag == frag){
> -			//printk(KERN_WARNING "[1] go drop!\n");
> +		if (*last_frag == frag)
>  			goto drop;
> -
> -		}
>  		if (*last_frag + 1 != frag)
>  			/* out-of-order fragment */
> -			//printk(KERN_WARNING "[2] go drop!\n");
>  			goto drop;
>  	} else
>  		*last_seq = seq;
> @@ -510,7 +506,6 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
>
>  drop:
>  //	BUG_ON(!(fc & IEEE80211_FCTL_RETRY));
> -//	printk("DUP\n");
>
>  	return 1;
>  }
> @@ -578,14 +573,12 @@ void ieee80211_indicate_packets(struct ieee80211_device *ieee, struct ieee80211_
>
>  		/* Indicat the packets to upper layer */
>  			if (sub_skb) {
> -				//printk("0skb_len(%d)\n", skb->len);
>  				sub_skb->protocol = eth_type_trans(sub_skb, ieee->dev);
>  				memset(sub_skb->cb, 0, sizeof(sub_skb->cb));
>  				sub_skb->dev = ieee->dev;
>  				sub_skb->ip_summed = CHECKSUM_NONE; /* 802.11 crc not sufficient */
>  				//skb->ip_summed = CHECKSUM_UNNECESSARY; /* 802.11 crc not sufficient */
>  				ieee->last_rx_ps_time = jiffies;
> -				//printk("1skb_len(%d)\n", skb->len);
>  				netif_rx(sub_skb);
>  			}
>  		}
> @@ -795,7 +788,6 @@ static u8 parse_subframe(struct sk_buff *skb,
>  	if (rx_stats->bContainHTC) {
>  		LLCOffset += sHTCLng;
>  	}
> -	//printk("ChkLength = %d\n", LLCOffset);
>  	// Null packet, don't indicate it to upper layer
>  	ChkLength = LLCOffset;/* + (Frame_WEP(frame)!=0 ?Adapter->MgntInfo.SecurityInfo.EncryptionHeadOverhead:0);*/
>
> @@ -1340,14 +1332,12 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>  				}
>
>  				/* Indicat the packets to upper layer */
> -				//printk("0skb_len(%d)\n", skb->len);
>  				sub_skb->protocol = eth_type_trans(sub_skb, dev);
>  				memset(sub_skb->cb, 0, sizeof(sub_skb->cb));
>  				sub_skb->dev = dev;
>  				sub_skb->ip_summed = CHECKSUM_NONE; /* 802.11 crc not sufficient */
>  				//skb->ip_summed = CHECKSUM_UNNECESSARY; /* 802.11 crc not sufficient */
>  				ieee->last_rx_ps_time = jiffies;
> -				//printk("1skb_len(%d)\n", skb->len);
>  				netif_rx(sub_skb);
>  			}
>  		}
> @@ -1758,8 +1748,6 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
>
>  			offset = (info_element->data[2] >> 1)*2;
>
> -			//printk("offset1:%x aid:%x\n",offset, ieee->assoc_id);
> -
>  			if(ieee->assoc_id < 8*offset ||
>  				ieee->assoc_id > 8*(offset + info_element->len -3))
>
> @@ -2070,7 +2058,6 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
>  		case MFIE_TYPE_COUNTRY:
>  			IEEE80211_DEBUG_SCAN("MFIE_TYPE_COUNTRY: %d bytes\n",
>  					     info_element->len);
> -			//printk("=====>Receive <%s> Country IE\n",network->ssid);
>  			ieee80211_extract_country_ie(ieee, info_element, network, network->bssid);//addr2 is same as addr3 when from an AP
>  			break;
>  /* TODO */
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1444495728-9945-4-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

