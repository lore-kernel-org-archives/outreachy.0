X-GM-THRID: 6396076706969419776
X-Received: by 10.46.9.141 with SMTP id 135mr4112078ljj.19.1489223368844;
        Sat, 11 Mar 2017 01:09:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.20 with SMTP id m20ls1196601ljb.27.gmail; Sat, 11 Mar
 2017 01:09:27 -0800 (PST)
X-Received: by 10.46.83.7 with SMTP id h7mr4225002ljb.24.1489223367916;
        Sat, 11 Mar 2017 01:09:27 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id 82si171638wmg.3.2017.03.11.01.09.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 01:09:27 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id v2so8374924lfi.2
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 01:09:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=W4yNiqx+B4dun7C/3z/1cjKu7u4zXUkX5r3UdEB+9vA=;
        b=L0LGPTUIWp6Awh3brrHRCwq1k6Vpn2eJEpG1/RMB5T4O2DqPHSygyRZbO0V2VWkUxs
         8jBwZQ/Uf4Rw3XbxKyqGgOlNe1yok2bekn9eiOlJxK3chKtgOJzrjHy9sjJp0IwRfQsP
         tDnp3yQiSPXWL7mV6P9J9iVD8L3dCDIeLeqEG175boLhJ8EIuaM7Iw+HQsHLPGco0yI0
         1IXzO3SncZLbR5sbKhOeLvneLXDDdw+K5iJSC+Tzk+ms1dq27m30m/YEiv2jUIUiNfEQ
         wx9NrP+sLWrGcCYiPXtPxNdKW51yJXzl6QtXfL5U8+LKo6ToZoYcyoG+g6Aj+B9i6QYx
         Nw4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=W4yNiqx+B4dun7C/3z/1cjKu7u4zXUkX5r3UdEB+9vA=;
        b=ZkCEEw0Jaipzly1vjOflK7w01mtyF2BkEK6HocjadBqd7GXXxKRvnkxdJM/tmLZyd0
         SlnOGpHIDkJ/SC9GMh0rPt1tJUOM/xElV+dQcQMPSeelMiL1xTpBNS1KtVggyIunBYfP
         sPzLRPRqTDjTj8cDR+eVzkVHjxZgHf6Ot7plTMkV3F95DAbgX02oRUpD3yAFZrWjNQmU
         lc0ddxCUMCu2dLfxNTdXMtRwHa5voY+k6Ps+IxSWn/+N9TmPErwSXxSxonGWwdMpM6dz
         GKVA/l46lDGn2kXnKCO3P85dPBct6Nbetqe5YHLe4WtHZ/xDuXxLwdg563Ibk5Ha60/2
         n1qg==
X-Gm-Message-State: AMke39kXkxyTu7jmtgzKSVmOl/HNANpY7uG6hk7Kv/FhPbMWUtr/f6lWjxl8m0A17zHm8VW+JWDpFzRBLTISGA==
X-Received: by 10.46.0.148 with SMTP id e20mr7469275lji.41.1489223367385; Sat,
 11 Mar 2017 01:09:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.151.142 with HTTP; Sat, 11 Mar 2017 01:09:26 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
Date: Sat, 11 Mar 2017 14:39:26 +0530
Message-ID: <CA+XqjF_k+MyLno8O=oX2mB808uPz5SBmuFsgEu3jM+2Qo8RUMw@mail.gmail.com>
Subject: [PATCH] staging: sm750fb: function prototype argument should have an
 identifier name
To: outreachy-kernel@googlegroups.com
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, teddy.wang@siliconmotion.com, 
	Greg KH <gregkh@linuxfoundation.org>, linux-fbdev@vger.kernel.org, 
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: multipart/alternative; boundary=001a1142bb40cde77a054a70d5c6

--001a1142bb40cde77a054a70d5c6
Content-Type: text/plain; charset=UTF-8

function prototype arguments like 'struct vb_device_info *','unsigned
long' etc. should have an identifier name.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/sm750fb/ddk750_display.h | 2 +-
 drivers/staging/sm750fb/ddk750_mode.h    | 2 +-
 drivers/staging/sm750fb/ddk750_power.h   | 2 +-
 drivers/staging/sm750fb/sm750.h          | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.h
b/drivers/staging/sm750fb/ddk750_display.h
index e2a3f84ca4c5..609bf742efff 100644
--- a/drivers/staging/sm750fb/ddk750_display.h
+++ b/drivers/staging/sm750fb/ddk750_display.h
@@ -102,6 +102,6 @@ typedef enum _disp_output_t {
 }
 disp_output_t;

-void ddk750_setLogicalDispOut(disp_output_t);
+void ddk750_setLogicalDispOut(disp_output_t output);

 #endif
diff --git a/drivers/staging/sm750fb/ddk750_mode.h
b/drivers/staging/sm750fb/ddk750_mode.h
index 2183e664cf4b..6d204b8b4a01 100644
--- a/drivers/staging/sm750fb/ddk750_mode.h
+++ b/drivers/staging/sm750fb/ddk750_mode.h
@@ -34,6 +34,6 @@ typedef struct _mode_parameter_t {
 }
 mode_parameter_t;

-int ddk750_setModeTiming(mode_parameter_t *, clock_type_t);
+int ddk750_setModeTiming(mode_parameter_t *parm, clock_type_t clock);

 #endif
diff --git a/drivers/staging/sm750fb/ddk750_power.h
b/drivers/staging/sm750fb/ddk750_power.h
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
-void hw_sm750_initAccel(struct sm750_dev *);
+void hw_sm750_initAccel(struct sm750_dev *hw_sm750_initAccel);
 int hw_sm750_deWait(void);
 int hw_sm750le_deWait(void);
-- 
2.11.0

--001a1142bb40cde77a054a70d5c6
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><pre id="gmail-raw_message_text">function prototype arguments like &#39;struct vb_device_info *&#39;,&#39;unsigned
long&#39; etc. should have an identifier name.

Signed-off-by: Arushi Singhal &lt;<a href="mailto:arushisinghal19971997@gmail.com">arushisinghal19971997@gmail.com</a>&gt;
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
 	       (peek32(MISC_CTRL) &amp; ~MISC_CTRL_DAC_POWER_OFF) | (off)); \
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
-void hw_sm750_initAccel(struct sm750_dev *<span class="gmail-im"></span>);<br>+void hw_sm750_initAccel(struct sm750_dev *<span class="gmail-im">hw_sm750_initAccel</span>);
 int hw_sm750_deWait(void);
 int hw_sm750le_deWait(void);
-- 
2.11.0

</pre></div>

--001a1142bb40cde77a054a70d5c6--

