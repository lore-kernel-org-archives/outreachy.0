X-GM-THRID: 6808044843867045888
X-Received: by 2002:a63:6ac1:: with SMTP id f184mr3461963pgc.212.1585145858628;
        Wed, 25 Mar 2020 07:17:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b58e:: with SMTP id a14ls1792884pls.5.gmail; Wed, 25
 Mar 2020 07:17:37 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vubJYC2M42RDmsvjJuLr7c0rEFDUeWSPL1ZZh1wsXN5q2NwzaqrduiVf5yxkDrC/rAko2q4
X-Received: by 2002:a17:90a:d585:: with SMTP id v5mr4068025pju.4.1585145857116;
        Wed, 25 Mar 2020 07:17:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585145857; cv=none;
        d=google.com; s=arc-20160816;
        b=kAt+THfUfDFnFS8KFFx15eGwHwrQZCMfgeQMAVSfIg0ab9afbGsmnJFPVK/uBgjWug
         p1w2tq5aBLR3K310+IJ1G6nc2dSYAhLT5JuK+xzfkVOUUw37Udl/GP4OORSL/nRP60e9
         3m+Q6AC680apweZCfDQPLFVACdWjGyEbboFRII4pAQD7+66DmtyHeJbbYSe1r0VJMhu7
         Q79Sft/A9X89p90E42Oi9SVSsc06+YEmH5Jfu9c66BJ3Dp57Wg5vNUa3kHFqXhXJbaFH
         bqaYRA5H0WlzYSQdR14rOma8X/cQulwRI4+o9b95w1T5phRWcKR1DbJP9LtK9Tu+ECs4
         DpPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=7oyxbsxvZYtcGLGqNycMwNG78JmT2ZrN/QOSrkWTJi4=;
        b=DkMsmxVoK3nInt0z35VK3XiU4AkeA75xjkpNCUaRCQrFuzkVfzk/yGaUfwDXo6Plvg
         IjNnffMQ14JP1r8GtcuxJpxVebpRjpDOYze32Vftti577147YOxa22m/fFdsofAMUN1i
         o84vHLyjMlVzGuHRGtmDmzY/wdQAhNhtguD7d49YIiRGGMfE9nuLyKN8Z09ez14YHTSO
         C6RYBbcXTxHNnU9gGkgiXbE4nve79KQFsG2miUvoAlw32gkNwn0XoqDyxnW3Zv6Us0nJ
         icrliwbAL19+2xEHMJdGijAfRU8DEgzHe/Qn7A+TMwsxHxpCuGO/KMcRAQYSnIPJtcVM
         jpWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=roCooveq;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id y5si855355plr.4.2020.03.25.07.17.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 07:17:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=roCooveq;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id a23so858274plm.1
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 07:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=7oyxbsxvZYtcGLGqNycMwNG78JmT2ZrN/QOSrkWTJi4=;
        b=roCooveqawHbmeHw/w3Sb5rJZleFWAoVkV0yyfD3HUgFBW2fmDCBoHHeSwoFaWLAI/
         OUHrxJXO3eHnXihGN2Spd3LO4eIDvzuCfMWtQWnhpFIBhwQqYY4YDZOgbDdLtjj5Dkcb
         l/0IWIbz/7R3B1bb9xoFASyTVtFq6RzEE6v0NF/yWRyntIFrsZwH7cIlbowa6EyZrGx6
         +3pfhNYGZgXfkbSMb9Jyupusx0iHHBkXWgPt83UUhtWtu+Kfx2CU7r6XTNugkhN+Q4nI
         dKIAgyTNvDSpXkVxpR/xd8fG6syqHKuTm3rxP5dRjKyakJNZ1U+EHR5mjDaxEdfcrD1T
         Iehg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=7oyxbsxvZYtcGLGqNycMwNG78JmT2ZrN/QOSrkWTJi4=;
        b=juGa7WDg8l3JJbaDm9eD5f3iIY3Hs+co5UfMKqBf8MTy1EerTI9QcNq3XDA4mQ655Z
         1VNpiDwqQPu2QHE/9r/ZRyMvSMfqux4EbsEmlQA/nlnzv8Qb2JuZXCAc8WoUOaUOxRW0
         UEkT/1z/3nGo2ExQYMMW0L6mBTe3zHm6eYks68BEZDWUQpVQB+moaaRwAj1Cfm1iodjR
         rSyoYeFspxwDY1OgAoM9pVgqdu0TUoTHkyPNnlJ83+45lkxsxIhX88wxPGO3VCx5U/MT
         Q4ctC1ZcnUwojBxNN036GQ9Kk9fVe/scPix6kdqK1By/wObV71qUp6Hp3p1wvk4coG4/
         p5oQ==
X-Gm-Message-State: ANhLgQ1o7xpqmkugjU7ddq4q/P+dXyMrDbzt+2iHYPSjYUbOERIDqzcB
	YYcR86VJeMAPJ748S+MImFUYjQqygIvdhw==
X-Received: by 2002:a17:90a:30c7:: with SMTP id h65mr4204274pjb.44.1585145856346;
        Wed, 25 Mar 2020 07:17:36 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.210.159])
        by smtp.googlemail.com with ESMTPSA id k14sm4186493pje.3.2020.03.25.07.17.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 07:17:35 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	sbrivio@redhat.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH v2 1/6] staging: hp100: Properly indent the multiline comment
Date: Wed, 25 Mar 2020 19:45:40 +0530
Message-Id: <20200325141540.41877-1-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1

Shift the end of multiline comment "*/" to the next line.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
Changes in v2:
  -Remove the blank line after the end of multiline comment.

 drivers/staging/hp/hp100.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index ba9595facda1..31d1ee6182dd 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -262,7 +262,8 @@ static void hp100_RegisterDump(struct net_device *dev);
  * This work *only* for memory fragments part of lp->page_vaddr,
  * because it was properly DMA allocated via pci_alloc_consistent(),
  * so we just need to "retrieve" the original mapping to bus/phys/dma
- * address - Jean II */
+ * address - Jean II
+ */
 static inline dma_addr_t virt_to_whatever(struct net_device *dev, u32 *ptr)
 {
 	struct hp100_private *lp = netdev_priv(dev);
-- 
2.17.1


