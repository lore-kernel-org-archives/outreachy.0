X-GM-THRID: 6663210271515869184
X-Received: by 2002:a17:906:228b:: with SMTP id p11mr167575eja.1.1551399537478;
        Thu, 28 Feb 2019 16:18:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:358c:: with SMTP id o12ls1495740ejb.0.gmail; Thu, 28
 Feb 2019 16:18:56 -0800 (PST)
X-Google-Smtp-Source: APXvYqxObWbb7sxp6fWtO/mQMSi0zK0lVeIJp1FCBdGqyQjgziBX8YufmhLW1qXLv2v9AylBR0N4
X-Received: by 2002:a17:906:d541:: with SMTP id gk1mr175209ejb.0.1551399536695;
        Thu, 28 Feb 2019 16:18:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551399536; cv=none;
        d=google.com; s=arc-20160816;
        b=xAFR0iqiTD6KaBeVTFP/NokzhaPcETSTpUFzS5J82+2CCHDhz6BUWGqoTf7c+bKaxR
         Z67V2hziy0t0YjTC6GfysReEcADYLBdl1zrWJrSPoHiRinxslt74IOxIZIhKE6NY+RFE
         vV5WFMH6r4NBYX+uvMfmgTxDxxce936fpVyLNfSEokA9S6NQevFjQE6psjCQcgX8d7RP
         +Xb9ZkwirQeMwRIhOIlEGzvpgwnqOmML85sHDhT23HNhImaKYwgzs917kGpzStj/GmAs
         DuLr0eTcPVm+kPBNO8V9oGiBP4V/VO/cy2qPwCvG5JAF3cWqIko/vZzS1BQVnb4WfkFn
         m1PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cq6suqHXuahfRWsR3gpHLSrCxx9fDeEjuq+d8optY24=;
        b=Mzo5uf+d3P6BfRwurglwOWJsR86Fdb+rp5+hU3x3tV/27V30BByz/pHeUBM0Y5nWOg
         6kovTZIhqajQgOUAOzTkdASMeHxJHQ4ChDxIDM7KK7bGRF/UC4cvb3i17yMzDouYjIKr
         br2Zc7xzBLnv/5zIUrLgLRUPyKNMBdsEEHrfKkuPTsd/VKhXBPtBEqlF3mpTECBYQI8y
         GVB89yXMfYHLSW+h6KDLlk4lM+sNM2DfbgNyLHqqgtHIjdrpBNHWGzBJXsmAVL3KAlo8
         +Vp7S+BllRzFapZiGvlYE/6TMWO5qZbCBWhOgXkN07n7h6MhKWadOf1juxrEVJ77QXmm
         KftA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CVC6n4Lq;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com. [2a00:1450:4864:20::435])
        by gmr-mx.google.com with ESMTPS id i16si395977ede.0.2019.02.28.16.18.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 16:18:56 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) client-ip=2a00:1450:4864:20::435;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CVC6n4Lq;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::435 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x435.google.com with SMTP id g12so11897377wrm.5
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Feb 2019 16:18:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cq6suqHXuahfRWsR3gpHLSrCxx9fDeEjuq+d8optY24=;
        b=CVC6n4LqbjbjH4lP40RL8/0Of9UfZj5L9C9uLXvUpACoZA4ew5t1770McklEkJPxnL
         CdnkrVwfQUz9jywCSVgId0kKcmDTbaQmK39Zt33fDFG06DISvfLbLR9YQty+v3XZJAQM
         Pvb1YDP5ZY9g2jCgawtzEmeWLyK9qhXcrT7u9gTfIk1OPQLADGk7219vwduFGYCxJOYg
         HqVmKy5v/QCjIfdNkLTpRlzklnQg5wG0dlP1n/bjsiG0s2Lbc6/k7DYDt14GrqGo5dnR
         lv4D3UxQJaHwRitLFxaJXq8f4vyLArw2Ubzt59et8Ndg0ecjfR2FkDijdD+HHLX11tOh
         L6sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cq6suqHXuahfRWsR3gpHLSrCxx9fDeEjuq+d8optY24=;
        b=kxDpT2FSB3uG3F+2RDWzA/vX9+FNRARJ2zWXdc4Z3LhK2lqsevmfr6nEyzGGb1eUlS
         qrJOq12uFzChYi2lO7iR7sl6WpJwdSjjtIpaFiWIWrVypmAR8e14g9oYydXD/cfSeNeA
         IjJkltQFEp5xFLZa29MchStgWzCaiLTVfsrBDiFZ7ZmAFX0i5i0uW5aOZCoWjI17K5UH
         85A/x2qggfkmrf6PkyUKJS45bz+91VegFC1AP0qpfKheZ6d/61QgkiMGdOrOxc+bSUfo
         MB0Kx/3kyjJ0Xgz1rSpJW87DkyJWNWnfEMtWLUL7etnrDWMMhOBHrK+e8VtYtAzrV0If
         WzbA==
X-Gm-Message-State: APjAAAXbA7oyb5EnDVkIJWqlxKG0axthAozf1xIZAsmfoSTn+uGePIiu
	Gpd08zj3s/ljv5z2nlhAKQ==
X-Received: by 2002:a5d:6b07:: with SMTP id v7mr1298126wrw.314.1551399536199;
        Thu, 28 Feb 2019 16:18:56 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id g24sm8064618wmh.45.2019.02.28.16.18.55
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 28 Feb 2019 16:18:55 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [v3 1/2] staging: mt7621-eth: Add SPDX license identifier
Date: Fri,  1 Mar 2019 00:14:16 +0000
Message-Id: <20190301001417.16556-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190301001417.16556-1-jbi.octave@gmail.com>
References: <20190301001417.16556-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the SPDX GPL-2.0 license identifier to fix checkpatch.pl warning
Issue reported by checkpatch.pl warning:
"WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/mt7621-eth/ethtool.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/mt7621-eth/ethtool.h b/drivers/staging/mt7621-eth/ethtool.h
index 40b4cf011660..d0e97ae0d82e 100644
--- a/drivers/staging/mt7621-eth/ethtool.h
+++ b/drivers/staging/mt7621-eth/ethtool.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*   This program is free software; you can redistribute it and/or modify
  *   it under the terms of the GNU General Public License as published by
  *   the Free Software Foundation; version 2 of the License
-- 
2.20.1


