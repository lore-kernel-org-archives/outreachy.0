X-GM-THRID: 8319960875008
X-Received: by 10.236.4.134 with SMTP id 6mr62928365yhj.35.1426516147766;
        Mon, 16 Mar 2015 07:29:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.99.6 with SMTP id p6ls2706538qge.51.gmail; Mon, 16 Mar
 2015 07:29:07 -0700 (PDT)
X-Received: by 10.140.201.202 with SMTP id w193mr18414748qha.7.1426516147607;
        Mon, 16 Mar 2015 07:29:07 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id gb13si1928263pac.2.2015.03.16.07.29.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2015 07:29:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id r17so66437004pag.0
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Mar 2015 07:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=6eu4eJC7lPSB0VYil13Fa2hmzGIYsmRs4WevG8ghgks=;
        b=tYgkdatc+G+esbbqhPQbrxv21a48a1+ymZCQU2Vl7Bids/F+SxnnCarWIneFo2BWNz
         mkKkdJYbqG/1TdlnlREKvvnw/UNYJ1Q0pIy0sD2+obcXuZXCbhy0dGxyFWyJLJLieaTd
         xSFD4bwPEsLx/17/zhjTtByItCVzZPqkLBJ+Cq1juLmSoaXiWQU0xlNhlaMUpw2/kj4V
         1Q+KQwRcCLMPRR7TD+e6W06j5mh3kWSkzsvooIxHrfqgT3JPo70LjNGGdXydH2DOZxTw
         ykZtsXGLZie+oEi5iHUctP4YSrkxG5gSAHTbORiYeZ4Av1/YshRIxUloaFW6rHNAhYVr
         49/g==
X-Received: by 10.70.91.75 with SMTP id cc11mr139059041pdb.150.1426516147344;
        Mon, 16 Mar 2015 07:29:07 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([43.249.235.84])
        by mx.google.com with ESMTPSA id ht2sm17661089pdb.23.2015.03.16.07.29.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 16 Mar 2015 07:29:06 -0700 (PDT)
Date: Mon, 16 Mar 2015 19:59:01 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: speakup: Add helper macro for spk_synth
 boilerplate
Message-ID: <20150316142901.GA18101@vaishali-Ideapad-Z570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

For simple modules that contain a single spk_synth without
any additional setup code then ends up being a block of
duplicated boilerplate. This patch adds a new macro,
module_spk_synth(), which replaces the
module_init()/module_exit() registrations with template
functions.

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
v1 : Here, I know, I can go for changing all files
     and make them use module_spk_synth at a single point.
     But as I am sending this patch as a sample patch, I
     am changing only one file to show the use of helper
     macro. I will go for changing all other such cases in
     this driver if this patch will be accepted.
v2 : Use module_driver macro in definition of helper macro

 drivers/staging/speakup/speakup_audptr.c | 12 +-----------
 drivers/staging/speakup/spk_types.h      | 12 ++++++++++++
 2 files changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/speakup/speakup_audptr.c b/drivers/staging/speakup/speakup_audptr.c
index 5cbaec8..ea89e36 100644
--- a/drivers/staging/speakup/speakup_audptr.c
+++ b/drivers/staging/speakup/speakup_audptr.c
@@ -177,18 +177,8 @@ module_param_named(start, synth_audptr.startup, short, S_IRUGO);
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
 MODULE_PARM_DESC(start, "Start the synthesizer once it is loaded.");
 
-static int __init audptr_init(void)
-{
-	return synth_add(&synth_audptr);
-}
-
-static void __exit audptr_exit(void)
-{
-	synth_remove(&synth_audptr);
-}
+module_spk_synth(synth_audptr);
 
-module_init(audptr_init);
-module_exit(audptr_exit);
 MODULE_AUTHOR("Kirk Reiser <kirk@braille.uwo.ca>");
 MODULE_AUTHOR("David Borowski");
 MODULE_DESCRIPTION("Speakup support for Audapter synthesizer");
diff --git a/drivers/staging/speakup/spk_types.h b/drivers/staging/speakup/spk_types.h
index 8c565c9..67aa5e9 100644
--- a/drivers/staging/speakup/spk_types.h
+++ b/drivers/staging/speakup/spk_types.h
@@ -16,6 +16,7 @@
 #include <linux/spinlock.h>
 #include <linux/mutex.h>
 #include <linux/io.h>		/* for inb_p, outb_p, inb, outb, etc... */
+#include <linux/device.h>	/* for struct device */
 
 enum var_type_t {
 	VAR_NUM = 0,
@@ -179,6 +180,17 @@ struct spk_synth {
 	struct attribute_group attributes;
 };
 
+/**
+ * module_spk_synth() - Helper macro for registering a speakup driver
+ * @__spk_synth: spk_synth struct
+ *
+ * Helper macro for speakup drivers which do not do anything special in module
+ * init/exit. This eliminates a lot of boilerplate. Each module may only
+ * use this macro once, and calling it replaces module_init() and module_exit()
+ */
+#define module_spk_synth(__spk_synth) \
+	module_driver(__spk_synth, synth_add, \
+			synth_remove)
 struct speakup_info_t {
 	spinlock_t spinlock;
 	int port_tts;
-- 
1.9.1


