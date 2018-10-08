X-GM-THRID: 6609994215538556928
X-Received: by 2002:a0c:bd29:: with SMTP id m41-v6mr18156637qvg.2.1539009207133;
        Mon, 08 Oct 2018 07:33:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:1931:: with SMTP id t46-v6ls325175qtj.0.gmail; Mon, 08
 Oct 2018 07:33:26 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60YJOn5xvv0HneIyPU3j9CD220C2LJki8eB90HDHYtDc7+OzxvSeiuvSsv7FXzlmsHbkTvY
X-Received: by 2002:ac8:23f5:: with SMTP id r50-v6mr18300650qtr.53.1539009206626;
        Mon, 08 Oct 2018 07:33:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539009206; cv=none;
        d=google.com; s=arc-20160816;
        b=Jr/GuhHMIrQxprumvjws1TIPBc5UjUulDnm8wvcdJnv5RVZ0U7u8yxMUAGOvwKK17b
         kYoPBG+ugFTqZWWYc80khB2CXFdgkKi5yYt4CgmXsGvQTm7kyTNYzuNd4M4a8VDCnJbr
         YaqIR09V5csL8J+HCcKXWSNgY1BcufgjzTVmxD6x9Vu5GgY5KFGFanTeh66hUSSvs8bd
         9Hxq9CRuOCEm4948esgS69B+L9wsuaDoZNAKJPzyyMBGNiSNKwzzABCQmZKxA5hmG5I3
         iVPt/aTRFssOy70ble4Prf0Y9loD4rfOMspo6+D58LTqxHAnKqaP9T/sETm0ofXqJXw0
         7rNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=kGMM8DjPo+qyzllk6xHG8K5q84wQHMZ/RImEB4cSMmg=;
        b=UKW6tRhdA+j8N9mpLGcSsxwYV1jjKFMSEo7cLatURJ+GV6xmnECRRVCxigH27KSwbE
         QiBOp7WTssF2vQRMOGErgKPgaSt4ct79M80VMEYQpmZAgAUXeUrVjF1P3xofGV/EuhcW
         vBiylTn8pguHiHtBoEAnSLF45R0pvVlP8yFMLF7eTxpevDBfJDXKsf+qF5CbEKS05Wdx
         FDeX4Z78aPnfbZDsL3SKcV7u+bfvqqdK+88bYS6hLshlrz2dgO4pZj8yfqaE239zkXUs
         WiPi1gh7wt5WXxUJMIhux34km4SYwu8SAt9cM2UU3hIwOaXD4NOGzenPwmNWOZrVe7CX
         3cuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ogewWUCz;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id o2-v6si245576qtc.5.2018.10.08.07.33.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Oct 2018 07:33:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ogewWUCz;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id v5-v6so10154883plz.13
        for <outreachy-kernel@googlegroups.com>; Mon, 08 Oct 2018 07:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=kGMM8DjPo+qyzllk6xHG8K5q84wQHMZ/RImEB4cSMmg=;
        b=ogewWUCzurxFiRwPhNmngA+a5CGm4MS4D9Ly38lbRfvMIUPT5pvxRjYuNURZDWzGv2
         VZO8oZxfwkNUivhjAPt46FIfD3jUj2Vz16SbOsW/4gzqkO/FvChQJK/HnEwyTNerBcnZ
         iil3NuWtFKdGJBOUjaiO7rUG8CAkBHiIwm9QJo0WhZXZ2Wfd8kNPn7hMuq9+Gqu4IeRT
         82Q5Te0bvH9zXsg0j3+4e3s18ukZGHF+mtPNCSvReiiKWHSZByfZBM42ocdBGn4tt2BR
         3ObJ43W0qnMk5jich69cwYhzJnYhOA6MioYnNwq97DxVYoc92czPrcFiujgWO5OBtdvJ
         PY9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=kGMM8DjPo+qyzllk6xHG8K5q84wQHMZ/RImEB4cSMmg=;
        b=sg8qruOXcPQLC117vSuAZez6c23VHEfn+4eCYPinheRwu5DEPzJRtGAonuu3Vp+qFk
         DJ+np4ixcc5lW7emqLQQSkDZSCLmgFYlvaGfbCkTLkoN7H8E0uC2AfG6bJgd1XxDSL7z
         rVWUtxjVc+K76nP+Nq0iXLv1upJ71Ik8xQ7713MRlmCxS7moNdGbLKVkpx8077Ea/KTH
         aE9h3Vpu0Zgjoip3aV0rFZheRV/ucFUD7pnudB9JXqEmfVf7+1NhAXP8Hc+NbcFSTJgD
         JMDcmfSXssLT4N8FZnpAJfCnPM6a+Erun8HnOvTm3n+GyhWQXabZTPA2Z5NvOQ+TahXA
         rAVg==
X-Gm-Message-State: ABuFfogKjxmqHmyKUS8q37D/1ecDz8pn2W8dJBulqkjZlUDbANbehCwF
	iT1BHTwCQJygMPyWMlgGWRS1aRa/
X-Received: by 2002:a17:902:6689:: with SMTP id e9-v6mr24223014plk.115.1539009205631;
        Mon, 08 Oct 2018 07:33:25 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from veda-VGN-CS3AGH-R ([183.83.92.101])
        by smtp.gmail.com with ESMTPSA id k23-v6sm19851373pgl.42.2018.10.08.07.33.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 08 Oct 2018 07:33:24 -0700 (PDT)
Date: Mon, 8 Oct 2018 20:03:22 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: greg@kroah.com
Subject: [Outreachy kernel][PATCH] staging: mt7621-dma: Fix Spelling
Message-ID: <20181008143321.GA12062@veda-VGN-CS3AGH-R>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>

Fix Spelling in #define GDMA_REG_CTRL1_CONTINOUS. Perhaps 'CONTINUOUS'
---
 drivers/staging/mt7621-dma/ralink-gdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-dma/ralink-gdma.c b/drivers/staging/mt7621-dma/ralink-gdma.c
index 6d9fe175ea52..a430c8afa3d0 100644
--- a/drivers/staging/mt7621-dma/ralink-gdma.c
+++ b/drivers/staging/mt7621-dma/ralink-gdma.c
@@ -47,7 +47,7 @@
 #define GDMA_REG_CTRL1_REQ_MASK		0x3f
 #define GDMA_REG_CTRL1_SRC_REQ_SHIFT	16
 #define GDMA_REG_CTRL1_DST_REQ_SHIFT	8
-#define GDMA_REG_CTRL1_CONTINOUS	BIT(14)
+#define GDMA_REG_CTRL1_CONTINUOUS	BIT(14)
 #define GDMA_REG_CTRL1_NEXT_MASK	0x1f
 #define GDMA_REG_CTRL1_NEXT_SHIFT	3
 #define GDMA_REG_CTRL1_COHERENT		BIT(2)
-- 
2.17.1


