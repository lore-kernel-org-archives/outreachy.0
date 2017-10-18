X-GM-THRID: 6478335539266191360
X-Received: by 10.129.89.139 with SMTP id n133mr1763918ywb.177.1508355056503;
        Wed, 18 Oct 2017 12:30:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.98.8 with SMTP id w8ls404592ywb.0.gmail; Wed, 18 Oct 2017
 12:30:55 -0700 (PDT)
X-Received: by 10.13.234.200 with SMTP id t191mr1971253ywe.186.1508355055810;
        Wed, 18 Oct 2017 12:30:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508355055; cv=none;
        d=google.com; s=arc-20160816;
        b=Ox2NeTPzgVxQLNXT1PvaO4uHvjp1SbZlpVNr08AXOzEg2Grt+bZi+6MaGn6hCXCIOX
         NGIpvdFh+oF8VYnXjxTtX1Uygqpk8eH8iy3PM4jO7ATgK4y9pzgzkWgWD9s7nlsu5hX7
         mfVSTVBYDEsPksXahaJMiUPAafzEOHE3SS77wfgaPaj6cVYFDHLkySgunFZ4qvRhkx3o
         DIbzv9KfyJOZx6QYG5yBL91sOyzxBGHfzJRLJ1pomqTDZ4gHTrjwPcm3f+m/u9BqC8YF
         cq8WFvPxVHNpn+8dUPQdGOfexM6+/BR/V4PmBqbqbJaUodzteJD363njPcz59QMcu06V
         2uwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=5PGGpq40wB3oXkX+Q+2XMH09jaaF7noOGdodaxcAHgk=;
        b=msZQ2NsDlz25S4ZyHB1XFC5JqcQZrCqfcOfCMJxTh9vdr/oI+RBeO3y2FedVXJg6mK
         v/oSPxI1s/gGUhQtJjEFMZ6YVB6eDoLjObz638AF6jWE2TOjjzDpwyjuipPFrVcuuA3X
         S7g+2QjBVKVpoyxLQlQel0fQC35cqiGaPTs8/ogFS+UiPsJMghlUuNkGQcBUZogGjq8s
         xqZQZVl+i8gNlgJo2KjAGNaAkXwV3fEY3GduTdRlfzB9IOlcynpprB7IRrwjv/MJpe06
         2pUQYl7P/4UTDxLTJMEEdlbcWKy5pF3bqiCUsBKEQzPBvU0iCYWlhHKt1+InSg41E/Lr
         VKsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NgtCPB9R;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id u20si778886ybd.1.2017.10.18.12.30.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 12:30:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NgtCPB9R;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 17so4675991pfn.12
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 12:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=5PGGpq40wB3oXkX+Q+2XMH09jaaF7noOGdodaxcAHgk=;
        b=NgtCPB9RL554wKK98jrl+VW7V5YgNE4Ef+8FQlKaJFDXYUWHEkUAVZHXvmnhSnSgTn
         U+iT5h6eWdEnN1jg6109L3r6yA2cHhHTF4dIRUSyQp6ozIRdasLFjxrVcRgVA1ncBRa4
         tNsHQH6JpzdPG5jLiXRP1PNzQxn3HA34ik5As53KYPAdLpQGAZNMKkajiYQZLHpMMjah
         ffrAGvW1a0zVqPkqY+OTM7Ist/g0jUcLUL14w3BmaymrueqgrLF/jlhrq3Dws7Pj68xZ
         F+QUV0SYh5UBuE2hoSEwmpQHupbyzJPiBDA5+plX9jA1BsNFrAaRDR0Wf2TOGhxbJykm
         dlWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=5PGGpq40wB3oXkX+Q+2XMH09jaaF7noOGdodaxcAHgk=;
        b=ntObvxkWuqwgB8fRWUKbNKZuo05NfS1ELdb6fnN2KkDZxsI3658p+12KFdL7bFCPYK
         tzU4KI+9b7eDBeunl7zBQfBAexITmFTXNCPLNN5+IhzXpEWRCMNarRHXwT7RKbUAioj3
         hoHiLqpnOwT8UWPa8Aszi7ETbfelraNDVlyUoBDIau399SRdUi45c258aPu7lEWPXXOH
         /65j1JBkbpJPcp0xt/Rc9IFofdgbo3WbMw6gVUR3YCpGXzC/CAjVJsIHBT6mcexQcBzj
         Np4h7uSuveY77FWB1T+GUO4U3kehUJTfyLDDT1zMUZkHKzx84e4NXXtHIYxzAuM7LZ8n
         8KLw==
X-Gm-Message-State: AMCzsaVm86Crhp/KHEsDijCUWzajg/w8o44mBmeMqqAW3fGri7zoWZ0t
	TaxFk/lhc+eMQ7BzVYzVrqy4rQ==
X-Google-Smtp-Source: ABhQp+Q3o0ooJ/TC+iB2dI5hYIio2fBx418jO7zaaffPnonhOUlrR1htHKNjZnNnkLmexkditS9kYw==
X-Received: by 10.159.244.138 with SMTP id y10mr3439796plr.399.1508355055101;
        Wed, 18 Oct 2017 12:30:55 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.60.166.95])
        by smtp.gmail.com with ESMTPSA id a4sm25106392pfj.72.2017.10.18.12.30.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 12:30:54 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH 1/4] Staging: rtl8188eu: core: rtw_xmit: Use list_for_each_entry_safe
Date: Thu, 19 Oct 2017 01:00:49 +0530
Message-Id: <f59f87107f429284479c9eeaf7d19a326f9717b8.1508354332.git.srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1508354332.git.srishtishar@gmail.com>
References: <cover.1508354332.git.srishtishar@gmail.com>

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
 drivers/staging/rtl8188eu/core/rtw_xmit.c | 22 ++++++----------------
 1 file changed, 6 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index e8d9858..5255c27 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -1866,6 +1866,7 @@ void stop_sta_xmit(struct adapter *padapter, struct sta_info *psta)
 
 void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 {
+	struct xmit_frame *tmp;
 	u8 update_mask = 0, wmmps_ac = 0;
 	struct sta_info *psta_bmc;
 	struct list_head *xmitframe_plist, *xmitframe_phead;
@@ -1877,11 +1878,7 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
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
@@ -1958,11 +1955,8 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
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
@@ -1997,7 +1991,7 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
 {
 	u8 wmmps_ac = 0;
 	struct list_head *xmitframe_plist, *xmitframe_phead;
-	struct xmit_frame *pxmitframe = NULL;
+	struct xmit_frame *pxmitframe = NULL, *tmp;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
 	spin_lock_bh(&psta->sleep_q.lock);
@@ -2005,11 +1999,7 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
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


