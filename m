X-GM-THRID: 6666820090157072384
X-Received: by 2002:a24:1991:: with SMTP id b139mr184884itb.38.1552318929373;
        Mon, 11 Mar 2019 08:42:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:147:: with SMTP id 68ls5053691itk.1.gmail; Mon, 11 Mar
 2019 08:42:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzgzBfcwxSM3cexq18WUoBaIAw67VTNKLu4qgh3U9HOJRVtSWPsB6e67BY/eoUXhTVjVjIR
X-Received: by 2002:a24:5dc9:: with SMTP id w192mr166290ita.33.1552318928738;
        Mon, 11 Mar 2019 08:42:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552318928; cv=none;
        d=google.com; s=arc-20160816;
        b=w57mU8dsbUkOJ5cQWv3APeT6ceC0HdiMb80qvb+OL0Id3cJ9LiraGOhq/bK8aQrEO8
         YzYWPcJdwj03ZUXGX/xGs2lC3eLYuJMEi9Pbw1yMzwSwlDK7KaArfsGHqLcYD1WcnGBX
         CI16acIl0v5IjJzMxCVBNBdHdLlygrfVqxwCkkJJ46rdVo3pfKuCAMbszu3M1u1fXv78
         vkHdP4lcwiaA2SsPZy9Ty+P7lnW31AQ3raxVlC1V9cDvKsnpNYgretom2OBAnHDpJg5l
         LPAlr9lSt32DmpdiRapD87DpqQfSFcXREjy8le4jxuHMQw0rNCLgmLVGAhXgoEOhdEhP
         yrWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=+2BtxqBPQdRCDdpT40GXCMZXX7IizTIItcfsbyB+hh8=;
        b=gky6l8c20UJF1kgdbIR3GU8BtkYaDpRAgd6cy/C1AeR8xf5P0s00edJA6twzMBv/eZ
         XxmmXav5k+CQgBeWpavXgoJAvNm3C9f+lMejdWOnES+sN43x19bEsko7GizxT/54eh09
         bMwUWfPwzWcqbj7S/OogKdJdVolbtCC7rpyHkpHJM+WfqlAV7jcxclm3MBTPiL+6o236
         J+vfiLjuo53ASoMc/EG6O0zOxhb1jt5GzK7Py7pUwnBLQBgJ9NbNkZZSRRS9y+NIR0OE
         yewzehLGUkVNGR6mfnpLE9NzYKt5IetwVE+wDvMzO2o7WUl891c/jd80Khh2RSAOqOe+
         ll0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iKCOOlwo;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id v63si216207iof.0.2019.03.11.08.42.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:42:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iKCOOlwo;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42b.google.com with SMTP id s22so3975419pfh.4
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 08:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=+2BtxqBPQdRCDdpT40GXCMZXX7IizTIItcfsbyB+hh8=;
        b=iKCOOlwoi4IJgwszrN3npmlGsL1DbAFMaG2N5k0DPx3Fi8I0Hq5HKuywd8palfaB7j
         CDRDMgWEO9Pbdjoayl1BbklHYV5k+5QHlYOzhMMeOCFTC4d2/eICPK9bVPZDNZ7GNWPm
         j5Z/eOyG89Ic0nxkc8t+hnYLEqWT7R4rwkAx7113zGRD5y4mS4/vNH2IALiIqy2SMjkH
         MFZFp7tQQLV3fZCNFjxb/yGtBziikySzZ08ihTZxNCdW+9pvE/Chn2uIe7UhcYpEaH8e
         97KXBaMSpgJpMpDfyTrdvp3OtD5CuF6rQKTqQct6tU7jj+Q+ZjiSVVbUO+9FS8V+//Vq
         T6Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=+2BtxqBPQdRCDdpT40GXCMZXX7IizTIItcfsbyB+hh8=;
        b=esn39Y7gZrSqpQxrEW0DQ8HWFm+1qDExFJNzVwrRcA60Fh89ji7+58BGX4h6WftvCa
         SFA0fap2Wt78x1PJSDZXtMchRfemmquTlQFTvRknT4kYZ84EFZJls9WdJa+tfOC//7yb
         jNCo0AVoIJa730mq3alVcIJ+Mqs5Iesq+rMt9A3kaFTI+zPTvIH3cvHvhcEn+JkADhFb
         Dp2BXO99JdXkCEVpFng2iWSFW5ENl98iXrPcfJGek9lGbb0abW3J8ro8Clpw4kHs7OAH
         xPuGaZWpVGaxLmbgF5oRWPWL8AbKUyQ7dUfg389XSGmpM995aim4GpbSThF3qvrTYWTZ
         vA/w==
