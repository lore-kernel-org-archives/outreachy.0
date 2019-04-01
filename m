X-GM-THRID: 6675056001777926144
X-Received: by 2002:a5e:8b44:: with SMTP id z4mr7153378iom.1.1554157585638;
        Mon, 01 Apr 2019 15:26:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:bdc1:: with SMTP id n184ls4149591iof.0.gmail; Mon, 01
 Apr 2019 15:26:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyg4PhT0hIOc+DyzkbWAAd6/sFkH9moMpPZstnIgWwfzKn7t+kTOwqaKNZDkgL68QNGHRMC
X-Received: by 2002:a6b:e30e:: with SMTP id u14mr4455119ioc.13.1554157584810;
        Mon, 01 Apr 2019 15:26:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554157584; cv=none;
        d=google.com; s=arc-20160816;
        b=FlDCvAuiM5s/Nu5GRKrhZpZuXdV4/PzJ6BTLF5QNix67I6FMpiz60H3PIYizVDJvVk
         d4HWD1cmekcn0f5lraQ1PaG8rJzxQwKna6kR8lfT8C2/+SQcSeVY1oMDXBbGgtSMfwlf
         JWLR6gOgXpv4YFhr01B5pquqm0eLEaMps0gUlc+0fhkXRB+aqYCDR8/fuZw2b56q5uTc
         cboJwDpu8rLGFRE8kN8ieEPi8A7wkhmeT6JMT/jhHMUbxY1OrwpcdeOnMz+6jG6eOIjA
         iM1wklEmECR1WAbzOJl9w18vQj/2GkilgRgjnVo5LjPjJNOeWH2xNwmNNUki9Q7rqL0k
         Fqzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=5smd0EDiglc0EiWAaY9DYwmT3t4SlQjKt5LQbZhF/fE=;
        b=JzpDyfM/sZ4LL/O/MWUkqI+EQyCk0iFcT2nkOmZt00KpHL1h5EwBRKm1ozPyTVBQAi
         ZlJ7solM8U/hwenMZfKxm8pofnir8i/muDWt4cTYt/n/tjm9mmE31em0bDka4vAbRHzN
         KYMTovpctcv6gp0mR1ZCD2/3ffGKh88rrw01kolG7qnxTSYjDrQ9z0F7n+C4ukHCY1Q0
         Q14Et9evHfbsUpDIQ904n64udZnWkln5hUqXkMr6YBLBGfiSNKBLxj3euohUDs1O0K80
         9K7G1dtIhitTt3pPnk2pmfUxS0zR7tacfmefHwkwvTc96tFS1DU25Lv5sbnl2myAnTbn
         xyRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=by+h5aG0;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id 3si679158itz.0.2019.04.01.15.26.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 15:26:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=by+h5aG0;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x241.google.com with SMTP id n187so8753168oih.6
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 15:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=5smd0EDiglc0EiWAaY9DYwmT3t4SlQjKt5LQbZhF/fE=;
        b=by+h5aG0ZnBw39W4IwU1Dpjzkhs7+RsFeII1NPCQN1whbXUx5QLohFb4U0nWuF4ESK
         Bcfvo3bUmDXk9+aO0Ggn+awfccn+4RehoNBmr+dL6u4SkzA36CtEdf0d92kxFS2wgBBK
         6J7ILKSykAXv/cQxIWhHje+mil8i7+Va4FX2RxQHa0JAKXYtldF3tlP+/ZDVoN0Mdaer
         RzN4cqQBfZRVNQouhdY3u+lcOMEbNErA6N241fDl3GwbTR16QmoZhqVjtnClOjyvQIPm
         wiebm5Sl+LHz8a0WEoSNfcGVpbnS+3e3K19jA8q/otnE1KOHeQxX9MF1lyljmKd9ZibF
         IPSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5smd0EDiglc0EiWAaY9DYwmT3t4SlQjKt5LQbZhF/fE=;
        b=LjGYuzaazeXD1QvscT1AtMRcGQmwwlSheqJYJckclYUvb8YupvyKudd1YaRC21hMsm
         f/oOGTkYGdr5CxOTPotE9SuwhE+hOj0OrE+uFIm7nX/nURzsS4H9c7+fQ6RWs0cQP2vr
         PQWYON9w44dKmmLbVvkyZZW+jWxYwAb2CCNZooqJ+bP7Bw6VorJVSCGL1XBzrcI7BeKT
         d1zMKyXtb7NX21oUeJIG2OwBXt/c5WdXfxBOhZlaCavKaBk4srOiwEVWIZ/f4SlI9Ykn
         ysPz0RKlZRYL3iz43c2z+4ELOCAqcEmo3chHXRHbPcmxpHolyrfNVa9RZkiX5LGQWMKS
         vVug==
