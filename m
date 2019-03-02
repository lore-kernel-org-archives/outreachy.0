X-GM-THRID: 6663442013681090560
X-Received: by 2002:a2e:5d8b:: with SMTP id v11mr525238lje.4.1551530776724;
        Sat, 02 Mar 2019 04:46:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9a18:: with SMTP id o24ls1445053lji.3.gmail; Sat, 02 Mar
 2019 04:46:15 -0800 (PST)
X-Google-Smtp-Source: APXvYqybjqRWIQWaK6QUvfWaBDiLsk3OBEMHE/kYBi4C1NczczEalz5IzsdFP3gTllK1QM6oOeL2
X-Received: by 2002:a2e:974d:: with SMTP id f13mr560395ljj.14.1551530775656;
        Sat, 02 Mar 2019 04:46:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551530775; cv=none;
        d=google.com; s=arc-20160816;
        b=giKD4CAwUoGrVdz8TYKYG5IUzlF7H5Zf9YG4k7x1jQFTULJzTldXLyXD0bJC1jWpds
         H80194dtdknccqC9UAQHZP3r0fnEjJ89crL+OjSFO5ayyPjr4bBZq//TddRrWE0sjqFC
         5unehIFTxaP2N1EVXWX8EhErLVOQiygjQgDgBqDDNvoAbEFZIyqA1Mvm5Dcgx88yk/0U
         EF5wVX0YNlUgUeUsfbcQSZVPzM/AwWMCQWjv7y7LNsipeqYHjhNrOhYAlyIRgi9hQU+7
         GyrC0aMWRYRdhwe/dil5JvE5bdvoDf3VsCrgBa3SdOHopocLRGKL5cIpWFc5i2Wl9wRa
         yARw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=U5kece1c2lrYHMnO2hsYSM/sR9NzvQP8r0iHqXKzB/I=;
        b=KmhYtDSVqBvxn9PCTs4qVBpj48zmmIByDpKapJk3hHFO7DivosvQZVB6C+a3f+pXZU
         jjCpt6zgRKucDLu/fnHOdBnCIKQaDlNNb0ZPb85e3vntDTRFqYZAtWj9Rp2HIBnal6gs
         w7jXwwlk6YQEmUv/M63JSYke1Cw2QDoCFUZm+YHxmTjo5rhKow8Njc0snoTdtg8V8Wbs
         PgW11ZDwKlLePqeCyUnRTnqUfrxSVaKgddZFSL1XqmF24SzlK3qrqWcmH7oDQMAfgVP4
         wYnIBlSA6Rz+rdIpZ1hs8QL2u2YLVLGu03isWzJ73Ssv3KivILTOXcRZoPELeUA6vLs/
         20MA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QU8fKAFp;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com. [2a00:1450:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id y13si25389lfg.4.2019.03.02.04.46.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 04:46:15 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) client-ip=2a00:1450:4864:20::42c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QU8fKAFp;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42c.google.com with SMTP id r5so644247wrg.9
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 04:46:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=U5kece1c2lrYHMnO2hsYSM/sR9NzvQP8r0iHqXKzB/I=;
        b=QU8fKAFpiVMfOMQGLEto4Y6hVUO4fZMb+balFf7/G1+rwSLID3fvIMehjGgSpyXxHo
         sZhFkTg04tMEfHUB0ti/OHBpOxb/fDle97Eto5JBugM4l+2VCIliniu+KF+IyS/O3jqb
         O6CkQy0iN4VFrmJOsKKnqywBeH2QWNzRpjeFseOYQLeQdyJO6L8GlqYsC5QVz/M6i8j7
         Pm0671HnA2NdIadCu6bUsjyE1//nukXkyhetdI3gs9C6kqfgj+8uOsxgSbDGnyy4g73b
         ZAFGuHc6luqtisz6632btsq/xC/9SwQCIOOo6DRWofhh3LstOB6mOdMWrIWuwFfXWtbA
         tYfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=U5kece1c2lrYHMnO2hsYSM/sR9NzvQP8r0iHqXKzB/I=;
        b=kJsSwIh7YAWeTXKjFoLGugVLr5WzADJfqXwUc0Z1uzePXoPRbFzlis67f8yQP4BVup
         HADIlh2H1+PA0lwq00OqCNW+B+RTiCCj+yqsbZbl5U/i1ifSTCYG8FXL5k7fyT6pTZm5
         Pa1caeQDxcBJOUiMUoMjTnMh3Wu5oSEp0/equTvj+zqQSO01NbtRPS7sWu62TZcGzD7/
         p4N3zH6c4mcU3lvCN6nmRCGZBDLV8+r8A+OJ3IAzVQ2mhJyaL/KBr2xvXPY97ObEfgeh
         ZshhMCT0wVA8ygUz2wWk16ZxusZ8KMjj/LO0JN8uakF1N4l54sf/Z32PPnmQKxbxu/Ay
         nWDA==
X-Gm-Message-State: APjAAAVc2dkgbQdrBDhjtjCHRVKDV2MiPczxtJ12Ao3hWTjfx+UG8Y+p
	dn0ciYkwLDJe4h2WFlYHnjxEqn0=
X-Received: by 2002:a5d:4605:: with SMTP id t5mr6608984wrq.311.1551530775154;
        Sat, 02 Mar 2019 04:46:15 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id y140sm4248367wmd.18.2019.03.02.04.46.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 04:46:14 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/2] staging: mt7621-dma: remove license boilerplate text
Date: Sat,  2 Mar 2019 12:40:50 +0000
Message-Id: <20190302124050.30558-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190302124050.30558-1-jbi.octave@gmail.com>
References: <20190302124050.30558-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove license boilerplate text.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index e0f2d77cb699..97571f1d697b 100644
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


