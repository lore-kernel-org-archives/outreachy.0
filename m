X-GM-THRID: 6672382238734155776
X-Received: by 2002:a50:aa2e:: with SMTP id o43mr17054611edc.67.1553535051176;
        Mon, 25 Mar 2019 10:30:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9950:: with SMTP id l16ls2142401edb.3.gmail; Mon, 25 Mar
 2019 10:30:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzyWLd2TcsVczmz/FNhkpfalc6zoj2TfFTSx5ttswoUOldBxWQNnS9hwzcw5m6L26pBR31G
X-Received: by 2002:a50:94aa:: with SMTP id s39mr17779156eda.191.1553535050129;
        Mon, 25 Mar 2019 10:30:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553535050; cv=none;
        d=google.com; s=arc-20160816;
        b=NYWdmxWb1XiuHTOB2YtB7VFAN1OEum/OsWbEWrukHsnu0O3PZOiD1TpnY0eL6TqjvW
         rexGQI1WR3kxZMsWQSiHfMNlWHn3bB3QzezNKbaq9iPy9h4wqbNnofd03RLhEQiRUOC/
         8veVA4w44VTk7RSLGxwTV9YZx5PxQh2+yigA98MWqmOwcV/lslU2aDUyhAaftG8/OZbN
         dhWG8ULnKySpU4DBOypWZ4+UdcUe6oNTccVCLpxpLX3nx9PcRuQ1orVf+x5dpBZEcF7W
         x7kMczbNZDNA8bzYrHjWrvbyt5yRPHODaymT5ET9GUcU5IjDjyMigEa6IzcqnhMQpeiG
         ALiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=R83YoEZmBLHqqn0EhM0KC17IuyColgC+SogfUgFQDN4=;
        b=sxrE0dXchBH9//w5Ob2cKV5od7HsXO80HKb5++R8V39tUiVwI58yXgNhv8pXkVx1Zc
         EY2xfHOeXJ/Wtpgpkn7A99cNPonWaOB+WRZYFR0SZ+Fj5DxhFPYtzqFHAik62edTvj40
         bnM2pJ5ioqpgh+7vHyeQurVlYJXO8iisCa+ng/XGEWaeqvB+RMehk2QCi2Cgfso07bZ/
         cfmHjCxb42VydZKNI/j1cqNLa5HZIk+xWp10J5cErDRSKdn3othVOzUoDduMXfpDDk6v
         iy9j5JEf0/h19lJbebvq5Bm07ZZ0qBGPt4SBjIjD2ywFV+sicrhn/pwXwmP3/Pa56etm
         VAqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NTywf+33;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id r37si657885edd.2.2019.03.25.10.30.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 10:30:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NTywf+33;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x342.google.com with SMTP id y197so10035291wmd.0
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Mar 2019 10:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=R83YoEZmBLHqqn0EhM0KC17IuyColgC+SogfUgFQDN4=;
        b=NTywf+33wwj3ZJJhAm4kqdTfF39TCiwnFH30Hu30AxRChFKVd8KaT3yWMrCe+B35rs
         cI5L4NWMbpl03oLQZQ1wZeUibltBMgr2kLGgoaQ+f1cJm6eMDS2bSF00afMhmFDpuX0a
         pWPoLqRuivAGi1fLc2sK6BZoIvjejmpirnN4SaxSsu4BrjGQJ33yyMRKyUwWyVXrZoTj
         3CJIjzo24Opj2m9tri3gENNwy7w8WBGakUyWvjQvAZJ+N3ugw/uoIv1+qPBof7xagZIw
         6KRzFqg2hQx8ANnxesaWgJPivTGGyBJ90iNUFC90mZ/DuSC9HiczwhJtOqgkX5iWA66e
         UQSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=R83YoEZmBLHqqn0EhM0KC17IuyColgC+SogfUgFQDN4=;
        b=nMHmwqXRQ/x5NVxjyAdRBmDCx123v8nG7E/aV1raOhfBCVCMuC7yl30kl8Y59yR7rL
         ddxW+9uEtuuhxPg88G4gCTDfDb1KM3eFA3RMwSRhHuM/uGfXRVU6QQWVmwwF5eHMzcnV
         6OctCQ1PxjpDEwY8IY30rENNPbO6Aai6N1e50XECxd6oRTlxc8iqD5YCwGvGVhmuFvRq
         5sf4Tbr4tiyprPoLjUIumHdR51QaRvxxHy8IspH1CA6j9pLFfs6A91MuP2EjmUzUUFTh
         LPBBxMGzEM1noH1G3do7U2ABIOfPp9nOCNesIekp5Es1ZHCzqUE3DTbcSjn/aBPyqWNe
         jk8Q==
X-Gm-Message-State: APjAAAUVaGTtELlZQSDQQ5ALc/4EavOX2X8ls8zJhUDzP0A2HyM+yzHY
	qxSz29o+hjctk4t26/UHu0HBQik=
X-Received: by 2002:a7b:c404:: with SMTP id k4mr6624009wmi.117.1553535049749;
        Mon, 25 Mar 2019 10:30:49 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjatsu.public.libraries.mcc ([91.235.65.22])
        by smtp.gmail.com with ESMTPSA id z11sm6553995wmf.12.2019.03.25.10.30.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Mar 2019 10:30:48 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: mchehab@kernel.org,
	outreachy-kernel@googlegroups.com,
	jules.octave@outlook.com
Subject: [PATCH] staging: tegra-vde: Add comment for the lock declaration
Date: Mon, 25 Mar 2019 17:30:33 +0000
Message-Id: <20190325173033.16011-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add comment for the lock declaration to fix checkpatch warning
Issue found by checkpatch.pl warning:
"CHECK: struct mutex definition without comment".
---
 drivers/staging/media/tegra-vde/tegra-vde.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/tegra-vde/tegra-vde.c b/drivers/staging/media/tegra-vde/tegra-vde.c
index a5020dbf6eef..78ad78e03d12 100644
--- a/drivers/staging/media/tegra-vde/tegra-vde.c
+++ b/drivers/staging/media/tegra-vde/tegra-vde.c
@@ -59,7 +59,7 @@ struct tegra_vde {
 	void __iomem *ppb;
 	void __iomem *vdma;
 	void __iomem *frameid;
-	struct mutex lock;
+	struct mutex lock; /* generic mutex lock for tegra-vde driver */
 	struct miscdevice miscdev;
 	struct reset_control *rst;
 	struct reset_control *rst_mc;
-- 
2.20.1


