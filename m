X-GM-THRID: 6810932653132349440
X-Received: by 2002:a05:6102:2087:: with SMTP id h7mr682158vsr.226.1585793833634;
        Wed, 01 Apr 2020 19:17:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:c496:: with SMTP id d22ls359029vsk.8.gmail; Wed, 01 Apr
 2020 19:17:12 -0700 (PDT)
X-Google-Smtp-Source: APiQypK/iSV9Fxe+oqktuzmoDl3FYbBkMmRVTvvN0634tIVcv4YsmUnYmv2c0bTqwXV92yvzV+uO
X-Received: by 2002:a67:d18e:: with SMTP id w14mr651589vsi.138.1585793832434;
        Wed, 01 Apr 2020 19:17:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585793832; cv=none;
        d=google.com; s=arc-20160816;
        b=QIwWnsL15sBeoSqDMbDoz3wNpcfobypCGVl37uiJDjnhnmW9s+F2Zauq38GDTRc+W5
         zsTvdcTYr82QuR5hOirfXtuDysSY2ywcHYE04F3IwXtZ9F4yptZg/O392AVtZAMsDZVO
         2enRxUGs0u2TigAgHKCSDEpi7RyLqJTNoQhNidZ8qg7MaiNFFj5u2Xx0Kujlnr1n7uvB
         iF9oYGFUI4iJNo7suiCAc0yCvnyJYzucEIKE0mYpPQdJ0+J3+LeewGswu3uHbZDmCIm7
         exzC3KFJMXzM+jKUN9R7Pfzi7oniIsSsGg160rsGeeMeq9zj/IiEfqLGHMCblEKv+lN7
         hpAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=EJrKI3sOaXRTv8Ad0U4S14lgWrsWnjsKnTjS+Kfpaeg=;
        b=WITj8MS/e5WBzseHs3hyesztG8zSKhpYpYYZuRX55drIEJzlC4YKnDDBDnW/AxGIzJ
         5YcRnilpgy0s7tsw2dxDK3pWhjgCoq/Tz1UZJUo4+MgE0AMcLWXXEVorJcXEgMT2kz8a
         qV3UvqkoSRTYYf0Gi2tl4PxvNAv5vVtQMeQayvHIUfFTRhwfhwKnmnxjIH5CvTdjFTIo
         RR1yxkIa+8ko1K9z1VukUzplv/i4jDdksz9GYngi0iGKfZQCO7Cr2ii3SAKXtCtdmeh2
         jYV2CthdEfoQcklK61kpCwYreoc4y4kjfFCjfGNAbzsQvWEV4B2AhY0Y3JyUqpo9+NSQ
         Zs2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S7DVZrtO;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id 203si283890vkx.3.2020.04.01.19.17.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 19:17:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S7DVZrtO;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id h8so1112221pgs.9
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2020 19:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EJrKI3sOaXRTv8Ad0U4S14lgWrsWnjsKnTjS+Kfpaeg=;
        b=S7DVZrtOCYLWFxSlZDxASKnuu6BLf21ZDe1ULQhiC5q0zG4NKGkp5yQDFHTBoKasDY
         8uJMxCSW/0QQAtzb2SPx6AL6kXD6tkLqnhuyx2XAeqMLd4LaYSNE386Y6tnYpD754WbU
         RNoRloJ3fdaIfilUPxvatcVvLAK4zMV+GMvu63+OLEjYlZtx1JQhbfz8AL+T5rnNoXgN
         W7t0BAqzKKJv8uPLbcoCvw1GMVGtvupji5eXEMvJnN/QL4ypFJRHvPe4b7ZquT5ICZgQ
         50TRT05Z96IrORh8EzyKlgB8is83nqJY66ACg/C3b/WQugXvVSBWBDAAQycSEIVfVFXk
         tYFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EJrKI3sOaXRTv8Ad0U4S14lgWrsWnjsKnTjS+Kfpaeg=;
        b=Q6tBOA1NTd1RbNDJ04vMZ+Rif4AFiVy3/HWMpqJdw0byOqt0aA5HpPItRtYQnlnmcE
         b05qQ1iSUriOb37UUlgBSW6pp/A7D2Axc0P8S9dyvLx//OglzAREKaTJd+9O/+6i+4Yg
         S2CJ5mRmY0OJM3SDaUFl6ROeT6DEIKQpjM2rNma1hdOc+YlpSAZuaCSipnQKGACL5Esj
         3nP71uFODNPbrfpfENqL5zcc1M9YwxNGeo/WlDm/pMEMetf6TfhLFvYHzup+soZe5XHZ
         EaGzsClkXQlvl+OXpdD3GTp7c48iJCMBF430mOKSTtFn8UjA6nnlwHUJMg8+NYsVXyi3
         HXig==
X-Gm-Message-State: AGi0PuYKNwJN6gNbTBtYYrvlCCPY6DboMCH25cPZdosJClcZiEzH8I2P
	4NaRyFE+SYovU1hzJ46pogZ4RKQn9BbK7w==
X-Received: by 2002:a63:e558:: with SMTP id z24mr1154919pgj.368.1585793831273;
        Wed, 01 Apr 2020 19:17:11 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id c1sm2595336pje.24.2020.04.01.19.17.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 19:17:10 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saiyam Doshi <saiyamdoshi.in@gmail.com>,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH] staging: emxx_udc: Remove unused code
Date: Wed,  1 Apr 2020 19:17:06 -0700
Message-Id: <20200402021706.788533-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unused code surrounded by an #if 0 block.

Code has not been altered since 2014 as reported by git blame.

Reported by checkpatch.

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index 9c2671cb32f7..bbfebe331033 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -9,12 +9,6 @@
 #define _LINUX_EMXX_H
 
 /*---------------------------------------------------------------------------*/
-/*----------------- Default undef */
-#if 0
-#define DEBUG
-#define UDC_DEBUG_DUMP
-#endif
-
 /*----------------- Default define */
 #define	USE_DMA	1
 #define USE_SUSPEND_WAIT	1
-- 
2.25.1


