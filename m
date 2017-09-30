X-GM-THRID: 6471369058680832000
X-Received: by 10.101.73.7 with SMTP id p7mr964207pgs.80.1506733023357;
        Fri, 29 Sep 2017 17:57:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.43.9 with SMTP id r9ls887445pfr.6.gmail; Fri, 29 Sep 2017
 17:57:02 -0700 (PDT)
X-Received: by 10.99.99.197 with SMTP id x188mr898156pgb.118.1506733022412;
        Fri, 29 Sep 2017 17:57:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506733022; cv=none;
        d=google.com; s=arc-20160816;
        b=YEbsUKoCsVJyT0E4PdVLV8Rgw7O9obcsnnHTqVzCDvfufL9qWBQ1EKW+6fo3a9Ts6v
         EIPfeOcrQxaBt126Ysa+RJtdSdSrZKdROvTO9pFm/BWiPbLxMkhDnkQTiSeWiJhAKsLq
         RM3zlt13DdrV9AmQZ0WT9Uw72dq4qZ6w/B7bQ7mmeH1w7K3ovKP0tHp6x8tSnibAycgq
         XSpViYgvg+X+rpQ/sT56rYKe5rkSpzJdXr857vJPPqMJ/UYBC4pEuiocbhfTX/GhIqcU
         QhvDag87WD5Y7G2MwVqCchoK5wbNsbP2UjmLx+AGKMv9LSPx7NeturFMiBgwaHLAzcmU
         y8OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=y8wlO+Zs1hupAtctO9sGhK0j8BBjomxv9e62EvXl+Og=;
        b=NmDzQGLbj2ZvzcpAv3VHmzpw7mBD2sGGhpJ0wMVTD8+nbENThmbNE20BPllBJC5sCn
         +F9LWGvbN4P0B3b8Az+NR3Zh+ptqSYoDwU5fiBXaiVl8rFZcp1eOU/Vohc28uIXO9x80
         YwT60Ag0vL/lVdQtPrGtNUxFelWzViSK8zRt5In/qfbd+MWKKN3nFAX2F7ris4bRtYQO
         FXh4KeH3KcGK0byt8aFSCSrH/wiKZFVSid4mNYNpi+BRKG71Vbu3sehuh8VH+8GU72IR
         JjqhCE3o1v2WekHO901RhhunJ50hzcHl37JgK+soK36A5ogVyBl/BSsO2nVKyt+DpZN+
         iw8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sv1ZZ4gv;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id f13si650977pfj.11.2017.09.29.17.57.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 17:57:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sv1ZZ4gv;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id y192so744407pgd.5
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Sep 2017 17:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=y8wlO+Zs1hupAtctO9sGhK0j8BBjomxv9e62EvXl+Og=;
        b=sv1ZZ4gvUwewp7BsSgi4gDNhQclMS/ZPIDpSga53IE3NkdAKFEgIln7nW7eRV10Be3
         L+gCog4otrgD5xMtNpFcfY5RSYFotLbXvchUK/eT1Bpqdowv1IF0T2iil2f8266BnB45
         QHIHvjGZKYr/bweWp4ASr/LvSCGDxz74Lwpmm3C/rImQq7ELtkDHNLg/e7VcLOWzBgJ9
         0GcNYRBN02pywz2MeNOhgLHo7545A8o4LOR+1STBSEqCE/xdPsbErgUO2B/xDkDnKRJP
         V6imkL34TiqqxeRnGTcpnSE5ZDssH2gfjaiRnXZLUXmF/hsFrw42j75p/++nxUi2VwSN
         SESg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=y8wlO+Zs1hupAtctO9sGhK0j8BBjomxv9e62EvXl+Og=;
        b=ZN+TCZxm73Cqx1k7WCsIHetPs8Vf4l15aIIUUG/7d9oak5NR4bIspKc0NN0NPWzBUn
         QjCDt3nCo4MsNWR55mwHmRGAhCG5rii+kmQseChR2a7QYZVPS8M03fGXecuh7jqIKOg4
         DKdufu6WGZsuB09oFt2FNelTtUgY87J4DmY8IwWZAkDW+Lt8saWWBcISr/AlAST8gURG
         /1+jPxAe8cvJ6yDqo4gMWhnZ2ULizAx++3Ful39Ueb1tX+eg+sAt6gZXLpOjpspWq4AB
         Gjv7y4EKOoBwpWCZNeP6T1MJY0NBsjT0YJ5G+/49VW6bG+amt1Guzd4sPuoaNdN5mw3e
         /xqg==
X-Gm-Message-State: AHPjjUgR4TJAbFr6K2ZXRKDF3Q/KpOYr8GMXqEwLRYVYBU/W2OihYR4H
	6uZdq27cS38Za4Bs0AIvdSk=
X-Google-Smtp-Source: AOwi7QDpUvUBuHTpwsPny2+VTXgyUxJIdYyBxJqoavm4L9Ft+ovqelb3ieEFDGDQIrzufWom48CDCA==
X-Received: by 10.98.153.132 with SMTP id t4mr9230883pfk.19.1506733022124;
        Fri, 29 Sep 2017 17:57:02 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.175.215.134])
        by smtp.gmail.com with ESMTPSA id l74sm9124262pfi.9.2017.09.29.17.57.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Sep 2017 17:57:01 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: core: Use list_entry instead of container_of
Date: Sat, 30 Sep 2017 06:26:55 +0530
Message-Id: <1506733015-8564-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

For variables that have type struct list_head* use list_entry to
access current list element instead of using container_of.
Done using the following semantic patch by coccinelle.

@r@
identifier e;
struct list_head* l;
@@

<... when != l == NULL
l;
...>

(
e=
-container_of
+list_entry
    (
     ...)
)

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


