X-GM-THRID: 6668229306176503808
X-Received: by 2002:a65:44cd:: with SMTP id g13mr9241587pgs.38.1552568121843;
        Thu, 14 Mar 2019 05:55:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:282b:: with SMTP id e40ls3028421plb.6.gmail; Thu, 14
 Mar 2019 05:55:21 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzTe8jSZCBGEkqTyvAey6xK34dT7dY4eSkWG4LT5CxM4JEM+5xZL0FnDOeAfZ29A4R5f+8T
X-Received: by 2002:a17:902:a70e:: with SMTP id w14mr1309121plq.24.1552568121183;
        Thu, 14 Mar 2019 05:55:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552568121; cv=none;
        d=google.com; s=arc-20160816;
        b=UOuY14s1ZAQQPxyX8Xa3c0QS9KVVHgo21a1NH81LKbmQqIYbyW+vp+sS8T2nI5Rv6K
         6ZEtuoaFgN7WxqY4/bVDQoG2tYqw5hdYMsYOy2NC5EHShfY3DkIXxCzNw5YHkrPHTbug
         cF1IHUKBXMPtR/qrWbAC+a08/o5u8GUg4taVja8FgaP8zt30qZaNqdex98b505PJJG1l
         B3WsFJ/gABbOlQGWRd7v5NiAZta+V91xTFSpj9Bo+x5psVoZngE3taxG0ptC1P9fSJO3
         DTNM946iXND2NoCZ5lIV/RmOadfAxMvHze4fKN3rf88b976jL/tEWVQ+K0ewC3g9Ph2J
         hZfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=AOH+AzXr0675cTywCQ/Thmrjq3EjoZ0JcCMBevHmXcI=;
        b=c01AetSDejQMK1oUheOuFJ6chI85g3YUnHuJ7X5ehOnUzRzfFlwUGb23ZM563qPrDF
         WMrM9QlGvusJFbHb5NNte91THBMt/Yx41JwsPPSBYJivyBaK7pDyEwyTZ+NU5nbI5KW6
         gIe6BVauDk4su3nLfZxjBCU1OCWdsDw+5qcCFlVRj1q7Slb2XQ3eARYB9ikGRJrdvH7E
         tlb8pncGCcwnLS4/uYuyxDpirca1k+wuE9t6ZrYu18BUUhU3S67CWWF8XgY5XV98FFyP
         Z76+Eg9JGQt1KG0x8NnPnroYF2ARLqFs2i5efGyQ9Q7QDG1vcrZpNvEIYBLsHTheeAB8
         mDQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=srU3WOXj;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id q140si909742pgq.2.2019.03.14.05.55.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Mar 2019 05:55:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=srU3WOXj;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id d25so3765718pfn.8
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Mar 2019 05:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=AOH+AzXr0675cTywCQ/Thmrjq3EjoZ0JcCMBevHmXcI=;
        b=srU3WOXjDtELI5WY6AwXDVrh41nOv2kKjSKmn9H6hnC6/XFeZ+J4V6bVkdB00gIsb5
         niIk1hWJoU+ubACqjhF90JbBtjguq+6MiM1MIr89vef4DLZJpy/fPqbC8fIgxLFUylx3
         7gMPv/FXrEmswvYdGBVW3OUX3isLNsJ3kc81vqD5XLpqW7x3/EO92hmXzhnC9TWiE7tq
         1NbUoYjYIIlgGhdEIJvTTI0qOfXbc7zCzWnq7Uw1/dKXa+jTAzUyq+WUBu80T9Ut29PH
         JIfzuX00On3DpkAQsqheb7uq086nZLPhG3dIVovGKIQSSlq94sFmCr+RrLv/NJXPt78K
         kVqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=AOH+AzXr0675cTywCQ/Thmrjq3EjoZ0JcCMBevHmXcI=;
        b=NbQDSayu5gTYYWq+kd8SJ0lDuRl8qV1+zbW9Bgzpae1NE5szTuMWriGOYvjdu+eruR
         BLhriQAPovFELP3m6rDI3LmLUBt9pfkUAw0FAGQVy7kD7+0oAdyzJ8J64Rezz/lBnPZQ
         2ZUjpu5SeLXFTw95Qy26PChyOmoGaAoXaaZ2z/uk0i8x/4sM8l7OBaAJ1hesjtGhI3u5
         7COv9RTMoJmfvd2B/ywgBupqf7dNzDLAy0HXp7jMPh8SFB0BMGQsPrlZIT6xKNhx/o4R
         QM1f04UfOJ/hj+qXaW8WBK6tfA0VPOljsY7vwDEf5lHTo1yfu7My5ux47rX1rA5LwMUP
         4xoQ==
