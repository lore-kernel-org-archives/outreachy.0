X-GM-THRID: 6675168703727796224
X-Received: by 2002:a17:902:54f:: with SMTP id 73mr2005577plf.60.1554183825578;
        Mon, 01 Apr 2019 22:43:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:92d1:: with SMTP id k17ls9843pfa.8.gmail; Mon, 01 Apr
 2019 22:43:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqywf56LhjsUr9UASEpbUjRhdpmVmm/duO6MMmKbqitJ61nL8cs/UdrFzckcBCa6AeGMF1E1
X-Received: by 2002:a63:5512:: with SMTP id j18mr1041867pgb.100.1554183824825;
        Mon, 01 Apr 2019 22:43:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554183824; cv=none;
        d=google.com; s=arc-20160816;
        b=kpECOjrIX0bv8SN/Dp0kzrPbwhRlsT1zwjwfV9cgyY44qC6QLRZ04tvDR5wrv+JGKA
         mfYS1xml1s1FJtTpGb6CW50zFaFS4UkXdfc0gZkEnoTgTV1c7aSMLn4xZzWcKgryptFM
         o3aTgSF9erMxWNNFDkp0hCbLsgCsiiOK42w2RTmDARauyJ+nE+ZvtdvwpCNUgY3IQe6t
         uIrFopmbutMfqjJ9sTIAXddV/RB4WuGmOMRJIiADRugd8hgG76ocLE8kiMjnSt7tsDUc
         XrxJM3IbGVDHp4p+IXkCTsNbCB6kLT2QlslQSyogLojxHfK89E/HJgCWRCMyMRY5dWXV
         c+7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=kjcv3/tH2bbNMyrxLSDn045q+OZ8z6pcichiGyjNHx0=;
        b=aL3f4dPQ+HeN77Q6AIAWlcxQha8DqOhnobKd9OUVwOp5N4wfNddP7Pr1dtgSJ4R1bb
         oTMvAmHaz0xoni8aTDS79odJVwhmO0cWpmjcUA/OuFEkUBf66G1wEHxAeG959Ut0rcq7
         7w4fI+nUpAGhQfXibyMoen8VlgO5ZmyEwAU8xinwBP2GFmOOLrMNdkwXuPO9Q1K2FJmg
         xmPl+XP7StdoDdQEcLdn9a4WPM3Zr3NjvvxLmBl9oB9Z7CuDCI45OwfS/sjBrELEaSbl
         jf2nGZnmtKbw0JdZLeEQ8jFPnDqd3Cyw5Rm9FKqlDNOz0Tm8pRvUU87AiTXPS+klOSUN
         CNZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vC1ni1qs;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id h2si1006146plk.2.2019.04.01.22.43.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 22:43:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vC1ni1qs;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id 9so5751328pfj.13
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 22:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=kjcv3/tH2bbNMyrxLSDn045q+OZ8z6pcichiGyjNHx0=;
        b=vC1ni1qsq5tMvrBrvt2BMGz6zVEB8eoEpwiTItBzF/kzUh70vzPqu3PY7Hhvn6aX7j
         mblCrw1jozSqdSMtLcEOfNhb696aViRD5vMcFHHpsfNzshSNIUi+x9Znn2goQ+85etiA
         gXhLPU/QZjTH1iEFzYMKhURq0rdOQELKl1RoVrk13UHgrS0XkmW2Kmnat//0ud+r+35j
         y00wq3qp/x8vEFWZyV8qaXI05MhepqYtv0++b7EZJ5EvgP0L51KWem9lMQRdtVM00UW2
         un7EA9DKYlykZEghrrFmSZnPlTONWOt7NEklOWYMXt5ZPF12FU/D/ORQ1zK60x9HNBin
         c9sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=kjcv3/tH2bbNMyrxLSDn045q+OZ8z6pcichiGyjNHx0=;
        b=E57IXrYKYyhzu+4Rg2VyNx4XlfA/G9Pj3Rns6Ild+iIRo/IS+RSHuG5TQ4CzVXUKJt
         kPBtomJoV7VEqhFgp5gCUmGpNNV4OGuRRDXSE1UT+IXONaAA5stAizX5dDEvVY38zDdz
         EZpl+vCfmQ6id6d5+A7zqEGDHIa0cj/Dk1E9BWlitCcmVT66MQsWQHSxirifnpNhH8oG
         hKJKKsiwa+8BZqjk4TwsUCvl0Y3bNeLbuAMUz9wRTq+KTV3dkCo3Zwgb02WGZdip/jZe
         4Sfr9XR83IvEzaucD9HvtLrqR/s+94tDuHOsQqzodL8aYU1VA2wXi4aw5Xbr2tvN5fsR
         I3xg==
X-Gm-Message-State: APjAAAXTYC1smiPWO6AF8FXe2Gcp7LPdZXJrgA4TTMiORHVSS1CgJW84
	TJ4pbJmpLyblGcO1GpyPYVLZ+RxlUeo=
X-Received: by 2002:a63:4e64:: with SMTP id o36mr63337502pgl.213.1554183824478;
        Mon, 01 Apr 2019 22:43:44 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.165.14])
        by smtp.googlemail.com with ESMTPSA id b8sm13940380pgq.33.2019.04.01.22.43.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 22:43:43 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Add SPDX GPL-2.0 license identifier
Date: Tue,  2 Apr 2019 11:13:33 +0530
Message-Id: <20190402054333.7354-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Add the SPDX GPL-2.0 license identifier to fix checkpatch.pl warning
Issue found by checkpatch.pl warning:
"WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index e1a892e3b3ad..105089b97bf5 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/errno.h>
-- 
2.17.1


