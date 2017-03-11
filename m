X-GM-THRID: 6396076706969419776
X-Received: by 10.129.174.69 with SMTP id g5mr9977698ywk.125.1489202661379;
        Fri, 10 Mar 2017 19:24:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.92 with SMTP id u28ls1874082otd.12.gmail; Fri, 10 Mar
 2017 19:24:21 -0800 (PST)
X-Received: by 10.129.174.69 with SMTP id g5mr9977685ywk.125.1489202661047;
        Fri, 10 Mar 2017 19:24:21 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id r66si2066859pfb.7.2017.03.10.19.24.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 19:24:20 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 67so12687777pfg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 19:24:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=5lXH+crviaZvYL5TIKj0YKyuSBdEvpJGtvWTX9MAqWc=;
        b=YVnocWJRkFeF/TvMCgFFtCZqT50b1UIY180Erq2Ae0eOiTFM3CgNEC41B8ucExh8qo
         Tvr3KIkWZAVkz1DmvafbN1NsI6Md2eqaGtlkBLmDcfxXY9LoCUNjuAkHCRx3sDpmwug3
         iC1eyyOVWIfNWCmDddIm40R10ID2Se+8xCSUkZXNcKSaH5V+M5r3bTBDl5v4ev381Rvz
         5/L/0borsFSJmK+/OcoFkyVr6h/YxsoT5bfCwrou6shQJxvPdy0yifFCOAtspCfKncLj
         KEelMaORyEHbKC+kgJdHxdv/8+V97bXDWAR+1uiLDSCzncflU9SqOFGHYJbDA88ZfLAF
         6geA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=5lXH+crviaZvYL5TIKj0YKyuSBdEvpJGtvWTX9MAqWc=;
        b=WU7QK4pIYMVwRYzNuguXCyVZtPogduH0JjCPHQUyJD1aFiA+t2iActknE611cwoobY
         m+oApt9TiuG/yPpudIQqd/bqF/hke8QQry87siWSu/7PPSujvgAxhSA1FrdZ1RqnRJRP
         3dZP2nl6DjeZU2clRDPMqH+p3b0REQK70KUAhRkVeiNFDEdf5YvrZ0X065WRimoiop3k
         fRCmXxCYzAEtNflxvulmhII0+6C1pOL8LeGluMVtsl6RKWs0ZDQx6zopmHMWWSv9iVX4
         tUijBMfhVad6B62rwilL32Nu33YXk+0iS8LRrPJtKLVFc5Mf9qOzS2xAIq5jZMn1pmGP
         +qzg==
X-Gm-Message-State: AMke39lpqghG2Uh/CVEoB3U7qm66rO8dDSIX7Px8wxmfyVcaaO0EPCkQI+/iyZyPQMn2HQ==
X-Received: by 10.99.127.14 with SMTP id a14mr24424755pgd.64.1489202660809;
        Fri, 10 Mar 2017 19:24:20 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g27sm21012650pfk.95.2017.03.10.19.24.18
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 19:24:19 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	linux-fbdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 1/3] staging: sm750fb: function prototype argument should have an identifier name
Date: Sat, 11 Mar 2017 08:54:08 +0530
Message-Id: <20170311032410.8265-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170311032410.8265-1-arushisinghal19971997@gmail.com>
References: <20170311032410.8265-1-arushisinghal19971997@gmail.com>

function prototype arguments like 'struct vb_device_info *','unsigned
long' etc. should have an identifier name.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/sm750fb/ddk750_display.h | 2 +-
 drivers/staging/sm750fb/ddk750_mode.h    | 2 +-
 drivers/staging/sm750fb/ddk750_power.h   | 2 +-
 drivers/staging/sm750fb/sm750.h          | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

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
index 306711ed55f9..5ea455dee949 100644
--- a/drivers/staging/sm750fb/sm750.h
+++ b/drivers/staging/sm750fb/sm750.h
@@ -184,7 +184,7 @@ static inline unsigned long ps_to_hz(unsigned int psvalue)
 }
 
 int hw_sm750_map(struct sm750_dev *sm750_dev, struct pci_dev *pdev);
-int hw_sm750_inithw(struct sm750_dev*, struct pci_dev *);
+int hw_sm750_inithw(struct sm750_dev *sm750_dev, struct pci_dev *pdev);
 void hw_sm750_initAccel(struct sm750_dev *);
 int hw_sm750_deWait(void);
 int hw_sm750le_deWait(void);
-- 
2.11.0


