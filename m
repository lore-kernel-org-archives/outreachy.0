X-GM-THRID: 6256332638894686208
X-Received: by 10.140.167.7 with SMTP id n7mr9031620qhn.19.1456665955623;
        Sun, 28 Feb 2016 05:25:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.69 with SMTP id d5ls321749igt.12.canary; Sun, 28 Feb
 2016 05:25:55 -0800 (PST)
X-Received: by 10.66.139.162 with SMTP id qz2mr8765435pab.1.1456665955307;
        Sun, 28 Feb 2016 05:25:55 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x235.google.com (mail-ig0-x235.google.com. [2607:f8b0:4001:c05::235])
        by gmr-mx.google.com with ESMTPS id p10si838934igg.1.2016.02.28.05.25.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:25:55 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::235 as permitted sender) client-ip=2607:f8b0:4001:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::235 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x235.google.com with SMTP id hb3so59761675igb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 05:25:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0lVye/PTyKXGiOLuRefr9kS82Mf0zUt+IpGrN6Eh87k=;
        b=MZtU4bx70ueh+Y7dVieSrwWqS3i0W4K5ftjDmOi1ICioLIr5vTI3x+2WdlQ1DSqMg6
         E53NzadBVGX09xanAHJxcVLMEAC13qQbUNquDAJBkmGWNIVulkeWWaW3sjD6Ywg4ujyp
         daZ+rce2RK3Gu6W/jQj8uvY9I3RBLoR8OazCnNck5/1dEnzOd8BGCWrGCjwqNGboTUC1
         RH3/FcI3gV/l+OSN1T6amHl8hXD6+b89RBT3yr+iQdDveqLS6iGDzPMYX4O43Fic3bJY
         CPYbxpEAntmdv+YmH1Zbvzh7R5cYvwiVa3Dp85Aq1q8Ut38FZ0aDJq4mi2vpT1wWTerB
         meJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0lVye/PTyKXGiOLuRefr9kS82Mf0zUt+IpGrN6Eh87k=;
        b=k4A0BdRpS3QSFuVjt8rEsKxwciUF7dKCchxli4fK/3kkMlxzwOyT6jzI6GBCKnE6yA
         OVlgzBsDzOdh+3TRxASJPgS2H1/NDEU1KBIwpjeG22EfVL0AK0JHMQ9m+j/6OEJsXf9M
         eBhrKbzob91zdnq0ONvCSmgwYr27DaM5xIGn703NMige1e9wi3G9KhiAQyjy4bwkmLUI
         +jxu2mbvAV0O83uGmaKaUH40o/cppSI7mEsLzg/RFOpim32GtRw3m4paZL3d24rYBP8i
         WJQlmPON15/r1dKyyCp8AeEpBCeMpYqroUk/6DLvxgj0pizhvf4L+D4F3e3CdkOmeKzO
         j33A==
X-Gm-Message-State: AD7BkJKhGUIrrujaEys3rWMZI/rjDW20QsufMAJgJ4Uot1bh87sPVRgAJnOeSru9YJuadw==
X-Received: by 10.50.50.201 with SMTP id e9mr6098020igo.10.1456665955115;
        Sun, 28 Feb 2016 05:25:55 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id qs10sm5038107igb.7.2016.02.28.05.25.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:25:54 -0800 (PST)
Date: Sun, 28 Feb 2016 13:25:05 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723: core: rtw_recv.c: Replace container_of
 with list_entry
Message-ID: <20160228182504.GA4738@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use list_entry() instead of container_of() with linkedlist nodes.
Semantic patch used:

@a exists@
identifier var;
struct list_head *ptr;
@@
  
  var =
- container_of
+ list_entry
  (ptr, ...);

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_recv.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_recv.c b/drivers/staging/rtl8723au/core/rtw_recv.c
index 0a7741c..7facf19 100644
--- a/drivers/staging/rtl8723au/core/rtw_recv.c
+++ b/drivers/staging/rtl8723au/core/rtw_recv.c
@@ -117,7 +117,7 @@ struct recv_frame *rtw_alloc_recvframe23a(struct rtw_queue *pfree_recv_queue)
 
 		plist = phead->next;
 
-		pframe = container_of(plist, struct recv_frame, list);
+		pframe = list_entry(plist, struct recv_frame, list);
 
 		list_del_init(&pframe->list);
 		padapter = pframe->adapter;
@@ -258,7 +258,7 @@ struct recv_buf *rtw_dequeue_recvbuf23a (struct rtw_queue *queue)
 
 		plist = phead->next;
 
-		precvbuf = container_of(plist, struct recv_buf, list);
+		precvbuf = list_entry(plist, struct recv_buf, list);
 
 		list_del_init(&precvbuf->list);
 	}
@@ -1089,9 +1089,9 @@ static int validate_recv_ctrl_frame(struct rtw_adapter *padapter,
 			xmitframe_plist = xmitframe_phead->next;
 
 			if (!list_empty(xmitframe_phead)) {
-				pxmitframe = container_of(xmitframe_plist,
-							  struct xmit_frame,
-							  list);
+				pxmitframe = list_entry(xmitframe_plist,
+							struct xmit_frame,
+							list);
 
 				xmitframe_plist = xmitframe_plist->next;
 
@@ -1555,7 +1555,7 @@ struct recv_frame *recvframe_defrag(struct rtw_adapter *adapter,
 
 	phead = get_list_head(defrag_q);
 	plist = phead->next;
-	prframe = container_of(plist, struct recv_frame, list);
+	prframe = list_entry(plist, struct recv_frame, list);
 	list_del_init(&prframe->list);
 	skb = prframe->pkt;
 
@@ -1882,7 +1882,7 @@ int recv_indicatepkts_in_order(struct rtw_adapter *padapter,
 			return true;
 		}
 
-		prframe = container_of(plist, struct recv_frame, list);
+		prframe = list_entry(plist, struct recv_frame, list);
 		pattrib = &prframe->attrib;
 		preorder_ctrl->indicate_seq = pattrib->seq_num;
 	}
@@ -1891,7 +1891,7 @@ int recv_indicatepkts_in_order(struct rtw_adapter *padapter,
 	/*  Check if there is any packet need indicate. */
 	while (!list_empty(phead)) {
 
-		prframe = container_of(plist, struct recv_frame, list);
+		prframe = list_entry(plist, struct recv_frame, list);
 		pattrib = &prframe->attrib;
 
 		if (!SN_LESS(preorder_ctrl->indicate_seq, pattrib->seq_num)) {
-- 
2.5.0


