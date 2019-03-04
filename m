X-GM-THRID: 6663863789016842240
X-Received: by 2002:a17:902:820b:: with SMTP id x11mr5137106pln.29.1551662394947;
        Sun, 03 Mar 2019 17:19:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8a85:: with SMTP id p5ls7247165plo.4.gmail; Sun, 03
 Mar 2019 17:19:54 -0800 (PST)
X-Google-Smtp-Source: APXvYqz44DW4RIcU3k9vPMiHlX+asanvBZrP3lS9PUc8oO8U6vmu6+IaMZa9eN5leF+Kz004lhqt
X-Received: by 2002:a17:902:e28f:: with SMTP id cf15mr5281753plb.36.1551662394068;
        Sun, 03 Mar 2019 17:19:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551662394; cv=none;
        d=google.com; s=arc-20160816;
        b=w7ezCEWij8EQ1q0vOwutMzdxCUzI6Q3EF+1vrMA0ESG7T0zVFRUwYiJpERwzF/202J
         iKlVsZ+DzmKygq1llQf97IVUB7iXk9jJkmPSC6p4Z3I2ThrGCqlPTrMKEFGZbC+IZ6CR
         rtb5getrACh1c/yS8WntPgkmIoGufAWHXPzQfo7FbIqaoQbCyEWw45EJ9kwPRSQeHGOJ
         lunbzQw4TSCSy4mvWioTBzfoHT3neVCX8F6nc56/eSCzu+6w4PZc6GWFXUwA//sO8Biw
         EyQeweKFZPyFJN+h7XQOYyQ8qyN9t0wXYRay30zqDwrQtnju9WAaMr+xYt/OSBy7rEU5
         vZaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=oySmeK+4LTsIkxWuuqQSj9VW2hqi3XgYzXHbQAz4W1o=;
        b=u7gopU0iTWr6oODxBHvODIE+ORUsnvGj410mCaLNu3EwpKQ0wcpeUD14KKdDGshK4t
         o9+hJ3/pGumhOI4VDZb741LhrVxPSYl8N1DaF1qChbunT8FPAwewTv2Y69tUZyEBwvgY
         PMreXHkx7bSu2sJslyQRlRSMojM15IIMtI1uJ99SO6WdQj9wSta1TDXDh/5EHMx/tXLR
         ZA4x/f9G4To/JNVt3rRs1Iiid0acGz5fLF3gZkJrQIVTJQQPjJVgd+HIzgAUvsg2FCxt
         YQ1YbYTxk3pCkz7En0K/rm7sWwByjeyN2dN68nCyFzDPxQqtJgoOovwhV8EF8zbPeLBj
         RzZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VFuOzpuN;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id c12si250046pfc.2.2019.03.03.17.19.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 17:19:54 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VFuOzpuN;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id g16so2588380oib.1
        for <outreachy-kernel@googlegroups.com>; Sun, 03 Mar 2019 17:19:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=oySmeK+4LTsIkxWuuqQSj9VW2hqi3XgYzXHbQAz4W1o=;
        b=VFuOzpuN0krfvEORd32saupu04rN45h0eZGm+K2FZ3vyhdFIgWiKJ32wmor3MP/L/i
         LhPHTnntDTCS65lIVJJjfSztUD+wvZAYhJQurbQufphbsi3S/M/mLxkFMD+cNjOxHXvt
         26Q6/IvkOpZmANlePh6puuJntgX9PwydFi7nC9fBpW7ymDcD6HFdASnOtDa4jjJVLxaO
         xAIt0UAdwI8HJpTQ1cLEY27wwHVAoqYxHK76hyYgt8vYU0rJ8A9volf035GBgpfTm7aj
         wS/e0bRG+G83e/zpWxDiek77IHDLA0m0BzNVBBUPhbgWY+lqpJ9Dy8Xl8fiXX58BplLE
         rf5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=oySmeK+4LTsIkxWuuqQSj9VW2hqi3XgYzXHbQAz4W1o=;
        b=jACuAqvSlVmxE8LOWs2CoaVENt+43Zsxl2RYLg0ZXlUIE+ExseyuZPohSjTP2bJEVx
         PGNmx+NKUYISIgDm5PUdtXZSZjqy3wxb5Du9oZCnXyYMMxAijGtBSfrE1m0l1P+IiacH
         yZ0JOxzQEdOYdc6OVBFB1xyBlfxgURoLda1xgphNcJgr9rZIAKBMcCFtOWlbpu9AIIZG
         Xv6LG4eEuWTak/h4A1a5/a+onbZiopl2Df3KLc1dwqUtqYIk+cCpo+gNio8km0+nw8SA
         EosEhIry7rHEWxCLnwCvc9YwW+QwuVv1Vo2ncTVQ5QeITbhk4FQ5sPyVy477FLSKlYlH
         memQ==
X-Gm-Message-State: AHQUAubJzJBcxkwxJrsXIALxIcXB2OZFmHp93pnGf6N78kJX3S6v7Qte
	DGsHnKqqvVF2i6hdLY6CBgpFndI2A/k=
X-Received: by 2002:aca:6cc9:: with SMTP id h192mr10694518oic.161.1551662393495;
        Sun, 03 Mar 2019 17:19:53 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id k15sm2022221otj.26.2019.03.03.17.19.52
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 03 Mar 2019 17:19:52 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: vt6655: Fix line over 80 characters
Date: Sun,  3 Mar 2019 19:19:49 -0600
Message-Id: <20190304011949.17148-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix the warning issued by checkpatch.pl
WARNING: line over 80 characters

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/card.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index d71022aa3f86..6bbbbe1314d5 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -44,7 +44,8 @@ struct vnt_private;
 void CARDvSetRSPINF(struct vnt_private *priv, u8 bb_type);
 void CARDvUpdateBasicTopRate(struct vnt_private *priv);
 bool CARDbIsOFDMinBasicRate(struct vnt_private *priv);
-void CARDvSetLoopbackMode(struct vnt_private *priv, unsigned short wLoopbackMode);
+void CARDvSetLoopbackMode(struct vnt_private *priv,
+			  unsigned short wLoopbackMode);
 bool CARDbSoftwareReset(struct vnt_private *priv);
 void CARDvSetFirstNextTBTT(struct vnt_private *priv,
 			   unsigned short wBeaconInterval);
-- 
2.17.1


