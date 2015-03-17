X-GM-THRID: 8728898174976
X-Received: by 10.182.248.227 with SMTP id yp3mr73974824obc.22.1426602456279;
        Tue, 17 Mar 2015 07:27:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.134.99 with SMTP id pj3ls155873igb.5.gmail; Tue, 17 Mar
 2015 07:27:36 -0700 (PDT)
X-Received: by 10.42.209.135 with SMTP id gg7mr65090135icb.9.1426602456096;
        Tue, 17 Mar 2015 07:27:36 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x22c.google.com (mail-pd0-x22c.google.com. [2607:f8b0:400e:c02::22c])
        by gmr-mx.google.com with ESMTPS id gb13si2542912pac.2.2015.03.17.07.27.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 07:27:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) client-ip=2607:f8b0:400e:c02::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::22c as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22c.google.com with SMTP id c3so11189776pdn.0
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 07:27:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=E+ZKinjlt/qBTkEGsTLsh+8Lw0hmp+dShrZu86+psV8=;
        b=prtuxB9fBryS4nN20bZ/lb+rjh9QswSkxMxIGy0WfJSvVXMUWx07zOcHXaTMiMbBaM
         CPhQJ/NmXaTrtBbE6eh7mqHYRynHdQunW49n5fsj4qk4tsaorPkRvl2LyEBqXvq29na0
         v85JgJjsz1fjKtkOtDRFtNQ8ovkzta+ys1TrR6tAm2lmiBoEgsOsmhVOLf0sKa5vvgP1
         MpmAYPyCm5fPFylbuzddhhJxPegXFzVQlUqRB2607r/Ikqw9CLZY6XT2qFLSpC86CS0t
         Ztz3j7oIK/PQoRISVoeOPY7VUYRgWx22MJmWBQvzXqsOpXM6QiNldsWwE58Q5kepM3s7
         YQmA==
X-Received: by 10.66.158.66 with SMTP id ws2mr149705048pab.37.1426602455998;
        Tue, 17 Mar 2015 07:27:35 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([43.249.235.206])
        by mx.google.com with ESMTPSA id z4sm22733222pdi.90.2015.03.17.07.27.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 17 Mar 2015 07:27:35 -0700 (PDT)
Date: Tue, 17 Mar 2015 19:57:31 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v5 1/2] Staging: speakup: Add helper macro for spk_synth
 boilerplate
Message-ID: <ec95f6d5c0c79f8bab5e780f9b08135fa4c47883.1426601963.git.vthakkar1994@gmail.com>
References: <cover.1426601962.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426601962.git.vthakkar1994@gmail.com>
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
Changes since v4:
	- Avoid adding unnecessory comment

 drivers/staging/speakup/spk_types.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/staging/speakup/spk_types.h b/drivers/staging/speakup/spk_types.h
index 8c565c9..55d6c9b 100644
--- a/drivers/staging/speakup/spk_types.h
+++ b/drivers/staging/speakup/spk_types.h
@@ -16,6 +16,7 @@
 #include <linux/spinlock.h>
 #include <linux/mutex.h>
 #include <linux/io.h>		/* for inb_p, outb_p, inb, outb, etc... */
+#include <linux/device.h>
 
 enum var_type_t {
 	VAR_NUM = 0,
@@ -179,6 +180,16 @@ struct spk_synth {
 	struct attribute_group attributes;
 };
 
+/**
+ * module_spk_synth() - Helper macro for registering a speakup driver
+ * @__spk_synth: spk_synth struct
+ * Helper macro for speakup drivers which do not do anything special in module
+ * init/exit. This eliminates a lot of boilerplate. Each module may only
+ * use this macro once, and calling it replaces module_init() and module_exit()
+ */
+#define module_spk_synth(__spk_synth) \
+	module_driver(__spk_synth, synth_add, synth_remove)
+
 struct speakup_info_t {
 	spinlock_t spinlock;
 	int port_tts;
-- 
1.9.1


