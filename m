X-GM-THRID: 6394759600755703808
X-Received: by 10.129.48.147 with SMTP id w141mr209159yww.47.1488895993171;
        Tue, 07 Mar 2017 06:13:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.44.99 with SMTP id f90ls449907otb.24.gmail; Tue, 07 Mar
 2017 06:13:12 -0800 (PST)
X-Received: by 10.13.219.76 with SMTP id d73mr239821ywe.126.1488895992735;
        Tue, 07 Mar 2017 06:13:12 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id a3si25773pfb.2.2017.03.07.06.13.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 06:13:12 -0800 (PST)
Received-SPF: pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of sreyamittal5@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=sreyamittal5@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 25so252611pgy.3
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 06:13:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=htoTuJ5YBVYTsImPYGv1o0A0Ern6WixGSGEiWeVckp4=;
        b=Kzk8MIjK1FLnMqjjv6exUxGqVsWcaNZKtKdd6UQjDRfrrhqxkuOb31VR6NL2CRIer7
         ZkiaBSANhIRcqfXOTUwWDLJi1ypa8AmubmuWSWAVHJdc05HnN7DiD0SXaRI9W0Mrny3l
         /ea+j3Siu7D2ZxCwXgb+g4YtO1kd3exHnL2itLxSSRJkc0ocGXiK1pzKqsTSJqkmsKCV
         X7abnPmPGQoe9W5TD/YXd5y4Mfzddi63L3ebVB2ajxvarZaJ43EUESLDcn0tgu1ZK7sy
         e1VsuaDCsqcl4qTg1qTBGuTmrTegrNt1OdR99eNjQvcJnFaGfrqptmwXFcskrTzm48Qy
         w+4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=htoTuJ5YBVYTsImPYGv1o0A0Ern6WixGSGEiWeVckp4=;
        b=EwQy8k6ckfkxZGK0dLe1ydSrbyaH36KaF5dhEfA6HUYCfGK56uuVwDwzhaO7dCzQvn
         7LbXFf77riVJ7Xb+j286O2WgLH/JL4jNK+pi8WKsMVk5s2EWk4IIE2XDHMsBfrmydQvC
         /ZTR6cQxgkj1B9I4BEOgv8PPD5cJk7nbF4nB7eGtbnE8W/SQbxd7AZ81xc2DoLCggGX9
         upVtMTZv50cx4RfpWL1yQgkkEX0kBI+uI2F4ikXutuXJsryb9pNHFwxnLCG0l24ZwMFp
         2YGHi7MyxuZH+j4MdoaZ2zSMu4fwOlPhOAEV7sQ1FiZd7t2CZDs/BGCe/HmXj655l2C9
         IEbw==
X-Gm-Message-State: AMke39ka/3fIX2JzNuiMQMzr+U7Fzf8vM7Mjl+3NWWE6sM+bVd8bBuvVmHo4C1Av7QSvfg==
X-Received: by 10.99.175.7 with SMTP id w7mr583696pge.170.1488895992498;
        Tue, 07 Mar 2017 06:13:12 -0800 (PST)
Return-Path: <sreyamittal5@gmail.com>
Received: from stayawesome ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e2sm224188pga.61.2017.03.07.06.13.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 06:13:11 -0800 (PST)
From: Sreya Mittal <sreyamittal5@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Sreya Mittal <sreyamittal5@gmail.com>,
	Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: sm750fb: Add braces around if condition
Date: Tue,  7 Mar 2017 19:42:56 +0530
Message-Id: <20170307141256.2745-1-sreyamittal5@gmail.com>
X-Mailer: git-send-email 2.9.3

Fix the checkpatch issue:
braces {} should be used on all arms
of if-else statement.

Signed-off-by: Sreya Mittal <sreyamittal5@gmail.com>
---
Changes in v2:
*Add tag to the commit message

 drivers/staging/sm750fb/ddk750_chip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 10cf729..7948ca9 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -16,9 +16,9 @@ logical_chip_type_t sm750_get_chip_type(void)
 
 void sm750_set_chip_type(unsigned short devId, u8 revId)
 {
-	if (devId == 0x718)
+	if (devId == 0x718) {
 		chip = SM718;
-	else if (devId == 0x750) {
+	} else if (devId == 0x750) {
 		chip = SM750;
 		/* SM750 and SM750LE are different in their revision ID only. */
 		if (revId == SM750LE_REVISION_ID) {
-- 
2.9.3


