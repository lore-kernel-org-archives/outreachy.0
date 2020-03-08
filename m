X-GM-THRID: 6801903865933332480
X-Received: by 2002:a37:9c07:: with SMTP id f7mr12171721qke.349.1583691655708;
        Sun, 08 Mar 2020 11:20:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ad4:4b27:: with SMTP id s7ls1790502qvw.2.gmail; Sun, 08 Mar
 2020 11:20:54 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuE5FHXIjItvOKpkRU3a1BQ/yCFP507m9fNbMnjKx4oIUWXl5RqXG5jL1VHLkkj9UHB8tmB
X-Received: by 2002:a05:6214:693:: with SMTP id r19mr11851131qvz.250.1583691654649;
        Sun, 08 Mar 2020 11:20:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583691654; cv=none;
        d=google.com; s=arc-20160816;
        b=Mz86Q4R9OiKA4ESgkav3adQBm7ChbQVhQnq0fNa+/PNNzjFOZ8FlH9OXM0lmv661IP
         qCy4fUYq2SuzMwqQygY4POVKhWjYmOcA/KUNs8kAsA7TT/JErYjDvmZGmkAe7q6xyhGK
         ftgYtQsWyJUSSze4zthb09K5kcgGGBTV04Jf+k9Vqx0gRUtFc2feLyL8zuI1ww1MZ7wp
         NNhg5fM51j5O4/V8FmO08jc0/lAwGoxo0Oy+SAVjxQtdGsq8oqvgY/kcZg86yusGj4JP
         4/a7QYRCZssvpgDW+wx59wU+13cEj0N4Mq0QX9A/v7uH12LXbPWLAWVRMxj9a6SszQaV
         p9/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=HzSRe51ntOO80sAMFcqyWK2TEbBzU5pvnS9ZfU++3Jw=;
        b=06TnTA70irx4h2dvhXpFPE0JuiLjej73xekZ+Dzf4b2JxmaJTgnu3QS52qQE5LHFg7
         TH0D7Xm4qIyLaL1obIVkCLzu/Cm4xvYXf535Arj0hcwIKfxogdF7FfPmTu3rtCzhNpCk
         Ki8fQ5FUvwsaHmVT8CC3ukveZTool1bp3eX4UKCZ8CkDf6Q2t3oefwd69aI17JSdNaiS
         3JazJfb9bkzsHbh9ACUgNMe159FGT4nxYfLP13G5At48GOPaI4J62qwBGWhsUZgq2iGA
         CX5VOxyKQgHUedVie3kGMVd5SWaQ5t53mXdXXimZc5k0FVkqXbYgoONli/PHXRv8Qsqn
         rAFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lec4ZJBF;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id 198si394282qkh.7.2020.03.08.11.20.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 11:20:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lec4ZJBF;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x533.google.com with SMTP id m15so3646564pgv.12
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 11:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=HzSRe51ntOO80sAMFcqyWK2TEbBzU5pvnS9ZfU++3Jw=;
        b=lec4ZJBFZEPUZwwnwwtptOV3XrUAR1GYd5occf+fcktA7BHeUBA/wDfbmk72TOZM7Y
         GLrIYolDkwosdtnQqzGSfTmBmKrwDCcfyybPQ7t7lkZo+ZLlSZQfEjLpchg8J3QfUYA3
         D9Ln1Ra+zOb/nHV+RFKCr8hpZ9SL/gOMzEAVAETxZJL1BblNilRXGrUEUj/EIR+7B2qr
         fMe4aDKOyIkyATjAfQtWe6N7Xp4mS8ZSYGPbWPnLfcFVUVr/H8OduWCEd2QWMFwc5gJt
         WfCj9xxZX8e9+M/Q1N456E7g3buiqTUCI301TJuyDcLOOJnbeSJzvPart5w1Gb1h4b4j
         iL4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=HzSRe51ntOO80sAMFcqyWK2TEbBzU5pvnS9ZfU++3Jw=;
        b=gtYRfkFCqoeclgoVxXVScB7YlQI76J4R3luF/ZSLPRw/OUCWNMA8YL1jPIRW3OjO2G
         hWX+8vjpUmPAbunF9bs3wc1/l6j1joSdGBuFVx7Sj/+orQh1aWCXsyn7SgfUHbm1lAQO
         IK13tMvf0gD6k4iroFgBkFLzW5bH5usSVLanT7qwua6R5h77vgwdPReZXexBpr7pDGSu
         H6crPcq2ue5X5MtnAKrWC36hOnd0JbzuD9qAT744hWhYeE5QQdN49YJ0iwXkYBoA9WY8
         /kMs9pqMZBn7P1zN9iziLObXH4Fq9oQVDCJfVErtbX6PL7l5PFefXdZwUbsPGq5ASrkN
         JC5w==
X-Gm-Message-State: ANhLgQ3GwQf5854/PvFaRRCagobLCVv1qLx0JlMnGPa26GA6dAvbSfJt
	vyYGV4NJU4CAJ3LJBtHSFIsKLruWACM=
X-Received: by 2002:a63:d658:: with SMTP id d24mr13242214pgj.340.1583691653697;
        Sun, 08 Mar 2020 11:20:53 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.184.119])
        by smtp.gmail.com with ESMTPSA id z24sm9169742pfk.46.2020.03.08.11.20.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 11:20:52 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: exfat: alignment should match open parenthesis
Date: Sun,  8 Mar 2020 23:50:46 +0530
Message-Id: <20200308182046.4402-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Align code to match open parenthesis.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/exfat/exfat.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index c863d7566b57..341c9192f7e8 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -716,9 +716,9 @@ int multi_sector_write(struct super_block *sb, sector_t sec,
 void exfat_bdev_open(struct super_block *sb);
 void exfat_bdev_close(struct super_block *sb);
 int exfat_bdev_read(struct super_block *sb, sector_t secno,
-	      struct buffer_head **bh, u32 num_secs, bool read);
+		    struct buffer_head **bh, u32 num_secs, bool read);
 int exfat_bdev_write(struct super_block *sb, sector_t secno,
-	       struct buffer_head *bh, u32 num_secs, bool sync);
+		     struct buffer_head *bh, u32 num_secs, bool sync);
 int exfat_bdev_sync(struct super_block *sb);
 
 /* cluster operation functions */
-- 
2.17.1


