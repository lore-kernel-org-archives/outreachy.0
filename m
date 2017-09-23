X-GM-THRID: 6469106545355390976
X-Received: by 10.223.150.118 with SMTP id c51mr118391wra.20.1506206240237;
        Sat, 23 Sep 2017 15:37:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.72 with SMTP id x8ls1833706ljd.12.gmail; Sat, 23 Sep
 2017 15:37:18 -0700 (PDT)
X-Received: by 10.46.43.216 with SMTP id r85mr155277ljr.4.1506206238781;
        Sat, 23 Sep 2017 15:37:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506206238; cv=none;
        d=google.com; s=arc-20160816;
        b=O/HEMfjI/xEIkRv4CEMEWX30rNpz1jyqdjHm/D1KgJq8MLyjzUmipP37SkAz9yeSPg
         mW0yT1WsZUo68DFd/m5NRQH043S7HAJclWvewfB1BUEp6ja+1ppL2jWD4Mc4RQr400LF
         5FyePDje+oz0fVowARTaKx+N6xzWGjt10/ZFY8JVFrcqRXp+iwo4i8Nrx9Wxo9fdXm0A
         JluNNCCDLsjExoZGr2M4WbOhhl3d0eiDW5Xv+alhHTks519CfwKTuTVHIzaq1GmJ+dTh
         RRukp8XS6nNXTRrdgRXmwaWbKKHnImLPOZzwQPnSv5ix8m0NXYkFADEPsNeVmIgNZGWC
         GM3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=qrHwzvjt1Qr9jKRMqNT7tNWtMeTY+EhLbtBkJg/1FYk=;
        b=lTuk9xhhoTu0056mtghg3kBwMu3AnBgqaC5a5v8xTCYt0dmN2nPv6PHvbuUsXYLQ/q
         DoYKXzQwbKqw3Hu+RdVkKZEXq6BxXMvEWlYidjJtKoOjmNKG5ANx6dxSMIvLh9vApa7S
         Y6SpOae9rH4LdCyLoRZhrSDTHxpG1FWHDlngwyw0v1GUIW9MM92npaMRnDcq6dBYfuRy
         OgeXhA9mOLspec367lMQ5krTmPW97+7J9Ra/OBgw0ZhSz8+Rkmwru09nEBttih3cKWGD
         MwRXrpHkNb2kgjixzSS2ftCVHoPXzUDWbXjzmowPfTchvJK8HrvPkccJ6s6S4iFp88lc
         Jm8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qenZ2Whd;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id b130si188944wme.0.2017.09.23.15.37.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Sep 2017 15:37:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qenZ2Whd;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id x17so4114606wmd.5
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Sep 2017 15:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=qrHwzvjt1Qr9jKRMqNT7tNWtMeTY+EhLbtBkJg/1FYk=;
        b=qenZ2WhdedJ4dkYsnoN/7B0VU+XqC4a6m2ySHCL3dbs8eJHZ9sgtsM/2qTZiloW61c
         xm036rRaVqRPBtAh7IdD+nAayWJ7hXe9UYdLj+M2qnmbYfaNXsopsaQ6x4LqJm8qJ8MA
         uFm5VXmCIGFecGOr+UESfO4BUJzLWBoDVBE2fdgI7eNYcXPUqpg56Y3LbFZCAVR/lwKH
         sV6dSWsEjFRZgkMvoWUQtbNJ8n7iRRpAOXRNWkCv7qP99Xju1kkr3E4eoys4u3g8gvC+
         VYjqfz1EmDGWxCw3hqKBdAmT6oFzzWPc/M9tIlPo2PKd7dwJiYGv8XeM/AQt44Ek5dIp
         2j8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=qrHwzvjt1Qr9jKRMqNT7tNWtMeTY+EhLbtBkJg/1FYk=;
        b=oCjBbvJ7nWLNlsoUGp7lcoWsTXXA+X+dZhjIhfO6VLBBLDFUhZToOPAGhjdvJ/HMWp
         6HdSb0PX7QE01uMPt1Yk+ETjmCcd0fhfExKdHt3d98KaWAsnsdGegLDSuGKHap5X6sdI
         DpDtg8K/vGeSonOm73zJ/MWx3n0Le/SJT166B5/CxymvGLuCqL39vegnpoWTDWpff6Av
         bUZiGO/KFGbnvaxYxEAwrs5h5Rx+jXitipWzf5LX++Fo2aS6swfvj6LSZ7s4WyZfoscz
         wmtxC5nKRke+F1w5oiMhll/boTmIX5TeHOImIVHvxwjfE2YNQt+mwGLrKI27iW076NfJ
         ZyTw==
