X-GM-THRID: 8728898174976
X-Received: by 10.42.191.79 with SMTP id dl15mr19821990icb.1.1426588588490;
        Tue, 17 Mar 2015 03:36:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.102 with SMTP id 93ls63981qge.54.gmail; Tue, 17 Mar
 2015 03:36:28 -0700 (PDT)
X-Received: by 10.236.229.233 with SMTP id h99mr67879186yhq.42.1426588588349;
        Tue, 17 Mar 2015 03:36:28 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x229.google.com (mail-pd0-x229.google.com. [2607:f8b0:400e:c02::229])
        by gmr-mx.google.com with ESMTPS id gb13si2434672pac.2.2015.03.17.03.36.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 03:36:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) client-ip=2607:f8b0:400e:c02::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::229 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x229.google.com with SMTP id ni2so6052634pdb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 03:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=HVEHtOQVs9Vj9X7ssM91SVJIJOSKhKAf35PepJxUM5k=;
        b=jNIdr55eGfTOnqgkNMJkXqHliNr6TKLp77j3V26Y+wuAt2jc2qRiAlPEKi2dWzybie
         YuW3ZNETjQUiErb8tln/Ds/LG2wiXcFs36qqQwHbioGPSDMmRFs9DdGeNI+NO8SJO+//
         7g34Ke5BVZ06Pzzdq5d8tlEoIybW+1jmS+0pqsqaRAW+FiD71e22U1NJuU0op/+htsF6
         Pf0ui80CMlQ281du9W2rff3lCZYoCzQcvGRkb7+fnQ9PMbzibxNpsB0eI7jev9heVGWs
         RLfFts7CxEnL7BV8q2atFqopt8vXCgCwDbMWVSAhMDEhMHOxQytUlBJWc9t5xcwh694M
         ALCg==
X-Received: by 10.70.125.129 with SMTP id mq1mr148211798pdb.70.1426588588231;
        Tue, 17 Mar 2015 03:36:28 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([43.249.235.206])
        by mx.google.com with ESMTPSA id x1sm21706316pdp.1.2015.03.17.03.36.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 17 Mar 2015 03:36:27 -0700 (PDT)
Date: Tue, 17 Mar 2015 16:06:23 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 1/2] Staging: speakup: Add helper macro for spk_synth
 boilerplate
Message-ID: <2905c4008dfeb64eaff938812d63202c1828f041.1426586935.git.vthakkar1994@gmail.com>
References: <cover.1426586934.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426586934.git.vthakkar1994@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

For simple modules that contain a single spk_synth without
any additional setup code then ends up being a block of
duplicated boilerplate. This patch adds a new macro,
module_spk_synth(), which replaces the
module_init()/module_exit() registrations with template
functions.

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
Changes since v1:
        - Use module_driver macro in definition of helper macro
Changes since v2:
        - Correct unnecessory line wrapping of module_driver
        - Split patch in to 2 patches
Changes since v3:
	- Put blank line after module_spk_synth

 drivers/staging/speakup/spk_types.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/staging/speakup/spk_types.h b/drivers/staging/speakup/spk_types.h
index 8c565c9..38e0a3c 100644
--- a/drivers/staging/speakup/spk_types.h
+++ b/drivers/staging/speakup/spk_types.h
@@ -16,6 +16,7 @@
 #include <linux/spinlock.h>
 #include <linux/mutex.h>
 #include <linux/io.h>		/* for inb_p, outb_p, inb, outb, etc... */
+#include <linux/device.h>	/* for struct device */
 
 enum var_type_t {
 	VAR_NUM = 0,
@@ -179,6 +180,16 @@ struct spk_synth {
 	struct attribute_group attributes;
 };
 
+/**
+* module_spk_synth() - Helper macro for registering a speakup driver
+* @__spk_synth: spk_synth struct
+* Helper macro for speakup drivers which do not do anything special in module
+* init/exit. This eliminates a lot of boilerplate. Each module may only
+* use this macro once, and calling it replaces module_init() and module_exit()
+*/
+#define module_spk_synth(__spk_synth) \
+	module_driver(__spk_synth, synth_add, synth_remove)
+
 struct speakup_info_t {
 	spinlock_t spinlock;
 	int port_tts;
-- 
1.9.1


