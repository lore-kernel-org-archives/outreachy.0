X-GM-THRID: 6664067951305424896
X-Received: by 2002:a63:d70f:: with SMTP id d15mr7428500pgg.110.1551720923398;
        Mon, 04 Mar 2019 09:35:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:b297:: with SMTP id z23ls7060276pfl.4.gmail; Mon, 04 Mar
 2019 09:35:22 -0800 (PST)
X-Google-Smtp-Source: APXvYqy2eoFGBuuTyO+RTOt14IqnErkj+9D7j/LwyCuT0m+x0FM/c3RG3ORlgZz/jPRTg/y6pNyx
X-Received: by 2002:a63:1a04:: with SMTP id a4mr7654874pga.126.1551720922707;
        Mon, 04 Mar 2019 09:35:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551720922; cv=none;
        d=google.com; s=arc-20160816;
        b=XZJw4vQAalgVSP5w96rd8g3p3/z+93309TBSKuD9XVaB70xZklBDaHwLlkpr8M8kJD
         l27U8Nc+eTbb6fCwg234x7wwOVivJuwzytTnYGmtuwYZu84s5zja1uQuZuGcQkT4vMsI
         kG833d5B/gfvDtCq9Q3u+1CKrUVMF4ZREn4/zhXs4/XbLf1iJ30nHv56yLbL8y71R0RR
         WfUW72COb5JuFG6UcbhJV6I1Ac6+wbCpwksPNLGXlsTUvteDGH0qZ/UhQiScJFyKS7Lm
         X6dwXDWNRPLvLNUKYFBQ4baRVeaNh1yF5OnhQQBuL1nB57Vb2WtLKbFYPL3BtHjNl7LA
         J2IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=wiAYgRWnNCOapFLTMekkg3XosTxueaDOARRFFEAfbkc=;
        b=zVT+NoWAeEju8v/JHYhPN/yZMvr4nZW7yaPEUAEs2KbMvuA1bWnMHwq5F6mYmYljJa
         1aqle8JuUsMvEM+zcDbo1Y/vO1P99JCKArMWfSMoKhqDUNdOsra9gJKwj3do8KkvTb9f
         KEzsqKLOWbdErKtZSmfypNx9fYvOLR+5lpAPeP9i049Wtl83P9eHw/iltlv9IBitAdfc
         uu0ISjEw/GYK6Dph/YQzWqBPV43/vyFSBnPc//u4LeYTib4knIdBxE1bdZ+q5XB0kF22
         K7dlCiI4lkcHUYbaH5XM5ytN/LrfhqYdlYIIzq4fdvkOTlWNT1fwMKdyMEagDJhf3bp1
         RsZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ClfuXVyB;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id u20si313265pfj.3.2019.03.04.09.35.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 09:35:22 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ClfuXVyB;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x429.google.com with SMTP id q17so3499604pfh.10
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 09:35:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=wiAYgRWnNCOapFLTMekkg3XosTxueaDOARRFFEAfbkc=;
        b=ClfuXVyBhvPJUc+tkjWc86UrM4La8qWpfJLV44qWBDR9vVg20AzgGNSRObymaSUeVc
         WGEEEgop0NmHpIkzw3Q8eIYaA9dXTDtbFlp0PHf9geStmgQfMdOk0tebc6+xcmBVhHIU
         1QRZJ65jcpQ9WpXVdU3cSJ/YSB2zoV13wWkFiK7gDwZpGxcm++WZVpA2TYxN1+f07F8O
         MZ/b4fEf05L6Hclti1wmwj5G3NnVemc6ktuSKUBZX4zJP1M/CpQhFW/iFIRZnZzkw7au
         sl9WLMyK+6SC4g86gx71PYcQA3DfpFuLpfGcdZrG5/fEFRw5TcVe054st+9IqzckVJyq
         wCOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=wiAYgRWnNCOapFLTMekkg3XosTxueaDOARRFFEAfbkc=;
        b=L3gEd6LS3L5i5Y7ZcI0KaGGWcDLNLu+FyrDJnIstgYJSLoN6EzQYyZIVff1mrDsW8H
         yM3UPWsPD8gUemL51YnNFOCZ4OBJzseBTl+M7H1magavnE1AjartM8ZdiIb38uudjV2z
         N/bjZve/Jjcx73SEeaJk5+RLCEbaQtY8z1Rxq19nkW3Wpi/M2H4S2K9UdwcYaaZhu/bS
         b4U/m6sqXN8Wl0HxrArCIY75zQS5AalFeAHO9Qa4ra7sfJz1GmICJ2x7fmfx4mUAQkfv
         7+wKMYkH2/3eyEmbRnJ+bM8kBtl0UTuiKU4m+4fm9vlp9gzjKeNq/WbbPZ9sudxWCIKn
         CJtA==
X-Gm-Message-State: APjAAAUj9DO/tkOUnxN8dcFTiuSOLs8DnZ0G2KIZAFWINQh0G7i51NQy
	86jlDjrKtCibGVp0FKJwPr622Bw/vNE=
X-Received: by 2002:a17:902:8f82:: with SMTP id z2mr21599377plo.163.1551720922527;
        Mon, 04 Mar 2019 09:35:22 -0800 (PST)
Return-Path: <idebleenasen@gmail.com>
Received: from ubuntu.localdomain ([117.211.86.109])
        by smtp.googlemail.com with ESMTPSA id g2sm15443915pfm.144.2019.03.04.09.35.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 04 Mar 2019 09:35:22 -0800 (PST)
From: Debleena Sen <idebleenasen@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Debleena Sen <idebleenasen@gmail.com>
Subject: [PATCH v3] Staging: pi433: Fix line over 80 characters issue
Date: Mon,  4 Mar 2019 09:34:10 -0800
Message-Id: <1551720850-101768-1-git-send-email-idebleenasen@gmail.com>
X-Mailer: git-send-email 2.7.4

Delete extra whitespace and tab space and use one tab space to
remove the checkpatch.pl warning:
WARNING: line over 80 characters

Signed-off-by: Debleena Sen <idebleenasen@gmail.com>

Changes in v3:
	- Add version change log
Changes in v2:
	- Add "and use one tab space" to the log message
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


