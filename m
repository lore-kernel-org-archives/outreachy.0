X-GM-THRID: 6249310689819623424
X-Received: by 10.25.23.105 with SMTP id n102mr4114763lfi.9.1455031030840;
        Tue, 09 Feb 2016 07:17:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.42.75 with SMTP id q72ls853441lfq.72.gmail; Tue, 09 Feb
 2016 07:17:09 -0800 (PST)
X-Received: by 10.112.77.37 with SMTP id p5mr4027903lbw.1.1455031029037;
        Tue, 09 Feb 2016 07:17:09 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wm0-x235.google.com (mail-wm0-x235.google.com. [2a00:1450:400c:c09::235])
        by gmr-mx.google.com with ESMTPS id w129si811099wme.1.2016.02.09.07.17.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 07:17:09 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) client-ip=2a00:1450:400c:c09::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x235.google.com with SMTP id 128so200506402wmz.1
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 07:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:mime-version:content-type
         :content-transfer-encoding;
        bh=yOaPshL87e24Kdd4hEMe7nT+ZrLuqyIvLOOgfxXa8X4=;
        b=KozzyRf5nBeDFYmdOX9skfLNddoiWow13pjzZjL3x/VMQy0J2SsxEcAIS+TgiNc+5m
         3mYi8cMQOvbL3zxzY6C3dXl+3EyUNOMqWtH1CmNplJwglIUtkMVekSy03OWl1rIiFBX6
         KtL7yKxkA2ghGsr4nA3uZ5YLBfDdOv+HNjw66HNM68LoJbK9feIOU7LLdsPFnGm9CUti
         y86Rzobt6uajD8o9mqotu/RoW033r0mOBSQeE9vHY4D/ww07ruD9MjhAtkE+B4ryoHkQ
         cRZg/4OOAkfAHrMtKyP9J5njxXoFHeqQreTLd2lqbHiCq+Sr2SV+39P7yWjeZ120n4qe
         C5QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-type:content-transfer-encoding;
        bh=yOaPshL87e24Kdd4hEMe7nT+ZrLuqyIvLOOgfxXa8X4=;
        b=J9683CNAsI6iVEgX2F0qkf0wGPvYE7ewF049rfyaQMwOeYctyoFzlgivMYzqKlQ5M2
         vS9M7AmupN8QP3J/DA1RvXq4jYdDJf4r3FabHT7h1YyrhOqnhKTSaCBEpFJmDYLfKYgw
         SzbCJiGQricxNnBePqW85QU5Ti3AKNcx6Hcklo/youmvvs+4bGghA6DorNMAy5ixPqjh
         K2O8snyaUelUaFt1OscqVgSGTywIZLwMuXoar8wYGWAPKy/rShjLgBxn6x8fpJosQIB8
         ZwfwkO3fjkGafp7fwhf+MfmQRDbq8IaNfnkE68N4IjF0bmmKYlI14I3SfbukUy29OEa8
         UQsw==
X-Gm-Message-State: AG10YOSsNHSlBVgYQ0YlUdahKW8R90GKXS1ygjA77k22ggjw+4uE1YpAwi6ulPcHYBFAhQ==
X-Received: by 10.194.87.201 with SMTP id ba9mr34434136wjb.128.1455031028917;
        Tue, 09 Feb 2016 07:17:08 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([85.96.173.56])
        by smtp.gmail.com with ESMTPSA id bg1sm35260660wjc.27.2016.02.09.07.17.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 07:17:08 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: =?UTF-8?q?Dilek=20=C3=9Cz=C3=BClmez?= <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rtl8712: Add * on subsequent lines in block comment
Date: Tue,  9 Feb 2016 17:17:01 +0200
Message-Id: <1455031021-3825-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Dilek Üzülmez <dilekuzulmez@gmail.com>

This patch fixes the checkpatch.pl warning:
WARNING: Block comments use * on subsequent lines

Signed-off-by: Dilek Üzülmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 0a1c631..5b8b689 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -297,7 +297,8 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
 
 		tmp8 = r8712_read8(padapter, 0x1025000A);
 		if (tmp8 & BIT(4)) /* When boot from EEPROM,
-				    & FW need more time to read EEPROM */
+				    * & FW need more time to read EEPROM
+				    */
 			i = 60;
 		else			/* boot from EFUSE */
 			i = 30;
@@ -331,7 +332,8 @@ uint rtl8712_hal_init(struct _adapter *padapter)
 		    r8712_read32(padapter, RCR));
 	val32 = r8712_read32(padapter, RCR);
 	r8712_write32(padapter, RCR, (val32 | BIT(26))); /* Enable RX TCP
-							    Checksum offload */
+							  * Checksum offload
+							  */
 	netdev_info(padapter->pnetdev, "2 RCR=0x%x\n",
 		    r8712_read32(padapter, RCR));
 	val32 = r8712_read32(padapter, RCR);
-- 
1.9.1


