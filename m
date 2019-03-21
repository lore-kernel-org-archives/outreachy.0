X-GM-THRID: 6670790947725377536
X-Received: by 2002:a02:6614:: with SMTP id k20mr956219jac.24.1553164550830;
        Thu, 21 Mar 2019 03:35:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:80c6:: with SMTP id h6ls2169949ior.2.gmail; Thu, 21 Mar
 2019 03:35:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw26ZPe/PI+WXzszSkpLYVlQHVkmXcLbnWUY+FrrdhYR9oXSa7C5d0gOBCQLDipyYhsxyU3
X-Received: by 2002:a5d:9506:: with SMTP id d6mr1171923iom.22.1553164549967;
        Thu, 21 Mar 2019 03:35:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553164549; cv=none;
        d=google.com; s=arc-20160816;
        b=DlrNRgw1Ai5XGDLUbIrRJ+MhKfomSTiSb/FwY8uI7/wYR94Z7y+T8kB985zhKCx7N7
         qXOWcPL0Yao3z1sFL7XV0toZZlzOqnp89po2uteDHHNV16ER77DuBlxJ1f6d6Z5uDYBt
         hg1tyKIrQ7VPXaitSsrh3yVzNEkfy1ZcY9LI10X0GlC1kQzQu8Z4NzmUqMeEkgdhRIe7
         gjlgvfP+N1GbM9fS34bXqYm0NJKJi2kmRVLHf1gyPYAgQ/AzQkOCli77zLoKIbonPnq6
         TzJ/kpKwSO3xF6i3kntkvhUAj0VmC8KZQ13Emy1bWvFHX0xIY4KioQUJcjOPtOgPbzt1
         NIrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=xg6Fa73rFau5DRgU73/rlvxeA5WnfyJ42cdeh6S/JDk=;
        b=DPrIjydi2zqdVEOd7WchNZMYQbkaKOZN/Tp2pGXE7rPHPdAj4rXUTbVISlYU851mRP
         2qpeptToFNLULk6059xFNkWEgeHpCCoRwFRPyWwF8ys65WJr9gdSlHr7/CXgcWkrpKJP
         LvesY3jJzie27l1XNfXAgTJctzfkKl9xRzs/Rbk4+ymWMA3eIRPIrC0AcWSLJrquv231
         MZQsC2j9+pOft2Y79b5abQMNLly1OXjlsqimigrELTW2wjv0dMe+DPBQVAdaKc1kOAMZ
         ydF0nYTSgnN3ekM1VxD+WIOsb/ZHfFM/rXQiVAGGYypLbhw7w5cCjzK8w+m1n/C/mAew
         jrmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OB36hzXz;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id n194si677115itb.2.2019.03.21.03.35.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 03:35:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OB36hzXz;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id v12so3941292pgq.1
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 03:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xg6Fa73rFau5DRgU73/rlvxeA5WnfyJ42cdeh6S/JDk=;
        b=OB36hzXzAKv97dyBTiFcp52Oc3Mw1lA2AqeARi+hAgJF0Wp2ZUAFfJ9MaE6iOlilTX
         y6TTQqv33ah7w1Cxz53Yge9ioECuOm9Uhi8tOpLUGix5hGJecmAwCKSDHmOn+jGbUk+7
         9Sz2x4WuR3PBGbmPaf5CzRPDRaQRP2T1xuo2YXyWn4pd/w8CBiFsVm3t61ODFICdmVce
         kKL1vi/Y7ADrugE3N1tldYOoROH2QbxAgjBLLyFvXBHwJVgvYaqV4uNPWFVqkCWUzmI/
         iFh7jWb9dBV32pd2O4BmOUikHB2+fqpH+3W76/VQDFdtaQZ6PJxMHIiul5gA3N5bTygP
         5idg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xg6Fa73rFau5DRgU73/rlvxeA5WnfyJ42cdeh6S/JDk=;
        b=CE/OqKEOf0zAG/oM1tXBxzwfshbsQKyjvfPs1iTf7fUyRsBCa7OaLrJr7YVF8L5MYR
         KNV+PpjvDkpah2T4ARvvVCxzYBEJsu98NgjR4mc8NxOPvqT9wYYVJ77HI8F6Fs1pAyu7
         sHIRjJXJKuv0WSjcEYm41aBP3jlexWWWT4DAIwHJ8R7CMn6lQDx823Yn4dF6woLRBoRk
         yz5zOCoZebOfD1HdGMXXOCu9Zu0B8vLL8hf15jU1W9q2ABGMEtEKS1lXO+oJNhjgJV+8
         zVavEWOQPp/aRUQYPXumJvsZo2mFrxsUrmJagVhFEMyuJI6Fi2xXQK/q2KVg9M375Qyq
         Uxmg==
X-Gm-Message-State: APjAAAX+h0wE8UXEfrPGAWITgJO9x9PNrOiNzwK/8cETYmXGWxKEwlKP
	UICsEbe2HryqXVAll6pRlxuHJjJd
X-Received: by 2002:a17:902:2c01:: with SMTP id m1mr2822564plb.186.1553164549392;
        Thu, 21 Mar 2019 03:35:49 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.215.204])
        by smtp.gmail.com with ESMTPSA id m7sm3780022pgg.62.2019.03.21.03.35.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 21 Mar 2019 03:35:48 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: vt6655: lines should not end with a parenthesis
Date: Thu, 21 Mar 2019 16:05:36 +0530
Message-Id: <1553164536-11317-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Adjust code to fix the style issue – lines should not end with a
parenthesis.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/vt6655/rf.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 600c920..60686aa4 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -834,11 +834,8 @@ bool RFbSetPower(struct vnt_private *priv, unsigned int rate, u16 uCH)
  *
  */
 
-bool RFbRawSetPower(
-	struct vnt_private *priv,
-	unsigned char byPwr,
-	unsigned int rate
-)
+bool RFbRawSetPower(struct vnt_private *priv, unsigned char byPwr,
+		    unsigned int rate)
 {
 	bool ret = true;
 	unsigned long dwMax7230Pwr = 0;
-- 
2.7.4


