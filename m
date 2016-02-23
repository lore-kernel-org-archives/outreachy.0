X-GM-THRID: 6254513741412433920
X-Received: by 10.129.25.212 with SMTP id 203mr31981696ywz.35.1456242530490;
        Tue, 23 Feb 2016 07:48:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.85 with SMTP id y79ls2306718qgy.63.gmail; Tue, 23 Feb
 2016 07:48:49 -0800 (PST)
X-Received: by 10.129.92.65 with SMTP id q62mr31867499ywb.19.1456242529959;
        Tue, 23 Feb 2016 07:48:49 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id u66si4386065pfa.2.2016.02.23.07.48.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 07:48:49 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id q63so114123734pfb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 07:48:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=6Di8bntvLSC+4FtKS3KUwRwOm/LpWwrf7mMXhP4cpwE=;
        b=0tDGmAoAb3P4XPpiO04Pukg6z7SnEGXPc71uz1Ui/IjkDMaKAsENi61MnqvShB9MN7
         gEnHDZyU0lBM7ztPEnnrwxLuLtyEPktmW6A04QNEnI9mIBL+MbFHK/jqvoS6f22GbmOy
         HS24EIGZj4ThrZsiWUHt+lCXFploG29Qnnn4lWAVXJIismw82lzO1iBaMNjqUOnKcRLQ
         BEm83vIJqIkGrMg646XLa6wcP9XaJmvXzlR5K4kenRsGLTKDllFNfYxOI3QCsprc6NQ6
         Ac94OrPuF2dTITDNOuTyeNFyg6GRx3GiRWHDFUr2Ofu6c5D+uEVn6xOCTg4XdJeF0b2G
         H1hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=6Di8bntvLSC+4FtKS3KUwRwOm/LpWwrf7mMXhP4cpwE=;
        b=c7c8JLXdr79T0bJCfkuxr2hXanv0+/MOzCDMnMgNM3/tLiIDmdVmSwzVNTLXBjHFbc
         BFBoIRqE0EUXqHJNjucMr1iA5CmG16hL2Bb59URu2X696WZ6ouBQlsiAV+LvDCsyQJ/H
         ADgAkx6q9x4zJOA6s3Zpv78WtaeCHlg7Saz2levhsmbGM2qVEWsERhl3Rm5h94Km2QJf
         d+zt0UcjAyR/bapljGFMfSJbDNODmTshWyxXoRxXR4DhnWV43zoqb4H1aENGxG1/sHXS
         h64Cf4KziGsWWZTQ5ulWSeR9Sq7RStr7H1V9SYHafzSIx4NhcR0dE3eVy1cl42qNUvRA
         GaYg==
X-Gm-Message-State: AG10YOQTnJGegesGJGLNDI25VTew0uGJdxH0Dz80N7y4vyX5sxYL1Visa0LPKyx8xppoQw==
X-Received: by 10.98.13.86 with SMTP id v83mr47247793pfi.162.1456242529820;
        Tue, 23 Feb 2016 07:48:49 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.174.102])
        by smtp.gmail.com with ESMTPSA id r62sm45134938pfr.26.2016.02.23.07.48.45
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 07:48:49 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Tue, 23 Feb 2016 21:18:38 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2 5/5] Staging: rts5208: Use min instead of ternary operator
Date: Tue, 23 Feb 2016 21:17:20 +0530
Message-Id: <53b205d867cee4645bd52335626488a98f7ba134.1456241358.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456241358.git.bhumirks@gmail.com>
References: <cover.1456241358.git.bhumirks@gmail.com>
In-Reply-To: <cover.1456241358.git.bhumirks@gmail.com>
References: <cover.1456241358.git.bhumirks@gmail.com>

This patch replaces ternary operator with macro min as it shorter and
thus increases code readability. Macro min returns the minimum of the
two compared values.
Made a semantic patch for changes:

@@
type T;
T x;
T y;
@@
(
- x < y ? x : y
+ min(x,y)
|
- x > y ? x : y
+ max(x,y)
)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2:
Use min() instead of min_t() as the values passed in the macro are of
same type.

 drivers/staging/rts5208/sd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
index 244d589..1612610 100644
--- a/drivers/staging/rts5208/sd.c
+++ b/drivers/staging/rts5208/sd.c
@@ -303,7 +303,7 @@ static int sd_read_data(struct rtsx_chip *chip,
 
 	if (cmd_len) {
 		dev_dbg(rtsx_dev(chip), "SD/MMC CMD %d\n", cmd[0] - 0x40);
-		for (i = 0; i < (cmd_len < 6 ? cmd_len : 6); i++)
+		for (i = 0; i < (min(cmd_len, 6)); i++)
 			rtsx_add_cmd(chip, WRITE_REG_CMD, REG_SD_CMD0 + i,
 				     0xFF, cmd[i]);
 	}
@@ -383,7 +383,7 @@ static int sd_write_data(struct rtsx_chip *chip, u8 trans_mode,
 
 	if (cmd_len) {
 		dev_dbg(rtsx_dev(chip), "SD/MMC CMD %d\n", cmd[0] - 0x40);
-		for (i = 0; i < (cmd_len < 6 ? cmd_len : 6); i++) {
+		for (i = 0; i < (min(cmd_len, 6)); i++) {
 			rtsx_add_cmd(chip, WRITE_REG_CMD,
 				     REG_SD_CMD0 + i, 0xFF, cmd[i]);
 		}
-- 
1.9.1


