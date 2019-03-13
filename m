X-GM-THRID: 6667889243892744192
X-Received: by 2002:a1c:7910:: with SMTP id l16mr268030wme.8.1552488945461;
        Wed, 13 Mar 2019 07:55:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:ebcd:: with SMTP id v13ls440778wrn.14.gmail; Wed, 13 Mar
 2019 07:55:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzxfX8sgtMrxBrujRS7EFzm9vQbQBoQfIUB4FFunzBxDecvhnUI1c+TAiBchhNSU++YpUEC
X-Received: by 2002:adf:8121:: with SMTP id 30mr2354555wrm.22.1552488944461;
        Wed, 13 Mar 2019 07:55:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552488944; cv=none;
        d=google.com; s=arc-20160816;
        b=FTTo0cuuIwTPX3F1Ce6zKHH9/YLFExLHoyFMBJqH0liYDWkMSflr9zjGkrLlGU9pF0
         /Cl7D0cMpz2cVj4zJLDBjQA68IiQdiVnJiDI3z7hSAHZC6fpPyyiEhlopxxwhMrMUziq
         KFdi5nOm0YBBG2SukVBSrY2ZMnuiqM6W0iaS2keadRijRXBISP6Ezkq2GMtIBFakwpWT
         7OUwLgfkkgZu/4Jm/G42GwJL/cdE8PZzB9Z3IuUoQ05vRRD/leEt438zAyEmRAyMyyHq
         qG0y9VDAAJ0/udpHU5XosvAqv5VP0WHsX50g9mHOFLsJLAUaFcdTn5c+b9Pd1TY7qDiP
         2Xzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=GBA6VvfF+Du0ehvzgVMRdAkktTaOAX3Y0CkEAW+/cY0=;
        b=vD2Hoa5ZnQB2FEOv96xUtzIJteYksT9LU+umx6HBSTErmy8LnucdKzLD53nQFpobSU
         U6sQLg+uRJmRkS39Dw8PH4XiIxzPWlZmAvribUQia6xTi/G+UVi8i/xj0BCyIWswNXdW
         0nrlL3izkifMWjWrVVYvgzco9BtQomxs7lQDurFMnQw4wJ95DqY5BczT5RPHFEKCE+8b
         5pT40NnI0K9FIS7n8rgJP6BEBUo7HP3Zk3J61I7aQXAUuCmHinoGxLmQ3YqJ2gnZXi3K
         qiX/EAZfLlKsAGPRpC2l/dCpaWxAci/ufBmuzIsRqcj/znK66wRZE52CgGCQ7DTZMYbs
         ZwLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uZG2p8yv;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com. [2a00:1450:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id 60si281534wra.3.2019.03.13.07.55.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 07:55:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) client-ip=2a00:1450:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uZG2p8yv;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42d.google.com with SMTP id o9so2333359wrv.9
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Mar 2019 07:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GBA6VvfF+Du0ehvzgVMRdAkktTaOAX3Y0CkEAW+/cY0=;
        b=uZG2p8yvwRPTrCYZzahSo7vcEMEfyNE38lfUWc3mrcvnRiBpgVbcaPCtKainZus/Jx
         jR87uIMMx/8+CQ3PpqeQowaYwPwEQYdjbGuxpW8WPV6XoOojJf2vZFs1HZGehe0kRmwk
         8WAAubSCBfYlXUSFhtnRN11XgnqYmAyReK1sDcl/kxuVWLYng6JViFIdkI++TDrF8IHN
         dWPlMoxJx20A8pZahdWDx71gXoRtR30tDquoUxjEgR+fe0MqeDxC3UelkvyhK7MoZdA2
         f2x4N7s6f/d8fUQNpEf3MD7cT3/scNAAw9l58G7tumbdyrDfy0n61EU0HqbU3epJEMYQ
         lT5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GBA6VvfF+Du0ehvzgVMRdAkktTaOAX3Y0CkEAW+/cY0=;
        b=EDU5eu83MNJeBpqtNmrxmcKELasBh7lPAMmyf4a2YoPzbr2MjTKjyZiIEJGDaJVwXk
         Zs1z3jBQbCUhGK56d3xBTBC+vk6CHhWCrmX+KoJLJRxz/lc2FSF+Qf6D4HaDjSIyvoVK
         3Drci5jQcgoqKym19bZNXZk2PYrCdXUWeNd/ItRjA8pOxZWUWm9qQl1xQFGx9kX06WnM
         onXz1+HkP1khUVc7+yiQ8jtVtSWRp0aEhcRg/thFRjnfTVWlfgDV/WKtCVx6mOQOcFLB
         XVJ2vZzfDt85SNcbKnapxX3xzms2UFolV1J+G24mhaCHFtsiRpVgzf7gIFISSJFnYRGa
         +CSw==
X-Gm-Message-State: APjAAAVb9cwoSWrn700gWfoHLJYeO/qUhHvfAjYCM4oluOR5DyNoXovF
	kqnnnlnyeKjhV8HJhQj0Hg5otEQ=
X-Received: by 2002:a05:6000:124d:: with SMTP id j13mr26614129wrx.102.1552488943947;
        Wed, 13 Mar 2019 07:55:43 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id p68sm1329218wme.45.2019.03.13.07.55.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 13 Mar 2019 07:55:43 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/2] staging: rtl8192e: add SPDX GPL-2.0 license identifier
Date: Wed, 13 Mar 2019 14:53:19 +0000
Message-Id: <20190313145320.26782-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190313145320.26782-1-jbi.octave@gmail.com>
References: <20190313145320.26782-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the SPDX GPL-2.0 license identifier to fix checkpatch.pl warning
Issue found by checkpatch.pl warning:
"WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/rtl8192e/dot11d.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
index 68f53013cb95..6d57abedaa34 100644
--- a/drivers/staging/rtl8192e/dot11d.c
+++ b/drivers/staging/rtl8192e/dot11d.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /******************************************************************************
  * Copyright(c) 2008 - 2010 Realtek Corporation. All rights reserved.
  *
-- 
2.20.1


