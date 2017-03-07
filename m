X-GM-THRID: 6394898863849734144
X-Received: by 10.129.163.208 with SMTP id a199mr1449728ywh.135.1488928423680;
        Tue, 07 Mar 2017 15:13:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.133 with SMTP id 5ls1821937oth.45.gmail; Tue, 07 Mar
 2017 15:13:43 -0800 (PST)
X-Received: by 10.200.43.252 with SMTP id n57mr794758qtn.53.1488928423367;
        Tue, 07 Mar 2017 15:13:43 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id u12si292901pfd.3.2017.03.07.15.13.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 15:13:43 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 67so1545832pfg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 15:13:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=yjLod3baVE+ScYdsUywcGQ1stxUCKjvY8O4R7mmqhQQ=;
        b=OHDem/hr407RAo7ws2nTmHbaIsmMZKawkmeETaqredGYxzBG5MPefH9idEugzHxOhL
         oFuPVhejARH0rmUTSfTXTAGMN456Q0E1+WUIBMeLw/NTCISQX2jsX9D4igvZHc+qadw9
         +3fV7YSSBd+i3ycCRQmacOIwF7JQBxUmfiJZpr5tSziXrhIA15rRQoGzAPOTyscwGpfk
         NI2WUI2dLz/zLly383eKbbiSaWMo5pCO/EUQF9Y0IizaJi6KfqWSnskfBhiuGd2bn6Q1
         1SFqCrbg42iPRmUrDj6cC1Tj1Sd/AGDiOBbiAhgjFts2YOTut2fnufM8QMxOUIPqaK9T
         Amxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=yjLod3baVE+ScYdsUywcGQ1stxUCKjvY8O4R7mmqhQQ=;
        b=eH++m+4VqxvlzrRyuirjnafLJKnqM0hMiWCUdv6PVpHV3/B1beFUrbUTZ3ngJf/hPX
         M9Cn9H+gy78Yh1u6FX7M/oY8L8VuMcxguNcWTLk40syF3bxiDAcmFdU9LIUWLq5RnlSA
         +P0oK/PdkZKPY+HfeuELjMc3kqicbfpbTSkn6qmBqEhHA15PKNB+dbgsgaa0mhXS8vx4
         3iU/PqffX7S+5Cb8ODH8vizkXhFmLLhyzqJt/Iuhnv+0Z3JJ58pAl0RFVIl8bNOEP/XZ
         CqM41Pi3FWuO5L1G1ENdnuUVVoM7uO86+yHcMsJrzdJ30tfl3N5T5AJh6Mju/0J7mFke
         pgpg==
X-Gm-Message-State: AMke39mrlUA/6ehQ5kf031D4jdnC7nzrAjBInsOQX7Zar6jHeAZ2uckm1BkxelgP+lKcGw==
X-Received: by 10.84.218.78 with SMTP id f14mr4009023plm.146.1488928423155;
        Tue, 07 Mar 2017 15:13:43 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id o5sm1733588pgj.66.2017.03.07.15.13.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 15:13:42 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	Aditya Shankar <aditya.shankar@microchip.com>,
	Ganesh Krishna <ganesh.krishna@microchip.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] staging: wilc1000: Fix spelling error
Date: Wed,  8 Mar 2017 04:43:19 +0530
Message-Id: <20170307231320.9716-2-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170307231320.9716-1-sreyamittal5@gmail.com>
References: <20170307231320.9716-1-sreyamittal5@gmail.com>

Fix the checkpatch issue:
'unkmown' may be misspelled - perhaps 'unknown'?

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index 5e28adc..34661bb 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -965,12 +965,12 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 				}
 
 				{
-					u32 unkmown_mask;
+					u32 unknown_mask;
 
-					unkmown_mask = ~((1ul << g_spi.nint) - 1);
+					unknown_mask = ~((1ul << g_spi.nint) - 1);
 
-					if ((tmp >> IRG_FLAGS_OFFSET) & unkmown_mask) {
-						dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unkmown_mask);
+					if ((tmp >> IRG_FLAGS_OFFSET) & unknown_mask) {
+						dev_err(&spi->dev, "Unexpected interrupt (2): j=%d, tmp=%x, mask=%x\n", j, tmp, unknown_mask);
 						happended = 1;
 					}
 				}
-- 
2.9.3


