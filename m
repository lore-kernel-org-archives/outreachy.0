X-GM-THRID: 6674748196483235840
X-Received: by 2002:a25:2c89:: with SMTP id s131mr1684710ybs.83.1554129235149;
        Mon, 01 Apr 2019 07:33:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:980a:: with SMTP id p10ls3529787ywg.3.gmail; Mon, 01 Apr
 2019 07:33:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzwEAW31QBM8XPi9gAlqmoSvvOWe9UXc0YyG8VNivwxPzd5Na7u04VsRiMvtJ9OInJMWKzE
X-Received: by 2002:a81:9a01:: with SMTP id r1mr6054100ywg.20.1554129234254;
        Mon, 01 Apr 2019 07:33:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554129234; cv=none;
        d=google.com; s=arc-20160816;
        b=HiLJs+dEHRuBuMQAjVFy/oRFu93c+arhT0cS/HzWRvjorySF7M4vI7EfzjKXt/kico
         nLDyxjyWsvdoZ4hGxBOoEoAWAqd47z/SSxHdw/TfmuzfLgRjKQbjfajJubh73JhCMB+L
         hRgBWq8We7M2s63AdueibsT2n0rXWkVtRiA4RF2y8j1JEcdWqKKq+2jkDx1TpHnka6ye
         jQxDWEeH6TLDlh/1IFynuyUM6RmvPx3BoMwDtgxa+QOQgv3VrsMiMHGLjUuBVhKQ0ekG
         i/faYluOwQMwZL4HbX0Lj4meuhCbD4J3y5O5zaoC924iuE6JlqBe1ae48SQTurSUDQBp
         JH4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=+ctalPIoIICGkac2C8MB/djSnyarw+zqD71tUJNYPrM=;
        b=knobk7NFnrNM8Naargs2TRW01SxwoIeT2ib81ebyM4N2+RDNT02ICAO1/5f+8pbnIk
         i/FxiypZdrgr0PpcJQThbhTOGpNsE7GaK53w6hF6qboQ9xwYv9Z4UWVGv2ULAeQjF/Um
         DwpinJLwEqRIrgqB6aUsI7Q/pAHV2Ur3R3J+ig0uIP890qMVJntV91YnFUg/I89cNFc7
         GoYd56O0IOYcdWisrulLbtLeE1iUV5m0OqSpTfahQP9LDyGCtNRRT0DEjt3nJJQli7rd
         iBsctdN0nVW0PG86i0p5lR3RS2t5ayDhQhwQqe8lrdU7FlwsJFW3kCJczPNBWD38b1wE
         BA9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jl+CkvyO;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com. [2607:f8b0:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id h192si549952ywa.0.2019.04.01.07.33.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 07:33:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) client-ip=2607:f8b0:4864:20::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jl+CkvyO;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22f.google.com with SMTP id v10so7433314oib.1
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 07:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=+ctalPIoIICGkac2C8MB/djSnyarw+zqD71tUJNYPrM=;
        b=jl+CkvyOjyj5Lao0/+wBxPY8b/9P7vuDnWlzM3q0MUSrnNaaaHbLHWtuC+yr6mO0B8
         LC/74aiN8MfOwJopwjzwckxRiDTRmWk5Y9AYfFt1jRai70b2iSWb+k0OvmhMsYyjnc/5
         dujZRRLWQQWXJrBJV66uycbRFelq8wDO1QgbM1IJRYYx+1ftpmMHYG06jbVTwpL6Ch2N
         +70uPhg8mgF27SW+p5iuXiGwI2OG3dy1AV2sb47y3c3DkIM9O2ifVj2R0bJVc3HBf5pj
         JbrwvcJpuk00+XUEmiwDXJtTD8U+HnWsXQkqu2/OHWlgkIF+tNiED2cnQ8XgX/JbW/ev
         O82Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+ctalPIoIICGkac2C8MB/djSnyarw+zqD71tUJNYPrM=;
        b=Q8efxYDGfPWYwMP4WOjphmCIHpRJCapG2ORRpc2UuXxKqQjB+HjcTVLuaKOEs023Qm
         28BAeWu6hifdzZJ9Y5YOMjzBJwZrEhK/NeVMqcUx0HyGinpqm5VKYS6UfQRyeYH7yVLh
         M6TzQD7A7Pj39ktV2diS9k2VF6x8h14faahOE1+YbwHFmsZm6Tp61xV7VgtjXYEEU8ZB
         h6kTebsff44Ru5Bu69mIz4r89Lnd2m19KnDdZs7FwQWG8qGoqRczyZ5GJNako58ltGPe
         wEem38LgoxzqsAQ+NH7z3SgVHPDYIZhCwuNITGYYzY6t4kbRa5s2IB664VOHYF+gCaRe
         2goQ==
