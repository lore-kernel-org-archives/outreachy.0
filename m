X-GM-THRID: 6207450266150633472
X-Received: by 10.31.54.198 with SMTP id d189mr15474179vka.6.1445285466578;
        Mon, 19 Oct 2015 13:11:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.151.145 with SMTP id z139ls1540979iod.46.gmail; Mon, 19
 Oct 2015 13:11:06 -0700 (PDT)
X-Received: by 10.107.38.141 with SMTP id m135mr13110776iom.18.1445285466205;
        Mon, 19 Oct 2015 13:11:06 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id vy6si3446310pbc.1.2015.10.19.13.11.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2015 13:11:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fv9so104814625pac.3
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Oct 2015 13:11:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=nNOANzD8Lf39pLVZnExY1oz+ALRTY8lJfV+0FyRF7xw=;
        b=XJUyDJWeeL3rapG+b9HwrUnvc/ugV3ipWbvcH+XTrjbzMIlHqEnyXViwTMKojjYyCo
         y5UwwgklEiRjPIhWNkpK9FuCIVSc6JpRB3z+pXMo+SQ33+C9/KoScfMTiaqDMwAiTgRj
         49JqYOCqP42fHh5wJSyrrLqRXHWRxXwjkKJuXmIk81mD1/oZHuogLj5o59GBz3anNn/1
         rPBmd7nDlgGleJTpewRyKinjfsyn2IASYW5TiuwSlEBLSpJUTdv6mV/WYvsLNUXe9j1A
         jOdxASYjIsN4EH33w1VI4juxakz9Vsl1O9ZlrK740GZ4/H7fiXG+pCyhP9rHEroC7cNE
         4Zhg==
X-Received: by 10.67.24.97 with SMTP id ih1mr36929522pad.13.1445285466054;
        Mon, 19 Oct 2015 13:11:06 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id rl17sm38180511pab.2.2015.10.19.13.11.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 19 Oct 2015 13:11:05 -0700 (PDT)
Date: Mon, 19 Oct 2015 13:11:04 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/5] staging: r8723au: add & use local variable to simplify
 references
Message-ID: <15e010f381c729bd47401d08dc85685e6d051086.1445282918.git.amsfield22@gmail.com>
References: <cover.1445282918.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445282918.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Add local variable scanned_queue to rtw_createbss_cmd23a_callback()
and use it (6x) to simplify references.

Resolves checkpatch.pl WARNING: line over 80 characters

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---

Note to reviewers:
I considered removing another local variable to compensate for the one
I added.  tgt_network is set and used once. I did not remove tgt_network
as it was beyond the scope of the checkpatch error I set out to address.

alison


 drivers/staging/rtl8723au/core/rtw_cmd.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_cmd.c b/drivers/staging/rtl8723au/core/rtw_cmd.c
index 6034428..4d9850c 100644
--- a/drivers/staging/rtl8723au/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723au/core/rtw_cmd.c
@@ -1365,6 +1365,7 @@ void rtw_createbss_cmd23a_callback(struct rtw_adapter *padapter,
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct wlan_bssid_ex *pnetwork = (struct wlan_bssid_ex *)pcmd->parmbuf;
 	struct wlan_network *tgt_network = &pmlmepriv->cur_network;
+	struct rtw_queue *scanned_queue = &pmlmepriv->scanned_queue;
 
 	if (pcmd->res != H2C_SUCCESS) {
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_,
@@ -1394,19 +1395,19 @@ void rtw_createbss_cmd23a_callback(struct rtw_adapter *padapter,
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
@@ -1430,7 +1431,8 @@ void rtw_createbss_cmd23a_callback(struct rtw_adapter *padapter,
 
 		clr_fwstate(pmlmepriv, _FW_UNDER_LINKING);
 
-		spin_unlock_bh(&pmlmepriv->scanned_queue.lock);
+		spin_unlock_bh(&scanned_queue->lock);
+
 		/*
 		 * we will set _FW_LINKED when there is one more
 		 * sat to join us (rtw_stassoc_event_callback23a)
-- 
2.1.4


