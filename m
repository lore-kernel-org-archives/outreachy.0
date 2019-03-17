X-GM-THRID: 6669239463558774784
X-Received: by 2002:a17:902:6b0b:: with SMTP id o11mr3894508plk.85.1552803340475;
        Sat, 16 Mar 2019 23:15:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bd84:: with SMTP id q4ls6955384pls.5.gmail; Sat, 16
 Mar 2019 23:15:39 -0700 (PDT)
X-Google-Smtp-Source: APXvYqydTCa/VcoCkdtmgX7DrnHLkTjJEzs13wYNRkgPN99oMgrQVSqDaI0N33IWmeKRc5qQQKAo
X-Received: by 2002:a17:902:e612:: with SMTP id cm18mr3908749plb.122.1552803339718;
        Sat, 16 Mar 2019 23:15:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552803339; cv=none;
        d=google.com; s=arc-20160816;
        b=s4D5COO8evXf+EZSIk6hBqwkwNfAXr2B4aRgDnSmmobEZA4/xu1GAQdPVKWqlfu1fk
         iLrZdVI+q6+NUglaNaMfORxL69L8mvqp6udXpwwxG1v0Z3KMXTOPf6I5/9A8RlgBfCn1
         6apxsAn6mvZNWviE6588lrz9XfZO2hdh+JT/72oxjyhipWxrUDYqZxqzSvPPvfugH0F9
         PhsxyGQ1jdOBUqE78p+pfRFsggkWEZ6KwqVNFRKwfbQGkPGu0Q9oJ8Z+VtMG3f3/sP1c
         WjBaWVXxdYv69Oc+zvleDCjvN0kMVjyTJK7+Nm30D8hMNrR+J1jwqjN99ADTqoALguYJ
         T4YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=DxqWrs//4ch57KOh70+YFxTQ2UsqT7jmHYx4zDlm260=;
        b=LscP2eNTPJKjVftuO5oZhH62E9FKZLXNMAbO/xTyKUF+BRifmuWfo2AuWOawQOpjkO
         Z79sHh9YlD0vTB09fdBblhCjyfM9y9+TgAcKwgRRnoLJW06WCj52dWOq7OeU3KoUw68S
         EV6b85M7ktHDIPSbVS53jg+QKgmzRVoWPJxpVNLeTGvpSC4Z0zaDLlc57fsnkDkJ4Wa7
         N+cq7vs+r0C1mKBH5GdoT/+MQvwofcViVKTinjCF80Xi9O1FsKWFSrJvfIP2ItcvWp6T
         aqRnOQWbLCtZ+FM5X6mrgK4Xeje5t+t134+cNtFcbWW2EyS7+C06qJ/N8B7p621QVk/g
         h79w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="dmO/echu";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-yw1-xc42.google.com (mail-yw1-xc42.google.com. [2607:f8b0:4864:20::c42])
        by gmr-mx.google.com with ESMTPS id 192si387024pgc.0.2019.03.16.23.15.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) client-ip=2607:f8b0:4864:20::c42;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="dmO/echu";
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yw1-xc42.google.com with SMTP id q128so10499806ywg.8
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 23:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=DxqWrs//4ch57KOh70+YFxTQ2UsqT7jmHYx4zDlm260=;
        b=dmO/echubXmZQ2iqXuxP9UiZi64vbddB33MKHsiBIBqTRgv0FI/4PRXuiGPMr0faBT
         Y8Jt6DVDv21sRcKqbDoN4fL4jfYa5bpowI9m17wm6ATeU/EyT9ZF4NobJQrUUY5uWgYK
         FofsC4QiDTANgth/w/XBYqzL2LAKJQtNKb9NwOaPpYxTi0NMD1JWa/aOkqUzcQZHtbGe
         8/9lYg9nepKty9ULWiIN4D46wgFlFlYGSgpCIopisXu6qH5etW7o/PhSI/TGFGGkcPNv
         cbDbNMIEBBN9diHt8YuVthaaq9FpFp5Fi6DPI/XKy6hBY/5pkQEPy1ZQu3oLjznsoJ98
         /t6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=DxqWrs//4ch57KOh70+YFxTQ2UsqT7jmHYx4zDlm260=;
        b=YcJ/VYBpbOUmvSJIRzeXRFD97qg5r1hEYO274PnMOEs1Sg9z3upj9D+8RiP/NuI7BY
         ksKQ5KBY2oMx3+4I8dEKTGRNkT4Ri/e73IcQTlERg3Re7UfsL4xwUcOZ1c0HhuN+ulvZ
         XTqXBZ8pQnnKQHzTLdC2BA5as0yL8KWjUd3cYkKyoUKD6FRlLUh3vkwH0JZ9/ZlPJHau
         rMEEZ11Lgy794xdeIKh4+kj5+y4Qv0fgr0n6ANr8lv/adA4iXOvbwhscARUJcOPUEKK9
         wL1kC1ElhxACP7jLQ7T62kJpu074H07CT2xDqG89DzhdRXOeL5HDyuKvearMipU/k/mq
         tRwg==
