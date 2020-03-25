X-GM-THRID: 6807884729429262336
X-Received: by 2002:a2e:988c:: with SMTP id b12mr2208206ljj.138.1585146454823;
        Wed, 25 Mar 2020 07:27:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:686:: with SMTP id t6ls319946lfe.3.gmail; Wed, 25
 Mar 2020 07:27:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt7Cg2a0CAPSoJopGhomMCdJ95p+1puWYnjUxIx3am7oaCa7YAl7Kyh2gVKH3GNe1qnytEE
X-Received: by 2002:a19:c102:: with SMTP id r2mr2588346lff.170.1585146453128;
        Wed, 25 Mar 2020 07:27:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585146453; cv=none;
        d=google.com; s=arc-20160816;
        b=cgmqK0/tV1g4M5CYyVRkFDlb30jAUwg9vVWEVunw6whti2J41fX7CRePcBwrLXOWa3
         o87tZMNvocQXv1p05SNp7QTk77VfXmQgmmkjv7aR656xmWzC4ECj7bz01FcfZ43TeKg5
         7XgPhiIFzr1xmYhQS7mX/y8EZmaXNU8Q/rW3odAkBiIbC2pmmXCeYhN6cb+yqFKlhdU+
         elA4wDBd3shNqnqFk/o7xtn8XgeebAnJ8aL+dtpvuYXp9qVoXvtzyahPAaaASFG4jryh
         gc5A9GNA2Djtqb9fK91LmLgSmYnroWs2z6t/RVEzf8lGOc7WP0j5NAiEmbVzxSx6XKwP
         07mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=CvBqWsYFkM4FOm06XI4WgArZTuCWMIBeZjOlGiU9OeA=;
        b=zBcs+6qeEXx7fjDcVdw2q1NXWU/iuw+aC/T1v74lJlQdp5rqbTUGzh9rQlXncVqaJ2
         yIAxJQVnwAMiuES7XXxpklqK2VUNawiqUJ9IIgrAlwzJgr34ew2m6IV60u4rew9ar2Zi
         BF59c+DETG+RufOfaxjPfrnBmTodT3vhC4EXXJl7k8qxeY+O0bxbCzxynu/eoY5HXrpK
         H79rSqN1fqF/L3EfnKQrTOLt9M9Nv6+PImjLaYXBMsxKT8iEx+9eDm90qGFpXTrgQLun
         NN5S2tt4W4KWKmfYI5CRWvXSAt1d/0O6/0cTxt7IexqM64eossqvmfQj4V75INxlVLLi
         860A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dH8oqagP;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com. [2a00:1450:4864:20::432])
        by gmr-mx.google.com with ESMTPS id m11si1133031ljj.2.2020.03.25.07.27.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 07:27:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) client-ip=2a00:1450:4864:20::432;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dH8oqagP;
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::432 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x432.google.com with SMTP id s1so3364079wrv.5
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 07:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CvBqWsYFkM4FOm06XI4WgArZTuCWMIBeZjOlGiU9OeA=;
        b=dH8oqagP4xj3gCPEjNGcmUqKKJ0SiyJg1Md6ExB3H8DHGFIELxG9EFJgHqFLaUmE4k
         hvpmdmkVYpm3QXLKvDM6Erdz15ZOT4f+ixzhqfrYE30PsCnVQWt6JDrBMiknzTx3YooV
         tfU1LKssCfKKgQL2xUIfLvOvHK3rN2X3apj4/qpd43nLASWwiw5PYsuhLgxg3UWio9/r
         KG/D+JBog3rzaHOh6Cy+9aN6r7o7e8AeGhps9XuZTL2mBhbKv5XtY1ybz6dQ9bA01ABh
         y+8l1bV+T3DhF+fE/Dn/7WLpoBraZLyBl8MbJWp+9A7fEPk7pxUQLyN3tILH4K73uSJO
         4FdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CvBqWsYFkM4FOm06XI4WgArZTuCWMIBeZjOlGiU9OeA=;
        b=AKgrBwA78ACRjRG/AfaJhzWxInI6WOQ92MxpfkC53dfIZRWTwmdQE8HDxSVz8wdHXG
         DahpheaRqUg/6uM2K9HoMpJ9IoCOnWE4/nwZbBl4zk3qlyq/XJrsYS9E0X6nSyxTdZqG
         3mZ7nyD+5TlZaJdOKWCLpq9kOAnCdtLmsLspLqwg2sglz96FSkNif9kcCxxaNoPY1zRt
         YSV6CoYkIWLf3X7EnW06o/PZf9n7MMa6zJTGGRwjbb4p3gL4I2PU1+56Su6FayMvmm0+
         O8SggQKfmRHx49LWxTqHif7IPO8yawxmgK310m111dnqQGaY/ZKNYQNMPV56s3HKo58U
         tWbQ==
X-Gm-Message-State: ANhLgQ2Or9P4b1e/r4Wcxw7qaZdaZ7VU09kLP5YvE/kWlbDCFANQqbGR
	IHRsLiWWHuGXm/05LpTxUjg=
X-Received: by 2002:adf:d0cf:: with SMTP id z15mr3890594wrh.357.1585146452815;
        Wed, 25 Mar 2020 07:27:32 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.86.140])
        by smtp.gmail.com with ESMTPSA id b7sm13098778wrn.67.2020.03.25.07.27.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 07:27:32 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH v2 5/7] Staging: kpc2000: kpc_dma: Use the SPDK comment style.
Date: Wed, 25 Mar 2020 10:26:40 -0400
Message-Id: <7531e3e3fa7c046e93d2caaa6fa2e76c5c53f04d.1585143581.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585143581.git.jane.pnx9@gmail.com>
References: <cover.1585143581.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

SPDK-License-Identifier comment should have this form
// SPDX-License-Identifier: <GPL-...>

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
Changes in v2:
- None.

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
index d93097ed781c..d80d894f3aac 100644
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

