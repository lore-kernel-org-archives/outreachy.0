X-GM-THRID: 6755228047172960256
X-Received: by 2002:aa7:c582:: with SMTP id g2mr25979365edq.25.1572824094919;
        Sun, 03 Nov 2019 15:34:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:a0e:: with SMTP id w14ls3568723ejf.7.gmail; Sun, 03
 Nov 2019 15:34:54 -0800 (PST)
X-Google-Smtp-Source: APXvYqzzOABvbj4OGGioIcVt0jwwsiOboQqVgp9hctjnghYDgVrqpZcFxVwDvAOFmjfTMOFbkwLW
X-Received: by 2002:a17:906:7097:: with SMTP id b23mr21594619ejk.252.1572824094052;
        Sun, 03 Nov 2019 15:34:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572824094; cv=none;
        d=google.com; s=arc-20160816;
        b=od/zakOfeGGfWJfY8L//JNLu+1oxO8cSV7dlRM4kFO97tHDm+hxi1XSHD+iiuCQAWy
         olyxcA4OyboeG6b0M1ffI+cR5duwtZ3FRNmmTh6s0cjHlsgpaEkfOqZYw4Y1G3rxBE9y
         FTG8LdWzIx7OdTie0CoYqZAH6PzV7qOO1oVEk87xUivh1GJmXauDSM158GGpghSmf0te
         lZmYr6u4X+twIXu+RuLAITRvQamRcSGBZI4YXs7ulGSZ9Wr/Q5RGcWahdQSpm9HSSchb
         RKHlS6xpVPlN0K8VAX653Fpkk6Jso7ZFIk+8CLeYPpZkbxePwW6LcnhMblo9JlrXkcit
         TMfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=FK1xLJgVz2uNoZb31XNkLE25yu67uQVqMjfYjUKYVIQ=;
        b=U6xRYVjzVrA4LDZrkI9ruxdsbso68fHu/RJr1irwgOtZyNm5Xx+SDheBP17jPGYtVz
         eRXXrx9nuZT1yoAtuAf4IvOtLwcHddNzrWDecXkRzLY3KZGKPZjdmqJXlJlIeHAO9BE/
         bVjzEs3y/YDw5i5TsBh3XRDWz/QJ/GefNmK8KDS237Aes4iWGfnvuj4Hn0v/gNlOZwef
         PjYNUIXNtKdkdKwiJVyylp4WOsc7gTO/bi9TnF5cCHI80qNH02ZHK1mzOiPQPC9oSv4Y
         ugqw/XuIThk7+Xlq02o09tL0suzWcq+0Ck8pJ5vWddiu0zJx6750WRXJ40TqiHfhkOmE
         cg6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JxxMIVVc;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y21si1058307ejp.1.2019.11.03.15.34.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Nov 2019 15:34:54 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JxxMIVVc;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id o28so15028672wro.7
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Nov 2019 15:34:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FK1xLJgVz2uNoZb31XNkLE25yu67uQVqMjfYjUKYVIQ=;
        b=JxxMIVVcdRjG1bWo/hCVaLpEetkWUXvaRN6mMHStSIdJ4dZ7A4BQWLOIcdD37Fj0gD
         HtXkTxd95vwV3Yc0W0WWcSwTLQp4m3D38QP+cCr0v3YflMrfQikqh6uZO+dKSHoYPkX8
         AvSFERRRCMkMaYwK6lVGgT6RBCzI3InAWGmcRh3F6m9WwnY1TTQ/dto/jDWYzkTPbvwB
         Pg7hktEDBvewUUaJ0cPq8NKJhTWRGquJZh05OD0FG7NbDZDttSh5uB1fpbf1kB3YKkuS
         xmjmQ1+Pt0JzQRjLu+S588/pBesfgLyWhnuY9x7pGFQ/yWzTsT7OGJjITVp1BsXDdn1i
         u5cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FK1xLJgVz2uNoZb31XNkLE25yu67uQVqMjfYjUKYVIQ=;
        b=GOYxPTdGltMFgmyffAkQrmYvCy717Z3jE35ZiRKZqXWMHqca3FAM4c/RShZNvtDr/8
         uVNrGHjzmOjdGaCrAahTP/5zGmQvckSEIR4KywJ7DDJWSFOWZ9i6nFL4WPylSvvSaO2i
         o2MIB0GwX4ouG78iHyLyyqgWFFGyePhKW2H9/03JU7MPt7fFZN9URpLYbMMCjot042aD
         EChqEHAau40E8lAEiCIUF9hRj2vwI2BIpUuWhyirxKNUW/Mzo8/J7SW4LebjeWTB5uVk
         SUFDSGfod5217BYF41E0nnEbZraYVe9SbRKS+M1z1UYne4M67K52lgv5lj2H9QaxouXq
         seLw==
X-Gm-Message-State: APjAAAVc4lJ3QIje/SC3Ly5dfR9uihTKyQxUHDqzA1KY7L/vn6A6hR6u
	6BX13MBYJAf3X05swWZMf/vjf0wyADOa
X-Received: by 2002:adf:f743:: with SMTP id z3mr6272927wrp.200.1572824093439;
        Sun, 03 Nov 2019 15:34:53 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.googlemail.com with ESMTPSA id w132sm11430381wma.6.2019.11.03.15.34.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Nov 2019 15:34:53 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: mt7621-dma: align to match open parenthesis
Date: Sun,  3 Nov 2019 23:34:41 +0000
Message-Id: <20191103233441.17367-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Align to match open parenthesis.
"CHECK: Alignment should match open parenthesis".
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index 94c2c708dc92..c8dffe7f0213 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -569,8 +569,8 @@ static void mtk_hsdam_free_desc(struct mtk_hsdam_engine *hsdma,
 {
 	if (chan->tx_ring) {
 		dma_free_coherent(hsdma->ddev.dev,
-				2 * HSDMA_DESCS_NUM * sizeof(*chan->tx_ring),
-				chan->tx_ring, chan->desc_addr);
+				  2 * HSDMA_DESCS_NUM * sizeof(*chan->tx_ring),
+				  chan->tx_ring, chan->desc_addr);
 		chan->tx_ring = NULL;
 		chan->rx_ring = NULL;
 	}
-- 
2.23.0