X-Gm-Message-State: APjAAAVBwKuzqmMXvxEFQmTUKl8sT0n7RlUl5iwUbiYm5TUxJ3kpAY0E
	jkfS8eEb7yLftJCR1+Mei7eQPRXh
X-Received: by 2002:a81:234b:: with SMTP id j72mr6777523ywj.279.1552803339323;
        Sat, 16 Mar 2019 23:15:39 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from Hyper-V.DAIICT.AC.IN (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.gmail.com with ESMTPSA id f131sm2772719ywa.11.2019.03.16.23.15.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 23:15:38 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v4 08/11] staging: rtl8723bs: hal: Remove comparison to NULL in hal_com.c
Date: Sun, 17 Mar 2019 11:44:58 +0530
Message-Id: <20190317061501.85447-9-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190317061501.85447-1-himadri18.07@gmail.com>
References: <20190317061501.85447-1-himadri18.07@gmail.com>

Remove comparison to NULL in file hal_com.c. Suggested by Coccinelle.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Change subject line

Changes in V3:
	- Break changes into changes per file
---
 drivers/staging/rtl8723bs/hal/hal_com.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 7f8ec55b08f1..b97b53c34449 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -18,7 +18,7 @@ u8 rtw_hal_data_init(struct adapter *padapter)
 	if (is_primary_adapter(padapter)) {	/* if (padapter->isprimary) */
 		padapter->hal_data_sz = sizeof(struct hal_com_data);
 		padapter->HalData = vzalloc(padapter->hal_data_sz);
-		if (padapter->HalData == NULL) {
+		if (!padapter->HalData) {
 			DBG_8192C("cannot alloc memory for HAL DATA\n");
 			return _FAIL;
 		}
@@ -909,7 +909,7 @@ s32 c2h_evt_read_88xx(struct adapter *adapter, u8 *buf)
 	int i;
 	u8 trigger;
 
-	if (buf == NULL)
+	if (!buf)
 		goto exit;
 
 	trigger = rtw_read8(adapter, REG_C2HEVT_CLEAR);
@@ -982,7 +982,7 @@ void rtw_hal_update_sta_rate_mask(struct adapter *padapter, struct sta_info *pst
 	u8 i, rf_type, limit;
 	u32 tx_ra_bitmap;
 
-	if (psta == NULL)
+	if (!psta)
 		return;
 
 	tx_ra_bitmap = 0;
@@ -1407,7 +1407,7 @@ bool GetHexValueFromString(char *szStr, u32 *pu4bVal, u32 *pu4bMove)
 	char *szScan = szStr;
 
 	/*  Check input parameter. */
-	if (szStr == NULL || pu4bVal == NULL || pu4bMove == NULL) {
+	if (!szStr || !pu4bVal || !pu4bMove) {
 		DBG_871X("GetHexValueFromString(): Invalid input arguments! szStr: %p, pu4bVal: %p, pu4bMove: %p\n",
 			 szStr, pu4bVal, pu4bMove);
 		return false;
-- 
2.17.1


