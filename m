X-GM-THRID: 6675276130832875520
X-Received: by 2002:a25:50e:: with SMTP id 14mr2550258ybf.35.1554212870994;
        Tue, 02 Apr 2019 06:47:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:a448:: with SMTP id b69ls207577ywh.16.gmail; Tue, 02 Apr
 2019 06:47:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy8CE/LA6V6kwTotH6jdVfk9xCQYtgnzl6+lJWZ8EjQsPB6io1X6d1Jc2+JSCNJ/Cvgag/k
X-Received: by 2002:a81:6184:: with SMTP id v126mr7757937ywb.17.1554212869936;
        Tue, 02 Apr 2019 06:47:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554212869; cv=none;
        d=google.com; s=arc-20160816;
        b=A4VT9IydMS63mvDS7MqO27nFy/ESEVVkpx2C1VC2AbwsPg1nUb2+7l+31InUZKTcb3
         s5+2QFIYvLN81gnedeKvIUNlfyykfaWXbeZ/SmDnnfLuwepfGthV4EB0aTIuqQzQW9FL
         m7e7hg+u6lpHrwGiFNy0BJ03iL0pAj/BjoQjqRieY+gLz6lQZzbUcd6BEYNkkvEA3qx5
         8i5NjsDxUYlj4GR34DRPOv9PEUaA9fz9yYTlU2boajRDJ8tPEDyVRVi7aGGp1YJxBv5C
         d7sF255Jf7P/0wI4HvozQZBoPwVlWMoC2P8y0ATAqwFWBnGuA16DEiyLtNQaWgfMqQRP
         CHag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=+xV2Ms2+uVmZBCA7EZ2eeiXkjlT1YdMryp1K1l+hVFQ=;
        b=0ONYwwHAC0xCEbeMRSJBlBKW2ywK4Y4tOf5bAofsr36d7KV2nS88CReHSWGVUr+SlX
         BAcmvj+Sm3zRz42zqIgJj1egqUZpcpphhHdDWpeBeKKnGoaarnWD5J8MrzJXYocfFNV9
         0YuCgTck38rNJGZxlVy2o/sqEn5uwoK7u07+w3GZeCUvtSKdgJ2jIiORlRf7XnZT38L+
         U3p7p+Xr4VkUBWrlvhtjURH50Hb97Nok9/JShJaxMWmxOrrAmRCaX0BrexFgpQ2xhWC0
         iR/CIt03M5y842HfKDlbfYMToKqniTNEYaqwOMeqA/YTX1o2uBy676ZRLdfP7qdm+JFv
         mspw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g2IA957w;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id e23si712520ybb.1.2019.04.02.06.47.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 06:47:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g2IA957w;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id e6so2249207pgc.4
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Apr 2019 06:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=+xV2Ms2+uVmZBCA7EZ2eeiXkjlT1YdMryp1K1l+hVFQ=;
        b=g2IA957wSQP7NKlv1QJ6nBsj1B2W90efQyWumIXOLmfIOaNf7jMvcTBLFk0BDv8++0
         vvAesHnU7cIVoMbKvJeKVNSnho/cJUzZUU068yXjQGlh+BH6qNzCNDJWhLUPIA4/EyPG
         a12xBMQYtSOas6jbNqb8OR5VLgyLZra7tzhJDc3oD/V/BJM/1kwEVvWJvzM80PZTxkm+
         kgRPXQJFE22YOAEvoL20VydYDxjbJfl1afxNsiQXOyqRAN9YG/Ur+BMOrsh7LRYSbfkO
         6k6x0TohZUQADLRYs2mGnGBcbfxbeTG3HAoGsufLPoayNTJTe2JUsI2Tgws3fXcopoaS
         Du1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=+xV2Ms2+uVmZBCA7EZ2eeiXkjlT1YdMryp1K1l+hVFQ=;
        b=JHYKMi89iwYLWgxQSJsU5mz9C4EAw42FGDOE64XWaG/ZM2Ff44sGMyYlz3rkdB0L5v
         GAaIqreyjyVdvVSSwC6rdLinZ7GUSPuYDFfk9Li0aGqZDcprBUjYP3PTVinPw7V+e+pt
         Li3etPTZui0zQQ9hkOfapja8THiVE5w9sZ3H675STp8RjZtSELu9DFBFPDXkWNccPwpi
         aL+qrZ6Q4XSIn1TDA0nDIge4ueJJmKpFPxyFZOoejUG132BNb3Pr6inCkNCQuQNX7Vr1
         oQne1wCKdzxlm/rbvGMrB55EEq9dx0kDqrpr7U7Q1JujkOuMtAU7vqLqxJn48CfSRy58
         lgEA==
X-Gm-Message-State: APjAAAVB2cyCljpPO21Ux94lqC9ELK+5sdLJWsZRvyMfy6fB5fVdaCFD
	ivblT1IvgI28v3Uv4z3i64K7iAlN
X-Received: by 2002:aa7:9219:: with SMTP id 25mr70472986pfo.205.1554212869303;
        Tue, 02 Apr 2019 06:47:49 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.213.122])
        by smtp.gmail.com with ESMTPSA id 14sm29392779pft.137.2019.04.02.06.47.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 02 Apr 2019 06:47:48 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v2 1/2] staging: rtl8723bs: core: Replace bit shifting with BIT macro
Date: Tue,  2 Apr 2019 19:17:29 +0530
Message-Id: <e85c9986cfcf88423d83310b70bb785e47add908.1554212525.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554212525.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554212525.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554212525.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554212525.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Prefer using BIT and replace bit shifting with the BIT(x) macro.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index ebb45ac..254dd33 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -3958,7 +3958,7 @@ void issue_action_BA(struct adapter *padapter, unsigned char *raddr, unsigned ch
 				/*  A-MSDU NOT Supported */
 				BA_para_set = 0;
 				/*  immediate Block Ack */
-				BA_para_set |= (1 << 1) & IEEE80211_ADDBA_PARAM_POLICY_MASK;
+				BA_para_set |= BIT(1) & IEEE80211_ADDBA_PARAM_POLICY_MASK;
 				/*  TID */
 				BA_para_set |= (status << 2) & IEEE80211_ADDBA_PARAM_TID_MASK;
 				/*  max buffer size is 8 MSDU */
-- 
2.7.4


