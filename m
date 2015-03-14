X-GM-THRID: 8319960875008
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e1b4f33b9b6187dc,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.67.29.201 with SMTP id jy9mr48185325pad.9.1426351961466;
        Sat, 14 Mar 2015 09:52:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.40.199 with SMTP id z7ls832117obk.0.gmail; Sat, 14 Mar
 2015 09:52:41 -0700 (PDT)
X-Received: by 10.182.126.12 with SMTP id mu12mr58654532obb.13.1426351961204;
        Sat, 14 Mar 2015 09:52:41 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x22e.google.com (mail-pd0-x22e.google.com. [2607:f8b0:400e:c02::22e])
        by gmr-mx.google.com with ESMTPS id l3si975422pdo.0.2015.03.14.09.52.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2015 09:52:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) client-ip=2607:f8b0:400e:c02::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::22e as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22e.google.com with SMTP id ni2so15223663pdb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2015 09:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=71qdMYvfbYWSATlIeNRUbuQtMmfED63Vjmk200bMAR0=;
        b=Gc74iUCiAw9bBrWpszoLXIAPlittrDvPOUl2ZpwTAJerxNChjbXr2h0GfoB0HAFTez
         T+zgA36dV6qkIeB5NL/3tzFhiZS23oYnthMkHg7rX7sxCY/236eOvTzzD6062p+YSYg8
         xAcdhZj4rooNCo7ctFl3Xr8KrFGTWultXv8/u9gzsJeqS3lyWm+g4ZHMxlhYK2PTnyFH
         tV2togSOyNvR6PyGF8c3z+roH8lVP1XAkz+Zoh1imVOCepZlrke5ugt4ikPbC1j4JXtE
         0yQ/Ef6U+mJi6OB6ee+ACiafD5Oml6vOkl8/Lo4dfSvZHbgRJC49EJiwavN1tbD/CXN6
         BFrg==
X-Received: by 10.66.140.69 with SMTP id re5mr83457571pab.105.1426351961068;
        Sat, 14 Mar 2015 09:52:41 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([43.249.235.1])
        by mx.google.com with ESMTPSA id qm6sm9072221pac.14.2015.03.14.09.52.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 14 Mar 2015 09:52:40 -0700 (PDT)
Date: Sat, 14 Mar 2015 22:22:35 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: speakup: Add helper macro for spk_synth boilerplate
Message-ID: <20150314165235.GA24545@vaishali-Ideapad-Z570>
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

 drivers/staging/speakup/speakup_audptr.c | 12 +-----------
 drivers/staging/speakup/spk_types.h      | 17 +++++++++++++++++
 2 files changed, 18 insertions(+), 11 deletions(-)

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
index 8c565c9..e0c4fe3 100644
--- a/drivers/staging/speakup/spk_types.h
+++ b/drivers/staging/speakup/spk_types.h
@@ -179,6 +179,23 @@ struct spk_synth {
 	struct attribute_group attributes;
 };
 
+/* module_spk_synth() - Helper macro for speakup drivers that don't
+ * do anything special in module init/exit. This eliminates a lot
+ * of boilerplate. Each module may only use this macro once, and
+ * calling it replaces module_init() and module_exit()
+ */
+#define module_spk_synth(__spk_synth) \
+static int __init __spk_synth##_init(void) \
+{ \
+	return synth_add(&(__spk_synth)); \
+} \
+module_init(__spk_synth##_init); \
+static void __exit __spk_synth##_exit(void) \
+{ \
+	synth_remove(&(__spk_synth)); \
+} \
+module_exit(__spk_synth##_exit);
+
 struct speakup_info_t {
 	spinlock_t spinlock;
 	int port_tts;
-- 
1.9.1


