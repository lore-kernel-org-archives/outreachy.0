X-GM-THRID: 6664067951305424896
X-Received: by 2002:a67:6948:: with SMTP id e69mr11340467vsc.26.1551679552445;
        Sun, 03 Mar 2019 22:05:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:7e57:: with SMTP id z84ls3240262vsc.2.gmail; Sun, 03 Mar
 2019 22:05:51 -0800 (PST)
X-Google-Smtp-Source: APXvYqx0D4wUA7rMOZa/gN/M9yt6me+9JhQLHWblYrGB3k2U6Rx3QyvpICNKkPlK1LNWJzfxjSkD
X-Received: by 2002:a67:edc2:: with SMTP id e2mr11436882vsp.35.1551679551731;
        Sun, 03 Mar 2019 22:05:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551679551; cv=none;
        d=google.com; s=arc-20160816;
        b=pJfkS8/gymufPSgOFNaPw8IOWlElCLRdca3YFUpCL1JQXrL3ePhOp9fkf6vsUR61bV
         Fm+W83f37dT0lsVk3y+Ml8J/moA/52fEji4EEIQzTWn7g31gRV1e5Bc62QTm37CuCIe6
         7zMI3TU4towND6EWmhsrvf5N392zC9UptHltduEr4stNX6JbE3b4dngneHsvR0Ub1QjU
         7VXuxpBXKzlAH6rOXEXem/ikqL1UqiELzq8hup13FiJ0MOY52bG/rBiZycbFbe/vOy3f
         pbJ7LC9DnRNJnDjMACTOXOky/uhhetfqy0n80lSQePnBkYlqP+mThfF5ParmDPJ3l8It
         kZLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=DCDTnTxhCo2oKPxnlpl5PIIL+W4cnxayJjaWT818sjk=;
        b=ObtR6A3I6dTXB9lk7ve2B78yqMgwrz+A2Ggmbf//qOZAwQW5/Gx/l6cb6+66JXrdVp
         6VGKFQtw+BbR0enoc1x60vbJKdYhTAY72wEHhPhvGXRzo2ehW0VLWRjzNv5omp9PzuI8
         VV7BFi2tsSWPptPJiAQXFAhjsa00E6EAo7xyiJDRBzAj6J21iR54YwtCj5tw3+yT+xCB
         GUnl/rVefI6vQv7s2rfOEyax4NbgTTMPVh8U+TThHX3+/IbyazQt2ZYlZFOPjinbY4I5
         6aynEehGXH4unznnHezb2bhPpqOvHNQsGcu4jkglmIcn5TjgNzgLwG0yWjzECnRb7Sar
         oVJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GkKcCVKV;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id e17si274576vke.0.2019.03.03.22.05.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 22:05:51 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GkKcCVKV;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id v21so2192104pfm.12
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 22:05:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=DCDTnTxhCo2oKPxnlpl5PIIL+W4cnxayJjaWT818sjk=;
        b=GkKcCVKVqF11HiTPmzWzNT+ywfWD1NV38eNeYoBrn9vvyrw3UuTu+pNSyLuWO6sk5p
         MwqSUfLW7TnmOGeR2oHOT+tglcz0Kaf6CVx32sVICdOQbbrpt9xWh6BeemqAHNU6Tx4n
         sAoOLkLaV9pLK7WHbehB2lU367Q20+FrFkKGHJ5mqBecNibTqIglcW/hiSdiUXJMiaXp
         NnPX9RSRsaGO8fJl4gFtmt5ITnbUgToRir7H4aNfz2lbak9Y/d846ll/FUxsb1gWra/E
         j3yvEafFkFmxuqjeD/qNwU7kPEAca/Ny4qsIplfNeVEI8mPTqZ+zfoLDaq+2/fChhIu7
         Tnlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=DCDTnTxhCo2oKPxnlpl5PIIL+W4cnxayJjaWT818sjk=;
        b=eNq7cFZB9UqQoWR7DA+dcvkYHvpKF+9oLcJN+f16904im7Y1OBL+rbK3yupzaFDEsD
         bzSUookPIcgIs9audEmSsCHrfRizNC+adAKgzwrYCYI9OXABZbOsUE6fy1IPifqbudzd
         G1fLmyd0kOmInkNJTh1QEaBViLwyBPZWI3hHS2OEQvC/ZhePMy/Eoa+BQA+wddIxJ7l9
         xq7aHKGs3mbiaLCKG8pRWt4sxHb+0BdHiTb3ZGQFQhYKAKLFuHDEpEf1OVTzf4ujRS5h
         /wPFKRcNpU19KGDo1oadXFhJbyVwW3Ky2gHXQye1EPipa1CZ7WR+477z6ZjXmH49QeLX
         vmTw==
X-Gm-Message-State: APjAAAWJdF8BnzorgyQZvMMz4ouyEHlVhkBSKwr59oE+JyVB513meX4i
	XYJjx2sDv1WZO3ZPKtkY3D8=
X-Received: by 2002:a63:31c1:: with SMTP id x184mr16618720pgx.352.1551679550875;
        Sun, 03 Mar 2019 22:05:50 -0800 (PST)
Return-Path: <idebleenasen@gmail.com>
Received: from ubuntu.localdomain ([114.29.227.68])
        by smtp.googlemail.com with ESMTPSA id y7sm7523671pgf.42.2019.03.03.22.05.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 03 Mar 2019 22:05:50 -0800 (PST)
From: Debleena Sen <idebleenasen@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Debleena Sen <idebleenasen@gmail.com>
Subject: [PATCH] Staging: pi433: Fix line over 80 characters issue
Date: Sun,  3 Mar 2019 22:05:30 -0800
Message-Id: <1551679530-2635-1-git-send-email-idebleenasen@gmail.com>
X-Mailer: git-send-email 2.7.4

Delete extra whitespace and tab space to remove
checkpatch.pl warning:
WARNING: line over 80 characters

Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
---
 drivers/staging/pi433/pi433_if.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
index b231463..53928af 100644
--- a/drivers/staging/pi433/pi433_if.c
+++ b/drivers/staging/pi433/pi433_if.c
@@ -45,10 +45,10 @@
 #include "pi433_if.h"
 #include "rf69.h"
 
-#define N_PI433_MINORS			BIT(MINORBITS) /*32*/	/* ... up to 256 */
-#define MAX_MSG_SIZE			900	/* min: FIFO_SIZE! */
-#define MSG_FIFO_SIZE			65536   /* 65536 = 2^16  */
-#define NUM_DIO				2
+#define N_PI433_MINORS		BIT(MINORBITS) /*32*/	/* ... up to 256 */
+#define MAX_MSG_SIZE		900	/* min: FIFO_SIZE! */
+#define MSG_FIFO_SIZE		65536   /* 65536 = 2^16  */
+#define NUM_DIO			2
 
 static dev_t pi433_dev;
 static DEFINE_IDR(pi433_idr);
-- 
2.7.4