X-Gm-Message-State: APjAAAUzwRVI5xVN8aMS9bn7t4Yc/kGgVFFQcVxn9lGzNJofIUl15KZt
	yspjxlNp7ms8kze1szO0jJQ=
X-Received: by 2002:aca:b7c5:: with SMTP id h188mr14153812oif.130.1554157584344;
        Mon, 01 Apr 2019 15:26:24 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:35a4:8fe3:3a02:b8fd])
        by smtp.gmail.com with ESMTPSA id q25sm1868433otl.60.2019.04.01.15.26.23
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 01 Apr 2019 15:26:23 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v4] Staging: rtl8723bs: core: Remove typecast in kfree
Date: Mon,  1 Apr 2019 17:26:21 -0500
Message-Id: <20190401222621.30051-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove typecast in kfree, as per definition of kfree in
include/linux/slab.h#L144, the parameter type of kfree is void*, and
hence C compiler casts any pointer type to void*.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

---
Changes in v4-
- Changed commit log and subject line

Changes in v3 -
- Tested and compiled the patch

Changes in v2:
- Commit log modified
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 22 +++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index ebb45acb4446..6ac2b03805e4 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -816,7 +816,7 @@ unsigned int OnBeacon(struct adapter *padapter, union recv_frame *precv_frame)
 					update_network(&(pmlmepriv->cur_network.network), pbss, padapter, true);
 					rtw_get_bcn_info(&(pmlmepriv->cur_network));
 				}
-				kfree((u8 *)pbss);
+				kfree(pbss);
 			}
 
 			/* check the vendor of the assoc AP */
@@ -5052,7 +5052,7 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
 	cmdsz = (sizeof(struct survey_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree(pcmd_obj);
 		return;
 	}
 
@@ -5073,8 +5073,8 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
 	psurvey_evt = (struct survey_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 
 	if (collect_bss_info(padapter, precv_frame, (struct wlan_bssid_ex *)&psurvey_evt->bss) == _FAIL) {
-		kfree((u8 *)pcmd_obj);
-		kfree((u8 *)pevtcmd);
+		kfree(pcmd_obj);
+		kfree(pevtcmd);
 		return;
 	}
 
@@ -5105,7 +5105,7 @@ void report_surveydone_event(struct adapter *padapter)
 	cmdsz = (sizeof(struct surveydone_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree(pcmd_obj);
 		return;
 	}
 
@@ -5152,7 +5152,7 @@ void report_join_res(struct adapter *padapter, int res)
 	cmdsz = (sizeof(struct joinbss_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree(pcmd_obj);
 		return;
 	}
 
@@ -5203,7 +5203,7 @@ void report_wmm_edca_update(struct adapter *padapter)
 	cmdsz = (sizeof(struct wmm_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree(pcmd_obj);
 		return;
 	}
 
@@ -5250,7 +5250,7 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsi
 	cmdsz = (sizeof(struct stadel_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree(pcmd_obj);
 		return;
 	}
 
@@ -5305,7 +5305,7 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr, int
 	cmdsz = (sizeof(struct stassoc_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree(pcmd_obj);
 		return;
 	}
 
@@ -5836,7 +5836,7 @@ void survey_timer_hdl(struct timer_list *t)
 
 		psurveyPara = rtw_zmalloc(sizeof(struct sitesurvey_parm));
 		if (psurveyPara == NULL) {
-			kfree((unsigned char *)ph2c);
+			kfree(ph2c);
 			goto exit_survey_timer_hdl;
 		}
 
@@ -6603,7 +6603,7 @@ u8 set_tx_beacon_cmd(struct adapter *padapter)
 
 	ptxBeacon_parm = rtw_zmalloc(sizeof(struct Tx_Beacon_param));
 	if (ptxBeacon_parm == NULL) {
-		kfree((unsigned char *)ph2c);
+		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
 	}
-- 
2.17.1


