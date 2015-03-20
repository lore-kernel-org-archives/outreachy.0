X-GM-THRID: 9321477832704
X-Received: by 10.112.130.70 with SMTP id oc6mr13754005lbb.13.1426879539461;
        Fri, 20 Mar 2015 12:25:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.83.130 with SMTP id q2ls413325wiy.13.canary; Fri, 20 Mar
 2015 12:25:39 -0700 (PDT)
X-Received: by 10.180.80.35 with SMTP id o3mr1837158wix.0.1426879538589;
        Fri, 20 Mar 2015 12:25:38 -0700 (PDT)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x229.google.com (mail-wg0-x229.google.com. [2a00:1450:400c:c00::229])
        by gmr-mx.google.com with ESMTPS id na10si13386wic.0.2015.03.20.12.25.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Mar 2015 12:25:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) client-ip=2a00:1450:400c:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x229.google.com with SMTP id cc7so97254591wgb.0
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2015 12:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=jzNXUdBR2nICsxg7TrHZarat9ZEQcxqk9BeMmLfvVLU=;
        b=Q1p26m5g0fMnA+JTFJBCb3H4RbQ25EWEbibCwjH+byPYzx05drs1t44grIumedTp1p
         WHf71UQV8BK85coIB2e4D4Eeu6iSETHb7fEygZR/lgZZ3LmCTC3kNFOTEvgjZir15dU1
         eWaZRobtA6pg5g7dRzRaiBLZk9yj0pZmY4x2wDISTd8WYeYigzETy5YeAQcgSWxNZt0K
         HOG+wYbij2Os68oHWso1985agW3wD/naFOGpjw8fk3ZQiG86UcohZhhWl/HbHqi0rfKu
         Vb6A/R1+Jh8DaSJBoDRlokUhlkqydef/yYa8cGCHIvyodlCL6+L9Pab2S4KpGbJj3ZJV
         NcHw==
X-Received: by 10.194.19.10 with SMTP id a10mr166925156wje.153.1426879538501;
        Fri, 20 Mar 2015 12:25:38 -0700 (PDT)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id cf12sm7613286wjb.10.2015.03.20.12.25.36
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Mar 2015 12:25:37 -0700 (PDT)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8188eu: Delete space
Date: Fri, 20 Mar 2015 21:25:20 +0200
Message-Id: <1426879520-31206-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

Deleted spaces before ','.Because it is prohibited by the kernel coding style.
Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
index f2c3ca7..2a0f4ff 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
@@ -789,7 +789,7 @@ u8 *rtw_get_wps_ie(u8 *in_ie, uint in_len, u8 *wps_ie, uint *wps_ielen)
  *
  * Returns: the address of the specific WPS attribute found, or NULL
  */
-u8 *rtw_get_wps_attr(u8 *wps_ie, uint wps_ielen, u16 target_attr_id , u8 *buf_attr, u32 *len_attr)
+u8 *rtw_get_wps_attr(u8 *wps_ie, uint wps_ielen, u16 target_attr_id, u8 *buf_attr, u32 *len_attr)
 {
 	u8 *attr_ptr = NULL;
 	u8 *target_attr_ptr = NULL;
@@ -799,7 +799,7 @@ u8 *rtw_get_wps_attr(u8 *wps_ie, uint wps_ielen, u16 target_attr_id , u8 *buf_at
 		*len_attr = 0;
 
 	if ((wps_ie[0] != _VENDOR_SPECIFIC_IE_) ||
-	    (memcmp(wps_ie + 2, wps_oui , 4)))
+	    (memcmp(wps_ie + 2, wps_oui, 4)))
 		return attr_ptr;
 
 	/*  6 = 1(Element ID) + 1(Length) + 4(WPS OUI) */
@@ -835,7 +835,7 @@ u8 *rtw_get_wps_attr(u8 *wps_ie, uint wps_ielen, u16 target_attr_id , u8 *buf_at
  *
  * Returns: the address of the specific WPS attribute content found, or NULL
  */
-u8 *rtw_get_wps_attr_content(u8 *wps_ie, uint wps_ielen, u16 target_attr_id , u8 *buf_content, uint *len_content)
+u8 *rtw_get_wps_attr_content(u8 *wps_ie, uint wps_ielen, u16 target_attr_id, u8 *buf_content, uint *len_content)
 {
 	u8 *attr_ptr;
 	u32 attr_len;
@@ -1239,7 +1239,7 @@ void rtw_get_bcn_info(struct wlan_network *pnetwork)
 	} else {
 		pnetwork->BcnInfo.encryp_protocol = ENCRYP_PROTOCOL_OPENSYS;
 	}
-	rtw_get_sec_ie(pnetwork->network.IEs , pnetwork->network.IELength, NULL, &rsn_len, NULL, &wpa_len);
+	rtw_get_sec_ie(pnetwork->network.IEs, pnetwork->network.IELength, NULL, &rsn_len, NULL, &wpa_len);
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: ssid =%s\n", pnetwork->network.Ssid.Ssid));
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: wpa_len =%d rsn_len =%d\n", wpa_len, rsn_len));
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_get_bcn_info: ssid =%s\n", pnetwork->network.Ssid.Ssid));
-- 
1.9.1


