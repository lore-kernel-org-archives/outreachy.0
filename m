X-GM-THRID: 6471467521247543296
X-Received: by 10.84.238.133 with SMTP id v5mr914567plk.46.1506755969766;
        Sat, 30 Sep 2017 00:19:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.235.134 with SMTP id p6ls2701383plk.12.gmail; Sat, 30 Sep
 2017 00:19:28 -0700 (PDT)
X-Received: by 10.101.73.138 with SMTP id r10mr1046008pgs.124.1506755968826;
        Sat, 30 Sep 2017 00:19:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506755968; cv=none;
        d=google.com; s=arc-20160816;
        b=mPumaD72jOBexl/nPE0v5kWGEa1EqnIWk/sChme36fJMrnFQNSCFZ5VDNNqJMmyLoS
         XBNrOy3zWJEM0o9lQqoE1R7wyo34RNF3KM/hDm4tyQWpsZ7b4WKEl+DQCO2JP2aqnNjH
         nGSUGca++9sT5urbdY2HgMks3h8y82eyEc6PeM0D916kmay0N2D260ORhAFNLvLfNrN1
         d+tFYt9vadcOg7N4KaeAYD4Jh5A2Cfaf8PuhEZRxQ9r1AbyKN5cMZ32jRJ23IZ5AYczC
         mwY6K0Vs6juEujX0gNjFJV0YV0U+otxH2D7NTQ489A7cjbABjGnqzbVSRcmJYX715J+4
         nIRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=j0erGpG4u6v821La7MPvg8kxnMtHPCkrMWI7iQA+s5c=;
        b=QW2A5Y76bJnnLKWIG8DmAndeWJxmsUN6AXUXu5uoI+PWCF/bZcw4vcMWQyqjBPaZuz
         kjTDcE/FpxOJzFtKg5u9WG4Mf3l7xG2dhBtnsCnEki/jxeimsDVQLoWuqS7whXpAqQrl
         c2XgeRKPsfL2jmBMXm+pFZr3pjXjty3aTGb7FqZKbHsnCgeCE/R5+ZP9nW9R5fnlxZ70
         R+J2Nlpo1wyqRMg9LK5nGzwXNsN60LS6EdUHMe8pT1Ma0E2i/IGAGJ4Q687zWd+23LKj
         f7Q10GP7L5priA3gxf3ZsjXO4JdlgtDGeH0mhrij3J/R5BQMDuYy2YXNHwa9SrQuh279
         ZTAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=at+W1W6A;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id q15si719984pfi.7.2017.09.30.00.19.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 00:19:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=at+W1W6A;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id g65so1134520pfe.1
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 00:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=j0erGpG4u6v821La7MPvg8kxnMtHPCkrMWI7iQA+s5c=;
        b=at+W1W6AkX08Lpo9qYiay8uJLsbNNXlx8mo+8Q61Y+yPGzOJl/OV9dY737gPr0LNd9
         mkWFuR6aFCrV9kQsatcYIrZ8TEXBxGoVsIxP9k82ag7hihA6hqIQO2EqYgclnrn8YOLi
         rCqe1EMZfImsspCVHF7fDlxl7n39Ah1S0f8X3nnDHhTUOMc18I3FbTwLoPAQ3IKJXDq2
         dY7UO0h51ygnEPJtcLZDTFjRRKh1/dpgPOlzZAlc0dW/F2GY96t4BPDwN1GEelIRwZAU
         XUJdVcqsOTDNJhSL8i4PBzZGgessAHYbc/9FwVV3K97ZYFX8GSoL/uIwnfQBijbSqhvx
         paVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=j0erGpG4u6v821La7MPvg8kxnMtHPCkrMWI7iQA+s5c=;
        b=Wc/j9zYN96Rwntfm9cDUQxaWcgclnVyODPuNMsXgQ+0bwVTRpLF08qW88xupqYdi1G
         Vv8JenWaA00Yf+vDRU6umgN329uKHBwT9niOctNciP7F1PDtHKWS5b87xxHkaTVMa+VC
         ykMV8zdzn1P2jR9qGp2SguS/yctEvOyRMgrV41vvFGZMFhgWyepoIf5l5afau5sx5HIt
         yNQmeqrO1awCxUMLfCOU1kiLoy72llaceDvNsPnU/CA746apm9fFd5HFlLu5Dq8GHRgN
         IlxWCFTvvlB1BbTnrcvSwvdAcUUM0snIm55RlgT6rY8DY+bKNxZ4R9qox4nq8rHrAGGK
         Q3RA==
