X-GM-THRID: 6801809120095633408
X-Received: by 2002:aca:4f0f:: with SMTP id d15mr8261529oib.78.1583674012626;
        Sun, 08 Mar 2020 06:26:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6759:: with SMTP id w25ls428148otm.10.gmail; Sun, 08 Mar
 2020 06:26:51 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs3O66uQPStQOP2u6uPjPkIBmUUj+DJtcVc4abE3T6Og+HbKw13WvqdXKaD+uzDBWYqf8N3
X-Received: by 2002:a9d:70d5:: with SMTP id w21mr10022249otj.65.1583674011435;
        Sun, 08 Mar 2020 06:26:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583674011; cv=none;
        d=google.com; s=arc-20160816;
        b=zGcvSCk7QdECBJpPMBay+XineYq5YynCINhbRh+YxjhIp8aLlREhRTH7j1BtAKNWKJ
         VNgfzy2CCD2hNeJO3qlZWPQWSmvK1W6AWyVQaS9z1Dx6hsBEkqzQ4AJ0RgLWAbMk7tfd
         mf+VFvqI2QOnGD9oUfTdr2b/GIvwgHqsdjeC9bmmhswyYUuFJMYE7jd1cWB3m4lNwSu+
         1nr04kmT78y3cc6zS9TwQyM/rOr/yxXU08+5/NNzvroyJvvXAG/5+hU3aqw9jdwrUSe/
         IHjuK20jGVP0V2Ba4vAaooJy2bECoMIU7jmIZEzArAr2tirjS2Bt6YwKMr7N5sm8EqdO
         5t3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=+z4tJlVlfaHe2mn4T7mBqUWOCBvsFjqQxYEq9oXyahQ=;
        b=dv3rmJkNqzXvVfh57x58Uz/Tc2bTcOdUqWDkecicu5t2Lt+EJx24akr5g/djkSlXZ6
         trcQdOVaU8RqJ1UGdB/zJgcH1c4CRBJ12SUVpX8jfC6KM+JPWnQtGN9n6Ljz+3ywVJez
         wCeA8g1HBZ1K3d3et4URNEK6u3oysy+j5foxecL87LJ3JnSu2cMZWLbwVHRC8PT8wGjG
         OoDg3ZqzXVTJNtwUoc/gwqI6YAk7BKLmHBBzftzvct+RwYOnxxsgW5H9DUQ/qoCV2ILv
         EDooyO90rebBpqouDEBvZpr1y0FGT7ziefFfizX5A+C2JFlKh90uIDcvJVAnrS+qDjPI
         Rzbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TtZ3MLLX;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id z203si153178oia.0.2020.03.08.06.26.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 06:26:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TtZ3MLLX;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id np16so3173925pjb.4
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 06:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=+z4tJlVlfaHe2mn4T7mBqUWOCBvsFjqQxYEq9oXyahQ=;
        b=TtZ3MLLX24bUgGhGeu1xhNKTsBv6zm/xhqc8X4oGE5opr7bRlaq1aVDRsGraocqOvD
         ljTGeRY9w+dYPQPlSCuU7VFhbHjZhOGTdbRHmKS6uRf/iOHroVC2jfae0u9veZ6JwOpl
         bnsTiM6FoqEoe7HwsJKVsGJJ3awA5CZLgQPHBHNn8MlL/mVtvfxhTIVFsBsX0FiZc4i7
         yg/Ab04k0BwM63Y6jHPBoxqOAa4FV0ryaEinTLxwgjgl/4BAdhtmlyeeUHMj5yI4srrV
         s92Yo80Q6yRIZql1Sk2Alley2wO1SgFUkGDs0BIaY5Uh0JionbQLna3LVYxEdQ5tVAXw
         JNnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+z4tJlVlfaHe2mn4T7mBqUWOCBvsFjqQxYEq9oXyahQ=;
        b=E1NP5e/UUekfiGwkuLdWwDpwoTSEBm+lkSPwo+ABd7MKAM7KhVz2GdgqH3yacoEv3Y
         TK8IdgS/wp+W2yE/r00dMHz7K5q/tgNZYPg8dhfrFwpvnWJD15aWWMtDZqDuWUbpS7Kv
         OJCQ5Ky0mkrtwqNcqIM5id7fXFmMf6RVak8APuLpuSDxtiZwSfq1A59n+kYaCYaTxjPI
         RtANswxEsybE/pTr8kPScPeiT7ZahKazVW/xkNckUaOD0NSppoyR9MQQgbajPgXU/ysF
         gK/1u9hgWvitkADThtrfM4fDCoUoI+Zw7ZNyFIoB0y27aFdq+ouKeKRYIE43WFcZwmzG
         iXPg==
X-Gm-Message-State: ANhLgQ1Tx1Q5W2Q9TTmAns2/0Vy6Z7IRLK4oO01ApqhegaHVu8lCpFNN
	Lo21ofO6T+WUyJCMbCGdvDw=
X-Received: by 2002:a17:902:d705:: with SMTP id w5mr11804721ply.68.1583674010769;
        Sun, 08 Mar 2020 06:26:50 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.184.119])
        by smtp.gmail.com with ESMTPSA id 191sm35009430pfa.142.2020.03.08.06.26.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 06:26:50 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH v2] [Outreachy kernel] staging: greybus: remove line over 80 characters
Date: Sun,  8 Mar 2020 18:56:43 +0530
Message-Id: <20200308132643.4256-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove line over 80 characters.
In this version-2, comment and field are grouped together.
A whitespace is added after "bi-dir,".

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/greybus/arche-platform.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
index eebf0deb39f5..cc5a52fc926f 100644
--- a/drivers/staging/greybus/arche-platform.c
+++ b/drivers/staging/greybus/arche-platform.c
@@ -47,7 +47,8 @@ struct arche_platform_drvdata {
 	struct gpio_desc *svc_reset;
 	bool is_reset_act_hi;
 	struct gpio_desc *svc_sysboot;
-	struct gpio_desc *wake_detect; /* bi-dir,maps to WAKE_MOD & WAKE_FRAME signals */
+	/* bi-dir, maps to WAKE_MOD & WAKE_FRAME signals */
+	struct gpio_desc *wake_detect;
 
 	enum arche_platform_state state;
 
-- 
2.17.1


