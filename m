X-GM-THRID: 6207450266150633472
X-Received: by 10.182.153.169 with SMTP id vh9mr6586429obb.18.1445407784046;
        Tue, 20 Oct 2015 23:09:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.30.65 with SMTP id e62ls358600ioe.49.gmail; Tue, 20 Oct
 2015 23:09:43 -0700 (PDT)
X-Received: by 10.50.78.230 with SMTP id e6mr24954871igx.10.1445407783768;
        Tue, 20 Oct 2015 23:09:43 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id pe1si836635pac.2.2015.10.20.23.09.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2015 23:09:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id hk11so44809101pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2015 23:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=dZOcuYc33hPcXR+p0XHr7cuj/Vgt/sfrV4lll6bMe2U=;
        b=hycfIvWPaIb0Vij9THnBZHZj/SFpefJOGUzexQ3Hl2zSmaSNU6HTi3pGHC1lOMpVHd
         xAIQEcA1YMKMFd/VARo7elJwavL/EDdLQRH9iSMbfjvo9r5+bY/jAuk6zDt+833SijgR
         6urlfpLo5e+pA1CHydBIoT9JF22YKo02NOVXQ8VDL5O9Xthy1SI7G8Als+C5tKsKhG31
         mR76h9zAoJ0GHXNTrUaMeq9VJgvzIpMYgqUSe5QKINJViDqRPniqTyOAtn1k0dj4Xmsn
         NkXTQn6zMA4t5PEvdiTDe4DupkNu4QBYhKgMdgFQ4JaEozqsh5GMjOxW5zYl6SJNgz+G
         BLfw==
X-Received: by 10.68.190.105 with SMTP id gp9mr8478248pbc.152.1445407783654;
        Tue, 20 Oct 2015 23:09:43 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id pj10sm7033000pbc.59.2015.10.20.23.09.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Oct 2015 23:09:43 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/5] staging: r8723au: add & use local variable to simplify references
Date: Tue, 20 Oct 2015 23:09:37 -0700
Message-Id: <e04149c759a2d4b077766fd511df0a45ccaa3558.1445402009.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1445402009.git.amsfield22@gmail.com>
References: <cover.1445402009.git.amsfield22@gmail.com>

Add local variable scanned_queue to rtw_createbss_cmd23a_callback()
and use it (5x) to simplify references.

Addresses checkpatch.pl WARNING: line over 80 characters

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---

Note to reviewers:
I considered removing another local variable to compensate for the one
I added.  tgt_network is set and used once. I did not remove tgt_network
as it was beyond the scope of the checkpatch error I set out to address.

a

 drivers/staging/rtl8723au/core/rtw_cmd.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
index 334cc5b..6330933 100644
--- a/drivers/staging/rtl8723au/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
@@ -1355,6 +1355,7 @@ void rtw_createbss_cmd23a_callback(struct rtw_adapter *padapter,
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct wlan_bssid_ex *pnetwork = (struct wlan_bssid_ex *)pcmd->parmbuf;
 	struct wlan_network *tgt_network = &pmlmepriv->cur_network;
+	struct rtw_queue *scanned_queue = &pmlmepriv->scanned_queue;
 
 	if (pcmd->res != H2C_SUCCESS) {
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_,
@@ -1384,19 +1385,19 @@ void rtw_createbss_cmd23a_callback(struct rtw_adapter *padapter,
 		spin_unlock_bh(&pmlmepriv->lock);
 	} else {
 		pwlan = rtw_alloc_network(pmlmepriv, GFP_KERNEL);
-		spin_lock_bh(&pmlmepriv->scanned_queue.lock);
+		spin_lock_bh(&scanned_queue->lock);
 		if (!pwlan) {
-			pwlan = rtw_get_oldest_wlan_network23a(&pmlmepriv->scanned_queue);
+			pwlan = rtw_get_oldest_wlan_network23a(scanned_queue);
 			if (!pwlan) {
 				RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_,
 					 "Error:  can't get pwlan in rtw23a_joinbss_event_cb\n");
-				spin_unlock_bh(&pmlmepriv->scanned_queue.lock);
+				spin_unlock_bh(&scanned_queue->lock);
 				goto createbss_cmd_fail;
 			}
 			pwlan->last_scanned = jiffies;
 		} else {
 			list_add_tail(&pwlan->list,
-				      &pmlmepriv->scanned_queue.queue);
+				      &scanned_queue->queue);
 		}
 
 		pnetwork->Length = get_wlan_bssid_ex_sz(pnetwork);
@@ -1415,9 +1416,9 @@ void rtw_createbss_cmd23a_callback(struct rtw_adapter *padapter,
 
 		clr_fwstate(pmlmepriv, _FW_UNDER_LINKING);
 
-		spin_unlock_bh(&pmlmepriv->scanned_queue.lock);
 		/*  we will set _FW_LINKED when there is one more sat to
 		    join us (rtw_stassoc_event_callback23a) */
+		spin_unlock_bh(&scanned_queue->lock);
 	}
 
 createbss_cmd_fail:
-- 
2.1.4