X-Gm-Message-State: AHPjjUgAqWUPcu0BQJvJKbIc1FeACnxTCyP4pHsTciA4es7G1/DBUZZa
	AAwZCYfgIT6h4AYK12ZV0nU=
X-Google-Smtp-Source: AOwi7QBIsJVXmD9x/VaoZWfvk7EKSlljRy8I/2SEtHyBsAEbaxZz64QeIqngKD5ooXxuwiH1OSLDvQ==
X-Received: by 10.98.198.202 with SMTP id x71mr9705274pfk.349.1506755968583;
        Sat, 30 Sep 2017 00:19:28 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.6.85])
        by smtp.gmail.com with ESMTPSA id t81sm10134141pfg.154.2017.09.30.00.19.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Sep 2017 00:19:27 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH 1/6] Staging: rtl8188eu: core: Use list_entry instead of container_of
Date: Sat, 30 Sep 2017 12:49:23 +0530
Message-Id: <1b48743cd17da785302163fd522e9d2e04710bad.1506755265.git.srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506755265.git.srishtishar@gmail.com>
References: <cover.1506755265.git.srishtishar@gmail.com>

For variables of the struct list_head* use list_entry to access
current list element instead of using container_of.
Done using the following semantic patch by coccinelle.

@r@
struct list_head* l;
@@

-container_of
+list_entry
   (l,...)

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 3fd5f41..af59c16 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -193,7 +193,7 @@ void rtw_free_recvframe_queue(struct __queue *pframequeue,  struct __queue *pfre
 	plist = phead->next;
 
 	while (phead != plist) {
-		hdr = container_of(plist, struct recv_frame, list);
+		hdr = list_entry(plist, struct recv_frame, list);
 
 		plist = plist->next;
 
@@ -943,7 +943,7 @@ static int validate_recv_ctrl_frame(struct adapter *padapter,
 			xmitframe_plist = xmitframe_phead->next;
 
 			if (xmitframe_phead != xmitframe_plist) {
-				pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
+				pxmitframe = list_entry(xmitframe_plist, struct xmit_frame, list);
 
 				xmitframe_plist = xmitframe_plist->next;
 
@@ -1347,7 +1347,7 @@ static struct recv_frame *recvframe_defrag(struct adapter *adapter,
 
 	phead = get_list_head(defrag_q);
 	plist = phead->next;
-	pfhdr = container_of(plist, struct recv_frame, list);
+	pfhdr = list_entry(plist, struct recv_frame, list);
 	prframe = pfhdr;
 	list_del_init(&(prframe->list));
 
@@ -1367,7 +1367,7 @@ static struct recv_frame *recvframe_defrag(struct adapter *adapter,
 	plist = plist->next;
 
 	while (phead != plist) {
-		pnfhdr = container_of(plist, struct recv_frame, list);
+		pnfhdr = list_entry(plist, struct recv_frame, list);
 		pnextrframe = pnfhdr;
 
 		/* check the fragment sequence  (2nd ~n fragment frame) */
@@ -1655,7 +1655,7 @@ static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
 	plist = phead->next;
 
 	while (phead != plist) {
-		hdr = container_of(plist, struct recv_frame, list);
+		hdr = list_entry(plist, struct recv_frame, list);
 		pnextattrib = &hdr->attrib;
 
 		if (SN_LESS(pnextattrib->seq_num, pattrib->seq_num))
@@ -1690,7 +1690,7 @@ static int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reor
 		if (list_empty(phead))
 			return true;
 
-		prhdr = container_of(plist, struct recv_frame, list);
+		prhdr = list_entry(plist, struct recv_frame, list);
 		pattrib = &prhdr->attrib;
 		preorder_ctrl->indicate_seq = pattrib->seq_num;
 	}
@@ -1698,7 +1698,7 @@ static int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reor
 	/*  Prepare indication list and indication. */
 	/*  Check if there is any packet need indicate. */
 	while (!list_empty(phead)) {
-		prhdr = container_of(plist, struct recv_frame, list);
+		prhdr = list_entry(plist, struct recv_frame, list);
 		prframe = prhdr;
 		pattrib = &prframe->attrib;
 
-- 
2.7.4