X-Gm-Message-State: AHPjjUhBFK+OYXMVSvHZebqXVWBJvOQYWmlb+3TIFXZpYgJcohBTSTZU
	Rg6YKdeVq5HqeTtOf5Htu8cz27VM
X-Google-Smtp-Source: AOwi7QBTGVqDeopJ/u4lvvfuEtJl94rMLQqZ4wyXZUNwRaZSx5WfuDFRe/gr954wOvCtkQ21ov10/A==
X-Received: by 10.28.142.147 with SMTP id q141mr6608803wmd.155.1506206238452;
        Sat, 23 Sep 2017 15:37:18 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([86.127.134.154])
        by smtp.gmail.com with ESMTPSA id r21sm1807825wmd.26.2017.09.23.15.37.17
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Sep 2017 15:37:17 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: rtl8188eu: core: Use __func__ instead of function name
Date: Sun, 24 Sep 2017 01:37:08 +0300
Message-Id: <20170923223708.19952-1-georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0

Replace the function name from format string with the
constant __func__ to avoid multiple changes in case
the name of the function will be modified.

Issue reported by checkpatch.pl script.

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 3fd5f4102b36..3c764b847249 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -237,25 +237,25 @@ static int recvframe_chkmic(struct adapter *adapter,
 	stainfo = rtw_get_stainfo(&adapter->stapriv, &prxattrib->ta[0]);
 
 	if (prxattrib->encrypt == _TKIP_) {
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n recvframe_chkmic:prxattrib->encrypt==_TKIP_\n"));
-		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n recvframe_chkmic:da=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
-			 prxattrib->ra[0], prxattrib->ra[1], prxattrib->ra[2], prxattrib->ra[3], prxattrib->ra[4], prxattrib->ra[5]));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n %s: prxattrib->encrypt==_TKIP_\n", __func__));
+		RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n %s: da=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
+							       __func__, prxattrib->ra[0], prxattrib->ra[1], prxattrib->ra[2], prxattrib->ra[3], prxattrib->ra[4], prxattrib->ra[5]));
 
 		/* calculate mic code */
 		if (stainfo != NULL) {
 			if (IS_MCAST(prxattrib->ra)) {
 				if (!psecuritypriv) {
 					res = _FAIL;
-					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("\n recvframe_chkmic:didn't install group key!!!!!!!!!!\n"));
-					DBG_88E("\n recvframe_chkmic:didn't install group key!!!!!!!!!!\n");
+					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("\n %s: didn't install group key!!!!!!!!!!\n", __func__));
+					DBG_88E("\n %s: didn't install group key!!!!!!!!!!\n", __func__);
 					goto exit;
 				}
 				mickey = &psecuritypriv->dot118021XGrprxmickey[prxattrib->key_index].skey[0];
 
-				RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n recvframe_chkmic: bcmc key\n"));
+				RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n %s: bcmc key\n", __func__));
 			} else {
 				mickey = &stainfo->dot11tkiprxmickey.skey[0];
-				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("\n recvframe_chkmic: unicast key\n"));
+				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("\n %s: unicast key\n", __func__));
 			}
 
 			/* icv_len included the mic code */
@@ -273,8 +273,8 @@ static int recvframe_chkmic(struct adapter *adapter,
 			for (i = 0; i < 8; i++) {
 				if (miccode[i] != *(pframemic+i)) {
 					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
-						 ("recvframe_chkmic:miccode[%d](%02x)!=*(pframemic+%d)(%02x) ",
-						 i, miccode[i], i, *(pframemic+i)));
+						 ("%s: miccode[%d](%02x)!=*(pframemic+%d)(%02x) ",
+						  __func__, i, miccode[i], i, *(pframemic+i)));
 					bmic_err = true;
 				}
 			}
@@ -346,7 +346,7 @@ static int recvframe_chkmic(struct adapter *adapter,
 				}
 			}
 		} else {
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("recvframe_chkmic: rtw_get_stainfo==NULL!!!\n"));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("%s: rtw_get_stainfo==NULL!!!\n", __func__));
 		}
 
 		skb_trim(precvframe->pkt, precvframe->pkt->len - 8);
-- 
2.11.0