X-Gm-Message-State: APjAAAXIfS+ZNyiL5Rw+wUCtPIv2yNIFgMkSiZo513V4wZwdwwSdOqGK
	qOMZHUCmvgji2zwyqCp5SNY=
X-Received: by 2002:aca:5387:: with SMTP id h129mr12735221oib.52.1554129233715;
        Mon, 01 Apr 2019 07:33:53 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:35a4:8fe3:3a02:b8fd])
        by smtp.gmail.com with ESMTPSA id u198sm4229019oie.26.2019.04.01.07.33.52
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 01 Apr 2019 07:33:52 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2] Staging: rtl8723bs: core: rtw_mlme_ext.c: Remove typecast in kfree
Date: Mon,  1 Apr 2019 09:33:49 -0500
Message-Id: <20190401143349.6618-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove typecast in kfree, as per definition of kfree in
include/linux/slab.h#L144, the parameter type of kfree is void*, and
hence C compiler casts any pointer type to void*.
that is allocated with kmalloc.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

---
Changes in v2:
- Modified commit log
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 22 +++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index d97c1e6d5c01..430758f298af 100644
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
@@ -5043,7 +5043,7 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
 	cmdsz = (sizeof(struct survey_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree(pcmd_obj);
 		return;
 	}
 
@@ -5064,8 +5064,8 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
 	psurvey_evt = (struct survey_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 
 	if (collect_bss_info(padapter, precv_frame, (struct wlan_bssid_ex *)&psurvey_evt->bss) == _FAIL) {
-		kfree((u8 *)pcmd_obj);
-		kfree((u8 *)pevtcmd);
+		kfree(pcmd_obj);
+		kfree(pevtcmd);
 		return;
 	}
 
@@ -5096,7 +5096,7 @@ void report_surveydone_event(struct adapter *padapter)
 	cmdsz = (sizeof(struct surveydone_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree(pcmd_obj);
 		return;
 	}
 
@@ -5143,7 +5143,7 @@ void report_join_res(struct adapter *padapter, int res)
 	cmdsz = (sizeof(struct joinbss_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree(pcmd_obj);
 		return;
 	}
 
@@ -5194,7 +5194,7 @@ void report_wmm_edca_update(struct adapter *padapter)
 	cmdsz = (sizeof(struct wmm_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree((pcmd_obj);
 		return;
 	}
 
@@ -5241,7 +5241,7 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsi
 	cmdsz = (sizeof(struct stadel_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree(pcmd_obj);
 		return;
 	}
 
@@ -5296,7 +5296,7 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr, int
 	cmdsz = (sizeof(struct stassoc_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
 	if (pevtcmd == NULL) {
-		kfree((u8 *)pcmd_obj);
+		kfree(pcmd_obj);
 		return;
 	}
 
@@ -5822,7 +5822,7 @@ void survey_timer_hdl(struct timer_list *t)
 
 		psurveyPara = rtw_zmalloc(sizeof(struct sitesurvey_parm));
 		if (psurveyPara == NULL) {
-			kfree((unsigned char *)ph2c);
+			kfree(ph2c);
 			goto exit_survey_timer_hdl;
 		}
 
@@ -6589,7 +6589,7 @@ u8 set_tx_beacon_cmd(struct adapter *padapter)
 
 	ptxBeacon_parm = rtw_zmalloc(sizeof(struct Tx_Beacon_param));
 	if (ptxBeacon_parm == NULL) {
-		kfree((unsigned char *)ph2c);
+		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
 	}
-- 
2.17.1


