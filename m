X-GM-THRID: 6333985713664557056
X-Received: by 10.157.6.230 with SMTP id 93mr508007otx.52.1474745970846;
        Sat, 24 Sep 2016 12:39:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.177 with SMTP id 46ls10728123oth.38.gmail; Sat, 24 Sep
 2016 12:39:30 -0700 (PDT)
X-Received: by 10.129.34.87 with SMTP id i84mr3474255ywi.166.1474745970515;
        Sat, 24 Sep 2016 12:39:30 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id um12si3076652pab.2.2016.09.24.12.39.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 12:39:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n24so6868072pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 12:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=+xbEn8qkrpcGEQIKW3LhOYb8rEIerBDRuc/fY8rfYkY=;
        b=aKCGOzFtpKApJrji1sa3Msiwc5tIRrJhJeq5fGeQx2N10NAvoOFZ8gJjYBHKT6YbWO
         fguOy9c5Rx8bgSo7gMoa2+CGPeaTZW7DM0yJxFqJbm8eRO0Lax6CXwEXyMUXkSdW1nAQ
         JDitTrBIP6IxRkcWgC6y0/omObHZxPln1FIygCTg3JYinN9efGjPzQq93X1L6GckMIRp
         ZkguMInW2K4j4zHOKS37OgLEU7PV4G8WyRvtirwH6h8JX8owTxyoYtLktg/eCcz3x0c/
         HUAz4vmaBFiiyyGXrdEsh7r4v+qwvUksoDTmSdx6UcMXQ5CWVOgGJhXIv1QgDT0Nj8VH
         5S9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+xbEn8qkrpcGEQIKW3LhOYb8rEIerBDRuc/fY8rfYkY=;
        b=RZz9It1edO1MwcNf089QWkWCQmESPGc36cg6z7YyGXH9HCkJ5tEqla0pZ3PoWQ/znM
         2BRAt4IX9ZemmQhIIhMmWRD4VLPB814ukppvil1Wqjl2xd1FuPg0tAO0g+C3LVShdAzX
         3DNtECEZG7Mr1Ak2tacelQJ8J3x7z2FglHqCyxuc8bidZRN6C07v2jDuk7bEbQIptkM/
         CuemPmMUn2ZIbfj7RZqZYQl3nMRnCEyj2YEbzJON1afe2j47hISqicAe414RzzUramQo
         HCgA1WhSzitu+5iMrxZ4gYnVcpcvdBh5E8LJRK9FhtGi3S0Dy2FcIH54TI33rYAAqmg2
         akkA==
X-Gm-Message-State: AE9vXwNRrP3b0jtpBJGdQ/lxiE+Qj67TODGnPqFZWn7xdVqyw3CWW3CZHUqWuq6GFwDjKg==
X-Received: by 10.98.219.196 with SMTP id f187mr23544137pfg.39.1474745970297;
        Sat, 24 Sep 2016 12:39:30 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id xs10sm14246872pab.13.2016.09.24.12.39.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Sep 2016 12:39:29 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	arnaud.patard@rtp-net.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: xgifb: compress return logic
Date: Sun, 25 Sep 2016 01:08:36 +0530
Message-Id: <20160924193836.8824-1-gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

compress return logic into a single statement, using
semantic patch:
@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/xgifb/vb_init.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/xgifb/vb_init.c b/drivers/staging/xgifb/vb_init.c
index 062ece2..661dd98 100644
--- a/drivers/staging/xgifb/vb_init.c
+++ b/drivers/staging/xgifb/vb_init.c
@@ -576,8 +576,7 @@ static unsigned char XGINew_CheckFrequence(struct vb_device_info *pVBInfo)
 
 	if ((data & 0x10) == 0) {
 		data = xgifb_reg_get(pVBInfo->P3c4, 0x39);
-		data = (data & 0x02) >> 1;
-		return data;
+		return (data & 0x02) >> 1;
 	}
 	return data & 0x01;
 }
-- 
2.9.2


