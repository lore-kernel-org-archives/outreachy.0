X-GM-THRID: 6473105655855054848
X-Received: by 10.99.169.26 with SMTP id u26mr2263697pge.75.1507137356749;
        Wed, 04 Oct 2017 10:15:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.235.134 with SMTP id p6ls5901034plk.12.gmail; Wed, 04 Oct
 2017 10:15:55 -0700 (PDT)
X-Received: by 10.99.52.3 with SMTP id b3mr967104pga.42.1507137355739;
        Wed, 04 Oct 2017 10:15:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507137355; cv=none;
        d=google.com; s=arc-20160816;
        b=nNZsTaJgyXGgimHErseIiC0IcEksnF9hrTll0VV0vLTE3WZUBR53AWExd9oT1kWv0f
         xtl4R6ZvMQCMRMIm6z2rYfqKBJURQ+1ztv6mVVyifYEh2Mdpmm9ApnFznoClMrwynY5u
         wOsdUpz6MzHc7+bqxNhSZXVUuQriZTPduV70CUUIuu+TzdpITaN9C2qE3IUe/YopNbAQ
         HiPcZYyM8wXUSBT/s/HemPwABnnZA8KnS1cp26VWV0OFaPK0PrpRVYlwSitqHDxTMkPV
         ke7PIzFyDy5FUxfaMbbo5Iqq32++vyDSvvzz1hypnhR7i+Pxgc0rl2Mcrhj7FlGUiREK
         UFnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=G9UJ/boCobTcZOSD4EKnq7qvUh2aHlaKWkGEOLOoGNM=;
        b=VJoEYxR83TFkl5ng7cvzkPAzCiRXav2pCwZxUSYlYLvf0na7vtRo90XJtUiZjxhFha
         NX3LMUSGnAQzTtxqjsrCrk0zsB/m7a2tX+0zM/X//YannQM+8ad1sKMuDPLL1XJTw2Vn
         sVLKzDJ6k33qSj6tYzg2EAgHPqf956dGZJjFZGtD0A5hQkVSABhY7CWtai5wlaI0VsWb
         +IbgizNvN4slhmSW7bE6RT+K25eO7fBalS97kKOlqjvGGqxfLKxvJCL7y4yRzs1Uop4L
         f1c4Foa7OoL+brAGBSYBx1GKDomuk2r8jscg6uO0vop9kir0zsGm8dz0OfJQMDXmBEti
         b0IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IG9sxa2h;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id t77si1708859pfi.13.2017.10.04.10.15.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 10:15:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IG9sxa2h;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id f84so12811068pfj.3
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Oct 2017 10:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=G9UJ/boCobTcZOSD4EKnq7qvUh2aHlaKWkGEOLOoGNM=;
        b=IG9sxa2hLjrQph0Npb6JeJYY2vH1Rdtzm7AutqYY01kqw31uHDDX4cWwjIrUMOKlTL
         ABS3LE67AQehTscTz5EnhaH9HBK1iGY6F6V6k28MjBkOgGjWD1NIsbpcEoojzMpwouuy
         1rxjRhp8R8SnB8lCiOaZ0Akyr+ZxwcHkFsxVskXXhox0M9JIpL56El7BgYeMSGaDO54h
         pOJV7dW+DS7Uq72qpnil1qZl3i9PtInk0Hy7vzZjDFQmrPJlMvps1UvM7q6LmKtIScQr
         6WGsvKkR5FWQPKFhc83yITWraaNViWOKtf/dQ8b8N2KKmF8PeblWXUAaD4n7rcBfVLaN
         F+2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=G9UJ/boCobTcZOSD4EKnq7qvUh2aHlaKWkGEOLOoGNM=;
        b=ZxWCMot6vQhI4ci8M4KQapg31bovA1BNXdWbd4MY4pjJdFQxhE2oBGW2CDtpDnAXY6
         p1Auizgeprk1kdsDIpqIPL9FsEPJCatn62Szv3+Ix4w+XO4aKuK8M8+M+xdElv5SOcZj
         FzTYdAIh39DUSNkRePZU35f114CwpJIrNdoSFH8nhJh0Uxea2TuePga0K2YQhWoh8Bso
         yYoAj6031u6Rq83HE7HpBSGD9GSJL6c+20wS5QGa9Q5u7xyAz/rTctJz5UsJ8VKjUPFH
         +vbwx8+zuWpTGzNhAyvuG2kaBI/PJW46osncxGCsvsQnwvQJ/Y7nPWa8EXeMkcVc3qiK
         BIcQ==
