X-GM-THRID: 6663442013681090560
X-Received: by 2002:a50:8ed8:: with SMTP id x24mr781441edx.10.1551453494189;
        Fri, 01 Mar 2019 07:18:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:2a9b:: with SMTP id l27ls1922425eje.10.gmail; Fri,
 01 Mar 2019 07:18:13 -0800 (PST)
X-Google-Smtp-Source: APXvYqxzxEKyrZhVlB8NhSuzBZvZZjNk7/KC5+zBbYxdwYoVbPo8VPF2HRoraC5oFZtGJdTgH2Ob
X-Received: by 2002:a17:906:14c2:: with SMTP id y2mr135584ejc.11.1551453493397;
        Fri, 01 Mar 2019 07:18:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551453493; cv=none;
        d=google.com; s=arc-20160816;
        b=HJf3yte16ATKFPTxL/vlhuwjQa/VMnOGRFMwugVAooqjYwKRBYwDVHf5WzOCWzWoeH
         DUawoE1Qhg73UeMFDqA9PGEJ19SCwIs+s3FE41P6S+Cv7IDh2z3iWrWojCUgCHjRKpfF
         dSvblm1k0Xueb+AzwNVbTY4p3tY4a6Kd/XF8p/59i3tawNFYA7W/jabLsxzrUGvaBmrn
         JhS27j00RCaAb6JHk8CEmreE2/fLWsdhY4VxrgbBx7rHWyy5WLacg06KH5nb35E8eWIm
         GWjh7YT1YtJnT4wXvPQYDcaym1qvBM6uVIUqOvadpTZkOMdT1G6ERaoFUyiaCVovEzUO
         MQLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=eQS/fGhnIHx+SCTTVX2BScG5VaY8cBzWKQz5f8fwLzQ=;
        b=MMyULkcmDFWSh9PB0PFSA16hm2C7SBJ6vhtE0I/sU/Zw14Naf1YahmP5NvzXKmEG+R
         eJkwbNL7zhngDSjEtXC+qoZ+mxCGl+n3UurD/K4d8uYZeZjgxGPAlGkWQs8LNIeQA9zF
         FMX8tmxIkM9ckrO0ICMMddOBX3GNg1Wvb5qUMEEN9X9fcszdEiTHgL2/WkdSjWkupcml
         AOTpf0nc4GxaDeToVUvqPyEew4tr4TBU+bDfMTdpGnrEKD4cGd5TFwlzS9ExGeL9l465
         9JudzOsn7IdkEraMjZg+CT0OsdUCe35VgXD5pLqsh6urbhIM3tj+Hr1uSZ9XKBnF74jM
         E9Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YY+obZn0;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com. [2a00:1450:4864:20::432])
        by gmr-mx.google.com with ESMTPS id z19si843441edd.3.2019.03.01.07.18.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 07:18:13 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) client-ip=2a00:1450:4864:20::432;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YY+obZn0;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x432.google.com with SMTP id o17so26292448wrw.3
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 07:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eQS/fGhnIHx+SCTTVX2BScG5VaY8cBzWKQz5f8fwLzQ=;
        b=YY+obZn0B76BP7iszrpPPqjiz7YooOjBPqBEyC57zypyqppLTq+SDqUDbjwMden3Pr
         jZG8SQo8nI9g7LAAqQzqk3BFltMu1+LJ1z+XiCdxGj3Afq9OTx7ZKbeOALIyN0jc9Ay/
         vP79dXdB8Zk+zfFDnwHrSDx7AkgEd+7invlTuprY4IZfwj29OQFRdnGACw4qwPmntLnA
         8YDXFlWlTy+rQb8/99F71hPqSQWcm2J98D1vAvE5I2NsiqloI/DF75tJR1ai9lzL6TRr
         0P9MQiwYG7tyC65sZ5KNCjMoMOWOE8hbjiFhpVNq51ZLWbZlXH3Y+NLInzHqyhWt5x/r
         ylmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eQS/fGhnIHx+SCTTVX2BScG5VaY8cBzWKQz5f8fwLzQ=;
        b=CFzmFAxDfk+1DOrHYwCLznxqvtd272Gl4urpLDocG0/pgFEOaDAHNakJJbAR0+lP5r
         AkzxPmTTDBDWgwTSXAkEHQ2aNSoy5xN/45sVowFaWxU41ADt3Q2RVWfcrl4WfXmiKD5+
         Y5Y2XEHiy0LzV/69ebbbLrwvg/kcGaGDrOQHULNpZBUWefMyYrFFcMjfTWd0I9EaJ9aQ
         gF3kEjmmEjNOdzx+khZv4qj2ye/LnrodNFg7pINszBxWXttPEBt1kDUkj1LaFCrmDUwV
         KECAD1UyfdXZvkFSFZECUCdNdRACZbesYSOCurpsnFCdHYa71zUNYYnKjbRvUAMfKRUy
         8lwg==
X-Gm-Message-State: APjAAAVvm0mlEK/X4rfFM9EB3flJbWLhxVEEKl2qM4nAdi7lrz+iyohr
	NuHns+h4Gjh1fRtl/MWYKQ==
X-Received: by 2002:a5d:6543:: with SMTP id z3mr3727768wrv.200.1551453492941;
        Fri, 01 Mar 2019 07:18:12 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjatsu.public.libraries.mcc ([91.235.65.22])
        by smtp.gmail.com with ESMTPSA id w24sm5188996wmi.40.2019.03.01.07.18.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 01 Mar 2019 07:18:12 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: mt7621-dma: remove license boilerplate text
Date: Fri,  1 Mar 2019 15:18:01 +0000
Message-Id: <20190301151801.7886-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190301151801.7886-1-jbi.octave@gmail.com>
References: <20190301151801.7886-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removes license boilerplate text

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index 7d69586f23c0..4e8190a59cf2 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -1,13 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *  Copyright (C) 2015, Michael Lee <igvtee@gmail.com>
- *  MTK HSDMA support
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


