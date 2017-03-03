X-GM-THRID: 6393394520206082048
X-Received: by 10.25.104.21 with SMTP id d21mr781283lfc.31.1488578161994;
        Fri, 03 Mar 2017 13:56:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.3 with SMTP id i3ls1121788ljb.9.gmail; Fri, 03 Mar 2017
 13:56:01 -0800 (PST)
X-Received: by 10.46.20.72 with SMTP id 8mr916754lju.19.1488578161040;
        Fri, 03 Mar 2017 13:56:01 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id f7si327864wmg.3.2017.03.03.13.56.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 13:56:00 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id l37so14758176wrc.3
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 13:56:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Zwwco2DfCU/zd0IUAs1qgnoxa8DdBtp9gTm+K66+ZMY=;
        b=LSwCraOG6tCwrkt0HuRPaGpOB/mLt5M9rvkkp4PNOXdBcQdF1rdcwSxVFjIF7AcJP3
         /fbS2xkQCRvIj+jd6/mEZRzy79p7y0W53OZN7T2iH+hXjrAtO7+bwkxNKHrE59WqYm3m
         IOBOSsMs4zIKNBayEdI5+AcdDRyp8+Bav5lJZqi+z3NYzgfVaw+uMazO5GcbMFtmaibQ
         BPwcUv66eGB48PGOjCyzsj/Nu/TyYyHTN8vwjPjyZsIxTtj4lW1Kr0/aS4EoNFFLnqBS
         7xpkc4x2h/Mv7kEqLfjuM6V09vqJ0YW3stIy/OphCL+PTB4pGwH+SwrNDaRAMsrLMkxo
         /9UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Zwwco2DfCU/zd0IUAs1qgnoxa8DdBtp9gTm+K66+ZMY=;
        b=FOHb/ORO6NUItT2P3mt0+/S4bihX609Vqc7WSPh8sAiJ+dIbKHwzFh5ND0uusU6mRe
         jvYCyjUY5OMrdYTbpIqmw1S9t8j+nFXIzsLYjgQwiQxqBkegCTVf7s8bWaQABteWbtlF
         KHx+7r0EgmJbyxFjRzA9jsAuNk2O3vRfAFUz05pBGNMRw6Ac+ZSZEnh3PWnC5hItWS3Z
         7gaqYX8BHexkDrApCwbpkxgQykiPefwbkWS0NaMEBbcDKRPJOEUm6AczRVB/pjgiC1w5
         wpB+eq3YWW6MzSWXmxs+p9UJZy60FRe17sHqreQGoVpbEg7O9VkdDnmDgDPnbgSuFSlK
         cK5g==
X-Gm-Message-State: AMke39kDFmYTq+ZiPgQiGbxp5MdYPlTC4IS5vbm8EiRWTH9ojNb78fc6+M17JecgMKVcyA==
X-Received: by 10.223.168.80 with SMTP id l74mr4546082wrc.184.1488578160688;
        Fri, 03 Mar 2017 13:56:00 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8170:1398:ed0e:d7f7:5879:7539])
        by smtp.gmail.com with ESMTPSA id j184sm4530888wmd.31.2017.03.03.13.55.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 13:55:59 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] Delete tab to indent
Date: Fri,  3 Mar 2017 23:55:57 +0200
Message-Id: <20170303215557.10077-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Deleted a tab to fix the checkpath.pl issue:
CHECK: indent should use tabs where possible.

Deleted an extra tab to indent the code.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/speakup/i18n.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index 1a3e348..3e5f012 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -552,7 +552,7 @@ ssize_t spk_msg_set(enum msg_index_t index, char *text, size_t length)
 			if (index >= MSG_FORMATTED_START &&
 			    index <= MSG_FORMATTED_END &&
 			    !fmt_validate(speakup_default_msgs[index],
-			                  newstr)) {
+				    newstr)) {
 				kfree(newstr);
 				return -EINVAL;
 			}
-- 
2.9.3


