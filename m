X-GM-THRID: 6745898329157140480
X-Received: by 2002:ac2:420a:: with SMTP id y10mr3239577lfh.65.1570653805651;
        Wed, 09 Oct 2019 13:43:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9d44:: with SMTP id y4ls210873ljj.4.gmail; Wed, 09 Oct
 2019 13:43:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzzcxN7bjz60MGejywITQxI4AXHAmW2MT4OfljN2aL1y51kJ29uGOXdxBbermf0fE8Lh7om
X-Received: by 2002:a2e:b4f7:: with SMTP id s23mr3396609ljm.111.1570653804229;
        Wed, 09 Oct 2019 13:43:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570653804; cv=none;
        d=google.com; s=arc-20160816;
        b=KrmAbmKrIQGLxt5zoDaDNPt7MtlaPM8Gf4/XJOFG+VSGXgkxEOXXg5QUKNG7P0zuhc
         /8hqsEItuXnLldZU39ihS7xi8yDjFpr+hs+y2WtSZoqHjb1yQLcdIxi1lNar2tMIF/ZI
         53lIvIVCvtfXu3hIiB7hVj0OKLjJnIcd00PsDVW4bsE9+czyADiycjmL8ch+oooL1l8P
         xrbgijr0DT9r0tLTcuQDiJhHLel57/TJbH+bgVWnPBwFPn7ZnAeaFgMtitrwz9eSDAoj
         XZTrOmDYUd+J/ZD+VurQlZ45bA6FWwPiYM2BeoBLXUUHkQbWIYpWDI0eTIHptumb7xWn
         wU/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Lpln8geciAg4JbtsomIIKLOvA7kf5IwzYvS8cTZ6WVo=;
        b=qQ4fccvAnYs4nKmfj91AkCNz9mQYI0kvcUCGu8I7lmlG0sTE6RPp1WSKfRcYxsZc/R
         vSkbLc9et3cxcNaFtuhbQO+C/J9bZm2flnJOBx5cqvNs9JauOHqYHQcdTEAk/c6dgPVL
         t/FLo9bPG4qa1RoEq78fy4Vb8wcJ7l3EiM++lNlUxeq/BnYveApnfjOllSJpY1Zdfmpz
         1xyeNcqH2aW0WS1xu1VOtzdKl9wXf6EaVRRir2evR54FlkjpcUIo29Ko+RX+q6WGozdO
         dQvTR7gOmesKDN2L3oRqoJUmIrCo36sdAyVlNoR/jZBOvJNJUmBJ7ZXfbNvd6WJh8g0m
         VE2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zq3v1jke;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id z9si206345ljj.4.2019.10.09.13.43.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 13:43:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zq3v1jke;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id q9so4683521wrm.8
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Oct 2019 13:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Lpln8geciAg4JbtsomIIKLOvA7kf5IwzYvS8cTZ6WVo=;
        b=Zq3v1jke+W/GXtjRbhGK/s7oBsB1wxO6GbK2me7gUkAwQawUoK/3KI/TseJwLbGnzt
         ARybW3WTsltkrseBEKdY/nn2GxLEHDFLv8nf5sLBx4Np1p9VXzLM0QiawEVcf71ZfDYq
         McMmuR9U9XSaD0qwNvPfnALJ+yniImr45Gc9gI8DgkmPct4ytA8kKU8Uesmj0Yc7Ohdi
         3Gd7wLNwvwwqIPr3Xw2llSqbV5CK+Ou4BDbD9GwH07EOsr+jQZRPh7NWW6dOClPjMFVW
         uFFduiRwcygYh199z6579/wKVKMjOrGmfLkI3e0TrWzKiAjSuUtUs2FkhSm3YehUag0a
         lUxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Lpln8geciAg4JbtsomIIKLOvA7kf5IwzYvS8cTZ6WVo=;
        b=AfYLqmj9wflWMKSuPDa2spBFHkueDNBogdiEK8/nyfzMCSeLY/xeQaW609v2W6LZ5r
         Yaz74B7fs1rohqgQbWLpye0kTGBk5dW2SPkmbknm4Prq/UKOalF9j2vdRLmQ4jPVenKh
         NvLdZ1aebrwiVZykDWVlDDNN+ZC4Hv1jzB0xu2pOOwl0t7YLOs/4z+tSMDnlid8OD4kL
         EZlKp4BWJlMdo6tQ73EQB4uHe8RNoXYY0ikSL/i1+YEuq1RLLVppkP6BVVSpGgJpOSdk
         bu6c7pChKZaC3S3XDm9QpoA3yo2YFQ/nJpzkhjXOZIei2kEc5nSG2ChqqBdJPNKK1z4w
         9rgQ==
X-Gm-Message-State: APjAAAXWew1DxdIlYwvY7FalKYTePkEcAoUhjAkfHPszIq17k/Bd5QUI
	SN0z4SkoFZ2De5dU7rXjVNaT87U2VC+Uk2U=
X-Received: by 2002:a5d:4a81:: with SMTP id o1mr4349969wrq.291.1570653803279;
        Wed, 09 Oct 2019 13:43:23 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.googlemail.com with ESMTPSA id f8sm3601546wmb.37.2019.10.09.13.43.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 13:43:22 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	GR-Linux-NIC-Dev@marvell.com,
	netdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: qlge: Fix multiple assignments warning by splitting the assignement into two each
Date: Wed,  9 Oct 2019 21:43:11 +0100
Message-Id: <20191009204311.7988-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix multiple assignments warning " check
 issued by checkpatch.pl tool:
"CHECK: multiple assignments should be avoided".

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 086f067fd899..69bd4710c5ec 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -141,8 +141,10 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
 	u32 *direct_ptr, temp;
 	u32 *indirect_ptr;
 
-	xfi_direct_valid = xfi_indirect_valid = 0;
-	xaui_direct_valid = xaui_indirect_valid = 1;
+	xfi_indirect_valid = 0;
+	xfi_direct_valid = xfi_indirect_valid;
+	xaui_indirect_valid = 1;
+	xaui_direct_valid = xaui_indirect_valid
 
 	/* The XAUI needs to be read out per port */
 	status = ql_read_other_func_serdes_reg(qdev,
-- 
2.21.0


