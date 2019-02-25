X-GM-THRID: 6661984277243101184
X-Received: by 2002:a63:6ecc:: with SMTP id j195mr7173010pgc.26.1551114087773;
        Mon, 25 Feb 2019 09:01:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:282b:: with SMTP id e40ls2444123plb.6.gmail; Mon, 25
 Feb 2019 09:01:27 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ibxq4fVIPRNn+khPIwQyk78CkzNEZ4mOf7xOlBAtZHHAMTFZfGcCOJZBuqtJmfvVQw7zHK0
X-Received: by 2002:a17:902:b597:: with SMTP id a23mr6048978pls.41.1551114087020;
        Mon, 25 Feb 2019 09:01:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551114087; cv=none;
        d=google.com; s=arc-20160816;
        b=SKPPvctcfw4l4MvVxqmDyPr6ik1hFAxD/ajjvluWjqM4O2Yi0/b/GD2HEu3+3dkhHW
         gQdeDNEAnoXV1hq/Y8+xtvL8Coi5zfSN7zUVXw2oajQ/yg6kg+lt1yIAnPEXXI4jLEgu
         mOHn3zmt2+jTKGcTUslsncGPD33wTKFNUIfkFSTPEuz7SC+XmfYpmvEywYm2XwudCBcd
         +vxm7XEJCYWCVtV53DwVxNDIyWHVRi8Et0GJ4q9vAjozOO0iOtSq9pMKRsZw5Ebe72f8
         vpIWOcx7M0QT5Zngtp3SclqHD7PEVJrfBm0HU4BpyAvB4rCUAKFecjb3wnPvUoYTXyma
         XB3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ea+6MLrsRkCH2YRZkVYL0Szxug1jsLj7jo9Y0x2l4oQ=;
        b=QHX/vXnXuN/RZVeBboC5+AjPEqlU3HqIJ39Sl2jpRf8qSYvzk21/laqRNghzmVwDRz
         9CD9nREdsLa7cqB6xJkBfd9WG44n0U32xj8oYP74rDSzGYGOb485UZLws1nlUmdh/op5
         zgjmYr+3J7PyjBKLb2bhUtw9Dx3W+wfrRtw311n7DY1Lk7OCVeVaH6OkitRPxe3iDwUK
         a/BpLoIy/JE4TOyYzxkSaPTLz3XWxXkWjFcRCwN/rBbKmJW4kmv261PYDkKo5S8GvbkR
         8zFEH/COfcda4G5l9X+rOTn10kmlV9nIymgW1DAMwYn9E5tVFxmZYhoV31n0mSXj2CmR
         PrYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qj/8wUx7";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id z184si505933pgd.0.2019.02.25.09.01.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 09:01:27 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qj/8wUx7";
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id j5so4783917pfa.2
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 09:01:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Ea+6MLrsRkCH2YRZkVYL0Szxug1jsLj7jo9Y0x2l4oQ=;
        b=qj/8wUx7OipBVVXZlYAktrYcRsgzR3tBB22AoYgvas/1NZ72a2/Zd8A8VI6+kD6P6k
         LrSUqdcBpoP4lxhkJ9QiGipruc0gzRgpCLgjvzxXq5ruW6nZPYGazZ2pgWnECfKAB00z
         E0Z/hBh2h+YuNKByOVHYOLDwop/O9oWEAXYfcgHqr8HU9I3UX+H6YMLlu8nPdClj5A78
         c8BAO+fg1LtaPaEOcr7BXuiEuFNk/3BphjAMkfofWioJSEwD1DzBvpaRaayejSv0Idlw
         7Bj0kPtw7NQBZkDYeurbWuvVAJ0BRsGJ/EMoSURDfvyJWbsQZq0fC/dL+6xSxKWgkFpk
         cP8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Ea+6MLrsRkCH2YRZkVYL0Szxug1jsLj7jo9Y0x2l4oQ=;
        b=QsTWGGtB1m4LQ+A1KkS34qJPFqXgE/iQqz+ubwhj8vehVW8dw40lXlPi04l9XDfGu9
         N9ZsB2TVBDkD/enkDzc1JsK1/zexT9BM5EZaqxZlwlnZ8nYZtfZUi2OxdZgIBzkFQ069
         tKc3f+K7uliU/WdfYncRpTWubzdza/G7lt297wdmE8jMJs+LUpanxHfkuONXY7fO2HPs
         /FqPSd5zkNDcXE/yrzJq7abBW2mjzEtvYyfLhds2Oyg/62v/zE47LGTeCxuZcM/jQ7Xz
         Zt+tfVQ5ZX8yWIYMd2HfCtpyAyYkNzrNpYD4V4Fgiv+4Fgp+rCRhgecFjpw6akWqRwvS
         wuKQ==
X-Gm-Message-State: AHQUAubyazBZM1IWNNdhydXeD0Ht4xJHhXcTB1L0zmbBBG2g8AWwOJOi
	3onDYoVfmPnUENXgT1cgvUwFjNah1S4=
X-Received: by 2002:a63:ed0b:: with SMTP id d11mr19874149pgi.435.1551114086021;
        Mon, 25 Feb 2019 09:01:26 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id y22sm12147000pfn.136.2019.02.25.09.01.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 09:01:25 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH] Staging: phydm: Align block comments in each line
Date: Mon, 25 Feb 2019 22:31:10 +0530
Message-Id: <20190225170110.12694-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Align * in block comments to avoid checkpatch.pl warning:
WARNING: Block comments should align the * on each line

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtlwifi/phydm/phydm_rainfo.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtlwifi/phydm/phydm_rainfo.h b/drivers/staging/rtlwifi/phydm/phydm_rainfo.h
index 6c1f30e758bc..841fbc42447e 100644
--- a/drivers/staging/rtlwifi/phydm/phydm_rainfo.h
+++ b/drivers/staging/rtlwifi/phydm/phydm_rainfo.h
@@ -21,12 +21,12 @@
 /*#define RAINFO_VERSION	"3.3"*/ /*2015.07.29 YuChen*/
 /*#define RAINFO_VERSION	"3.4"*/ /*2015.12.15 Stanley*/
 /*#define RAINFO_VERSION	"4.0"*/ /*2016.03.24 Dino, Add more RA mask
-					  *state and Phydm-lize partial ra mask
-					  *function
-					  */
+					 *state and Phydm-lize partial ra mask
+					 *function
+					 */
 /*#define RAINFO_VERSION	"4.1"*/ /*2016.04.20 Dino, Add new function to
-					  *adjust PCR RA threshold
-					  */
+					 *adjust PCR RA threshold
+					 */
 /*#define RAINFO_VERSION	"4.2"*/ /*2016.05.17 Dino, Add H2C debug cmd */
 #define RAINFO_VERSION "4.3" /*2016.07.11 Dino, Fix RA hang in CCK 1M problem*/
 
-- 
2.17.1


