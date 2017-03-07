X-GM-THRID: 6394898863849734144
X-Received: by 10.129.119.84 with SMTP id s81mr1405159ywc.6.1488928428269;
        Tue, 07 Mar 2017 15:13:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.34 with SMTP id n31ls1996836ota.4.gmail; Tue, 07 Mar
 2017 15:13:47 -0800 (PST)
X-Received: by 10.129.165.201 with SMTP id c192mr1552197ywh.74.1488928427942;
        Tue, 07 Mar 2017 15:13:47 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 2si285368pfx.8.2017.03.07.15.13.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 15:13:47 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id b5so1428265pgg.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 15:13:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=2c1MZ2lNIa08GTzTir6Oh4575VkEA4/GkTTVG+OWChI=;
        b=UGsLbU481lYym+v0oYIfkOgSt/R3tGnli4Fkx/wpCxtfZGLkS8NWHmSKNjxn4TL34w
         oki38DAYf0nUGouh1KtaxO3s6LC2mrwca0RA91BTVW8jvGaX+yWJeBemWoL8Hc/aiSpO
         1c+PgpahtAUf1cNt/cB2fim5dskgYZpeqYF8ws6rw/oP4Olv3LajC8z6zA9BkktNKi75
         b3csQ0vSTUusM5Fr2qBpg1q0ReJmDy0OKbj8bnQCaqlG+dahxT5Gy1b0+2zpjBW6o9pV
         G3BNB+8bSan9ygCXOUvIAbQis0Biuaf62W6UyhLVzDWGVQViAvz6Uw21ms7iJt1/5LZ2
         XTvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=2c1MZ2lNIa08GTzTir6Oh4575VkEA4/GkTTVG+OWChI=;
        b=n1E4SN6i9XPLjaMAfEyw///NQFBpLGGi0d9GCi09zNrrw/rW0/YRToUfBkzwgjFtb4
         Jwda0BPI0dxf3M7LwgH6xARrZAfQuMOZICPr/YjeDdP96LqBcRrCwlQmid0gCly6tPdt
         m738boUUmqtFbSOMR2U/7Rwfgc5Qqd0Rpx7DMPzyf8IsNteLXBjCaE2Q4TORP780/nAS
         DMDOKay0EJ+DcWewaAFPd1MO+UMo5IGIyP80as35O8nqELbe62n9Uq6pgjf/uAre7nwg
         HbPlCsMXjLv4e9798GZnX1SuvjkLywPQFP6TQCoJVBDmvl3NFa7vvbkJWvq8H5J6OWqI
         eI/A==
X-Gm-Message-State: AMke39kdFB9BP63Lqg5rzLJj28LBg3ftohEfdq6bd4h+2t2Prq6CIaKW9iTriMlLrLFm1w==
X-Received: by 10.99.175.67 with SMTP id s3mr3249221pgo.185.1488928427714;
        Tue, 07 Mar 2017 15:13:47 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id u75sm1818346pfk.3.2017.03.07.15.13.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 15:13:47 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	Aditya Shankar <aditya.shankar@microchip.com>,
	Ganesh Krishna <ganesh.krishna@microchip.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] staging: wilc1000: Add blank line after a function
Date: Wed,  8 Mar 2017 04:43:20 +0530
Message-Id: <20170307231320.9716-3-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170307231320.9716-1-sreyamittal5@gmail.com>
References: <20170307231320.9716-1-sreyamittal5@gmail.com>

Fix the checkpatch issue:
Please use a blank line after function/struct/union/enum declarations

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 34661bb..9b55a06 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -1130,6 +1130,7 @@ static int wilc_spi_sync_ext(struct wilc *wilc, int nint)
 
 	return 1;
 }
+
 /********************************************
  *
  *      Global spi HIF function table
-- 
2.9.3