X-Gm-Message-State: AMCzsaVAIdJ1vKxREUgl+QnWZ649pXJ2DHvopORTd2pVSy/umMwC6YaF
	f+KtdKLRokvC+VzIgvXqQwk=
X-Google-Smtp-Source: AOwi7QCfAy+nIDV8J6RAHJFZMYr6EVY5Pbv10+oJhD1C0OJ9OSX0mM08DCvzYAZVqhRvJwZt/ivkEg==
X-Received: by 10.98.33.203 with SMTP id o72mr258639pfj.41.1507137355500;
        Wed, 04 Oct 2017 10:15:55 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([182.70.213.86])
        by smtp.gmail.com with ESMTPSA id y84sm11975810pff.158.2017.10.04.10.15.54
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Oct 2017 10:15:54 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH v2] Staging: rtl8188eu: core: rtw_xmit: Use list_for_each_entry_safe
Date: Wed,  4 Oct 2017 22:45:50 +0530
Message-Id: <1507137350-3802-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

This is a cleanup patch and doesn't change runtime behaviour. It
changes an open coded list traversal to use list_for_each_entry_safe.
Done using the following semantic patch by coccinelle.

@r@
struct list_head* l;
expression e;
identifier m,list_del_init,f;
type T1;
T1* pos;
iterator name list_for_each_entry_safe;
@@

f(...){

+T1* tmp;

<+...

-while(...)
+list_for_each_entry_safe(pos,tmp,l,m)
{
...
-pos = container_of(l,T1,m);
...
-l=e;
 <+...
 list_del_init(&pos->m)
 ...+>
}

...+>

}

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
Changes in v2
 -Make commit message more clear.
 -Add file name to the subject.

 drivers/staging/rtl8188eu/core/rtw_xmit.c | 23 ++++++-----------------
 1 file changed, 6 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index e8d9858..6d8820b 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -1869,7 +1869,7 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 	u8 update_mask = 0, wmmps_ac = 0;
 	struct sta_info *psta_bmc;
 	struct list_head *xmitframe_plist, *xmitframe_phead;
-	struct xmit_frame *pxmitframe = NULL;
+	struct xmit_frame *pxmitframe = NULL, *tmp;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
 	spin_lock_bh(&psta->sleep_q.lock);
@@ -1877,11 +1877,7 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 	xmitframe_phead = get_list_head(&psta->sleep_q);
 	xmitframe_plist = xmitframe_phead->next;
 
-	while (xmitframe_phead != xmitframe_plist) {
-		pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
-
-		xmitframe_plist = xmitframe_plist->next;
-
+	list_for_each_entry_safe(pxmitframe, tmp, xmitframe_plist, list) {
 		list_del_init(&pxmitframe->list);
 
 		switch (pxmitframe->attrib.priority) {
@@ -1958,11 +1954,8 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 		xmitframe_phead = get_list_head(&psta_bmc->sleep_q);
 		xmitframe_plist = xmitframe_phead->next;
 
-		while (xmitframe_phead != xmitframe_plist) {
-			pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
-
-			xmitframe_plist = xmitframe_plist->next;
-
+		list_for_each_entry_safe(pxmitframe, tmp, xmitframe_plist,
+					 list) {
 			list_del_init(&pxmitframe->list);
 
 			psta_bmc->sleepq_len--;
@@ -1997,7 +1990,7 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
 {
 	u8 wmmps_ac = 0;
 	struct list_head *xmitframe_plist, *xmitframe_phead;
-	struct xmit_frame *pxmitframe = NULL;
+	struct xmit_frame *pxmitframe = NULL, *tmp;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
 	spin_lock_bh(&psta->sleep_q.lock);
@@ -2005,11 +1998,7 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
 	xmitframe_phead = get_list_head(&psta->sleep_q);
 	xmitframe_plist = xmitframe_phead->next;
 
-	while (xmitframe_phead != xmitframe_plist) {
-		pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
-
-		xmitframe_plist = xmitframe_plist->next;
-
+	list_for_each_entry_safe(pxmitframe, tmp, xmitframe_plist, list) {
 		switch (pxmitframe->attrib.priority) {
 		case 1:
 		case 2:
-- 
2.7.4


