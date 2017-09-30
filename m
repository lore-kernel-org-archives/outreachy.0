X-GM-THRID: 6471467521247543296
X-Received: by 10.101.68.197 with SMTP id g5mr951880pgs.49.1506756087054;
        Sat, 30 Sep 2017 00:21:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.132.103 with SMTP id 94ls2708289ple.9.gmail; Sat, 30 Sep
 2017 00:21:26 -0700 (PDT)
X-Received: by 10.99.9.3 with SMTP id 3mr511559pgj.19.1506756086425;
        Sat, 30 Sep 2017 00:21:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506756086; cv=none;
        d=google.com; s=arc-20160816;
        b=v1CchOLVlpSyWBDUT7xbhiTiNX4MQ/Mw3rWsykgjE6mfVCnTpyV5r9INQRot2BytC/
         sDa8vUAx1LmUu8yiEtcV4xl7IpZ+AcHn26imMagM7ztYiv1SW2JUbKKVq5oeWfIwyPEE
         Rq/wNlMU0UtAUge170cHJO6ns0lsX566T1YOclxNV+374TMv6BRd0Kb24Zead20T98Cr
         IRjwu9FrNjsnGQ13HsMKn3MWTdBRztiNIB/ANjhpjj2hFBYSQHMmHQf6OQSUKIiYknJe
         Abj5hAeMKtua01m8NFWVlyBEq6C75obEASBJMuJ3tleG0M3oMvGT4pSKhefkG7YEk6FK
         Ul2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=HKc8hZjmFrzhl8zUThNTIR17C5n0FskSZRiFeZfNI/g=;
        b=I2VyZZKmQj2r+L9T2h4anr4iHjKyUfEDHaaUWY5XOemgdc1hYWBe10R49iUG+uyxTi
         ymegzg64PlGC9/ueR7Clz1elRl21qu6fAL15SSWAlsg0VFDdvjGcGxfR6POpB8WaTiwq
         q9k5dbiav6slmMrr5dCgGgQnwRqcv0p8TvhBalFysDaMyIefTmhW5nMqJZ2NYESSzvsw
         EMRUJsnR+4sunZAAiU9K7hCga1XIvoZh+dHU4bEyXmKujfEc/cW/ViOFISA/c11QkDU6
         ensOpEj+ffJGILydGaw9aR3DDZ87zoPGpAcrov8XBPesAjZcEWBB27bJirmwfz2w+V6h
         rsGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IbXCMJi7;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id l80si79893pfg.25.2017.09.30.00.21.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 00:21:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IbXCMJi7;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id g65so1137035pfe.1
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Sep 2017 00:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=HKc8hZjmFrzhl8zUThNTIR17C5n0FskSZRiFeZfNI/g=;
        b=IbXCMJi7OtrPgn3Eo+YpCzoiFP6oiT4zQsXk1lEyQ18b5v182Y1Oc6XDSdDhE3k9IT
         VGetIiOqb4jabeKslqUG/tr8xMSgEi2BsELfeuVB4OY+jzg4rLm8kKiDPm0jqckSZl3x
         mi6vmUlAtd7JhkwuQ57wVJQCs/zXOEsg2BQVjbSTvosgBXvvfd4Y8SaUnniMvSmdFYMZ
         PUr2cvCMrfbjc2NoCKKO8LLsWIZ36l62zSWyhjUqV9/QOZ/qPWvBTHaGRc7ko8p5qA6q
         aUyZnSjwsF9/N+LmTSYRgYvUrFLg38RpXGEBLtBRHxzE0A1fCTBqYFQiop/oS8MEj1gU
         W+sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=HKc8hZjmFrzhl8zUThNTIR17C5n0FskSZRiFeZfNI/g=;
        b=nfk7xqMNPL5kbWnJFPZLnNUa6w09iv7AVkcLEjJYFbV7zfiLUsqQRwGLfOxp2wJOeR
         s3wufW7jawQiyShCUVPqFrQ+wq+cSOJ2s18KwO3bm9o3zUAt+x526OiHQHoG07rwsyEO
         0nMLIXfE3MzQhrMKAIOdsOOnVZWjjTtIlczX5EshZ+WYjw/rSdbjlQVUwLjFc4wZOI9X
         /HBBzSipvt/aYSgrI0LIJ76Q/naZeq0rtCEmvWSqwbhpq6RHyi6fskgtS5owaEUlR3xh
         7CNU3/j+90xqj3Co6r+XNtD8sP7mP0G8AxRNXCoTopKivT8g9nGm2b1rvhxIQuMLC2MA
         Ggsg==
