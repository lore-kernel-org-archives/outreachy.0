X-GM-THRID: 6745802643639107584
X-Received: by 2002:a5d:540d:: with SMTP id g13mr208025wrv.8.1570629571764;
        Wed, 09 Oct 2019 06:59:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:c6:: with SMTP id q6ls165593wrx.9.gmail; Wed, 09
 Oct 2019 06:59:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqybQwUCzBQSAu66p4PkBSvAQkWWt/2aJO9KP2p3dkGlA5Uqr/+cR+3zjxxZve0xu9Mz3n+R
X-Received: by 2002:adf:ee82:: with SMTP id b2mr1945790wro.285.1570629570604;
        Wed, 09 Oct 2019 06:59:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570629570; cv=none;
        d=google.com; s=arc-20160816;
        b=NialPc3C/S570LWfktsepOY+p8C8Qf3z4xD2QB9blae7EpSD3grx1d4IiqrxMO74k3
         2seFyuBGNUX3lT5dsssE55UetIhJjE2uyRi4t013hnNisB/LR92YjlZCnwpbLZKdxl7Q
         EXD9bcNEuNiKz70Wud2r+lnw3A+D4BZXv2nbTrfOQuFC5jj8I9p46v0UXgsQD82Lk1e4
         dN1Yene4910c1uMDeIOayjIP9SP5kXyGAUUUBSWlvnQCwLV25wM9OhPhR3HPFiKdPlQH
         WdTy8ksDHghlCtIPO7wMKt8ZNYJ2Ft7ktyuDm4OL1acp9eARuP+22HtqV9HSSLWLcvEI
         VIeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=x18qx9JLrk7xXMEFhQwtymWXpXFvSf/vB1abZUNNOK0=;
        b=Czn+CNv1n2owcbhaxaU55Dq8Quxk+czHs2dMOC7Kt27WzGVl2NZLt7dyGluujxEi1s
         8RRhjd1xRYkv7oA9k71g7p4im8Fiegr7+HVmx4wOd/DqXVG+lnL+R0CwwPv8c8Oc9yTW
         UsfPFfw46UwR4Q/IidqMCJZMRsutDUFYQWX30wFOMrXBlYq2eKHTMZ4hx0q6kim9CbAL
         7rTtnvHjsFSvIT40FZaw+e/gmbU+QYptidrsDY9snAaS55XNwnM2/8ERy9x+A+XMbbvO
         M1NeONQmU0rsYSEl4JhlNisl19sGPkGbUlW7cUzP7FEg9AbJPOjcwwdARaEfSLdLCAez
         EHCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tg4CEU2c;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id s65si76407wme.2.2019.10.09.06.59.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 06:59:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tg4CEU2c;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id j11so3172007wrp.1
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Oct 2019 06:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=x18qx9JLrk7xXMEFhQwtymWXpXFvSf/vB1abZUNNOK0=;
        b=tg4CEU2cZkb1tuVUQ8D8LbDUwBjlVtCC5lsmO8qvQ8VDTOwNppN85j+Tnb7zdw3KY8
         9eD64hjYKii/cqWwHUmTtSWkBfArSyX3YhbHnYgfLYw465h/eU9SoGz+HK7BKxCG8tGV
         bhzYHHj3aj0G9tSoqeTSK78cmalT2hEKDYhwJtv48OTTK6SE5OU7HPPEQqbYuH+ViSCL
         oq5T0vCoy+vRtX7M1WSDpIPx9HFKIlel3okg+I9KuJFVBAm41NyQBc7c+KUWhKliYu80
         ibDqUHDsWL4BSG9jBbnHfm4oRv57WdmEyk4PvHt5g0VA5CgRXd8eRtnu6TFUJG7BPLWd
         1XCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=x18qx9JLrk7xXMEFhQwtymWXpXFvSf/vB1abZUNNOK0=;
        b=Mre4vKEZwQ4Rf45qPtbditnPyJLitnoQktumlwJiJgEhcDadZ4GtF9+CSD40b17QEw
         NxWFs5jewwnW5IwFVGqGB+EcPxwo7uj4/Bo9bsnMpcHXRU4UFNzOI1/XKWriVoSf+KZs
         2jYHslg+WEhhr6mEvM/0Q+axVqkizLIuPjHt/03yS0IF/ECllgKSSIIx3QnQHth0UyiO
         tBYqgNZVZk5K5DEPnpqxJqoiikw28vkJUjiFs7AgeoQkF6vPq+RKdtuyYTu10oRBPbIF
         ujnyXqbDapHvAR6LxIc3qmR4TPXaLuDfrpw54YIvQN8N8pPXYlgsohrxRu4/cnvfgINo
         Y9cQ==
X-Gm-Message-State: APjAAAWkQ8HCnU1falvHYFMklxUIzsq3HfPzRDjsGmdefjPYsgRRSFPf
	4/dzj6bbuGVEWoKguT2Fp8LZYB66ygxb
X-Received: by 2002:adf:9101:: with SMTP id j1mr2952067wrj.71.1570629569988;
        Wed, 09 Oct 2019 06:59:29 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.googlemail.com with ESMTPSA id t83sm3989555wmt.18.2019.10.09.06.59.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 06:59:29 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH] staging: qlge: fix "alignment should match open parenthesis" check
Date: Wed,  9 Oct 2019 14:59:09 +0100
Message-Id: <20191009135909.19474-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix "alignment should match open parenthesis" check
 issued by checkpatch.pl tool:
"CHECK: Alignment should match open parenthesis".

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 5599525a19d5..086f067fd899 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -7,7 +7,7 @@
 
 /* Read a NIC register from the alternate function. */
 static u32 ql_read_other_func_reg(struct ql_adapter *qdev,
-						u32 reg)
+				  u32 reg)
 {
 	u32 register_to_read;
 	u32 reg_val;
-- 
2.21.0


