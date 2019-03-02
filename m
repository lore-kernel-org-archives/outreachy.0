X-GM-THRID: 6663442013681090560
X-Received: by 2002:a17:906:d541:: with SMTP id gk1mr1035711ejb.0.1551516006189;
        Sat, 02 Mar 2019 00:40:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:406:: with SMTP id d6ls431558eja.7.gmail; Sat, 02
 Mar 2019 00:40:05 -0800 (PST)
X-Google-Smtp-Source: APXvYqy/1aFNiqj2jxsbspXA8UsQlip7KM5uYz0tkuaj19/FypJI2KQDijzjC1t9HqizeVBYe97d
X-Received: by 2002:a17:906:2346:: with SMTP id m6mr1023954eja.15.1551516005365;
        Sat, 02 Mar 2019 00:40:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551516005; cv=none;
        d=google.com; s=arc-20160816;
        b=Y2qNWy1aK7gYEMhfeqdfRAyVbtY24iDiVxmboNiHIyJ8M9UzgIYWbDkCSdWzg45njg
         nypToZdVAiIy/1My/QLKranPY66VRsk1t8jawNnTTjywFZbGz/Yg6TcuW17Wu/vj0/Ym
         IUdntXa39cMKwCJ5qOtOZSOX17CX6Gbs0p+TCoG+G/ZJS6N3A4m4Rt8Y66Jyp9q175XV
         0nfD4eC2FRx9TeVD7jBmbYr2LSHIgHi0sbhgIOCsrvchtutUXWqJepcMgHeJc0O3Zxkn
         0tY0jjuY9qzCAZ3LUYS+/puA9g2tQPo3BftLk/ndhRCSNdYw/1K5qZOOvSG9o9p6usCr
         aDbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VbJvsX9LQ4yeEMF+8VjAjloOJ5239y6J93Q/wda6O0U=;
        b=Dk3cCsv/UNGQji0uFuExjZ7zTsMo5Nc7dDqLuVRG6az9iG21DCaX0eEwdgBZaI5tA/
         P+Pa7Gar38bCqVotdL0nOqUmqFQXbLztWttLSl/Q+oIXBz7boFm7CeoRfJuwQyOnzATZ
         B0H7IdASes4VZUzy9d3jJVbuldsmzuH9beHb3jq/swkEvTGLc9HnbAq4e9ng8zTXxDWK
         kdfVQIaiOpf3LVsacCllAgwEy8VRiPiEqPVQ+xWyhLChQzVQTd1405DcW9TuI0bk31FG
         FD3XcvW5+neo5xE9aJNQOlaZcM8hz7P3hkVv2vp9xYWkCQnfktftfgMzuTiNlBoXYK1D
         k/FA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XmSyKEHP;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id r37si31394edd.2.2019.03.02.00.40.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 00:40:05 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XmSyKEHP;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id l5so256786wrw.6
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 00:40:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VbJvsX9LQ4yeEMF+8VjAjloOJ5239y6J93Q/wda6O0U=;
        b=XmSyKEHPWTCwGY3Cj12bUg2DqntGKJxedA3TemRBhNLN2EaCXBT5TKerrArQ+ocSOb
         /TAlT02pq1DSojN/qE9YVloXwVSCwjr42EK/CvGG2NR8tTC/2aMlRS/8UpdVtNBABq9z
         AlywRFGJ6VxDPePDv8MoyWilQ+A3bZ7QEaSfg9FkF4oGNSrbSIz9fo7ud3EMlLpLBZac
         ts1wiPMYsaup+c+QZeYaMhNEvusUX2Lzw6w6xZPjTyN7OcLIDzFmm+3XoWS02DDLEyus
         Cq+Bdv5jAHhMvmQZ2cSAsMUyMRdjuac5hUnvxYEBEZEWZa5aJfJwutDYl36APMMz88pv
         5Vqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VbJvsX9LQ4yeEMF+8VjAjloOJ5239y6J93Q/wda6O0U=;
        b=e7mU42LP84VJzPftBfsRgjDCd9vQ5YhapbDb55FW3HtONVsyVLOXGz7TTWroc5NG7y
         Rd1brmWSrf0dUiYkiuoo3ZxNbAFIvhJwptFkINqUU/FErUtp5cOSx8v6kMJ+hz+5BuRN
         e5yQWMmX+hnWPlcY+e74KKBrO1xENneRww+hI4/a59jTDT4eIONnygK/XjUiPlecT68N
         ns/Bubv0/zknLKr1NE9x+zW7E3VFVJ8gMrGvX8HNgJSxAN5dXWQDOtRWhnzqUvQujGxa
         BteHaa19FpwHEUv7lYwcLkFglvvGUE+ApoBuKTA5dpbjU40i1HwsH7Z6AEkXb7ARtyU0
         TPhg==
X-Gm-Message-State: APjAAAX9rzOvTeG51ud/DmMEPC1mzI+kS05HcwjygydafIbIpwsNmlgd
	8yiCYpCsBd70QzHQJC+Xpg==
X-Received: by 2002:adf:f846:: with SMTP id d6mr6441785wrq.53.1551516004880;
        Sat, 02 Mar 2019 00:40:04 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id a8sm1176332wmh.26.2019.03.02.00.40.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 00:40:04 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] staging: mt7621-dma: add SPDX GPL-2.0+ license identifier
Date: Sat,  2 Mar 2019 08:32:39 +0000
Message-Id: <20190302083240.23894-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190302083240.23894-1-jbi.octave@gmail.com>
References: <20190302083240.23894-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add SPDX GPL-2.0+ to fix missing SPDX warning
 reported by checkpatch.pl.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index d67a2504adb1..7d69586f23c0 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *  Copyright (C) 2015, Michael Lee <igvtee@gmail.com>
  *  MTK HSDMA support
-- 
2.20.1


