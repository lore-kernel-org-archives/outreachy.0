X-GM-THRID: 6401822888020672512
X-Received: by 10.129.110.2 with SMTP id j2mr6491200ywc.96.1490540543015;
        Sun, 26 Mar 2017 08:02:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.34.208 with SMTP id i199ls3361383ioi.35.gmail; Sun, 26 Mar
 2017 08:02:22 -0700 (PDT)
X-Received: by 10.107.57.198 with SMTP id g189mr5997265ioa.24.1490540542428;
        Sun, 26 Mar 2017 08:02:22 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id a3si1226592pfb.2.2017.03.26.08.02.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 08:02:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 81so6130124pgh.3
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 08:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=IZIfRv00aR6l88C0/n3qIdXL+lD0kPNdZn0LgqvTvIA=;
        b=R+hRXIH3FhRzXvuuzZ+ebgigihnvBBfqDK1p8vhoChwsaumLIIhhFxYu/e74gW2BgT
         ph2FU9zFBwZ1WyZYSS9ISbtKDe5+3eTaD7+t5H162IDXBOgmVEEJBcmRCg/iMoXCP5Pc
         ty3vDz1BTpvVz/M/x38KzW53PCdNXibXdKkR3z4TZpuCiM5QyMZTRIvOVZ1A/+v8pVMc
         heRpd79R/OmocqzEDfO4tscH5BWJ7BaJtyGly+6yTjBph08FEXIdR1co2YRUBDW6NT3P
         SEcJdiXx5r32hiT08P9bVzZ3x26mmxLGoljrDe1/imZ2FOT6ca8LQCAaFMxtmXsccjmw
         WiJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=IZIfRv00aR6l88C0/n3qIdXL+lD0kPNdZn0LgqvTvIA=;
        b=uEObamZGNVv/DEYYdzjXvAicbCKKCXrOuQF4rjqdUToQhDusYSIqU1KvN9gE2YaFU8
         wbRpOp0x0zPBJHonUSzyP0decgXDDc11+mJOa+SXQAGWBvetjH0qOulONm1Fhm6X9ZqR
         Etoku2qcAijkAk+GUdJ8cDiMWgByHcVDfgSo8bKqgPporPSRM7p3ii1RTueMyov4z856
         UHXUba8csATmG9LAVlpFw+eOeIWcJSWfu2WpPL9RF5w0BSqhvhUkGyIn7NOGO7l/Hsfb
         vNgR1HaTpAmvLT6x2kgQtO/D6YCvfgb7KycYzfUtRyTIuW2lOxBxmoAsTpGIIP92+i+t
         Tg2w==
X-Gm-Message-State: AFeK/H0bVwKcJ5xCf0oFU0+UglmzeovK31Xj+r1fFAY25NMGm6RTYBASqiLP3BX14pt5kg==
X-Received: by 10.84.174.197 with SMTP id r63mr23347905plb.30.1490540540923;
        Sun, 26 Mar 2017 08:02:20 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.132.176])
        by smtp.googlemail.com with ESMTPSA id r17sm15555347pgg.19.2017.03.26.08.02.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 08:02:20 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] include: linux: pid_namespace: Replace spaces with tab
Date: Sun, 26 Mar 2017 20:31:45 +0530
Message-Id: <1490540505-21081-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace spaces with tab to fix the checkpatch issue,
No spaces at the beginning of the line.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 include/linux/pid_namespace.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/pid_namespace.h b/include/linux/pid_namespace.h
index c2a989d..80c0961 100644
--- a/include/linux/pid_namespace.h
+++ b/include/linux/pid_namespace.h
@@ -11,8 +11,8 @@
 #include <linux/ns_common.h>
 
 struct pidmap {
-       atomic_t nr_free;
-       void *page;
+	atomic_t nr_free;
+	void *page;
 };
 
 #define BITS_PER_PAGE		(PAGE_SIZE * 8)
-- 
2.7.4


