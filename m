X-GM-THRID: 6394882267556085760
X-Received: by 10.25.201.198 with SMTP id z189mr435248lff.15.1488924554576;
        Tue, 07 Mar 2017 14:09:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.3 with SMTP id i3ls199670ljb.9.gmail; Tue, 07 Mar 2017
 14:09:14 -0800 (PST)
X-Received: by 10.46.7.10 with SMTP id 10mr531330ljh.1.1488924554200;
        Tue, 07 Mar 2017 14:09:14 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id t131si140134wmf.1.2017.03.07.14.09.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 14:09:14 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id u132so3240184wmg.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 14:09:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=EbVutG7gCCCyOqdUoopM4znCEbtWaTyxva6RTkAMtO4=;
        b=UqwzpPumDLEXiLiVK+6Vwjoq85oS16vP/Zl+sP6WY6OHTzpDiHWk5jVM+hBo5zyOVW
         1Xhb51lQMkWbLiiZ4gH7fMgUveRsLZde51vB046XTmASMDVzTtHwY4/TGNARsAMkiVjg
         TWHo+pQft29ARnVhsHO7KYumWpj6cemnWqqWQfuBQm5C7iQuriiNh94XKbcHMFEOLP2S
         aKkUmQFScoMVZDm63OSNOtf4rmbvTIYQZj5mcil0/WjLa4w8ffn+TbL3rOAM3av2Yawq
         QCfj9JS0O7VMLaBqbdaTa/SAdIkbT2c5vY2WdrJlImAeP9ZIvqvfrkt4vz02mmefAQkw
         IWoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=EbVutG7gCCCyOqdUoopM4znCEbtWaTyxva6RTkAMtO4=;
        b=WEPsEWYB76SQCa3HPRK+zmBlzrMDzTZy0uAulMc9XY7TUdBkcTdwlZNyn7W6+lO/Uu
         +J0vY+/J8iAH8q9h4zqRZaTyceMU+OIw6GyrJ+KMB/RK/UDylQMokJGsj/t2vn3IGqCg
         ZtkZ4HYqsPcDKVJw5OScf5F3X+ZcYj5s+wECfGgnQ5Vk3wOHSYkGZBUzeQF/G3M97/dJ
         Mjr/2a6nlb5TPl/qmWNfY+CeMV0D6sY2j3WyKe8yzGFhMDFqlzfTUMtYJrRgf35DoXNR
         bv3nHo1/S1zMJSXles8miBU8iBV7WJDDWjxpbiSxD/xNPuBnz3+yHrrL5bpU/Ardn4AV
         w3sA==
X-Gm-Message-State: AMke39mGS/uag/f+WxQ5qc05kN0cPmMyvun9tRkcdeiu4J/T+ATh1faixtcu+p7aNwa4qg==
X-Received: by 10.28.10.209 with SMTP id 200mr2841227wmk.126.1488924554006;
        Tue, 07 Mar 2017 14:09:14 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:8168:a9b6:7cd0:c4cf])
        by smtp.gmail.com with ESMTPSA id q4sm1582646wrc.35.2017.03.07.14.09.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 14:09:13 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] staging: wilc1000: coreconfiguration Removed camel case
Date: Wed,  8 Mar 2017 00:09:10 +0200
Message-Id: <20170307220910.5225-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Change the name of some variables to fix the checkpath.pl issue:
CHECK: Avoid CamelCase

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
index 10101f8..a2df5c7 100644
--- a/drivers/staging/wilc1000/coreconfigurator.h
+++ b/drivers/staging/wilc1000/coreconfigurator.h
@@ -124,10 +124,10 @@ s32 wilc_parse_network_info(u8 *msg_buffer,
 			    struct network_info **ret_network_info);
 s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
 			       struct connect_resp_info **ret_connect_resp_info);
-void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer,
-				 u32 u32Length);
-void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
-				u32 u32Length);
-void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
-				   u32 u32Length);
+void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer,
+				 u32 length);
+void wilc_network_info_received(struct wilc *wilc, u8 *buffer,
+				u32 length);
+void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *buffer,
+				   u32 length);
 #endif
-- 
2.9.3


