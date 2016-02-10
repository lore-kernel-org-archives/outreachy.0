X-GM-THRID: 6249577113411649536
X-Received: by 10.107.168.139 with SMTP id e11mr12087006ioj.32.1455093834771;
        Wed, 10 Feb 2016 00:43:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.36.5 with SMTP id m5ls176070igj.32.gmail; Wed, 10 Feb 2016
 00:43:54 -0800 (PST)
X-Received: by 10.107.11.23 with SMTP id v23mr24468197ioi.13.1455093834409;
        Wed, 10 Feb 2016 00:43:54 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id u66si258041pfa.2.2016.02.10.00.43.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 00:43:54 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 71so637743pfv.1
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 00:43:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=TLCEF1cHl/q1P3ZJo2fu/V+12A1p/9zORk6KW+vhnIY=;
        b=QZXudniNBwSW39MFw2v55Al8c2g0DgyCqOJyDY54YWKXUDmMGBWFysBPDFYFD1nI39
         UKV0EZI6HvesmbPT27nKa6LuWu1tLtQ/wwycNgkxsCdwvm3aZCMSKTNqFdxaQHBxgg+3
         kouYGrvF+Y3sTxQOz1AcIsAZGBmQEvpACqmvTCE9jSJMKxhrTt7+A9O9Z2Vojr5Ed83E
         5uMXIcK3qYyT0qFYVgxBgbxqkQcHDJyRinACJzdrmYVFIbtJZYd4skW/rDybWSLHr0wt
         6mqPPN8JHYx7weQzFdI228WyGoYUNYvkxVwEH5red+/9cTMAeLEPyW+ne0wKrYMlF4Ny
         zVLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=TLCEF1cHl/q1P3ZJo2fu/V+12A1p/9zORk6KW+vhnIY=;
        b=VqC6Ffv23wowF/36/shJrCFu0NCjk6F4jncoSC5N3e7q6sdNhhDsn00IOcKMVIBgCe
         5MnBoqdZrgyOzGbiG+jZwZtfHMsbJGh+34uRoa/XaUoe94VE2Ed/EZH8ls5aI7Xu87po
         hlSJVKC4kG1GjUxnxOKYfMgwNDX5RGaBxLonyUKxS8gNGEJZdcktKawOD3JmFHX8lu0d
         B/JoTyK2LNI4/EJLi4ijvk2R/QYAMv9ungtKfBP363P6YZqaOuTr4NzsKEpZV4ycv8vk
         tgLVIVafv7qDggKxcI+TyVkzda41KVvU+ClSp1T6sgzh7EEfOk4zn2ObK/3VDIWBTxFP
         LRPQ==
X-Gm-Message-State: AG10YOSufsrk3cngm0Dsj+qaB5iNGmJi1ldHgal6JoAls42GZW6VxCgOKqwO2IWdX4Ry1w==
X-Received: by 10.98.67.153 with SMTP id l25mr56780311pfi.111.1455093834303;
        Wed, 10 Feb 2016 00:43:54 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from rakhi-Inspiron-3542.4.2.2.2 ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id fl9sm3229293pab.30.2016.02.10.00.43.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 00:43:53 -0800 (PST)
From: Rakhi Sharma <rakhish1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: julia.lawall@lip6.fr,
	daniel.baluta@gmail.com,
	Rakhi Sharma <rakhish1994@gmail.com>
Subject: [PATCH v3 2/2] staging: lustre: lov_pool: Fixed a return coding style warning.
Date: Wed, 10 Feb 2016 14:13:47 +0530
Message-Id: <1455093827-7930-1-git-send-email-rakhish1994@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove unusefull return at the end of void function.
WARNING: void function return statements are not generally useful.

Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>

Changes in v3:
  shortened the subject line and make the discription more clear.
---
 drivers/staging/lustre/lustre/lov/lov_pool.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_pool.c b/drivers/staging/lustre/lustre/lov/lov_pool.c
index bba37bf..34e0919 100644
--- a/drivers/staging/lustre/lustre/lov/lov_pool.c
+++ b/drivers/staging/lustre/lustre/lov/lov_pool.c
@@ -247,7 +247,6 @@ static void pool_proc_stop(struct seq_file *s, void *v)
 		lov_pool_putref(iter->pool);
 		kfree(iter);
 	}
-	return;
 }
 
 static int pool_proc_show(struct seq_file *s, void *v)
-- 
1.9.1


