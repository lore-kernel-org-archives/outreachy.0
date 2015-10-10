X-GM-THRID: 6203980538126008320
X-Received: by 10.66.162.7 with SMTP id xw7mr14852100pab.25.1444476788799;
        Sat, 10 Oct 2015 04:33:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.130.228 with SMTP id oh4ls809704obb.81.gmail; Sat, 10 Oct
 2015 04:33:08 -0700 (PDT)
X-Received: by 10.182.241.228 with SMTP id wl4mr11300284obc.8.1444476788549;
        Sat, 10 Oct 2015 04:33:08 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id wl2si587865pab.1.2015.10.10.04.33.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 04:33:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id ve7so52328867pab.2
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 04:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=Lr1SOSas3j5whoPLXu5zJwiK7stgrElE9IuHo8tdu1M=;
        b=UotOdzv0/aUjA8c9kLelULi+iYRFyZgmT0oiduUK9IAt9j1BA1WpUqex+uqJx3TSw5
         hEUrhc3YeIrUDqnxirR2GO6IL9QzVdn6VFkgYl1juzYSiU7ICg4ZTYfrD66ArxCKbHPF
         yPlKD/vpMUo5m5XSfanRwr667lGHXSAvMBxmb2SwFUAcD6YTcsynW3GxeqyNpb7tIJd9
         5o1lkNc6bLuaa17Kj4pBxP9ZzbC80cd/mZwMrwGQn3PuZ1jkrAW/VDp0zziYK1q9xyrX
         tCctVbHsTPEVjNB9EytPBU9RaJyYyD/54730IH4C3q2cJhXNvQ/pTJ3UiYyOeB/Qj1eE
         mxKg==
X-Received: by 10.66.186.141 with SMTP id fk13mr21650843pac.7.1444476788425;
        Sat, 10 Oct 2015 04:33:08 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id gi4sm7787792pbc.4.2015.10.10.04.33.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Oct 2015 04:33:07 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 3/3] Staging: rtl8192u: ieee80211: ieee80211_rx: 
Date: Sat, 10 Oct 2015 17:02:50 +0530
Message-Id: <1444476770-14129-4-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444476770-14129-1-git-send-email-shraddha.6596@gmail.com>
References: <1444476770-14129-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.5618F773.000D,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove commented out printk messages since they are not needed.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 0aa9021..b28ca42 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -493,13 +493,11 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
 	if ((*last_seq == seq) &&
 	    time_after(*last_time + IEEE_PACKET_RETRY_TIME, jiffies)) {
 		if (*last_frag == frag){
-			//printk(KERN_WARNING "[1] go drop!\n");
 			goto drop;
 
 		}
 		if (*last_frag + 1 != frag)
 			/* out-of-order fragment */
-			//printk(KERN_WARNING "[2] go drop!\n");
 			goto drop;
 	} else
 		*last_seq = seq;
@@ -578,14 +576,12 @@ void ieee80211_indicate_packets(struct ieee80211_device *ieee, struct ieee80211_
 
 		/* Indicat the packets to upper layer */
 			if (sub_skb) {
-				//printk("0skb_len(%d)\n", skb->len);
 				sub_skb->protocol = eth_type_trans(sub_skb, ieee->dev);
 				memset(sub_skb->cb, 0, sizeof(sub_skb->cb));
 				sub_skb->dev = ieee->dev;
 				sub_skb->ip_summed = CHECKSUM_NONE; /* 802.11 crc not sufficient */
 				//skb->ip_summed = CHECKSUM_UNNECESSARY; /* 802.11 crc not sufficient */
 				ieee->last_rx_ps_time = jiffies;
-				//printk("1skb_len(%d)\n", skb->len);
 				netif_rx(sub_skb);
 			}
 		}
@@ -795,7 +791,6 @@ static u8 parse_subframe(struct sk_buff *skb,
 	if (rx_stats->bContainHTC) {
 		LLCOffset += sHTCLng;
 	}
-	//printk("ChkLength = %d\n", LLCOffset);
 	// Null packet, don't indicate it to upper layer
 	ChkLength = LLCOffset;/* + (Frame_WEP(frame)!=0 ?Adapter->MgntInfo.SecurityInfo.EncryptionHeadOverhead:0);*/
 
@@ -1340,14 +1335,12 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
 				}
 
 				/* Indicat the packets to upper layer */
-				//printk("0skb_len(%d)\n", skb->len);
 				sub_skb->protocol = eth_type_trans(sub_skb, dev);
 				memset(sub_skb->cb, 0, sizeof(sub_skb->cb));
 				sub_skb->dev = dev;
 				sub_skb->ip_summed = CHECKSUM_NONE; /* 802.11 crc not sufficient */
 				//skb->ip_summed = CHECKSUM_UNNECESSARY; /* 802.11 crc not sufficient */
 				ieee->last_rx_ps_time = jiffies;
-				//printk("1skb_len(%d)\n", skb->len);
 				netif_rx(sub_skb);
 			}
 		}
@@ -1758,8 +1751,6 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 
 			offset = (info_element->data[2] >> 1)*2;
 
-			//printk("offset1:%x aid:%x\n",offset, ieee->assoc_id);
-
 			if(ieee->assoc_id < 8*offset ||
 				ieee->assoc_id > 8*(offset + info_element->len -3))
 
@@ -2070,7 +2061,6 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 		case MFIE_TYPE_COUNTRY:
 			IEEE80211_DEBUG_SCAN("MFIE_TYPE_COUNTRY: %d bytes\n",
 					     info_element->len);
-			//printk("=====>Receive <%s> Country IE\n",network->ssid);
 			ieee80211_extract_country_ie(ieee, info_element, network, network->bssid);//addr2 is same as addr3 when from an AP
 			break;
 /* TODO */
-- 
2.1.4


