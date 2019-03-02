X-GM-THRID: 6663442013681090560
X-Received: by 2002:a19:fc05:: with SMTP id a5mr483396lfi.5.1551485610412;
        Fri, 01 Mar 2019 16:13:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:92cf:: with SMTP id k15ls1333536ljh.6.gmail; Fri, 01 Mar
 2019 16:13:29 -0800 (PST)
X-Google-Smtp-Source: APXvYqwxplqTiAIiHoIYC8hMc22s4fU49SuTM5pzB4MdD9A1mCJtP+D2aeRhew6PSiC8eKL3Eh+p
X-Received: by 2002:a2e:5d5a:: with SMTP id r87mr438494ljb.3.1551485609337;
        Fri, 01 Mar 2019 16:13:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551485609; cv=none;
        d=google.com; s=arc-20160816;
        b=LnVmuIBT09LYa1xZOlo+a1QZCqdlOkYGfa63y2wuS2c/Ahk37vmqQcCGAoRXYoAgFs
         mD8CaoRL0ZnJJrfiz42j4cWqVOup+X1UYzV55fMfSZ5o0Sknlo2OczIxbsn7SMPc/tjS
         i+NKH0Y7Z5o5KFHmQYeouJ7d273nfQJepnEBUKZIdM0pQrP00CqHgfLuVt9c/ILxtjJ2
         wPFaosoGqPrYE9sXvHgnnohKDFmcMXnmg+RXc0lv+WZqsy2Bwi0YlrS2qhxsNmcLuU+6
         ihRJKCn136FwuobEjEh0w09hqcQA5WeScmSuHC+fPx/n5bHvhFC5TXShPjHQtB3lbSad
         rylg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=R2rnG7KKR599BwvfWbwq77mgCMXfvuK2RbyMPprVnEA=;
        b=AJwJHfilKoNsI6BHdoJ4GdW2vmAx00tovAx+bXhSdJNieeOCpoumUl50XJhpkCobrd
         taknz/iE4Tt6mQAqYVYVZ+PA5jNFe9Bwhv3Drf+CJx3+BuiSqIxnzIZb2xP/3pB3S3/B
         +bewDhDImAzpxSrIb+OEDqrJwnE/XO//DCHo3vqKJlgtM/q2k/7SoGcLR4rQHINneQLV
         lKv5s57Gbd9BO2QF+ArM2bRA60qh4p25oXJ2+bsXMiojrP39E3QxXvuoPzFD3yCGUHDO
         WWg3r03WCdYC8T8p5rColIx+0Bt/lRukWd0IZHVrtGSnjsdp8hMd5N0jo2jumkXuA2Rd
         SX4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iqPjdaLx;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com. [2a00:1450:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id h11si309061lfm.3.2019.03.01.16.13.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 16:13:29 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) client-ip=2a00:1450:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iqPjdaLx;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42d.google.com with SMTP id o17so27665942wrw.3
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 16:13:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=R2rnG7KKR599BwvfWbwq77mgCMXfvuK2RbyMPprVnEA=;
        b=iqPjdaLxEpInUwXvQAUGg1ShPhw9VIVmTfJJ73U1FFmredZkJXNXoLFJGwZM1Vb2N2
         X42q6jWMOuW9Zx/R1Ykt/OBvaUIhcTT+O1Ci89JmQa2btWUGM6YCQ1tiE56ydnbMjfpF
         TYf3B104FrAuLTYN0KeI6zSxg6ggq7sasZL7Ou8Sie/CCZ5j95L1SxRPatsnZeb0ZcRR
         yLP0qd5g3t3HIcHZXDaJErCEasZT570nD9Tc4EBfxOeUwPqKm5ypwXtN5RF2M8lUPONV
         2/nhrb9ror6LIQpHiISQPRmJzzk8nnnb70q7YKeAw11Z9eFacxmDkzmKkFLqxdmziGbu
         PF1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=R2rnG7KKR599BwvfWbwq77mgCMXfvuK2RbyMPprVnEA=;
        b=X5zi3C/0cbFykDagDn45nRxg/XPu2lLnOP2SFBvQmQf4lc2b0DR2xVBvpgQgW0pdwE
         HTS4Ojqo9w+UU8xJFXIZe4OcZSg1nnTtaAp/rpxnSCRh+2iy+J8/VTRDmv4piEWXUemb
         WEmsYv40aO5HGj6KBkfj4so+8NZoIT2KazCNzx9PJxFtEKJjIPCHLn4kmEKcV1RgerH1
         /ShoogF36g0WZSn+zEXwSC7DwZ65kod5JnA2FNduQL9Ol9xUqUn4A1MNNlfWcVWqviQU
         w5qKJszZg4LikcdtWsyg/fd1cMs5VWdpvYlZZPxsHi8aQ8mojvPl5oNnyY7jc7HtBkCZ
         cWDw==
X-Gm-Message-State: APjAAAVcmM3fsXzRD0u1FdVeEJlCeeO+s+JYO6V6DdWqNsszmI67Cwpr
	wUlEbLGUv7+iRNqdMt7ipfPg0fs=
X-Received: by 2002:a05:6000:6:: with SMTP id h6mr4981155wrx.134.1551485608857;
        Fri, 01 Mar 2019 16:13:28 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id z15sm41551608wrh.18.2019.03.01.16.13.28
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 01 Mar 2019 16:13:28 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: mt7621-dma: Remove license boilerplate text
Date: Sat,  2 Mar 2019 00:11:15 +0000
Message-Id: <20190302001115.20477-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190302001115.20477-1-jbi.octave@gmail.com>
References: <20190302001115.20477-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removes license boilerplate text

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index 7d69586f23c0..e4a522f3b448 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -2,12 +2,6 @@
 /*
  *  Copyright (C) 2015, Michael Lee <igvtee@gmail.com>
  *  MTK HSDMA support
- *
- *  This program is free software; you can redistribute it and/or modify it
- *  under  the terms of the GNU General	 Public License as published by the
- *  Free Software Foundation;  either version 2 of the License, or (at your
- *  option) any later version.
- *
  */
 
 #include <linux/dmaengine.h>
-- 
2.20.1


