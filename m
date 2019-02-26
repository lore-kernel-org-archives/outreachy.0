X-GM-THRID: 6662431164424257536
X-Received: by 2002:aa7:9211:: with SMTP id 17mr9623736pfo.115.1551218136210;
        Tue, 26 Feb 2019 13:55:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:47ca:: with SMTP id p71ls8101214pfi.1.gmail; Tue, 26 Feb
 2019 13:55:35 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYonlqnaL5exe9g3fFrJjTVnPzwYgF/mEjPbZkM8h0E7p4GP8kWDnnqAHyj8V53t6wSkIKI
X-Received: by 2002:a62:111a:: with SMTP id z26mr9442940pfi.97.1551218135646;
        Tue, 26 Feb 2019 13:55:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551218135; cv=none;
        d=google.com; s=arc-20160816;
        b=gvsy+ZijeyfxXygLDl4sNeT9f8bQAoWfmLFOFh+cBzypAP/CJZ20f7LI+0QjgIbz5/
         j7bevq5/x0LNto8ff3u2GmH6bYDDL9xWP87hpw9EHC3NlYXIeBeYk+4gg89FaKu1eyi/
         p825vGLUfBoNHE78L/DHNip8Tpx9ZoFlMbB/HBggYZEz55PK+Uh0NjdR0XPkmmSB3wT4
         /WduG+ByU+Pxb0yPfPnyxwxBZfLB+MH0TzriEmewlIUnGYj5ybT8SvvVZiH/RgvV4MIO
         DPz+v1BXaJSlHKmDobQjKuB2O9mthluQNsIQxkHW//GEGaoAkoCaqbjCAuwMfJ2dDRGI
         NlNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=p0KKQ107ELgHB1lSECTKNNIPqqIGTtOMwYDnbZjqUMU=;
        b=uLPI89sEZbFAurYHkaIcloURHNPcdeH72agJpuZm4suV+97+TSoTOIknuByD9bjqPm
         CAjosj3KOkbHTh022RxZDDry2O2w71WeU/4XWnuaBEmGwJmNWvMFKLQw4ZiTRRqdXohU
         FWoYuyw96mvNZE//yVnupoFHc42afBVWIG+zQqFZZKOP06Ywo9MEVCock3AGngA/Z1Qz
         FqpDjgpV9NwnHQ1Cx0XoMGrxG0xXqJ9M6Mx6YzQxe6SJS+RM77w+8QJUWj1ouuIhWo5m
         ixvM18gb9ObsodM4xhRLQkk+UdCOzx/OYwgtJn4ACR+fp7aMF2JvpqRn4ispNSkBHQKo
         YmuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P7LYEVBw;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com. [2607:f8b0:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id v132si570896pgb.3.2019.02.26.13.55.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Feb 2019 13:55:35 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) client-ip=2607:f8b0:4864:20::22d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P7LYEVBw;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22d.google.com with SMTP id z14so11746858oid.0
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Feb 2019 13:55:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=p0KKQ107ELgHB1lSECTKNNIPqqIGTtOMwYDnbZjqUMU=;
        b=P7LYEVBw8mjcBavf5KLyQSDoQO58TI/G372FqfdonVAKMYpgrVDjfQQa/L9u8deM/h
         xy7/CgDNiYFTNKVI1JEBu2GfKK1m0a21d5yYCZe6Pj9ehtdqpo4mpUd7FmKbPg6xbXc7
         Fa75wWKoOgfdUBtal1pWLQZM6KKMfkuHqOmAakUj4sAb0HkR9axL5wEG2891ykgZyIQK
         h+8oMTDH+pg9huUsM5vvPhSpEtTdDNysWFXI2kkuC0/Qr4H/qsVXegZrqaP5giyySOy8
         rGvPNsUxLrDmZ0lWprzfooa+2i1HncNCpPC5e/W5IYO9+7lpxD4wc4weycrQHNlcr+N3
         1ljQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=p0KKQ107ELgHB1lSECTKNNIPqqIGTtOMwYDnbZjqUMU=;
        b=bZ4ECMbghoh42n+KMieXS1BETkTC++ylCmIEXNr5rVmtQVT4FvRufwf8LZReckWBUL
         hJDlRyV8bF01QMQyqxypIdFaCvdFogAQhx5UIZtxk0d5sYLF0zTNPe4whLgIXlDwklWI
         ViysEthQcO25wF7w4IVyDZ+RbkZFscd1fKQ42ZqVl6uVotPYpBxk0BS71Fm9yS4ctqY9
         hI0yXkt6x4jlSfWqGS/B35H5r+oo1rLZNvN1jeuaNXEvFP7qXQ1adr6a5ccITsa5gvin
         hRYvu6hE9lTPbsPO7FhC7ooJu5yeNp8OMi2s4TK4g7+jdJFTvqf1yIndUUgTofXmZYcn
         gJFQ==
X-Gm-Message-State: AHQUAuY9iFrFTo87XMnxLpEhcxTbOkTLPYHh5mpJ7Yn0EaT5YoikUoqc
	UUAZKpMTkDV6lNrjZ8xQgFMSVMWd9VO5pg==
X-Received: by 2002:aca:59d7:: with SMTP id n206mr3860635oib.26.1551218135249;
        Tue, 26 Feb 2019 13:55:35 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id 3sm3110384ots.75.2019.02.26.13.55.34
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 26 Feb 2019 13:55:34 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2] Staging: vt6655: Modify comment style for SPDX License Identifier
Date: Tue, 26 Feb 2019 15:55:31 -0600
Message-Id: <20190226215531.5196-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

FIx the warning by changing comment style based on header file type as
per License identifier syntax

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
Changes in v2
- Modified subject line and commit log

 drivers/staging/vt6655/baseband.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/baseband.h b/drivers/staging/vt6655/baseband.h
index f2b6a98de2c1..0cc2e07829c5 100644
--- a/drivers/staging/vt6655/baseband.h
+++ b/drivers/staging/vt6655/baseband.h
@@ -1,4 +1,4 @@
-* SPDX-License-Identifier: GPL-2.0+ */
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


