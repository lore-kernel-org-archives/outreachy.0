X-GM-THRID: 6745898329157140480
X-Received: by 2002:a05:6512:74:: with SMTP id i20mr3171692lfo.97.1570651850615;
        Wed, 09 Oct 2019 13:10:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9786:: with SMTP id y6ls202679lji.3.gmail; Wed, 09 Oct
 2019 13:10:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwGAeHabvrjPr0Lq0287jw0NFIMUsJ2ju+i5u+i7b65A7+bzHCMEWk7PlnQkA+98dLizRtS
X-Received: by 2002:a2e:9816:: with SMTP id a22mr157547ljj.102.1570651849007;
        Wed, 09 Oct 2019 13:10:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570651849; cv=none;
        d=google.com; s=arc-20160816;
        b=S7nfg5nh1gM85YmPC+pA34mBHJXUJEDZSvK4XKyTwnUkYEmHP/iL/0P6N8t/4s9QNs
         jvf/QAGcH2GBIKmzq/4RaGfFUCB7qZzKa/lwULLZjdyoHB/aq2O63nH6TkbSaB/s/N+u
         /F2oKeINzefoBFPKcyfw0EAookgk+SrgE4ETkrunDfJREMPP3QPOiflLhbZmuY38ueVQ
         88y8gYxUNHNKOHPRgyxsklMxXuf/ARBGOm1HoWXIE7DKeAqrYY4cuqQJ4gyLPwQX3EFz
         XIIWPujMnUPpUapbQNF0H0fXH5+AePB8TU87xAgkYdwTahQp39y8aL4mPJTVuq6bkQCc
         u3dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Lpln8geciAg4JbtsomIIKLOvA7kf5IwzYvS8cTZ6WVo=;
        b=kXEgvQ1ehS38rSgD+sW62gv+CtrlW1tG/kR+UQBBRRYO7kqEzb7iJoE4KkL2JwQwkF
         9YIJjY3Fg/U5MurB23BGOmxfrb6iANwGG5meZoEKg8B9UHwzIcIijqlwa8x19KS5P4CP
         mRDL7Om9R8cAnNoorky9WUryGEBUp5SkxED7J2r96QdWeMhtwcSBC0hbBCMTBp38PXyW
         nCDQn4cl+qz6bmszZyQBM6WZAQkPboWiJHs9acWJtmIlv9eidMVUZlhBvbMGFabjSBY5
         j/MOMxUNqm8w/3Sxd9+Z4SPrVZ13oehXZ7cdNPSf29p57J3uf28QQBX2b9Ap/V5uz09P
         Q6UA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L0zXhNw7;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id k2si111037ljj.1.2019.10.09.13.10.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 13:10:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L0zXhNw7;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x443.google.com with SMTP id v8so4576271wrt.2
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Oct 2019 13:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Lpln8geciAg4JbtsomIIKLOvA7kf5IwzYvS8cTZ6WVo=;
        b=L0zXhNw7qBam7wrKS7JhTdw08I1S4PNNqW1Az7P9Jems3tOv0VwUV61koAjx/VsqKn
         iyJltod0nZI1EPU4GZCDGAWhTUeD2qRkZKHi9xvMGIyAulkgZerJbEomKDVcsgvf9gNa
         w1M43aRwXw2kR0AbKBoQZTXAwkBhOQaCu9HYE2lbjQXHipLtd6j4pZ+2ZPq1R/NVb2bq
         gAxOPGCtJ/NQCiwrOe8Fv4aRrOVAk02mvtJwHuakxadtuuoCiDN8kemyz5PmuwavrQpD
         ztIpGrkobMqQtWbbeR1o3pG/uVUtV6eEKyGj7DnEJ404xn1SnMAf8YBS7zH0IA3h0DdQ
         P2FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Lpln8geciAg4JbtsomIIKLOvA7kf5IwzYvS8cTZ6WVo=;
        b=PC87z0fZsC1R34Z51GWyaQVL2cIp5/BoQb2Z3Q7EK80aX2pJF6MciGD1Z3hnyrj3Al
         ntFHPs11zNp5wfXbKiGifVCI8QJ3TBiPvXefYJjMsiR5oUxkfU7FHWiDws+0Lk8Xj6pB
         0ZbXD8pE5He2Rws2pT/oo29+UgEXpjzoo990M3iFahXgCH5J588YBg0XTVxk5uYspA4D
         bnN5b2jKRam8AJcP8m01yNisxYFzqEWxFTKgGnee1LZ7JU/cYvD/UtJKZihT3NBEb8mB
         qcT8ERNuA6/pzIJjpEwOg1dnd2yl2mQtT8FVKxFlvze7mBjFTBHUtt9Z8bXv+E0pxAw0
         rtPQ==
X-Gm-Message-State: APjAAAUIeCXP4LXzuN8YeHU/E3xilIBA9dpeRczvPmfGKDAdCoIwSGvM
	S8fiZgAOHYXUbfTMyLOho4HFGrRcm+o+zTo=
X-Received: by 2002:adf:9b89:: with SMTP id d9mr4366751wrc.275.1570651848011;
        Wed, 09 Oct 2019 13:10:48 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.googlemail.com with ESMTPSA id g3sm4638311wro.14.2019.10.09.13.10.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 13:10:47 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: grekh@linuxfoundation.org,
	GR-Linux-NIC-Dev@marvell.com,
	netdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: qlge: Fix multiple assignments warning by splitting the assignement into two each
Date: Wed,  9 Oct 2019 21:10:29 +0100
Message-Id: <20191009201029.7051-1-jbi.octave@gmail.com>
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


