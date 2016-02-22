X-GM-THRID: 6254064858167246848
X-Received: by 10.182.60.201 with SMTP id j9mr2126968obr.46.1456138201134;
        Mon, 22 Feb 2016 02:50:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.62.46 with SMTP id v14ls508238igr.4.gmail; Mon, 22 Feb 2016
 02:50:00 -0800 (PST)
X-Received: by 10.98.33.209 with SMTP id o78mr26385773pfj.6.1456138200730;
        Mon, 22 Feb 2016 02:50:00 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id u66si3398218pfa.2.2016.02.22.02.50.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 02:50:00 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id yy13so89384377pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 02:50:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=gJvk1We5XMbJZzSOifOGWg2Nh/Nn78hAEOJwm0USvAk=;
        b=Xmn0icaxA67wLDxAEGbTf+OkI57QgVYJAO8LlR2ELYmzr3iOLGJJ5fiNnlCZlTYtu4
         akgy2hNK1cQNVzPSAX68VGFhny51+mwi0gAruaU+lkqEC0zOz00JwcD/njj3RR5Loen1
         /1qI4hBL/O15EyDtr/HvoGFglOqwsmptskBr0OPqo5y7leKx38OOpvotINt/tRP2Ci7a
         JTqspPiFCVhsvt9Ysv1TsbKb6dV7VIin5GEiWR76ATc+iacJHo39WqRHVybIUulV5ubD
         RAL4w2nkqRbYUXBimokvbeiINGH7tKsLvDsQN7KE3dIWZGeVtoxq3b88Kiqo9OAkxZIm
         jeEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=gJvk1We5XMbJZzSOifOGWg2Nh/Nn78hAEOJwm0USvAk=;
        b=a653aSwWI+r9O8eG2Y+nqb3juSEoYy3Q4jDjz92EBDEQeuDHS9MNC3R7laKRe9hoSF
         RaKk2+Nt+upGf4mlKL4nByoWO2wYjIxw01n7LO1xJTpgzX/zpNd16GaUeFDFoXGXrBF+
         snY87nIo1H41YJ+ui4m8mLUMtZ57KWJ5vxcfYIt06AtOv7aEJ+LhXhSSohVtdkq5dEht
         RL7b0LpQZKVq7vcPNN3mMDoZiDKTgPruXSdaGX/FaQPz3c7vph/a/ky9dw5B5tiASfpX
         o0DQ5UGYndslvZnJj5u/J61EcjuEJTMpP9UXvSIvNgV6/1gpvB9KDsZF65VDkTm+oc0J
         c/SQ==
X-Gm-Message-State: AG10YOQiGjv1yQ6jJk9hkhzNFnpEgVUH/x3ZszsJxGmmS812D1QQ34qSASA4aWKDSvIgdw==
X-Received: by 10.66.190.131 with SMTP id gq3mr36780580pac.42.1456138200646;
        Mon, 22 Feb 2016 02:50:00 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.155.110])
        by smtp.gmail.com with ESMTPSA id l21sm35882596pfi.63.2016.02.22.02.49.56
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 02:50:00 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Mon, 22 Feb 2016 16:19:51 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 5/5] Staging: rts5208: Use min_t instead of ternary operator
Date: Mon, 22 Feb 2016 16:15:34 +0530
Message-Id: <e761fe94fc1ca55d8c1155bef3d8af0aacb37914.1456136671.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456136671.git.bhumirks@gmail.com>
References: <cover.1456136671.git.bhumirks@gmail.com>
In-Reply-To: <cover.1456136671.git.bhumirks@gmail.com>
References: <cover.1456136671.git.bhumirks@gmail.com>

This patch replaces ternary operator with macro min_t as it is
shorter and thus increases code readability. Macro min_t return the
minimum of the two compared values.
Made a semantic patch for changes:

@@
type T;
T x;
T y;
@@
(
- x < y ? x : y
+ min_t(T,x,y)
|
- x > y ? x : y
+ max_t(T,x,y)
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rts5208/sd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
index 244d589..adf1848 100644
--- a/drivers/staging/rts5208/sd.c
+++ b/drivers/staging/rts5208/sd.c
@@ -303,7 +303,7 @@ static int sd_read_data(struct rtsx_chip *chip,
 
 	if (cmd_len) {
 		dev_dbg(rtsx_dev(chip), "SD/MMC CMD %d\n", cmd[0] - 0x40);
-		for (i = 0; i < (cmd_len < 6 ? cmd_len : 6); i++)
+		for (i = 0; i < (min_t(int, cmd_len, 6)); i++)
 			rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_CMD0 + i,
 				     0xFF, cmd[i]);
 	}
@@ -383,7 +383,7 @@ static int sd_write_data(struct rtsx_chip *chip, u8 trans_mode,
 
 	if (cmd_len) {
 		dev_dbg(rtsx_dev(chip), "SD/MMC CMD %d\n", cmd[0] - 0x40);
-		for (i = 0; i < (cmd_len < 6 ? cmd_len : 6); i++) {
+		for (i = 0; i < (min_t(int, cmd_len, 6)); i++) {
 			rtsx_add_cmd(chip, WRITE_REG_CMD,
 				     REG_SD_CMD0 + i, 0xFF, cmd[i]);
 		}
-- 
1.9.1


