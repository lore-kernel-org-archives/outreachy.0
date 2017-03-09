X-GM-THRID: 6395630061335085056
X-Received: by 10.46.88.9 with SMTP id m9mr2658608ljb.25.1489098663380;
        Thu, 09 Mar 2017 14:31:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.75.26 with SMTP id y26ls870378lja.2.gmail; Thu, 09 Mar 2017
 14:31:03 -0800 (PST)
X-Received: by 10.46.20.74 with SMTP id 10mr1708555lju.0.1489098663015;
        Thu, 09 Mar 2017 14:31:03 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id f7si19034wmg.3.2017.03.09.14.31.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 14:31:02 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id l37so9549615wrc.3
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 14:31:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=2sWXn2dHz83iHobzLoCg5SZTg8dsX1iow3yyy7nNuBE=;
        b=b/KQ1apsrGERZA+AppZgJydO2Zz1ipFwBl5PifNhvjcNIe19EIjXygS4hvwJCOJjPA
         oAxKD2S6pBYZeSa8qN+vUZYchf56927kZ44Ys1BfCeBQBAfGv49FILWeqk1dBjZp+RXo
         r/+7tTz8modC50Gt7/LZ2rWfttJUh7hnoMcPmKzwvL56VlYIbvR7QAc6b4RctvNnXXJU
         S1mNx6MIXsjGgFHNGcbzPgBRWe3KcnRKDlqJAcOH8v+GPZyrfy9VNGuAJy2TecYyt/Z1
         t3fH5vyTaPCwOQRAOUIictVV3iy0LFngpD+NYDbod0f6JS3NjsTENU06l4R7YxqbKjrR
         zx1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=2sWXn2dHz83iHobzLoCg5SZTg8dsX1iow3yyy7nNuBE=;
        b=tx9nytNs47usN7J0qATiAH9wOlcqMTTlT+7TKOCDH2rYQdi0RGRNiJCrzjdS9zM7w7
         s9FIfLrZOmi9j4+pbJwIZj3o+CX6JVCdPJV50Szc2owpCau7SmaJZpRBja1/0EgMn+T9
         Pryfz4DcETmec5c59jGDTVfGGNVFE0a2XvlssgGFWy7P0vPKC7yQW+ldnDW9VMiJi+zE
         b9imRZnvreWrtVduQIpBQ/9JtFFfCupL5ECM0cJD8Xc/f2hgxuHKG2ziPuDELxm7MtVd
         QTZ0RQOfP1jUkCD38KiuqGO4mc4zmktG7/90Ts0rY2bo0pCfzB7S/wx+fNpsPGUC0h20
         cC2A==
X-Gm-Message-State: AMke39nTVUvpbSbGkvV2vL2v+x2i7F5DaW97qnc1B0IySjzflTnnLf1UpeGA4eX0Scx+QA==
X-Received: by 10.223.135.163 with SMTP id b32mr13030773wrb.170.1489098662847;
        Thu, 09 Mar 2017 14:31:02 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:10f3:5309:404:d736])
        by smtp.gmail.com with ESMTPSA id q12sm404219wmd.8.2017.03.09.14.31.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 14:31:01 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 2/2] staging: wilc1000: Enhance code formatting
Date: Fri, 10 Mar 2017 00:30:59 +0200
Message-Id: <20170309223059.7353-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

This trims line size at 80 characters and makes code easier to read.

Problem found with checkpatch.pl.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/coreconfigurator.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
index a2df5c7..00bb604 100644
--- a/drivers/staging/wilc1000/coreconfigurator.h
+++ b/drivers/staging/wilc1000/coreconfigurator.h
@@ -123,7 +123,8 @@ struct disconnect_info {
 s32 wilc_parse_network_info(u8 *msg_buffer,
 			    struct network_info **ret_network_info);
 s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
-			       struct connect_resp_info **ret_connect_resp_info);
+			       struct connect_resp_info
+			       **ret_connect_resp_info);
 void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer,
 				 u32 length);
 void wilc_network_info_received(struct wilc *wilc, u8 *buffer,
-- 
2.9.3


