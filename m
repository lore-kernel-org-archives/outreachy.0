X-GM-THRID: 6397018299173961728
X-Received: by 10.13.220.195 with SMTP id f186mr15288573ywe.121.1489421894328;
        Mon, 13 Mar 2017 09:18:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.110.142 with SMTP id w136ls1696481itc.22.canary-gmail; Mon,
 13 Mar 2017 09:18:12 -0700 (PDT)
X-Received: by 10.99.51.206 with SMTP id z197mr17941742pgz.88.1489421892880;
        Mon, 13 Mar 2017 09:18:12 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id u12si3223328pfd.3.2017.03.13.09.18.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 09:18:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id v190so19478748pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 09:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=VBVHPVf8Z6Kq9DJ/5lhqq5f32lGnugtZh0uCahzZFF0=;
        b=HCYs42LdwG8NaCnmAwYgLt6kSWdgvHDsGPWs0IX64tE2/JbiQHEfSIfbVp8gcBGr8J
         dFR7sidrDf3jEWw79ooz0YHAmSGns+vAPG04FrPp3NirHbKurzghymKEo9SoZZ8zFFi7
         LStn+EUNqa2IH3xpcHeRGH3ymzqZHiX6foc1V7HVfpRMwqHc8tdEW+ye1bs2W0OQtBny
         NLBKu9hiZ8Xuz4fBj+hvjzkSO2wuBOGTUDgRNqLMbIjN1qLR9Uwwi+W4LmQDC/KrQ0F7
         32RlqnDPSoMqVhNBEdLisN9f2W67TllCOvSwPHITjYraYrGR2Dejz2mi/9MjX+r+z5Zk
         PUPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=VBVHPVf8Z6Kq9DJ/5lhqq5f32lGnugtZh0uCahzZFF0=;
        b=JW07w8h1KK7u71N3zd88rcIzfSissririxO0NJEqsKvnyppix3ImV91VTa4oClvK7E
         umFu0ybWOZGRMd9foYPgotcudLZ5bah7vpOMWkrzBIgmahTq5v8QvqYnsP1VATM6ZRRE
         W4y8ceIw//FXJu4m0YC/B6IqyZtf1uoDFHOtPTCBPBoWrghz/84Zdp0iyoFDY6ffll3R
         xTK+5XbanR4tYwh2UoqB1KYXk2lAlRHmBpme3I6bk35bcGzWb005rtWrmP6ivwY6Gy0+
         vGTLFep3KAiW0er2LEasyUOmlBPANVW2kye4Q0A6bsokTlxV1Y8MfsIsa94Y0dBam9PR
         U8BA==
X-Gm-Message-State: AMke39n751AiSO9/7msoLDxkBQ77D849/iqTy8Qco1sRGw1GROX4RwlKQ9bX9LSnuepfDA==
X-Received: by 10.84.236.9 with SMTP id q9mr48210703plk.96.1489421892641;
        Mon, 13 Mar 2017 09:18:12 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v26sm33708311pfl.16.2017.03.13.09.18.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 09:18:11 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: sudipm.mukherjee@gmail.com
Cc: teddy.wang@siliconmotion.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v2 1/4] staging: sm750fb: function prototype argument should have an identifier name
Date: Mon, 13 Mar 2017 21:47:57 +0530
Message-Id: <20170313161800.17338-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170313161800.17338-1-arushisinghal19971997@gmail.com>
References: <20170313161800.17338-1-arushisinghal19971997@gmail.com>

function prototype arguments like 'struct vb_device_info *','unsigned
long' etc. should have an identifier name.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 changes in v2
 - add the identifier name of one more prototype arguments.

 drivers/staging/sm750fb/ddk750_display.h | 2 +-
 drivers/staging/sm750fb/ddk750_mode.h    | 2 +-
 drivers/staging/sm750fb/ddk750_power.h   | 2 +-
 drivers/staging/sm750fb/sm750.h          | 4 ++--
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
index e2a3f84ca4c5..609bf742efff 100644
--- a/drivers/staging/sm750fb/ddk750_display.h
+++ b/drivers/staging/sm750fb/ddk750_display.h
@@ -102,6 +102,6 @@ typedef enum _disp_output_t {
 }
 disp_output_t;
 
-void ddk750_setLogicalDispOut(disp_output_t);
+void ddk750_setLogicalDispOut(disp_output_t output);
 
 #endif
diff --git a/drivers/staging/sm750fb/ddk750_mode.h b/drivers/staging/sm750fb/ddk750_mode.h
index 2183e664cf4b..6d204b8b4a01 100644
--- a/drivers/staging/sm750fb/ddk750_mode.h
+++ b/drivers/staging/sm750fb/ddk750_mode.h
@@ -34,6 +34,6 @@ typedef struct _mode_parameter_t {
 }
 mode_parameter_t;
 
-int ddk750_setModeTiming(mode_parameter_t *, clock_type_t);
+int ddk750_setModeTiming(mode_parameter_t *parm, clock_type_t clock);
 
 #endif
diff --git a/drivers/staging/sm750fb/ddk750_power.h b/drivers/staging/sm750fb/ddk750_power.h
index ec0b99d6a7ad..44c4fc587e96 100644
--- a/drivers/staging/sm750fb/ddk750_power.h
+++ b/drivers/staging/sm750fb/ddk750_power.h
@@ -14,7 +14,7 @@ DPMS_t;
 	       (peek32(MISC_CTRL) & ~MISC_CTRL_DAC_POWER_OFF) | (off)); \
 }
 
-void ddk750_set_dpms(DPMS_t);
+void ddk750_set_dpms(DPMS_t state);
 void sm750_set_power_mode(unsigned int powerMode);
 void sm750_set_current_gate(unsigned int gate);
 
diff --git a/drivers/staging/sm750fb/sm750.h b/drivers/staging/sm750fb/sm750.h
index 306711ed55f9..5b186dafedec 100644
--- a/drivers/staging/sm750fb/sm750.h
+++ b/drivers/staging/sm750fb/sm750.h
@@ -184,8 +184,8 @@ static inline unsigned long ps_to_hz(unsigned int psvalue)
 }
 
 int hw_sm750_map(struct sm750_dev *sm750_dev, struct pci_dev *pdev);
-int hw_sm750_inithw(struct sm750_dev*, struct pci_dev *);
-void hw_sm750_initAccel(struct sm750_dev *);
+int hw_sm750_inithw(struct sm750_dev *sm750_dev, struct pci_dev *pdev);
+void hw_sm750_initAccel(struct sm750_dev *sm750_dev);
 int hw_sm750_deWait(void);
 int hw_sm750le_deWait(void);
 
-- 
2.11.0