X-Gm-Message-State: AHPjjUiXeOl3jyOHpqbHZlCgRCTk2cBNSYOCgfkpZAvv8+H358tGXjDn
	TxZJ/I7yF8uCcPVZMKiLznVOhA==
X-Google-Smtp-Source: AOwi7QDi8y2nzCQ6ZtIHWMOK9IaQwttmeEeiGpv0ibaLo/c/yVCMQL68dg9Y/6UMqK+s910zq39/NQ==
X-Received: by 10.159.198.10 with SMTP id f10mr9462539plo.14.1506756086222;
        Sat, 30 Sep 2017 00:21:26 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.6.85])
        by smtp.gmail.com with ESMTPSA id i2sm9179480pfd.21.2017.09.30.00.21.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Sep 2017 00:21:25 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH 6/6] Staging: rtl8188eu: core: Use list_entry instead of container_of
Date: Sat, 30 Sep 2017 12:51:20 +0530
Message-Id: <778fb00439b44bd4a9e1ef06b1d619f9e4f5525f.1506755266.git.srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1506755265.git.srishtishar@gmail.com>
References: <cover.1506755265.git.srishtishar@gmail.com>

For variables of type struct list_head* use list_entry to access
current list element instead of using container_of. Done by the
following semantic patch by coccinelle.

@r@
struct list_head* l;
@@

-container_of
+list_entry
  (l,...)

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_xmit.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index be2f46e..29e9ee9 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -1401,7 +1401,7 @@ void rtw_free_xmitframe_queue(struct xmit_priv *pxmitpriv, struct __queue *pfram
 	plist = phead->next;
 
 	while (phead != plist) {
-		pxmitframe = container_of(plist, struct xmit_frame, list);
+		pxmitframe = list_entry(plist, struct xmit_frame, list);
 
 		plist = plist->next;
 
@@ -1432,7 +1432,7 @@ static struct xmit_frame *dequeue_one_xmitframe(struct xmit_priv *pxmitpriv, str
 	xmitframe_plist = xmitframe_phead->next;
 
 	if (xmitframe_phead != xmitframe_plist) {
-		pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
+		pxmitframe = list_entry(xmitframe_plist, struct xmit_frame, list);
 
 		xmitframe_plist = xmitframe_plist->next;
 
@@ -1473,7 +1473,7 @@ struct xmit_frame *rtw_dequeue_xframe(struct xmit_priv *pxmitpriv, struct hw_xmi
 		sta_plist = sta_phead->next;
 
 		while (sta_phead != sta_plist) {
-			ptxservq = container_of(sta_plist, struct tx_servq, tx_pending);
+			ptxservq = list_entry(sta_plist, struct tx_servq, tx_pending);
 
 			pframe_queue = &ptxservq->sta_pending;
 
@@ -1811,7 +1811,7 @@ static void dequeue_xmitframes_to_sleeping_queue(struct adapter *padapter, struc
 	plist = phead->next;
 
 	while (phead != plist) {
-		pxmitframe = container_of(plist, struct xmit_frame, list);
+		pxmitframe = list_entry(plist, struct xmit_frame, list);
 
 		plist = plist->next;
 
@@ -1878,7 +1878,7 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 	xmitframe_plist = xmitframe_phead->next;
 
 	while (xmitframe_phead != xmitframe_plist) {
-		pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
+		pxmitframe = list_entry(xmitframe_plist, struct xmit_frame, list);
 
 		xmitframe_plist = xmitframe_plist->next;
 
@@ -1959,7 +1959,7 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 		xmitframe_plist = xmitframe_phead->next;
 
 		while (xmitframe_phead != xmitframe_plist) {
-			pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
+			pxmitframe = list_entry(xmitframe_plist, struct xmit_frame, list);
 
 			xmitframe_plist = xmitframe_plist->next;
 
@@ -2006,7 +2006,7 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
 	xmitframe_plist = xmitframe_phead->next;
 
 	while (xmitframe_phead != xmitframe_plist) {
-		pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
+		pxmitframe = list_entry(xmitframe_plist, struct xmit_frame, list);
 
 		xmitframe_plist = xmitframe_plist->next;
 
-- 
2.7.4


