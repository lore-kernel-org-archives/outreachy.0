X-GM-THRID: 6203986156822986752
X-Received: by 10.31.140.88 with SMTP id o85mr18404176vkd.8.1444540311716;
        Sat, 10 Oct 2015 22:11:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.32.201 with SMTP id h67ls2238275qgh.60.gmail; Sat, 10 Oct
 2015 22:11:51 -0700 (PDT)
X-Received: by 10.13.230.214 with SMTP id p205mr19775660ywe.57.1444540311139;
        Sat, 10 Oct 2015 22:11:51 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id pe1si997579pac.2.2015.10.10.22.11.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 22:11:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id hy16so123632735pad.1
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 22:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=6zIG6KeTh3KIO6OJOd19jSn0eXIfekyHqB95FdVZ47M=;
        b=nFvBqVT/mtAqVvmue3VWlokwky5ccUNtjbBBuSYlInKX2Qbq/DxeK6ReAvZIske/RF
         s+q9ldl25sEsJwe/gHjnap0yXGWDe875aeSj5+6rFB3x7BueoD5inyZRT97ZiLuOC9TA
         KdBADJnNSORZicO4UCbrCTb1CnbL+n8TimDKx0oqNAuLbRsy7Ya4EwVlsjyXH2cxas7s
         F9jnlBWrzLmXF065Wi7VGTtayBCnDXfPocI5pcxPOr0weHNbAY9tifdtXjgRs6DiCJR+
         JNtHv6sWjVni6FX6NdS7kFuJKi5bk1PIzifAzcsutlu3dTb8/YnjijlDw/IQuVGkRay1
         KMng==
X-Received: by 10.66.189.232 with SMTP id gl8mr13497991pac.52.1444540311002;
        Sat, 10 Oct 2015 22:11:51 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id k10sm10940309pbq.78.2015.10.10.22.11.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Oct 2015 22:11:49 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v4 3/3] Staging: rtl8192u: ieee80211: ieee80211_rx: Remove commented printk messages
Date: Sun, 11 Oct 2015 10:41:23 +0530
Message-Id: <1444540283-9605-4-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444540283-9605-1-git-send-email-shraddha.6596@gmail.com>
References: <1444540283-9605-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.5619EF94.008A,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove commented out printk messages since they are not needed. Also remove
the unnecessary braces and blank lines

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v4-
 Updated commit message

Changes in v3-
 Removed braces and blank line

Changes in v2-
 Fixed subject line.

 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 15 +--------------
 1 file changed, 1 insertion(+), 14 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 0aa9021..4b5f32d 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -492,14 +492,10 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
 //	}
 	if ((*last_seq == seq) &&
 	    time_after(*last_time + IEEE_PACKET_RETRY_TIME, jiffies)) {
-		if (*last_frag == frag){
-			//printk(KERN_WARNING "[1] go drop!\n");
+		if (*last_frag == frag)
 			goto drop;
-
-		}
 		if (*last_frag + 1 != frag)
 			/* out-of-order fragment */
-			//printk(KERN_WARNING "[2] go drop!\n");
 			goto drop;
 	} else
 		*last_seq = seq;
@@ -510,7 +506,6 @@ static int is_duplicate_packet(struct ieee80211_device *ieee,
 
 drop:
 //	BUG_ON(!(fc & IEEE80211_FCTL_RETRY));
-//	printk("DUP\n");
 
 	return 1;
 }
@@ -578,14 +573,12 @@ void ieee80211_indicate_packets(struct ieee80211_device *ieee, struct ieee80211_
 
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
@@ -795,7 +788,6 @@ static u8 parse_subframe(struct sk_buff *skb,
 	if (rx_stats->bContainHTC) {
 		LLCOffset += sHTCLng;
 	}
-	//printk("ChkLength = %d\n", LLCOffset);
 	// Null packet, don't indicate it to upper layer
 	ChkLength = LLCOffset;/* + (Frame_WEP(frame)!=0 ?Adapter->MgntInfo.SecurityInfo.EncryptionHeadOverhead:0);*/
 
@@ -1340,14 +1332,12 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
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
@@ -1758,8 +1748,6 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 
 			offset = (info_element->data[2] >> 1)*2;
 
-			//printk("offset1:%x aid:%x\n",offset, ieee->assoc_id);
-
 			if(ieee->assoc_id < 8*offset ||
 				ieee->assoc_id > 8*(offset + info_element->len -3))
 
@@ -2070,7 +2058,6 @@ int ieee80211_parse_info_param(struct ieee80211_device *ieee,
 		case MFIE_TYPE_COUNTRY:
 			IEEE80211_DEBUG_SCAN("MFIE_TYPE_COUNTRY: %d bytes\n",
 					     info_element->len);
-			//printk("=====>Receive <%s> Country IE\n",network->ssid);
 			ieee80211_extract_country_ie(ieee, info_element, network, network->bssid);//addr2 is same as addr3 when from an AP
 			break;
 /* TODO */
-- 
2.1.4


