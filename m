X-GM-THRID: 6662791794901647360
X-Received: by 2002:a25:98c5:: with SMTP id m5mr635852ybo.86.1551385696270;
        Thu, 28 Feb 2019 12:28:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:e6cd:: with SMTP id d196ls1933912ybh.9.gmail; Thu, 28
 Feb 2019 12:28:15 -0800 (PST)
X-Google-Smtp-Source: APXvYqxYBFlEzU7ztwh+wXxicnB2PCNT6b4A48XXgMBLrVP67J9KHO9e6rKwx7r+8732ze16BBWx
X-Received: by 2002:a25:1485:: with SMTP id 127mr661838ybu.10.1551385695369;
        Thu, 28 Feb 2019 12:28:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551385695; cv=none;
        d=google.com; s=arc-20160816;
        b=RBxieSs4gwsbxqa2uqLP/0a1JmpX17rbUVd8E7b5Bb5OtDPd6bbQxTNLDrtnXUCpbn
         Vft1ZbSdV5iH81bixdhDw66YH1pAVe8Suq+Hm9HE1M1sYW0Gny5YRDoQPHbT4GMcrhO6
         ANokbcuT3LLQndZzLga31Wqc/0WHMvz80KQfcxOk8n5SuthxOvDS3PgMmgVc8IJelk4L
         DaROTIihZOKQTU1QDtYO7vxfpbJsTAZ+C+chqVeGIizh4D7yTknj1VAWtalFQn9mECpE
         Anscm5+B6qXli+jNLXqNjOcQsmK7gWeV1/ryNtzunWZ5wpY4wKemHxSpViJyBNx/ZNzB
         EqCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=xJpnzkOLMS08ZprxaDu+iJRPA0dkWOksLPNZeTXJJLA=;
        b=i8Uty3c6kyh9ngnEUZdwL0+Pyt49EfIBlALrF5DwsKvaLmN+5dLMZ5xyjZpH8HotA8
         Q+Hv9lC+b1Irj6dWi7UxNs1MXNIbaay+xrX3+QnozE/g20RhwZbHS2oBMdanwU/RWh72
         341VG0t7DzlzYbppawzllHsQyKo43XpRYfwE6mCn+mj772H3jwqkykUEO/olpxuitCeM
         Ad0DR2g3Tc6mcm5+m2cacYe4GtVchrS6QjexCgoluF9S04Z1fc0Z0c1Hv4E5kPyQcfQK
         MNR/Zux7qtm201aWFuEiCl/0jrSbzW51AsS3rG4jQeVPTgO4Ddt3Z5yCRJseLjW4wo7a
         evqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iQn+Vak0;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com. [2607:f8b0:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id e23si827000ybb.1.2019.02.28.12.28.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 12:28:15 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) client-ip=2607:f8b0:4864:20::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iQn+Vak0;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22f.google.com with SMTP id t82so17567027oie.12
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Feb 2019 12:28:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=xJpnzkOLMS08ZprxaDu+iJRPA0dkWOksLPNZeTXJJLA=;
        b=iQn+Vak0/5nErrNPFCseZdd/Xl8nfCjIvjz1CenpxBZHn8Cg3Z5GU9JCSTQjy1Hkde
         I+hai67l2a6w9zmgULfn7aA3YpDgtdlwPYK5xYVMrihkPLRJyul5LKzDXWC37+qin0i0
         UMIxY1/Vi4gzqSvkhA2Qa0PHEMrBlNU5K/Djv8Zs/oRV2Yh1RLyGyTC8KZbt/I36bjTr
         eR/j0U5Y414GdIturOcAg2QbYiTm4F6+Q8B4Js6Jrk5aYYJy82bhXi/uqSglTYdSIQdb
         +UELY5rEqo633bgKhmVvlP8eMdm2RVnI7hTGpqKZr2sZGn4ZN8jVDN9+kEO4s3f9K66S
         MPmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xJpnzkOLMS08ZprxaDu+iJRPA0dkWOksLPNZeTXJJLA=;
        b=GBf8KF05ioheC3iOgfUZhgMlr2zYbLUcoOLaYsrHoCxHdraSLPvOCf4elcByjgg63E
         X7A4jxATFq5q94m9VhKhnUep92iXAriEualIOpeUADCGRsi/8yaERoXUIfgfk3CK2KF8
         k8rwMjJ/7NymO3AU9wxuAwHF4wuYjFBDvK+vZq2pvVukDlH4uSp1XfdG7xtN1/2vR74x
         FDBZZzkv1D80cXp960he4CVxdTSajtw+LRFdrVjq8NBuVnf/b5k6tTaC5kIAkveg+tL5
         hRSrXUHzlBE1kUDIfazdft0Hn5uuXWvRb04YlITROI3WAxRA9YCzo0ocuEwbNGdSjU2K
         OYKw==
X-Gm-Message-State: APjAAAVT8OS6e0Dz26iKBgn40CH99irYxNPxc+BBLd6VO3ujpu3y0m2X
	UV/jfZ60VA0cYKBFxLB/IUE=
X-Received: by 2002:aca:60c1:: with SMTP id u184mr1018751oib.45.1551385694804;
        Thu, 28 Feb 2019 12:28:14 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id q1sm7998628oth.42.2019.02.28.12.28.13
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 28 Feb 2019 12:28:13 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v5] Staging: vt6655: Align a static function declaration
Date: Thu, 28 Feb 2019 14:28:10 -0600
Message-Id: <20190228202810.26235-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Align function arguments and function return type to improve readabilty.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
Changes in v5
- Commit log and code diff are matching. In last commit, there was error
from my side while reevaluating and commiting it again.

Changes in v4
- Commit log and code diff are matching

Changes in v3
- Included driver name in subject line.

Changes in v2
- Improved alignment of function declaration
- Modified subject line and commit log
---
 drivers/staging/vt6655/card.c | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index 3226dbaab3bb..f858f97cf119 100644
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
 
@@ -84,9 +79,7 @@ s_vCalculateOFDMRParameter(
  *
  * Return Value: none
  */
-static
-void
-s_vCalculateOFDMRParameter(
+static void s_vCalculateOFDMRParameter(
 	unsigned char byRate,
 	u8 bb_type,
 	unsigned char *pbyTxRate,
-- 
2.17.1


