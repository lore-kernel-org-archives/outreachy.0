X-GM-THRID: 6254256942088192000
X-Received: by 10.112.235.137 with SMTP id um9mr3619178lbc.8.1456182669903;
        Mon, 22 Feb 2016 15:11:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.10.10 with SMTP id 10ls422221lfk.43.gmail; Mon, 22 Feb 2016
 15:11:07 -0800 (PST)
X-Received: by 10.112.137.102 with SMTP id qh6mr3816408lbb.9.1456182667509;
        Mon, 22 Feb 2016 15:11:07 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wm0-x22f.google.com (mail-wm0-x22f.google.com. [2a00:1450:400c:c09::22f])
        by gmr-mx.google.com with ESMTPS id s141si1284477wmd.1.2016.02.22.15.11.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 15:11:07 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) client-ip=2a00:1450:400c:c09::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22f.google.com with SMTP id a4so185002350wme.1
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 15:11:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ad8BHFOkJgI5zd8QPlGHaB8gOzj+CPQQrb2XRzNDzsc=;
        b=GdTSQ+BKihCZwtSb4wzhqNaBmrceJD0jyBnMx7mHdXkX+XRvM6ShEapcbiMtF+qyVe
         Rw34qbJEkwbYoYuBUBzqZETMptyN4WkwpX/WzJZ8HyPrvGn03cc26wVMjaJ6TUU7+HlQ
         Y4piaATb1WWySsujTVbItH8FA1sdKoLo/OCF1+bmSBlXOGlE3itaDnmjCQq8KzumNa3I
         yrvMZwA3uHe5kbkDi4gUX7E/SaiQNIVhP0gqffTU7uoI963lQ/ZeYWoBrvcr8byVrC8b
         LQ4Ot/1ZUyqr/VTcI6blM2EP4YB+ZitKVxCVceLvF6ue6lmQ9puasOR/XO5h/3QNPFoU
         lKIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ad8BHFOkJgI5zd8QPlGHaB8gOzj+CPQQrb2XRzNDzsc=;
        b=AlpYFNtypcdhJ8sRblrzwn40jhSVKXkKZlnUw+ApGgwLSB6X0MiMHgcfd0O+TDF6qJ
         SM98wpfD1Ecv6CVi7I3J0sTw0d8WBAOaSYawiMddtxRpH++uT8iL9IETmf0JPjw5x8Hq
         pgZCtf+40ai4AX+tFRzqjYV7JQBWljp/WKQCV6JdZ/WqhhURLwkb1c2rkabhNlkymhOn
         2mXoCpbiGVmjzslPTYPZ5HA9dB4wj6nulMO7/C7O3IqLIOt78ZaO/9ZIfAV2N1kdjFy9
         MBPbWTxDngi/9/UfS/qDQZIqknRRwvRvTa184pB1+ATkzSCLv/kI3nXg0J+FzZ7V9h7D
         3J6g==
X-Gm-Message-State: AG10YOTS3raPTLkBl5MvIlvtEwGfX1d4ItVkWYUDp0kSXuxCbVv2PoGQqmTzcyMR/zprFg==
X-Received: by 10.194.87.161 with SMTP id az1mr30265450wjb.163.1456182667381;
        Mon, 22 Feb 2016 15:11:07 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.228.232])
        by smtp.gmail.com with ESMTPSA id w17sm23138266wmw.5.2016.02.22.15.11.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 15:11:06 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: sm750fb: Remove space after cast
Date: Tue, 23 Feb 2016 01:11:01 +0200
Message-Id: <1456182661-6726-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove unnecessary space after cast. Problem found using checkpatch.pl
CHECK: No space is necessary after a cast

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 5e6798e..0251eab 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -146,7 +146,7 @@ void setMemoryClock(unsigned int frequency)
 			frequency = MHz(336);
 
 		/* Calculate the divisor */
-		divisor = (unsigned int) roundedDiv(getChipClock(), frequency);
+		divisor = (unsigned int)roundedDiv(getChipClock(), frequency);
 
 		/* Set the corresponding divisor in the register. */
 		ulReg = PEEK32(CURRENT_GATE);
-- 
1.9.1


