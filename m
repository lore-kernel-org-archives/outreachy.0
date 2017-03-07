X-GM-THRID: 6394886856673067008
X-Received: by 10.25.196.68 with SMTP id u65mr486855lff.0.1488925622157;
        Tue, 07 Mar 2017 14:27:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.9.129 with SMTP id 123ls193452ljj.16.gmail; Tue, 07 Mar
 2017 14:27:01 -0800 (PST)
X-Received: by 10.25.212.76 with SMTP id l73mr442825lfg.13.1488925621653;
        Tue, 07 Mar 2017 14:27:01 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id p144si185041wme.2.2017.03.07.14.27.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 14:27:01 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id z63so3285830wmg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 14:27:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=S5iO5K7WJaBoQLfCGmspHLQ/0RABKqp1L8KLu6XGqRo=;
        b=PCbHf0/4FwYgG6gOaersKcd0Ki0s3I1VMyLKbuzgLkP74FlnWB3qRMqDYUulkT1X9Y
         leHhZEeSiyYjKtFDQhizDz4vVGlxZuTcps6LcO0h12OvNslvw+SoNnG8H4DExyknj19t
         JSmKHZpkTjN/7GpdH3lx3Zycf+WS7rLHPwHeQVE+QdT7iXkXZr6fOPl0spumuaRfY4Yb
         TFucRdZue7JP9VFXDO3n5P0xfgRufZiblP9qEsEN2bR37mMsl5dMFM3VrMwpzN5DfACI
         vOsO6CTa64hdWbxFx65brj4xHJ2X7YlahjC15IHRqv9b8jA+3DZG9Eyr6g0pCWoHNiS2
         +BsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=S5iO5K7WJaBoQLfCGmspHLQ/0RABKqp1L8KLu6XGqRo=;
        b=WJbb90ajPzJ4gGh2HYMyo1ehsFYJ/Ylipby9d9CAI+H9noAnce9uXj57BXfid6Xy+8
         zXm24tERWVdcJ9KsgFMo5BAa1l3SYrocaMI2tLZUKINcUMsdpnc3++zMeSCvPvKinoeT
         uZgHxlmhiGgs4kWaoEams4sKlWbdrWAIDjGsanng8P1C61fDNjOosrt4JR3RREMIbXJF
         6ETFTzCYo6kGXnWE95niQpOCy7fPD4NUWXTH1Na3NIbSp8dDuL4sOPx27lN1D1YRCIZV
         tca70NlCQJdMhp5w7OSFF9blhjI85S2R8YSEsJ09UCwQEfb392kYBS8pfHYdplgc4mFv
         SdRg==
X-Gm-Message-State: AMke39kIGtd2qPyGBrNE9ju92BUZqar+22/lk8WKXYYA3gfVCeBwmBfLiNIfdrb4SrqyfA==
X-Received: by 10.28.226.215 with SMTP id z206mr2709872wmg.92.1488925621439;
        Tue, 07 Mar 2017 14:27:01 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:8168:a9b6:7cd0:c4cf])
        by smtp.gmail.com with ESMTPSA id q4sm2204052wme.17.2017.03.07.14.27.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 14:27:00 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2] staging: wilc1000: coreconfigurator: Remove camel case
Date: Wed,  8 Mar 2017 00:26:58 +0200
Message-Id: <20170307222658.6248-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Change the name of the variables to remove the CamelCase.
Move the occurences of the 'lenght' in the previous line.

Fixed the checkpath.pl issue:
CHECK: Avoid CamelCase.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
Changes since v1:
*Change the name of the variables to remove the CamelCase.

 drivers/staging/wilc1000/coreconfigurator.h | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
index 10101f8..5256f40 100644
--- a/drivers/staging/wilc1000/coreconfigurator.h
+++ b/drivers/staging/wilc1000/coreconfigurator.h
@@ -124,10 +124,7 @@ s32 wilc_parse_network_info(u8 *msg_buffer,
 			    struct network_info **ret_network_info);
 s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
 			       struct connect_resp_info **ret_connect_resp_info);
-void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer,
-				 u32 u32Length);
-void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
-				u32 u32Length);
-void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
-				   u32 u32Length);
+void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer, u32 length);
+void wilc_network_info_received(struct wilc *wilc, u8 *buffer, u32 length);
+void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *buffer, u32 length);
 #endif
-- 
2.9.3


