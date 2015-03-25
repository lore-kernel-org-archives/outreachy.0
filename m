X-GM-THRID: 9842395709440
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f3d42db10bb65f32
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.164.171 with SMTP id yr11mr2538441lab.4.1427317504679;
        Wed, 25 Mar 2015 14:05:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.78.8 with SMTP id x8ls635257wiw.38.canary; Wed, 25 Mar
 2015 14:05:04 -0700 (PDT)
X-Received: by 10.194.201.10 with SMTP id jw10mr2543346wjc.3.1427317504312;
        Wed, 25 Mar 2015 14:05:04 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id c8si1034196wiw.1.2015.03.25.14.05.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 14:05:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id w10so56614905wix.0
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 14:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=CABfBCX0qjcLtRWfBMVOjpw5wUCGhHwQ4hlxwpUdnKM=;
        b=rNI9bD1Z0IE9k1uwgYrU8kjpi+uYvhj7Wckgb8uYkgruRtSwvuE9aTMLAb97Geklz4
         +Z3AVv1QgqoLcKjq2lr4lVfXocxkMKl8iqcidL8PIuW1BDFzcBsJ87DAExICBFlbwo+B
         oiY/pHtT1UYLPl1UY4sGUQ/elxG41OEhSwhl882cMqSoEASC32GLVcneeYDWPOjEDS4h
         om55ymiMFY1p7LauFhC2S97zBSmBadDXD6TTaWtq6IBwfZz+T8dCzV1ysG/Ptruv/rsq
         0QBTlmcm4UJ9v1N5c21nGXsg2Np/YlHeNlOKGh7Oo2EmwTzD49IwOzMJKD0zdJYeazg0
         J5ww==
X-Received: by 10.194.76.146 with SMTP id k18mr22042958wjw.115.1427317504244;
        Wed, 25 Mar 2015 14:05:04 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.49.71])
        by mx.google.com with ESMTPSA id o10sm18597283wiy.18.2015.03.25.14.05.03
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 14:05:03 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id 4F04EC1FFD; Wed, 25 Mar 2015 10:54:33 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 3/4] Staging: iio: add blank line after function declaration
Date: Wed, 25 Mar 2015 10:54:32 +0300
Message-Id: <1427270072-4975-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1427269782-4769-1-git-send-email-hamohammed.sa@gmail.com>
References: <1427269782-4769-1-git-send-email-hamohammed.sa@gmail.com>

This patch adds blank line after function declaration.
Issue addressed by checkpatch.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/iio/accel/lis3l02dq.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/iio/accel/lis3l02dq.h b/drivers/staging/iio/accel/lis3l02dq.h
index 0a8ea82..3f24c62 100644
--- a/drivers/staging/iio/accel/lis3l02dq.h
+++ b/drivers/staging/iio/accel/lis3l02dq.h
@@ -194,6 +194,7 @@ irqreturn_t lis3l02dq_data_rdy_trig_poll(int irq, void *private);
 static inline void lis3l02dq_remove_trigger(struct iio_dev *indio_dev)
 {
 }
+
 static inline int lis3l02dq_probe_trigger(struct iio_dev *indio_dev)
 {
 	return 0;
@@ -203,6 +204,7 @@ static int lis3l02dq_configure_buffer(struct iio_dev *indio_dev)
 {
 	return 0;
 }
+
 static inline void lis3l02dq_unconfigure_buffer(struct iio_dev *indio_dev)
 {
 }
-- 
1.9.1


