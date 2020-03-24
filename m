X-GM-THRID: 6807884729429262336
X-Received: by 2002:a1c:26c4:: with SMTP id m187mr7691338wmm.43.1585084199981;
        Tue, 24 Mar 2020 14:09:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f3ca:: with SMTP id g10ls4326365wrp.11.gmail; Tue, 24
 Mar 2020 14:09:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvAzgeXvo3GvTLu830J8L7QLGIp0Euz9JwefO81S1ku3/5JX2omIdqq+62h8ArxB2DqB0qh
X-Received: by 2002:adf:f4d1:: with SMTP id h17mr8243774wrp.276.1585084198682;
        Tue, 24 Mar 2020 14:09:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585084198; cv=none;
        d=google.com; s=arc-20160816;
        b=dpXll1qYFYHEsjU2aoa0pth1XfK+4n54mmh2d5flY6MJW7/GO4OWT5ariALnZo5oOf
         bSW64wDK1EG65x/LBEEZrTiYoVZSur+j3lGZqDdbnJtY2EWkck8bjk267nHEMrw4oEI1
         aDOiouJYUr8UjdBbRyZOm8kNLLA+ZkBnQY55U5+ZHV22UElFPq6NVfD/2i43B3shc4jA
         d7WHmJsz3LO/pqXY8nRaVuJzrlMy5dBwDZYtUXweCTxr8MkKd0X2eoY4EDXV0g8KvC6G
         Xlk3aLAv2dO5hb+e6BpPGRhdS+KAUaM2Ow0YbKeEaqaPb/+tlsPF7BknkT4O/Czau8N5
         41nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PgPCMeOyk0eXirkNjgvEsj+lVvgulZrJhraF7rVgHu4=;
        b=cfAb11CM4S2fBRpwxM2stOQmTzfhf2gCePbvOGjyC9wF5bZV0HcMSgl4u/hKj0zQ8I
         SF5oEuqvG5WgG8Hjl5kInvcGbO41+W/C6OHUs6wqTr55eX1oKGtRX++B+m+4a4g+RkSu
         y6+7i4/1M/Epon3vZ7JJrSnS0xwgn1YQbBxJZ4diIbGjTbABWyd/7WRhq6ZqY5ZcJh09
         TnugLjIh1tOpINHJcuKnCKg5A/+RSPtTv3MCdaPkqdOLHjTgWEbRGxeWpRcCOMj+PkWd
         4/N+ameU2vdhVUJHBtlUaRCAkVi92dPGT/yaaCn0aIkSuTFRIh/m3ueeEh6IuQoubh0r
         0++g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ti7C89wo;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id g78si275731wmg.0.2020.03.24.14.09.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 14:09:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ti7C89wo;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x341.google.com with SMTP id b12so112972wmj.3
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2020 14:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PgPCMeOyk0eXirkNjgvEsj+lVvgulZrJhraF7rVgHu4=;
        b=Ti7C89wovXDCTKV00hrBgsmcpD0b/84QeNxkO9FtVGv8zEIS3AqDdsW+BvhOul+Jj9
         2q8hvMGTOu5KWh3rs/RFqnArwa5WwYRnI4+H8oWPPnty4i/9TlExRY2JIw+9e71q3J1g
         AjhyarBE88Xf6QvXKDVrUUzBNvmmi8Zew5n4HzRxgzCJV+Rb/FUA7jWP1hfd6UTNVTgH
         FSGEEiSDn8mcxZpKJeaCq+WHEc3UEtRzOzKxllJhh/FfjXaNqYKRi3NVPtticfT9/58D
         1M2s2CllK54nbdjSCLwsrvZ7Mqm//3SMWzd5x+DxXIcLEqQ7DTkN4/hsK2MeLx6nn5Qr
         Ecgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PgPCMeOyk0eXirkNjgvEsj+lVvgulZrJhraF7rVgHu4=;
        b=XrnPc5aG9YC776lsZ5X7VpNb+q0+MDvjVo0BwZ9IxSD4HBISF8dX1sWGdbtkZ7VPpg
         DMSosQ38NzJaPcE5FhftJm8VGc+cpzX2xyF+7j8rB658E7kFYyhouE7cd8HDruh64+9L
         bWjGLD0FtKZxNyl6kCCac+GOA/gRf8ATDMChZLrca8sWnub8BhDLfZHktzw/y/yz4nUC
         T9vTay0ca8zSAvOno1jvIdFWZS4jgsMKQmtQjXqtjE19sgXk0Li7eR6Gh3Czq5Xxle3L
         zBe//HSQBds7OMQ2fY88VjQszUhxMDVGCDjzbx9JcXskhQFfEHC4DtMg8lfnBFDkkWb8
         isSQ==
X-Gm-Message-State: ANhLgQ0nCyH6DGDWc/J62IjDPo54TiHzqOxOGMvO3op8G8DbWPgtffZF
	CegNTR+6Bo2iqVS9K9Ng4lo=
X-Received: by 2002:a7b:cd02:: with SMTP id f2mr7626112wmj.97.1585084198475;
        Tue, 24 Mar 2020 14:09:58 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.93.161])
        by smtp.gmail.com with ESMTPSA id t16sm27758455wra.17.2020.03.24.14.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2020 14:09:58 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH 6/6] Staging: kpc2000: kpc_dma: Use the SPDK comment style.
Date: Tue, 24 Mar 2020 17:09:19 -0400
Message-Id: <20a98d0635bb41b592c99c188ceb8b634cc402c1.1585082158.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585082157.git.jane.pnx9@gmail.com>
References: <cover.1585082157.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

SPDK-License-Identifier comment should have this form
// SPDX-License-Identifier: <GPL-...>

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
 drivers/staging/kpc2000/kpc_dma/dma.c            | 2 +-
 drivers/staging/kpc2000/kpc_dma/fileops.c        | 2 +-
 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/dma.c b/drivers/staging/kpc2000/kpc_dma/dma.c
index 5ccc93ed2b61..452a3f7c835d 100644
--- a/drivers/staging/kpc2000/kpc_dma/dma.c
+++ b/drivers/staging/kpc2000/kpc_dma/dma.c
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0+ */
+// SPDX-License-Identifier: GPL-2.0+
 #include <linux/init.h>
 #include <linux/module.h>
 #include <linux/types.h>
diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index e599ae1bdfd0..15089a8f78c0 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0+ */
+// SPDX-License-Identifier: GPL-2.0+
 #include <linux/module.h>
 #include <linux/init.h>
 #include <linux/mm.h>
diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index 0bdd345cc8c8..c3b30551e0ca 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0+ */
+// SPDX-License-Identifier: GPL-2.0+
 #include <linux/init.h>
 #include <linux/module.h>
 #include <linux/types.h>
---
2.20.1

