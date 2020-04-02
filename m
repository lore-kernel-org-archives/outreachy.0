X-GM-THRID: 6810983981857636352
X-Received: by 2002:a37:b185:: with SMTP id a127mr1944579qkf.224.1585805789939;
        Wed, 01 Apr 2020 22:36:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:ab1c:: with SMTP id h28ls844132qvb.2.gmail; Wed, 01 Apr
 2020 22:36:29 -0700 (PDT)
X-Google-Smtp-Source: APiQypJ8r5zq9Zop8rApYfxKQoRKw+dT1d8+6bRrOoKHJgFzkkVQAAjuibvPKDb9Y9fVQ3SL+J6H
X-Received: by 2002:ad4:54d4:: with SMTP id j20mr1559712qvx.75.1585805789044;
        Wed, 01 Apr 2020 22:36:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585805789; cv=none;
        d=google.com; s=arc-20160816;
        b=FTy63RZKlRW3aid5Nx0BtcSV2+yI4uqsiXKj7OoI0Qd5NbUKP0RPaG7kb/eY/n8+W2
         DXH86Qor9DHZs+xpfo48Nnww4JV3t9ICFshtysJckEr+Z5uRHAi+3gj2qQh0MeirIIX6
         5YpBvx+0Rb7vd7SnosT2RIDLUbD2u+XJL/g2IEMT6sG6c95UdszjgTzY0/FB7aILFmyl
         JRSoT/lVwKaoxHENaNZQOZec0ZStaElVlHXOOThPcsdGJjjirj6+Z6Y5UuYiTmK39Y9n
         9kN0KNwdDrV6Zx2/YuZTy52SRZtRTboKerveumQTL5OneBD8CdzDsXj7y/R8WGxcbSly
         VVJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qRIzo5o5vpllI++B3nY//4/moCStw1oArBNgpNNZWE0=;
        b=pxmlKCTYV/EsnCaprquJ6yqV6sSBzhbd3ox2/d7djCxLRjhCiooAlEcjtF+BU44R8q
         alz3qyRzJoGnARuBth11g1USzEO+Tx4jFvpUdkzz2vRUGDBhKoGYAOBW0DzRvY3hdb4U
         xvDjqE0/sewZAVfeIG8n37VIEHNGGeA0g1/2JXWhSnJHN089IPB0kH+ezhANtv/bIzIC
         AJi+V0nL1uUoI+WNLv04S+Hq+COZtwVA6mT6kz+zKzfde791rVw8cCQ5R6Sl8DgAnuuJ
         vf3U8m+IHCMpL9fJLj7ee3RGkiPIiWuHPANDFqeOHUVQehwSQ+t8bS/DO68F21nxGvjU
         QX+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="YX4kK4/l";
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id m6si316501qtk.2.2020.04.01.22.36.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 22:36:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="YX4kK4/l";
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id c20so1229861pfi.7
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2020 22:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qRIzo5o5vpllI++B3nY//4/moCStw1oArBNgpNNZWE0=;
        b=YX4kK4/l4v2Dc+sIlNifTF+eu7cc0Xwqmrkw6+903BF5W9hYTPcWEQ1O8+LgEOjeXJ
         QXFfirICEm2ToMk+K+f0BAw2q3aM4+7i/mtghVUotn2aFVQr/rkHHVy4LVTDEhrRC3q5
         bG9OMYPBR3q3H/nLiX2GyaPOIqz5tskvc9Oyg/MuabGNsxkYzFRjlQCzUafRlE5XYHAq
         lXfnvpaasLeK+GEb7tU+b2Xxu9ZrwbqDiVUXeweP+wX9flK1mvhJRUyrWxmL/Prxknt4
         lE9I+3V7sQZxFcL0CdBjr6rIg+ML2jv5LdLcdtU2QhmAsVwdSUHcvQAgE6VYtTngmeYK
         qj2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qRIzo5o5vpllI++B3nY//4/moCStw1oArBNgpNNZWE0=;
        b=pzVncbMXJ6Xb9i0fxOUg7hsFoTm+KhRn3pfTF/g9u94XLGcKely5xbc40sFaUDBqBc
         YAlyVhL//9JINLlh6WkA6BglqPsj3HMKCTUiDs6RBozE5ZHjDGtgJIlO3mi07nFb4RGX
         urjwIe2ZTEoeqAX8pTyRSNlVVLii6gqPw7IkvOYBHG0LLzOpb/NVq2N2j6ur+7TKWoDE
         KkXYcqS7qbXR6ifzzJ6VTj3WVvmipisjx1Z6tMVNCscQgf8boAcDygiRi7GdHBdMiMDZ
         M7SYtO8exKunPhGcK8w8hAO9iEXYDmUZZ1vceVVFr4o73gVfRKOEVTFSSj6TFWOy5iAU
         1W4Q==
X-Gm-Message-State: AGi0PuazLntJwbMd5WWJw+t+lbpJVf802bXH/0G0b3NxyZYkB/7syebJ
	ucTLhy2dWq5gE1x2+jwnz6QFwTwXG/KFEQ==
X-Received: by 2002:a62:7950:: with SMTP id u77mr1573409pfc.34.1585805788026;
        Wed, 01 Apr 2020 22:36:28 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id y28sm2863136pfp.128.2020.04.01.22.36.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 22:36:27 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Rob Springer <rspringer@google.com>,
	Todd Poynor <toddpoynor@google.com>,
	Ben Chan <benchan@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH 2/2] staging: gasket: Fix comment 75 character limit warning
Date: Wed,  1 Apr 2020 22:36:17 -0700
Message-Id: <20200402053617.826678-3-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200402053617.826678-1-jbwyatt4@gmail.com>
References: <20200402053617.826678-1-jbwyatt4@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix 75 character limit warning in comment reported by checkpatch.

Reported by checkpatch.

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/gasket/apex_driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
index f48209ec7d24..5ad15f398893 100644
--- a/drivers/staging/gasket/apex_driver.c
+++ b/drivers/staging/gasket/apex_driver.c
@@ -50,8 +50,8 @@
 #define NUM_NODES 1
 
 /*
- * The total number of entries in the page table. Should match the value read
- * from the register APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE_SIZE.
+ * The total number of entries in the page table. Should match the
+ * value read from the register APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE_SIZE.
  */
 #define APEX_PAGE_TABLE_TOTAL_ENTRIES 8192
 
-- 
2.25.1


