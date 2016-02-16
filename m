X-GM-THRID: 6251974012736372736
X-Received: by 10.98.93.217 with SMTP id n86mr23195176pfj.11.1455651133376;
        Tue, 16 Feb 2016 11:32:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.104 with SMTP id b101ls1464432ioj.6.gmail; Tue, 16 Feb
 2016 11:32:12 -0800 (PST)
X-Received: by 10.67.8.2 with SMTP id dg2mr24029836pad.16.1455651132882;
        Tue, 16 Feb 2016 11:32:12 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id 12si3316575pfb.1.2016.02.16.11.32.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 11:32:12 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x235.google.com with SMTP id c10so112452416pfc.2
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 11:32:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=o3ndTmfy90Bkbl8xbqGLTjWSs3NAocXn/33pUz20ieE=;
        b=I7KhrRtCRKYl8isDxlh/tmy0/qDUOSWt8tXGt+RTAuFkDrEqAr3gEN2iHs8Dal5EWc
         2D8jJA39fHYGxVVS3yYy0Z6vpclhT90viCDmri4AiSJ4P3Ljwb4fxHZ7JKzg8G2dLIZx
         VKOzMMWdFChVsexK80yacuXpq1fOFJn0Hw4/sfBiQsF1M+KNSmlnTVWsWIpPUTIaH0QF
         IZ88sOeYv87thM8iHy0OpwqbVee6cS3SeNSWGREiARXCWweLbTOax5uyiXZaPGdl5L29
         K0CUiZ4lQnTl2Crtyssjj4zhsMCweHJ5cKlYq/QzK47IBsIYeAMJG8lbnn3ynCAsR3ZH
         II/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=o3ndTmfy90Bkbl8xbqGLTjWSs3NAocXn/33pUz20ieE=;
        b=RovDSY9j3Jl+69uDF02+6lnWGS3xA3AFZQ4caJftK5YvcyE+SeWtQ0fJ/Q4v1m9FiY
         2DAnfH7gS0X0IIkv0doQpc4SUTMPL41HmHSCsRn8cMR/+EDdXWRLxxerODC9qP3R16jZ
         5sMUL/1R1prGgPQess3bmXydh5pyQWCZQTrDK92UXAmbHqR9Bxdy9E8e+g/DhecRaUQD
         5JxVcrEWoMyTZWl7N8nFTeAjlfmOGOtTBgJwLoLeuOQ/XKu5eL/iTeep2EJKKwmrg6K8
         wcQen95cRQC0Mqb7xyKIM6JYORx+NgAKZBJcmujSxDSt/eIWOCkPQvBIvdP3mZV87UbQ
         gM6w==
X-Gm-Message-State: AG10YOQ1Padl64nVF5G9rQO7s22M190ReTUnrFL6nMsOXIAwbViZYzowOLMcUIFKPLAU0A==
X-Received: by 10.98.65.91 with SMTP id o88mr33077795pfa.114.1455651132755;
        Tue, 16 Feb 2016 11:32:12 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.147.122])
        by smtp.gmail.com with ESMTPSA id h66sm47579047pfd.91.2016.02.16.11.32.09
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 11:32:12 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Wed, 17 Feb 2016 01:01:59 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: lustre: lov: Pull assignments out of function call
Date: Wed, 17 Feb 2016 01:01:58 +0530
Message-Id: <1455651118-18615-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Assignments in function call arguments are undesirable. So pull such
assignments out before function call.
Made a coccinelle script to detect such cases:
@@
expression fn,b,d;
@@
* fn(...,d=b,...);

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/lustre/lustre/lov/lov_merge.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_merge.c b/drivers/staging/lustre/lustre/lov/lov_merge.c
index 97115be..029cd4d 100644
--- a/drivers/staging/lustre/lustre/lov/lov_merge.c
+++ b/drivers/staging/lustre/lustre/lov/lov_merge.c
@@ -129,7 +129,8 @@ int lov_adjust_kms(struct obd_export *exp, struct lov_stripe_md *lsm,
 			       "stripe %d KMS %sing %llu->%llu\n",
 			       stripe, kms > loi->loi_kms ? "increase":"shrink",
 			       loi->loi_kms, kms);
-			loi_kms_set(loi, loi->loi_lvb.lvb_size = kms);
+			loi->loi_lvb.lvb_size = kms;
+			loi_kms_set(loi, loi->loi_lvb.lvb_size);
 		}
 		return 0;
 	}
-- 
1.9.1


