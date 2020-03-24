X-GM-THRID: 6807884729429262336
X-Received: by 2002:a05:6402:376:: with SMTP id s22mr29297067edw.273.1585084190488;
        Tue, 24 Mar 2020 14:09:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:860b:: with SMTP id o11ls3370356ejx.3.gmail; Tue, 24
 Mar 2020 14:09:49 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vupqFLwbmX7/FRJSlsus4j9xie+ANa354ZYGqbWqbBhVqJSdb+0TCJN8kl5//XQq6nd7aPm
X-Received: by 2002:a17:906:b318:: with SMTP id n24mr279923ejz.15.1585084189044;
        Tue, 24 Mar 2020 14:09:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585084189; cv=none;
        d=google.com; s=arc-20160816;
        b=k/HzFRFFbhZcpKSPa6aQvYT2Lygd0PKGizi04qpap1+UxMNs77Ug8q7hRoN21rD6Cq
         ZhSF5bfZ6OtWGMe9UFoOnBc7w1LcRJ1iIat5klgGDDTJ4KabdUJRKS5WJi5gn3yJKEFs
         DyNN0xnmLcciSR24xnfZNHJ8/GyC6OFu4b6w5DpTbBm388NHa0D/Eafp0hXri0+qfIL3
         4i4HstO8NcKdIIlPD77xx3JMF+pC8WkRZM2mQAsjy6PFufsk3KMwxtJx6iHlhQKoz8UG
         +UsVBQ45DCNf9CJVc0VcfojH4MuIhCc11ghwGmMF3JrWdwaDPUZZ5jFUhvllGMcLrnz8
         +MBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gTR0Sutjj3QW/ZESUZbVoskPpJS76dCwDBAaFpR2e7Y=;
        b=jTymXeo2fBnkXwUhI0tG4Rk8VFYVdIFOrq4RAjigMKmflXVtHb10fnd1Sdeu5IknS+
         vAU1k8PQ+XPZ9tC6hXOSzk8Vofu4pFSIpxdgQz8OzEZn0P5oDN+3+tMTQHLEGcGpDYWo
         iAC5pxf//7SGGet7KlugqamY6UZoC3JkkACL9jJc33Q0iozHP6RmC2+LWiJgULW967Xo
         YkHRtxKbgapTG17gX3ElhYPl7nW8K+S652sxNYOtmz6qTsw8kvche//wLl9yv4f0xfay
         bnmXL2RRHY2R4C+ohswlqQJMuZileQAq2ebdEVRgoyEpD5VFFr54DgjmvGMYTh3jIupc
         LZog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="huYEZ1p/";
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jane.pnx9@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id v14si559485edr.4.2020.03.24.14.09.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 14:09:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="huYEZ1p/";
       spf=pass (google.com: domain of jane.pnx9@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jane.pnx9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id a9so126079wmj.4
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Mar 2020 14:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gTR0Sutjj3QW/ZESUZbVoskPpJS76dCwDBAaFpR2e7Y=;
        b=huYEZ1p/vFEFskRfLznyhRxobZ/Gk0idc+nR5IVCrMlUrCE7egb5Oz+ARpfSJJ93PY
         aH/jd+L9oECRnpL/nwrjT1x0EQ7kKia8bBj6gH3oytvJL6zxiSVBsnWFi1V8hoFybLVI
         cuj27fIyOYLux9L8R0VY/wlK7FDJ+kJ4m06y+1VnFDv3tvnbwKan5OnmUFPDDtijOsSj
         SuMLB6waU5exe3UO2QMJGIotXSU+xDV1AAd8kBimUe2StXm+RY+9CIspdSi726yqkNf4
         vi2CdLx3ba7DhKaHrLl4XpPCR2X+1dX9Q4cLoy0pDECn8tYucsGSg4mlRWocCXqhl8bz
         yboQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gTR0Sutjj3QW/ZESUZbVoskPpJS76dCwDBAaFpR2e7Y=;
        b=uRjKMDNSdAtqxLZtcwUUoBuXnfFwtZsfBGjRKmdqpsqIeiwf/INKJpQ8C8Jek2xQ+I
         zJYLX5BMgEQgywVWTx5Fgee43HIEtx46iRiNVHcQF5izn6QpzsLBtziMgZ50A6nbapRh
         Ap4j+DYJEHdkKrAi8IUC3hQT678iwFqCEw9DnvoGwCHaX2TXCDXLecFq8iQUqcNV58AU
         +dz7r4ZZDFlT7H463ds65U3hR5Ly+izKjNX9FzwHNHxAoLZ5nE9EyKmFQBlAcJL/6ca4
         p8KiFlt4SDXdwIkkeX5hBRAmdB0jHjK26IsYDz7MVizTfvgDr1VNF3oMGJCktemfoPI+
         Cx+A==
X-Gm-Message-State: ANhLgQ0NyTOgz098EcUuMF6T+E0GKeWfniQyQpyz/d8AvESEvfGjRKkU
	PvuprRXMakumwzO8m8yMfxU=
X-Received: by 2002:a1c:a5cc:: with SMTP id o195mr7787746wme.169.1585084188798;
        Tue, 24 Mar 2020 14:09:48 -0700 (PDT)
Return-Path: <jane.pnx9@gmail.com>
Received: from localhost.localdomain ([197.34.93.161])
        by smtp.gmail.com with ESMTPSA id t16sm27758455wra.17.2020.03.24.14.09.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2020 14:09:48 -0700 (PDT)
From: Sam Muhammed <jane.pnx9@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Sam Muhammed <jane.pnx9@gmail.com>
Subject: [PATCH 2/6] Staging: kpc2000: kpc_dma: Use sizeof(*var) in kzalloc().
Date: Tue, 24 Mar 2020 17:09:15 -0400
Message-Id: <bbb3adbd20ae89db6a0d3360bc09d22eed778e86.1585082158.git.jane.pnx9@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1585082157.git.jane.pnx9@gmail.com>
References: <cover.1585082157.git.jane.pnx9@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Modify struct allocations in kzalloc() to match the
coding standards.

Checkpatch.pl CHECK: Prefer kzalloc(sizeof(*var)...)
over kzalloc(sizeof(struct var)...)

Signed-off-by: Sam Muhammed <jane.pnx9@gmail.com>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c        | 2 +-
 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 5eb6c5f24feb..21ebab7dbc7b 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -253,7 +253,7 @@ int  kpc_dma_open(struct inode *inode, struct file *filp)
 		return -EBUSY; /* already open */
 	}

-	priv = kzalloc(sizeof(struct dev_private_data), GFP_KERNEL);
+	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 	if (!priv)
 		return -ENOMEM;

diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index ec79a8500caf..25ea16a1981e 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
@@ -98,7 +98,7 @@ int  kpc_dma_probe(struct platform_device *pldev)
 	int rv = 0;
 	dev_t dev;

-	struct kpc_dma_device *ldev = kzalloc(sizeof(struct kpc_dma_device), GFP_KERNEL);
+	struct kpc_dma_device *ldev = kzalloc(sizeof(*ldev), GFP_KERNEL);

 	if (!ldev) {
 		dev_err(&pldev->dev, "%s: unable to kzalloc space for kpc_dma_device\n", __func__);
---
2.20.1

