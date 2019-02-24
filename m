X-GM-THRID: 6661416853760376832
X-Received: by 2002:a17:902:2f43:: with SMTP id s61mr105079plb.104.1550981973641;
        Sat, 23 Feb 2019 20:19:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:2a89:: with SMTP id q131ls3901536pgq.5.gmail; Sat, 23
 Feb 2019 20:19:33 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaBRGoq2Zi2TlfWilpI6c5nrS6AuwIFx4/VtP9BX/IHQctsqVNK6PNh2qGeMuYxAhoWpOx+
X-Received: by 2002:a63:f115:: with SMTP id f21mr3684968pgi.64.1550981973034;
        Sat, 23 Feb 2019 20:19:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550981973; cv=none;
        d=google.com; s=arc-20160816;
        b=GeEO10wyIEV2TTyvjFuLfYyoYCkufoAOG7282xvuumRjx9if40zF6r3MolZllHxszS
         BC9S7yOqKuut3Q7XjE53NsQSAjiepLmqRnryJ4wdjr4QgIpuw3dgAzr0OrrAO5VIPP21
         nQ7MaaP5FeN2zXrSU+TnC1OGTFzXU3Ay3ncDx4QcgXPmkeLMA4QaKbFppvoOwq7Zwz3C
         nruRaMQ7Dc49tPPt0mi9x4QufIlVkZ5NWktvvb6yZHF/JpHlreg4pnogGBoZAdHYHHI9
         14GPltiROtxoNfcLSclFNrw8xxvDdM0boBXLpfugbiV5v3GoVv7xEZmZsTK/kQL6sc5u
         7e0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=30TIV3gaVLtQ7KqFZdrfC95R0iCKMhfAIeit0jYGjTs=;
        b=tV46n53acxuW1UVj57skCheGSiRXiaAn012INDQL0C4JT8B9GtcO7h8E6V0oq2Z45z
         zGoxPCho4nS9Bw7niJavZeZpe22SIgnBz/le1npDMwDtrBq1QOBGfjFlnw5iQEte4ncy
         OFik/Y+KrrNZ4nai4PJo38uOm1h7ruPJ1ZDc1zrR2hV1kk5q9z0LciwMpcsxEAqD9U4l
         J4KTUetTb8tI4tAfOMT66iNYeRf65UErKH6o/1oydcnH2mACL8KHC1Cxuj+r8qnKL4It
         EOE+ams6g2WZ+OnzWLu+eA45Y1y071yva70uAUCYK2HRb6n1zJplRPBauCxuOtxLut2Z
         tuxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TtTJy3NQ;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id h64si261806pfa.1.2019.02.23.20.19.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 20:19:33 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TtTJy3NQ;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id j135so4766022oib.13
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Feb 2019 20:19:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=30TIV3gaVLtQ7KqFZdrfC95R0iCKMhfAIeit0jYGjTs=;
        b=TtTJy3NQ4kmQD+AHrM7HzjR1sD1znGuCxdzabzQwelsvKXEE0/YY5uXMtZmvbxWA4x
         KSx8NjVeOK/Kj/VUVGs34oVLAwm7Mio6p05Pq4Avjo4oRCbl1iBsLiTuZshvu/4d5RN5
         0WtXxbXsMavR8g7C82rxA/4S+wPN5X9QrT3LLqDFw14kze2xa1uvHqi2v9rESu0oWnA7
         udXmhrNTRl6/4Vw3Fj8jblnafDQb7CseYWWBr8akIjHXZ46nZXPWLUEn7X85eIFwBT9d
         4D2cuWlbdQcMZ0jDGOkqTW45pDpFrZreVhzPufeBCQ3SiRK2K83nexh0puJBfEgySi51
         grUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=30TIV3gaVLtQ7KqFZdrfC95R0iCKMhfAIeit0jYGjTs=;
        b=lrhVKlO6hrBFnSWuioDbPIhqB40C7D9+V4mF4tTp/hpsN3Uwk5hXvBjcjz6kHO021D
         4ZQX+wyi8ZEWq11yBJyql8kgvgn4n2qg9Zi5UNiOY2rhXqM+FWykjDOusqjnU2/nURyb
         BwTiKOVz6PU/rORx7ZVdeLeoC+NUyhXSVSzXqb1c7Yc4F91wSq1JKNv636q8gChX8k2Z
         Frup9oT6a2qIGUDaYuMRom6EkVgCnu2btHee9dBdfTkvI9pn2gxlQxVbOItFcHvV1YSF
         Wk0wXJf5QIeED3gZbHY+8bxhJ3UE27pRYzpUm/yfa5mKyBKFkD1yuLHmufSAualEQOhX
         8klA==
X-Gm-Message-State: AHQUAuYMZ2akkAsEw9PAdzm1dKCZDyDL09LW5DNxS+raLenU4Ot2yHjC
	jfosVLNPBrOl27XdcH5o7/NYi8L84RR+bg==
X-Received: by 2002:aca:c7d7:: with SMTP id x206mr7546588oif.85.1550981972084;
        Sat, 23 Feb 2019 20:19:32 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id u25sm2498040otk.49.2019.02.23.20.19.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 23 Feb 2019 20:19:31 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: vt6655: Fix check-Lines should not end with a '('
Date: Sat, 23 Feb 2019 22:19:26 -0600
Message-Id: <20190224041926.10019-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Improves readibility

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/baseband.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index 9d4af51b6ba1..1f1f82ebbbc2 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -1705,8 +1705,8 @@ static const unsigned short awcFrameTime[MAX_RATE] = {
  *
  */
 unsigned int BBuGetFrameTime(unsigned char byPreambleType,
-	                     unsigned char byPktType,unsigned int cbFrameLength,
-	                     unsigned short wRate)
+	unsigned char byPktType, unsigned int cbFrameLength,
+	unsigned short wRate)
 {
 	unsigned int uFrameTime;
 	unsigned int uPreamble;
-- 
2.17.1


