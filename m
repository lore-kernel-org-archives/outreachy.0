X-GM-THRID: 6753896393761357824
X-Received: by 2002:a92:85:: with SMTP id 127mr15205888ila.118.1572643330666;
        Fri, 01 Nov 2019 14:22:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:9e06:: with SMTP id q6ls1573728ili.5.gmail; Fri, 01 Nov
 2019 14:22:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxYFZKOzwS0bBg76rJSDSrJzTl8OuaNbUenAchT22o7oZjepn/cWCsHjiO0ylIxdN30NMJH
X-Received: by 2002:a92:d692:: with SMTP id p18mr14342596iln.245.1572643329383;
        Fri, 01 Nov 2019 14:22:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572643329; cv=none;
        d=google.com; s=arc-20160816;
        b=wYAmRMUB/zVanTwwuJyDdjIKEo0+id5A4V1L0TQkdyTgA8rrE+0lFjwQwXnCoxJ1Hr
         BmdxRFG2cU3T73C0XzyBjedn9oXAl2mbHk/8Vplu/JYS1M9iU2uFHK5yHTOBB893tG2g
         pDUm0dp0CI3usG7KD9L4ZcPY1TWNQl08VTx0ajWTFxuGpnUACISGOV+5q9gD+t6nV5TF
         kq5qPy2akdwCKM7hEjsbKix5SpTXVAkQhttVt06CpLry/rMrr7w2RYRvGBljHFP8ruef
         gU0N80Y4rTkYH8/AKyq8cJnmTYs2eMR5rMERlHh5PFPdfEHjnFh6l67amUKfGTbnR3tl
         pFmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=xzznsHfHynyVkn2ULm2biWbAy/Nk1nnMyvGqQa+HmL4=;
        b=0GDSzMmEF73wBJEH4eRrQ81tJR2cSDDTlfPGqvssllTYFXz6gLibuutz0rWPY7f98R
         tCzh45o/k9PVSEekIfJwo4slOlVdZc7FP2hMo4rsJDEt9321nxM8cuqLeMx0W/A+uN0J
         eJhj26At2FZBRPwzomfTW8fWP4R7wxdp564i1tPE34RGxQZezr17NJhCq/qhrlXG+tRO
         Jy+YLn0g1W6x1mB5gMWttHnz/4GJ/Kt8oNVwcvtKA7Jjl9txfdKDZ6F9cyNqFsG1aT3l
         2j8yJkZ0q7e9uneBd37hXxceCnAdHFCvggQ1L2OawlTY/Bb0pTl0OiGmptK6P1EhjO6b
         Q4Gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GURGXRU8;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id a17si480532iok.0.2019.11.01.14.22.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 14:22:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GURGXRU8;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id j30so3746255pgn.5
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 14:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=xzznsHfHynyVkn2ULm2biWbAy/Nk1nnMyvGqQa+HmL4=;
        b=GURGXRU8UZlU+GeALyeiaZsQuP0VV9EC94IdPX5TzgJmMa5rNay24EQpoGkHj9M9Ow
         rZDjbzoXbQWji1Dt57teg721XokT8c9Z1KBn6Rl9tGjKPlUxco18tZs9S5mUCeLX14ZU
         mzXpebuXSEldKG+WFBBU7Bae2ZuUEc6rtBlcQdkB9ZT03WMnOmUJuo5x9cvMNfi2ZHzT
         7lx6Fto+9pkjPBAixVzvi4v/Tz8HETb9O0kgh0AwJA3FuSGJAzrINHqpcjl/IloEDvck
         jibdlguumL9ETXmATHKHaZF6Z1qFLz5kM/2sbRCijx2uwuVxJGuQG/ilXsW6XcGq+TMR
         wupw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=xzznsHfHynyVkn2ULm2biWbAy/Nk1nnMyvGqQa+HmL4=;
        b=ldTVuHvanTVeM0ev1dznqfNgEHtjMzCbeJEQC0+zoQ62Bt78+msA6zMF7OeCE1RO2Q
         19T5V6IeyVj1C7m3nRCSYZ+bHZyedg5IetEcw+WzoEoHJgSLgZRR49dfD6YnvRDbSFGQ
         YckEH/LTrvsRLux0XpNRdMiRF6hk8ZE+mPW50fIBmxAWBwB5GDPpzC4Amxi2kETzMRf4
         JTCJ9bgePriGAAo1/U98K/U9dZOL0j2bQ6eA4+WKbo84n58ziEYI9j3rUpkCfJGqE6sP
         MmgrZJj9avG6W+bbir0VkOdUFpAyO0IyMV/VKZc6cFKI7hfqQNot7+5aitfiJhRhqj3s
         2/Vg==
