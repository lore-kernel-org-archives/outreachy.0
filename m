X-GM-THRID: 6397088114020450304
X-Received: by 10.129.39.142 with SMTP id n136mr16292619ywn.160.1489438152733;
        Mon, 13 Mar 2017 13:49:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.169 with SMTP id z38ls9338846ota.27.gmail; Mon, 13 Mar
 2017 13:49:12 -0700 (PDT)
X-Received: by 10.200.43.146 with SMTP id m18mr5431023qtm.58.1489438152371;
        Mon, 13 Mar 2017 13:49:12 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si3320097pfd.3.2017.03.13.13.49.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 13:49:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 25so19549295pgy.3
        for <outreachy-kernel@googlegroups.com>; Mon, 13 Mar 2017 13:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=mSZC11db3IWKZlG5vVAdAx49PvFwUXY7i5z2KhTDjO4=;
        b=PUqm3AwKIwRqKC8G7Pf0q+PmcbsYgXOm94ueNmV+K2WUHokiEwPdDLly4Nl5nj9e9+
         BlgTVupQa/qjSimySpYifPh757PcWJoyDa/pwsQ3UhFfwZZyf7bc2Q1Ka6xk43VT/PmO
         dhCewH3rfiEInPAwBqsnHGMewh1j/4ByjYeV0eGapgq0dlO+OF0yNXk13h5XIFfhqFJF
         oUfQdxKwZ3ZRaZ0huiSoZINaijXPi9AsXxyvAIn0J5S/zFjufn83hqPFBLbKKQnnfj0A
         4nLk6fNHGK3R7gvvzZtPmWVngwEwoNCXjnOLw5slVLRWTNYoByATauH8mzCLj+Tjzd2M
         YoCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=mSZC11db3IWKZlG5vVAdAx49PvFwUXY7i5z2KhTDjO4=;
        b=Td5PtI9mRRF4qGwAqp4Slk/0zoEiTzJJqNBGVIszh7NWPh10mPX8gilX0fpHlyVTWE
         s4wlQda1A69yMBT5sCvWWzjXXPRh+l1OWG3bbSO7HnfcW0sDwQWmOM3Rd0LkOTQge/Uu
         nZp8svhPtzRAS1FD4rrPNCKQA/8LEjZgMeYF9oTd63jIo8+sG4yhakCxcqx+b+WA+4JL
         zFgVYJr78p5Rn0w3ItQp9nyIRLJv1MHXilHIxVRA/QXdxH57ByWqxj3EIjvrnw3pRUfT
         mjSYgV+DamnPgnaVSbiOf6e03sI3M85TaK6no+5LI6fAIw2eRCOssye+QLy8V2qK2UE6
         5v9w==
X-Gm-Message-State: AMke39m+2VPuqWMaZofQNcnZMLF/ThLcImqAmRuFTCBw5OH2RgcUPuSOVhgeES1i61Q7yg==
X-Received: by 10.99.175.7 with SMTP id w7mr38729942pge.170.1489438152141;
        Mon, 13 Mar 2017 13:49:12 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x10sm34327699pff.72.2017.03.13.13.49.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 13 Mar 2017 13:49:10 -0700 (PDT)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v3 1/4] staging: sm750fb: function prototype argument should have an identifier name
Date: Tue, 14 Mar 2017 02:18:47 +0530
Message-Id: <20170313204853.24675-2-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170313204853.24675-1-arushisinghal19971997@gmail.com>
References: <20170313204853.24675-1-arushisinghal19971997@gmail.com>

function prototype arguments like 'struct vb_device_info *','unsigned
long' etc. should have an identifier name.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 changes in v3
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


