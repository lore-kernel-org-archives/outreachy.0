X-GM-THRID: 6669194328626167808
X-Received: by 2002:a17:906:16c6:: with SMTP id t6mr1843480ejd.6.1552915278793;
        Mon, 18 Mar 2019 06:21:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9107:: with SMTP id e7ls792437eda.9.gmail; Mon, 18 Mar
 2019 06:21:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzSD/ozfVnrdFAb8kWN8pxgCHFb9yWhu4/WeK7rP/FhwMN5SLT0lBxxSL8irNnHuAw3osjJ
X-Received: by 2002:a50:8692:: with SMTP id r18mr1275200eda.9.1552915277917;
        Mon, 18 Mar 2019 06:21:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552915277; cv=none;
        d=google.com; s=arc-20160816;
        b=snSGl/lwMvPB/teEUESpajJ/Fb4k1LFzPT/vX9Os+wgkNw4k2OGke6FJQzHJOUAjVK
         mCuTNklUX0z2Xm7aRdwvIKYwHtHQDQ0Ux/XE3viWp0+7jHB/H0MO0vfs+ufuxjEr2jmI
         BNRyJg4Bfs8Gbq5pBEJPBIbNC5/ssQxhYcdIjCe2vP2NMSUTMCyWQYYa0K9tvAasxjdZ
         ZcrRxut+MRfdBpjFmv+DNmrMPOR0mYNsoSqs2+Bcfv7Ca6bMW6EjE9j3wERuq0/8qhwz
         ncQYqSqZ8csVJqKYJfOIovY/mzdUrZR6cC9721BoMpwmDzzcvuCY9+RTEdU+VcLN9VMm
         ZIyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=9dvxCYXxXyVji1QvqWxUqVGtWc2KPci3ohWTLhkvRqY=;
        b=jRNH1oTXaS9648Dw1WtsV2f4wsV2E4Xir44T9znzY2kizkJa+s1IyeEulkk6IBXJ4z
         UhCVT0SdCZpDOg6ZZ7YvWamjseFoB7jUhbONj9TRzQp+jKKUcmHSUFwMu3wGZ+GvLzF0
         4GRw4K6rPdld7C1wH3aBmCs8+JdtdMIvw83whZwL7W2JsQJFJuKex7YYjdkfdo4TSHI4
         UCTeZt35lQTlRnuVEI6norh7ymh+DoLWbx7NTZ47eSIXXdJlIbPp7I+XEG7A5eklsUhb
         SkUwN566Szbqi34xnoLzzoiejRdWNMcNGNyw/wQ3kmsNfWgGqbHwoLLp71NriL6s+uio
         awzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WW56d6xv;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com. [2a00:1450:4864:20::335])
        by gmr-mx.google.com with ESMTPS id i16si438132ede.0.2019.03.18.06.21.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 06:21:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) client-ip=2a00:1450:4864:20::335;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WW56d6xv;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::335 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x335.google.com with SMTP id f3so13114987wmj.4
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 06:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9dvxCYXxXyVji1QvqWxUqVGtWc2KPci3ohWTLhkvRqY=;
        b=WW56d6xvB9yF9dmjC09PozZ2EwiCvQvUewieQOtTs1tWjo8xgBVqEWZ/Xg4/XzGAH8
         NoEBMAVCT7oF/KbdeBhguwvmy9geXCaxB92R638ww1JQdPW2iIBG4tZ5a8cuWta40wAd
         DmhOA2ayKASPR+j+BZLZgDxKNNDOcvsSFjl1/EOIZupxqLmik0Zt/AqoEZhOHw98mQs1
         XNgd5vBlErWa8E09XB3RM/xu7mCOyWX5gWgMVsb7ZFoHmuO9ACITwGmnnO2RIbOF+hdM
         uViMXIgCDAA3GiUu25D+PcM3v8onAP8aZnhq2lUqhXvJRbfXvAWHodFc34OcuzzvLUcM
         2BHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9dvxCYXxXyVji1QvqWxUqVGtWc2KPci3ohWTLhkvRqY=;
        b=TUSQ5rqghhi9VesPs6Ie/ZE9vgDGDI+WDYnq4NsNHNUIHt3atY+9hGpiyTRkl3HGva
         V1C+fL9fxipecQgPBbR/+/3xBz+jBXcicz+DnkqP4vB54SqS5y8rx08klQyB9Vko4QLw
         lOOPzafrynswtBlXZOlHy0Vg18zkw+BubtGcDDT6+7HkqYgWem0+V+3NvlLjbZ3hZ/PO
         Es0a2o3mvEKAdbWtU9ACns4ROWiRO2FU9dMNT9Wwjp9SqPehQXXiF5wjoI5u8EiD9pcM
         41n/nW022ZeYDQvZV0Nss06lbPIpUQHHRyBdo+t3swJb5907pRbhHa0sNVPJLPA3SDyO
         YxDw==
X-Gm-Message-State: APjAAAUR2G5uxOGxhaINiM+6o0S2Kdx+UQFIAR7mYGEjCYEa9YdUJmxb
	GosSlVEz6iEQmwyIGyR7Jw==
X-Received: by 2002:a7b:cb8e:: with SMTP id m14mr10355035wmi.64.1552915277596;
        Mon, 18 Mar 2019 06:21:17 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjatsu.public.libraries.mcc ([91.235.65.22])
        by smtp.gmail.com with ESMTPSA id p12sm6253072wrx.50.2019.03.18.06.21.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 18 Mar 2019 06:21:17 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: fix printk KERN_LEVEL facility level warning
Date: Mon, 18 Mar 2019 13:21:10 +0000
Message-Id: <20190318132110.5081-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace printk with pr_info to solve checkpatch.pl warning:
 " WARNING: printk() should include  KERN_<LEVEL> facility level"

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index f653c16eb4e5..41ae24ab5d08 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -99,7 +99,7 @@ static void report_char_chartab_status(int reset, int received, int used,
 			snprintf(buf + (len - 1), sizeof(buf) - (len - 1),
 				 " with %d reject%s\n",
 				 rejected, rejected > 1 ? "s" : "");
-		printk(buf);
+		pr_info("%s", buf);
 	}
 }
 
@@ -744,7 +744,7 @@ static void report_msg_status(int reset, int received, int used,
 			snprintf(buf + (len - 1), sizeof(buf) - (len - 1),
 				 " with %d reject%s\n",
 				 rejected, rejected > 1 ? "s" : "");
-		printk(buf);
+		pr_info("%s", buf);
 	}
 }
 
-- 
2.20.1


