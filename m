X-GM-THRID: 6662791794901647360
X-Received: by 2002:a37:984:: with SMTP id 126mr1712557qkj.3.1551302102270;
        Wed, 27 Feb 2019 13:15:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:8302:: with SMTP id f2ls1362980qkd.0.gmail; Wed, 27 Feb
 2019 13:15:01 -0800 (PST)
X-Google-Smtp-Source: APXvYqyDAA2V/EFg9ACN9xiMoOlJhFbO8DWKBBsNYR9bWMHCHClOFyjh+8IMeGZRQEBGMt3UyT4r
X-Received: by 2002:a37:ef19:: with SMTP id j25mr1696697qkk.5.1551302101623;
        Wed, 27 Feb 2019 13:15:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551302101; cv=none;
        d=google.com; s=arc-20160816;
        b=wxLkf8958CpvyytLxOhEXpCri0nkJWyUVViLxv1W0rTGtA8jdAWSrkjf0ogkjdcz3z
         RRhfCdhH3Meurk6PM9QbVW5wY7W1hLUpV1SbAPaGPR2bk+xrJVhKI8+Ustvu33++5A93
         85orDQGxU2TLvYjM9XMYWXhtqTmzZ5xSsdF2BCXOA/0UP+FprjDjWxvTyK/lyNG61XAH
         04PLhYRQfeoyVFHaZtNtKfhJBkRdEqKv9Eso+E3H86SBEngGZCNpzIiqI1aqqcqmx6FN
         SwnkD9aCwCXORnhHwLb6mnYJ6UMfhUiyXBODN4XahEjDO/V1fD3HvpFk0k7h1LrAVtZT
         15fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=CsJLXkiGHMEWb7TiZK37DPenwVcDfI/M7DOZq+fD3t0=;
        b=m/vXfDj/eNySrSOedm99dmoe4UkJuK16JrYxTmQaip4mewq0w2eL9qovfC9aTF66ey
         Dr7Y3iqhBeVzPxN6nB6RWRQr9FflgZ+vpvYa6Ub0ENF+Pkks6zTCKc/PoNi3t1VDcISq
         svGs6f2VdR7aKq4YQli8yC8+Dzq33Jimiyi8SDbBbtLi79Jqka3dgSWF47OmyCC8p5ge
         DpMeyKpCaW1erSpqpbbyOEEVCFkJkUvXhiv3Hj6TbjhEPM9WqOJGf4D3A/E8Ac/LPUK8
         yB0CNp1l0ADgVUAYW593qGkSyBMsON/bdvWvDYqAvlbYIP+wqu5OA0+o+sXemzKIb8mn
         Ik2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GWvDc0Fg;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id a3si872938qtc.0.2019.02.27.13.15.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 13:15:01 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GWvDc0Fg;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x344.google.com with SMTP id m1so15731548otf.5
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Feb 2019 13:15:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=CsJLXkiGHMEWb7TiZK37DPenwVcDfI/M7DOZq+fD3t0=;
        b=GWvDc0Fg1wUsBezXlDCUxbSiokBlBEE/ln6Ti9jNIVjF10CKheyD+vfnSePz0U/uSd
         7qcSVeewe0yjraF5aZVf4El97076qeb5H8ewrmq6/rOkoWYmkanKWTe56+kmrRO3keIc
         DvCCUAcVFuNMA8XauDPlFGjPWyiP2U9+FPDvQsmTbr2tnRJ7L+fcDrk+W/lr7Gf7KweX
         W9Roi44DMmgtZ/MyTDjYp0SwDHUffiPCoQO7zT9EISCZw/nJV2fo9rHgEvWzCt8dWPWA
         qCFcJXmMJTR8TqQKhUudE4UidnuqOJ5K8Dj5Mt7UWYG5JutTGjZcMYrRrkpVrvzbq+xv
         3e1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=CsJLXkiGHMEWb7TiZK37DPenwVcDfI/M7DOZq+fD3t0=;
        b=Y5buPQgcyi582pG8PTk+vJUUJkg8zrDkrFCenxR8IvL0ORmdMeNmLY/xYOK6OPtUft
         6Kba2qJt9NY+ZeJgZlBVOKdD7r7Ol7TvXe585EWZFII/8lL79n1/nvw6gpzlZmOve158
         +HngV7fWQ3/YV7RHRGtD/W8meqZzE/yrEfhimC05Nw/wOIvoWClP3Z8lpfrCIlwULjn8
         x4ZeKNmi+QuXSFjmu5eN3RiJJKfLnWSDCBO14bJo9K8tl/OcbzmmunDMQjZxgi1/bfx0
         KotXOM+zw76iXibQ3czzNu9wsEWNLpV1kZqJTD1Kl0MOTakAw3PeYcCT7H2M+pI5cu5V
         f5OQ==
X-Gm-Message-State: AHQUAubiOAZQDU5Lacwc54JIF+r2T+EvydocvjgUmjMrlnSiQZqWD5UA
	3e4+6HNv+xosbnfH5r2+SAU=
X-Received: by 2002:a9d:5c16:: with SMTP id o22mr3436163otk.235.1551302100970;
        Wed, 27 Feb 2019 13:15:00 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id u21sm7036091oie.29.2019.02.27.13.15.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Feb 2019 13:15:00 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v4] Staging: vt6655: Align a static function declaration
Date: Wed, 27 Feb 2019 15:14:56 -0600
Message-Id: <20190227211456.10231-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Align function arguments and function return type to improve
readability.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

---
Changes in v4
- Commit log and code diff is matching

Changes in v3
- Included driver name in subject line

Changes in v2
- Improved alignment of function declaration
- Modified subject line and commit log
---
 drivers/staging/vt6655/card.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index 5c1034dec193..6ecbe925026d 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -61,7 +61,8 @@ static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
 /*---------------------  Static Functions  --------------------------*/
 
 static void s_vCalculateOFDMRParameter(unsigned char byRate, u8 bb_type,
-				       unsigned char *pbyTxRate, unsigned char *pbyRsvTime);
+				       unsigned char *pbyTxRate,
+				       unsigned char *pbyRsvTime);
 
 /*---------------------  Export Functions  --------------------------*/
 
-- 
2.17.1