X-Gm-Message-State: APjAAAVvEFfnSsIGpBrNxKcefCDcT9vUmg95Bk+U2eApYveYC75PWzAD
	b8Sr8d7ScucON+Fu1F+dL0U=
X-Received: by 2002:a17:90a:338f:: with SMTP id n15mr9295437pjb.6.1572643328794;
        Fri, 01 Nov 2019 14:22:08 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-desktop (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id m10sm135636pff.53.2019.11.01.14.22.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 14:22:08 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net,
	wahrenst@gmx.net,
	gregkh@linuxfoundation.org,
	Jamal Shareef <jamal.k.shareef@gmail.com>
Subject: [PATCH v3 6/8] staging: vc04_services: Remove callback typedef
Date: Fri,  1 Nov 2019 14:21:44 -0700
Message-Id: <b13b41252f1bd0eb6ecc57b243223e8054b90ba3.1572642845.git.jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1572642845.git.jamal.k.shareef@gmail.com>
References: <cover.1572642845.git.jamal.k.shareef@gmail.com>
In-Reply-To: <cover.1572642845.git.jamal.k.shareef@gmail.com>
References: <cover.1572642845.git.jamal.k.shareef@gmail.com>

Removes callback typedefs. Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_if.h | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index f506858987b7..4e84c8ad3e85 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -63,20 +63,19 @@ struct vchiq_element {
 
 typedef unsigned int VCHIQ_SERVICE_HANDLE_T;
 
-typedef enum vchiq_status (*VCHIQ_CALLBACK_T)(enum vchiq_reason,
-					      struct vchiq_header *,
-					      VCHIQ_SERVICE_HANDLE_T, void *);
-
-
 struct vchiq_service_base {
 	int fourcc;
-	VCHIQ_CALLBACK_T callback;
+	enum vchiq_status (*callback)(enum vchiq_reason,
+                                      struct vchiq_header *,
+                                      unsigned int, void *);
 	void *userdata;
 };
 
 struct vchiq_service_params {
 	int fourcc;
-	VCHIQ_CALLBACK_T callback;
+	enum vchiq_status (*callback)(enum vchiq_reason,
+				      struct vchiq_header *,
+				      unsigned int, void *);
 	void *userdata;
 	short version;       /* Increment for non-trivial changes */
 	short version_min;   /* Update for incompatible changes */
@@ -94,7 +93,6 @@ struct vchiq_config {
 };
 
 typedef struct vchiq_instance_struct *VCHIQ_INSTANCE_T;
-typedef void (*VCHIQ_REMOTE_USE_CALLBACK_T)(void *cb_arg);
 
 extern enum vchiq_status vchiq_initialise(VCHIQ_INSTANCE_T *pinstance);
 extern enum vchiq_status vchiq_shutdown(VCHIQ_INSTANCE_T instance);
@@ -137,7 +135,7 @@ extern enum vchiq_status vchiq_set_service_option(VCHIQ_SERVICE_HANDLE_T service
 	enum vchiq_service_option option, int value);
 
 extern enum vchiq_status vchiq_remote_use(VCHIQ_INSTANCE_T instance,
-					  VCHIQ_REMOTE_USE_CALLBACK_T callback, void *cb_arg);
+					   void (*callback)(void *cb_arg), void *cb_arg);
 extern enum vchiq_status vchiq_remote_release(VCHIQ_INSTANCE_T instance);
 
 extern enum vchiq_status vchiq_dump_phys_mem(VCHIQ_SERVICE_HANDLE_T service,
-- 
2.17.1


