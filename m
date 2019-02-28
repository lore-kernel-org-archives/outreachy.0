X-GM-THRID: 6662791794901647360
X-Received: by 2002:a25:296:: with SMTP id 144mr753023ybc.55.1551388470681;
        Thu, 28 Feb 2019 13:14:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4c4:: with SMTP id 187ls1953386ybe.11.gmail; Thu, 28 Feb
 2019 13:14:30 -0800 (PST)
X-Google-Smtp-Source: APXvYqzqOVNB1AmO3S4ZXxY99i4IZdZ+66mjMT1tSzPTup97X4KsmNS6DmHIJ1Kh+YziVjKKTPy2
X-Received: by 2002:a25:3b89:: with SMTP id i131mr821172yba.26.1551388469977;
        Thu, 28 Feb 2019 13:14:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551388469; cv=none;
        d=google.com; s=arc-20160816;
        b=cW/bSnK3NC+UlHQX6w6uiHH8Vb++Bl8ZwgBo+1xWFL/oRSQHNryY6q5iGQLQivV1YB
         dKOWMdXUaKwWA/CFu7GhQSGORex1knleH0JE3zUPnYEWCmaAyzxGpMd3oLP1Tgg0fNHB
         /o49a6wNjydRITpQ9J2zsKOHXsPBO85+0clLD6KOVMD8Rxi33EyikcziwtFzYIQLfJ09
         N89bEXBo9CRQR2vxRIdJqsWxFVw6/RHXYjBS63++VPqrB34Sm2aTCDLfws6A9H0UvaSa
         e4DffvRED4UhSz+Npe83gk8W4KpjO1O1A7hawpixevWfSfYYdTriOBxaUtoEQAp1VXtm
         f+Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=exHS7DT0rcaQhixgkyKzD/NrS5RL2YlFDbUDw8mw7Ig=;
        b=OqEXhgWpwu7TrVnfRm7EyzqFruLpucPNyNdQY+xxAVeIGLldllDXw61ykWxO/CKENF
         PuDysdJWpYC6LN4bO59LFwui8YRvZxE9qTMgx2KqzxWizV5IY1IdzSTvRPnwRJPsOMOr
         rxDpbrr/DlsFsPjehCBDiLa6RhG+xIUImkNfq71C3UFngujXpAthsiJfY5pL8zrJultj
         jgpbZHCtPLN6TmbHxo+rwAE1PhgXx3RJrbtaQO9qdQ+ooI7RuuHx6jSncUrTk0lke0/B
         mhRgzYwYtij9SW5URMMQBf8s+rGHRia3kDBomWKbRtnKjGYmwoAt8wH0kIV6slOpnuT+
         YYwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h8k83FM4;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com. [2607:f8b0:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id t14si764210ybg.3.2019.02.28.13.14.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 13:14:29 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) client-ip=2607:f8b0:4864:20::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h8k83FM4;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22f.google.com with SMTP id g16so17751670oib.1
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Feb 2019 13:14:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=exHS7DT0rcaQhixgkyKzD/NrS5RL2YlFDbUDw8mw7Ig=;
        b=h8k83FM4INl43Yu6WxiznsBh3yhkq/4TAQrgOVsA7DItecM0j+zt571WWmiCqasQyq
         ywr+A1gFrHOzvCbjDYl0UsL7gR/P5iPuphyy+cCmnsCvBro2zIfvVKbkWYCqI9VkDieE
         NOgMAkLAT06SUdshcHqAK6VOdqzCdv+DiSKrxEVKFDXF1K2nqcKKWgcMy9a4602g6XSt
         QnDMSD1JBeA7LGL1nzmuqaheNjHOPkRCPjQFEUdsu3YvDpIRf9bertU51TXCPop1srnP
         UMl1fiCGYGEsk9IzHRbkFXdzSKlBUnhHMQEi3YMDXWQ4NvDwjYiidmBYG0oUGGRexZ2W
         RTzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=exHS7DT0rcaQhixgkyKzD/NrS5RL2YlFDbUDw8mw7Ig=;
        b=EMfif6EAEva8xc3cAMolRZ849bcPdYRsd5F/kHDtj4jqYcC2CCCsBgkGNsxXW725Ju
         7hztbhD9ezEW0LjrY7Qz+hioE0D7BdpbpzGS/cHofl75yYmN/bJJLvgXfMw11wmC3X95
         Pvo0JkhaMDfghJDZgTy98Fthk2bOnPTwxHOzcxlaw4/3ORzx+aeprfhnr+BxEcElq1aY
         zVLw0Li6P3DqMNrbLBfD3T3DYl5CGDPDGD8tZ6xBnz/LMxNQt0HhcumKTqyUwrOKnkPV
         OPK1dTAvupm5/944PyCKbkF1z/UDXugf1pcvIQNYgrdQQ0vgrQe50GLbroOJNYD70ksc
         6YNw==
X-Gm-Message-State: AHQUAuZL0wqF+UTsMJTh34o/RQyTLUBXTLqyQ7homAPnXIYFEp2XTTy1
	zjUpIK5N/04MeVmwLkWvR8mZYvVlHO3H0w==
X-Received: by 2002:aca:d946:: with SMTP id q67mr1216420oig.102.1551388468291;
        Thu, 28 Feb 2019 13:14:28 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id p10sm7738871otq.34.2019.02.28.13.14.26
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 28 Feb 2019 13:14:27 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v6] Staging: vt6655: Align a static function declaration
Date: Thu, 28 Feb 2019 15:14:22 -0600
Message-Id: <20190228211422.26979-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Align function arguments and function return type to improve
readability.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
Changes since v6:
- Started again to recommit from greg's version due to code duplication

Changes in v5:
- Commit log and code diff are matching. In last commit, there was error
from my side while reevaluating and commiting it again

Changes in v4:
- Commit log and code diff are matching

Changes in v3:
- Included driver name in subject line.

Changes in v2:
- Improved alignment of function declaration
- Modified subject line and commit log
---
 drivers/staging/vt6655/card.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index 3226dbaab3bb..6ecbe925026d 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -60,14 +60,9 @@ static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
 
 /*---------------------  Static Functions  --------------------------*/
 
-static
-void
-s_vCalculateOFDMRParameter(
-	unsigned char byRate,
-	u8 bb_type,
-	unsigned char *pbyTxRate,
-	unsigned char *pbyRsvTime
-);
+static void s_vCalculateOFDMRParameter(unsigned char byRate, u8 bb_type,
+				       unsigned char *pbyTxRate,
+				       unsigned char *pbyRsvTime);
 
 /*---------------------  Export Functions  --------------------------*/
 
-- 
2.17.1