X-Gm-Message-State: APjAAAX8d06vjS8m73RDA7hbsTCChLlqP8X1x1W7l3bUbc66Ux7MUL9F
	KZfVCIFifYV16LoGIaT8kYXBkT2vt7w=
X-Received: by 2002:a62:204f:: with SMTP id g76mr34687071pfg.100.1552318928130;
        Mon, 11 Mar 2019 08:42:08 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id u184sm8798080pgd.13.2019.03.11.08.42.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:42:07 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4 6/7] Staging: rtl8192u: Remove casts on the return values of list_entry
Date: Mon, 11 Mar 2019 21:11:40 +0530
Message-Id: <20190311154141.31401-7-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190311154141.31401-1-bhanusreemahesh@gmail.com>
References: <20190311154141.31401-1-bhanusreemahesh@gmail.com>

Remove casts return values of on all occurances of list_entry.
Casts on the return values of list_entry are useless.
list_entry is a macro and already casts its return value to the type
mentioned in its second argument.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c   | 8 ++++----
 drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index c2483da9394e..52c655b423ce 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -513,11 +513,11 @@ static bool AddReorderEntry(struct rx_ts_record *pTS, struct rx_reorder_entry *p
 	struct list_head *pList = &pTS->rx_pending_pkt_list;
 	while(pList->next != &pTS->rx_pending_pkt_list)
 	{
-		if( SN_LESS(pReorderEntry->SeqNum, ((struct rx_reorder_entry *)list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
+		if( SN_LESS(pReorderEntry->SeqNum, list_entry(pList->next, struct rx_reorder_entry, List)->SeqNum) )
 		{
 			pList = pList->next;
 		}
-		else if( SN_EQUAL(pReorderEntry->SeqNum, ((struct rx_reorder_entry *)list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
+		else if( SN_EQUAL(pReorderEntry->SeqNum, list_entry(pList->next, struct rx_reorder_entry, List)->SeqNum) )
 		{
 			return false;
 		}
@@ -663,7 +663,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 		/* Current packet is going to be inserted into pending list.*/
 		//IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): We RX no ordered packed, insert to ordered list\n",__func__);
 		if(!list_empty(&ieee->RxReorder_Unused_List)) {
-			pReorderEntry = (struct rx_reorder_entry *)list_entry(ieee->RxReorder_Unused_List.next, struct rx_reorder_entry, List);
+			pReorderEntry = list_entry(ieee->RxReorder_Unused_List.next, struct rx_reorder_entry, List);
 			list_del_init(&pReorderEntry->List);
 
 			/* Make a reorder entry and insert into a the packet list.*/
@@ -709,7 +709,7 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	/* Check if there is any packet need indicate.*/
 	while(!list_empty(&pTS->rx_pending_pkt_list)) {
 		IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): start RREORDER indicate\n",__func__);
-		pReorderEntry = (struct rx_reorder_entry *)list_entry(pTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
+		pReorderEntry = list_entry(pTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
 		if (SN_LESS(pReorderEntry->SeqNum, pTS->rx_indicate_seq) ||
 		    SN_EQUAL(pReorderEntry->SeqNum, pTS->rx_indicate_seq))
 		{
diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
index aefa37b285b3..0368e5e3e95d 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
@@ -40,7 +40,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
 	if(pRxTs->rx_timeout_indicate_seq != 0xffff) {
 		// Indicate the pending packets sequentially according to SeqNum until meet the gap.
 		while(!list_empty(&pRxTs->rx_pending_pkt_list)) {
-			pReorderEntry = (struct rx_reorder_entry *)list_entry(pRxTs->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
+			pReorderEntry = list_entry(pRxTs->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
 			if(index == 0)
 				pRxTs->rx_indicate_seq = pReorderEntry->SeqNum;
 
@@ -426,7 +426,7 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, struct ts_common_info *
 		while(!list_empty(&pRxTS->rx_pending_pkt_list)) {
 			spin_lock_irqsave(&(ieee->reorder_spinlock), flags);
 			//pRxReorderEntry = list_entry(&pRxTS->rx_pending_pkt_list.prev,RX_REORDER_ENTRY,List);
-			pRxReorderEntry = (struct rx_reorder_entry *)list_entry(pRxTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
+			pRxReorderEntry = list_entry(pRxTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
 			list_del_init(&pRxReorderEntry->List);
 			{
 				int i = 0;
-- 
2.17.1


