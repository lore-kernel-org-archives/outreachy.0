X-GM-THRID: 6670962421189836800
X-Received: by 2002:aca:4b14:: with SMTP id y20mr1008865oia.95.1553204474654;
        Thu, 21 Mar 2019 14:41:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:590f:: with SMTP id t15ls795509oth.10.gmail; Thu, 21 Mar
 2019 14:41:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwgYSRkFGWqS9vUX6p1ZgGU4Kvtqj4LFg3+LZ1EBy28bqytddepXtXADYUX2nmQjLfHdu2t
X-Received: by 2002:a05:6830:15:: with SMTP id c21mr4460985otp.138.1553204474063;
        Thu, 21 Mar 2019 14:41:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553204474; cv=none;
        d=google.com; s=arc-20160816;
        b=mNEviMo63lXcG3WbXSGqOmYQKlA2k6DIeq6B5moaXhZ9Kk1yD8qN07aI31iFJ5j4Zz
         aIRrPU2mE7Ize9+ARpmpvb73Z9UW6BC8d1T/pXgdbKnIaPB6o5HdiCy9HBjYOcDeRM3G
         2LhqrI2qtWSY+9n7+fpBcUAbLr7UjMzXf79WDdDCEDlant71MTx6cT+NZtmWIW2NMB0X
         saabGmhNZ4eXopHUgYs9juL+ZsL5ua3k6joIskjS9MgVT6EyEgmqw7ROVw884Cefsse1
         G9vrEaYN/Rt12jeBq6kRRER/MW9LETF/zrVITFSXsm8IJMqIDRfffrT/70wwzT4ZgiYs
         KlVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=HcGtszjFp+nrysuBgy1paT4Ps567wPVYjD4DxpeLbI0=;
        b=IsJkRk0UpX1q9uT9/4zbV+DFxnstPWrVXLKigFj5vqqBzuXvXLezE6KSigSbNKYlxC
         kfowJ75kcRv+KhRYWOwF7ywbAoLTUNDmQiwsiwKYqMjNfA87o9r4ydhJMwhbn6tna/c9
         LVCGFaFCfaGWmi3gEIf4jpgnbQPm+IDKKoE6xDyg2/8+D4dAP75ieXIrzKx0tCHhJ97o
         zdKW18AS9OUsyIVJs0CQbUjR2gO/bq5yCm6EylagMC+GbyeUmP7EGCfpM7MRcIRClZGW
         O2AEc4Dp4iS0M6RW/TUFlKZU+8aVbwZfuuFYtZiGgQ+YirRdB1qqbw60h6YGL7es1G35
         D5FA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OsbdJKFu;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 196si78215oii.2.2019.03.21.14.41.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 14:41:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OsbdJKFu;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id i17so734pfo.6
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 14:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=HcGtszjFp+nrysuBgy1paT4Ps567wPVYjD4DxpeLbI0=;
        b=OsbdJKFuqLlu47Vo6OfY4T0mpsZtzw33yFv2yCs6ifaZe0B7kdBbHJJpBnsPECj849
         LwQpj2r8BXjgzce1k48Hrtw5YC7xpv8/ce20h3NpCvolOH/po97TD/6Ffseibuls3But
         n3UTOzvgvU5d7Ag/xbTCQjosbznF/BkADsk6IWNJMLDDc0+jWjIdmFKrKK2gKQihxGCg
         gmw5rH1P8g+hO/JeHiP0fzrvFtPZILJm/OSAP2XFvg4IhkPr4Nf3U8dSsPoqjbuCx8QT
         epCFmponv3FvdA+lpngdL6e9XIDzpwxELmr0UX79Ai8Sbg9YL2KhWeBZSymgBTf0a++Q
         65mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=HcGtszjFp+nrysuBgy1paT4Ps567wPVYjD4DxpeLbI0=;
        b=Hmdb4woeEweovG90oTJOBGEzb5TBxBH7LVNlweidbytFCOeayZrlkxq4b+hSuZD+BJ
         JiuTgivdd90IoWgJydFSMIjduRQzBk4sx7uWmNqigwhbf/lApmKlWNJnUf2/MxdwTDDS
         X+4SFxmnDSyKF2tmyyJY4i7YZNFF2SuidoQOmQOut/UM2R90laB1Igue55eUFytXwTB0
         p95hGG0MLbwpknLyZrNK3h25m27LIlR9Vu3y0jjRyw/L7ASUn/5WoCU+kp3POHW00vFi
         iA0WqEiuEYJrDDJqsb/1CbnWNgAZmMZLtRNN1l/RnvFeCzIDzZRxMvDjZGt9tEx4aB9V
         0NBQ==
X-Gm-Message-State: APjAAAUPyg4iSlep5S+hxhDpD9YTOooUOdLN9c891DkoQE8cTFXj4LJK
	WiPfJhHCXnSwDuGiuBVzuodS4zEKwXM=
X-Received: by 2002:a17:902:6b8c:: with SMTP id p12mr5964511plk.282.1553204473441;
        Thu, 21 Mar 2019 14:41:13 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.5])
        by smtp.gmail.com with ESMTPSA id g2sm13319201pfm.144.2019.03.21.14.41.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 14:41:12 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH 3/3] staging: vt6655: lines should not end with a parentheses
Date: Fri, 22 Mar 2019 03:10:56 +0530
Message-Id: <20190321214056.15963-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Adjust code to fix the style issue-lines should not end with a
parentheses

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/vt6655/rf.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 6b8a69df509d..e61051076d87 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -756,11 +756,8 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
  * Return Value: true if succeeded; false if failed.
  *
  */
-bool RFbSetPower(
-	struct vnt_private *priv,
-	unsigned int rate,
-	u16 uCH
-)
+bool RFbSetPower(struct vnt_private *priv, unsigned int rate,
+		 u16 uCH)
 {
 	bool ret = true;
 	unsigned char byPwr = 0;
@@ -895,10 +892,8 @@ bool RFbRawSetPower(
  *
  */
 void
-RFvRSSITodBm(
-	struct vnt_private *priv,
-	unsigned char byCurrRSSI,
-	long *pldBm
+RFvRSSITodBm(struct vnt_private *priv, unsigned char byCurrRSSI,
+	     long *pldBm
 	)
 {
 	unsigned char byIdx = (((byCurrRSSI & 0xC0) >> 6) & 0x03);
-- 
2.17.1