X-Gm-Message-State: APjAAAUFAZo1E2sQKlH5z2Mu3Z0e2PzaT+xhN3EEfB4GhbDOTSoD5ncr
	KA5yBaEuIBMDeMnXKjhiX8qTIlD6r10=
X-Received: by 2002:a65:624c:: with SMTP id q12mr43787932pgv.75.1552568120874;
        Thu, 14 Mar 2019 05:55:20 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570 ([123.201.105.15])
        by smtp.gmail.com with ESMTPSA id o5sm20527099pgc.16.2019.03.14.05.55.19
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 14 Mar 2019 05:55:20 -0700 (PDT)
Date: Thu, 14 Mar 2019 18:25:17 +0530
From: Sanjana <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, julia.lawall@lip6.fr
Subject: [PATCH 2/5] Staging: rtl8188eu: rtw_recv.c: fix a paranthesis issue
Message-ID: <20190314125517.GA3667@sanjana-Inspiron-5570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

This patch fixes the checkpatch.pl CHECK in rtw_recv.c file:

CHECK: Unnecessary paranthesis around prframe->list

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 24 +++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index cc6f1a23da01..443a62d6ee24 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -64,10 +64,10 @@ int _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter)
 	precvframe = PTR_ALIGN(precvpriv->pallocated_frame_buf, RXFRAME_ALIGN_SZ);
 
 	for (i = 0; i < NR_RECVFRAME; i++) {
-		INIT_LIST_HEAD(&(precvframe->list));
+		INIT_LIST_HEAD(&precvframe->list);
 
-		list_add_tail(&(precvframe->list),
-				     &(precvpriv->free_recv_queue.queue));
+		list_add_tail(&precvframe->list,
+				     &precvpriv->free_recv_queue.queue);
 
 		precvframe->pkt = NULL;
 
@@ -134,9 +134,9 @@ int rtw_free_recvframe(struct recv_frame *precvframe,
 
 	spin_lock_bh(&pfree_recv_queue->lock);
 
-	list_del_init(&(precvframe->list));
+	list_del_init(&precvframe->list);
 
-	list_add_tail(&(precvframe->list), get_list_head(pfree_recv_queue));
+	list_add_tail(&precvframe->list, get_list_head(pfree_recv_queue));
 
 	spin_unlock_bh(&pfree_recv_queue->lock);
 
@@ -145,8 +145,8 @@ int rtw_free_recvframe(struct recv_frame *precvframe,
 
 int _rtw_enqueue_recvframe(struct recv_frame *precvframe, struct __queue *queue)
 {
-	list_del_init(&(precvframe->list));
-	list_add_tail(&(precvframe->list), get_list_head(queue));
+	list_del_init(&precvframe->list);
+	list_add_tail(&precvframe->list, get_list_head(queue));
 
 	return _SUCCESS;
 }
@@ -1336,7 +1336,7 @@ static struct recv_frame *recvframe_defrag(struct adapter *adapter,
 	plist = phead->next;
 	pfhdr = list_entry(plist, struct recv_frame, list);
 	prframe = pfhdr;
-	list_del_init(&(prframe->list));
+	list_del_init(&prframe->list);
 
 	if (curfragnum != pfhdr->attrib.frag_num) {
 		/* the first fragment number must be 0 */
@@ -1506,7 +1506,7 @@ static int amsdu_to_msdu(struct adapter *padapter, struct recv_frame *prframe)
 	struct rx_pkt_attrib *pattrib;
 	struct sk_buff *sub_skb, *subframes[MAX_SUBFRAME_COUNT];
 	struct recv_priv *precvpriv = &padapter->recvpriv;
-	struct __queue *pfree_recv_queue = &(precvpriv->free_recv_queue);
+	struct __queue *pfree_recv_queue = &precvpriv->free_recv_queue;
 
 	nr_subframes = 0;
 	pattrib = &prframe->attrib;
@@ -1663,9 +1663,9 @@ static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
 			break;
 	}
 
-	list_del_init(&(prframe->list));
+	list_del_init(&prframe->list);
 
-	list_add_tail(&(prframe->list), plist);
+	list_add_tail(&prframe->list, plist);
 	return true;
 }
 
@@ -1704,7 +1704,7 @@ static int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reor
 				 ("%s: indicate=%d seq=%d amsdu=%d\n",
 				  __func__, preorder_ctrl->indicate_seq, pattrib->seq_num, pattrib->amsdu));
 			plist = plist->next;
-			list_del_init(&(prframe->list));
+			list_del_init(&prframe->list);
 
 			if (SN_EQUAL(preorder_ctrl->indicate_seq, pattrib->seq_num))
 				preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1) & 0xFFF;
-- 
2.17.1


