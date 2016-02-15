X-GM-THRID: 6251388139787517952
X-Received: by 10.50.109.136 with SMTP id hs8mr10641923igb.12.1455514724865;
        Sun, 14 Feb 2016 21:38:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.25.200 with SMTP id 191ls1459953ioz.19.gmail; Sun, 14 Feb
 2016 21:38:44 -0800 (PST)
X-Received: by 10.98.12.66 with SMTP id u63mr14381653pfi.12.1455514724597;
        Sun, 14 Feb 2016 21:38:44 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from mail-qg0-x236.google.com (mail-qg0-x236.google.com. [2607:f8b0:400d:c04::236])
        by gmr-mx.google.com with ESMTPS id i133si1993560ywe.7.2016.02.14.21.38.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 21:38:44 -0800 (PST)
Received-SPF: pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) client-ip=2607:f8b0:400d:c04::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of thaissa.falbo@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) smtp.mailfrom=thaissa.falbo@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x236.google.com with SMTP id b35so103680079qge.0
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 21:38:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=Z0lMqIvMvrBMzCO9rWN907jRHo4393mpvFXnFlaMRk0=;
        b=yMyhxIOl421e52BBxCtCISKOSMthT/bHWzPaIVRIN7IzmVTpBv+AoxE4hllOgxBNDu
         mTH0xcwnUCuHLVGaun7O5uzeq2MEDO91AHexA1Cc0/203K6KkS25xe65TfwAjfR8Ty6X
         NeX0eDbYYF4TIOOb3OnYq2plVuz9CVzBSwgZNrtiH0FXwIrUmUgvFQOkcXThy/d5Fffk
         3QcSpm0f8VwaRq2+zZJruZX0LsJOoa1DE5h2LxeX3ax+hd5c45lNlkWMWRYJ7n060jrI
         pCYRJ9tsoegCEg373m5AfbZQILi1UHGYBODuie5ak8EZcB4A/M9plHFd5bR2jko3owrA
         f8Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=Z0lMqIvMvrBMzCO9rWN907jRHo4393mpvFXnFlaMRk0=;
        b=gOclv83cgEDilmYNvYNcADrgse4pBt4Hm8cLKpLFlqvLhAJpsKwAmUQ9fIi5Rwciak
         3NFn8whk4gyzsaNbuiNg1IOcllwU+bqE8REZRJZ/kpqs1w1/vWGPpg48IHdt4G08fB6e
         TQ65sbTk/YtIh9PX3lY3G+acdJIP20IUM+UjPJsT0EGKD+BESYSMt3K6BjmiHQvFPQay
         kX5XWsZbGes/LpPXjAVnG8HtCp7Xy1OXFKqpuu7udE8iyk6bT3x7Mkh5fZjR+EoPncqy
         85TnbVB+8LlPRNfFAVItu4bT5iUvGFdpTFLYN+lV+fP5E/l0Mr3pl5gthZh30hnzXox7
         sTlw==
X-Gm-Message-State: AG10YOQfXMZ6IzuCFcUiXZksy9Flz7ysz9Qbmx8Zjigyq+tSzTU8TFXD9dMurdQivASs3g==
X-Received: by 10.140.178.195 with SMTP id y186mr19160012qhy.100.1455514724419;
        Sun, 14 Feb 2016 21:38:44 -0800 (PST)
Return-Path: <thaissa.falbo@gmail.com>
Received: from bb8.rjo.virtua.com.br ([177.142.197.210])
        by smtp.googlemail.com with ESMTPSA id 107sm10501290qge.16.2016.02.14.21.38.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 21:38:43 -0800 (PST)
From: Thaissa Falbo <thaissa.falbo@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging:media:davinci_vpfe: Fixed code identation warning as detected by checkpatch
Date: Mon, 15 Feb 2016 03:38:39 -0200
Message-Id: <1455514719-6047-1-git-send-email-thaissa.falbo@gmail.com>
X-Mailer: git-send-email 2.1.4

Fixed code indentation warning as detected by checkpatch.

WARNING: suspect code indent for conditional statements (24, 40)
#1672: FILE: drivers/staging/media/davinci_vpfe/dm365_resizer.c:1672:


Signed-off-by: Thaissa Falbo <thaissa.falbo@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_resizer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
index 42de95e..59f71bb 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
@@ -1670,7 +1670,7 @@ static int resizer_link_setup(struct media_entity *entity,
 				resizer->crop_resizer.input =
 						RESIZER_CROP_INPUT_IPIPEIF;
 			else if (ipipe_source == IPIPE_OUTPUT_RESIZER)
-					resizer->crop_resizer.input =
+				resizer->crop_resizer.input =
 						RESIZER_CROP_INPUT_IPIPE;
 			else
 				return -EINVAL;
-- 
2.1.4


