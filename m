X-GM-THRID: 6396076706969419776
X-Received: by 10.129.103.134 with SMTP id b128mr10929659ywc.14.1489225988479;
        Sat, 11 Mar 2017 01:53:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.57.77 with SMTP id l74ls489492ita.5.canary-gmail; Sat, 11
 Mar 2017 01:53:07 -0800 (PST)
X-Received: by 10.99.127.5 with SMTP id a5mr11428245pgd.112.1489225987803;
        Sat, 11 Mar 2017 01:53:07 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 2si2203414pfx.8.2017.03.11.01.53.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 01:53:07 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id o126so13435574pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 01:53:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=sYEXOxvzPsgCCZkyPkCgexU+B50QrbkgP9VwVMl+hag=;
        b=um549LMk9Yi8HbwOt0mCgdOHMNOqK/DrZoxSe9D1klvowIrKbFyjyJ/LIinkTz62N+
         vMJl2ZYuvIMQTSDhi/W5vn9okBp7u8ImMFJdBeuC4ctwVUXJJHGuQ2MImxOaXcFf4i45
         x568VzxWflGr9Al5DVGj4NAUEraJdCU3T8zE46LdVae6y5pXQdn+EOttsJiBpN3maGrV
         kwxnH1inNpTZUHcdyoTGOEjCIcCLpJGyKIOexY5i/hdTYbAH49lAS/aXSxeGnLouhcIe
         hyqycDhPMV4jaiIA0W4BnySsN4mkEM7jz+8ZIvzCODGN4VmcLA28iL7+STVGKUuH80ZD
         twDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=sYEXOxvzPsgCCZkyPkCgexU+B50QrbkgP9VwVMl+hag=;
        b=RD3hCpXQG4F1hMBDs8u6wezMfwSoat0HhjZFNe1M10voY6zzchlAh2NvEvvkdoZiIa
         JAbFlg55a8teGGFtQ6R8MhnVokIhIqakMfgRWwGZVrHF0rWY6JDSWMaBCOlDgqttKpVA
         Z+bqisXfcVcdahZeI4FSJ/iquIzGQ48lwsW4m56oMlgLC4kD68XO7W90bJPPqUcXeEZF
         1cvRP+IJP1hcjlCV9DNIYeY7X3XgZyFKqrw/ktKogNmJMBV510PxNMfSsdviel+3saJ0
         uyeMxlxCPfxHpMJWYfEWmZgrbFIRQTNgHv/MplQuMl87jfqq7hrJI8aIfX7jLT3NMJ+L
         8epQ==
X-Gm-Message-State: AMke39m/niNFK9CefyceCzQ0QKRhjN3tYo4NnKgtliPBCHewXqpdFOpsmjdHGMEYoQCHPA==
X-Received: by 10.98.8.74 with SMTP id c71mr25731775pfd.42.1489225987557;
        Sat, 11 Mar 2017 01:53:07 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 73sm23235116pfj.31.2017.03.11.01.53.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 01:53:05 -0800 (PST)
Date: Sat, 11 Mar 2017 15:23:03 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: sudipm.mukherjee@gmail.com
Cc: Teddy Wang <teddy.wang@siliconmotion.com>,
	outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: sm750fb: function prototype argument should have
 an identifier name
Message-ID: <20170311095302.GA4037@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

function prototype arguments like 'struct vb_device_info *','unsigned
long' etc. should have an identifier name.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 changes in v2
 -Add the identifier name of one more function prototype

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
index 306711ed55f9..f60565cae80c 100644
--- a/drivers/staging/sm750fb/sm750.h
+++ b/drivers/staging/sm750fb/sm750.h
@@ -184,8 +184,8 @@ static inline unsigned long ps_to_hz(unsigned int psvalue)
 }
 
 int hw_sm750_map(struct sm750_dev *sm750_dev, struct pci_dev *pdev);
-int hw_sm750_inithw(struct sm750_dev*, struct pci_dev *);
-void hw_sm750_initAccel(struct sm750_dev *);
+int hw_sm750_inithw(struct sm750_dev *sm750_dev, struct pci_dev *pdev);
+void hw_sm750_initAccel(struct sm750_dev *hw_sm750_initAccel);
 int hw_sm750_deWait(void);
 int hw_sm750le_deWait(void);
 
-- 
2.11.0


