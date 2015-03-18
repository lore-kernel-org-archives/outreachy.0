X-GM-THRID: 9034069442560
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d4fd5e28f711710d
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.183.10.164 with SMTP id eb4mr74421082obd.48.1426700596252;
        Wed, 18 Mar 2015 10:43:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.111.197 with SMTP id ik5ls564259igb.6.gmail; Wed, 18 Mar
 2015 10:43:16 -0700 (PDT)
X-Received: by 10.43.60.131 with SMTP id ws3mr15460772icb.13.1426700596038;
        Wed, 18 Mar 2015 10:43:16 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id ni4si3231113pdb.2.2015.03.18.10.43.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 10:43:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id yw6so48889459pab.2
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 10:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=bbTlG7RRx9uyG9/stPkRg4OOH7C87ikU2I1hLgyIHmA=;
        b=rZ5FJYmKVcZuBdfOa7FEioVu9ieSLF8GuWE/EfmNL2iGvvD+f12iVXhRsR4JOKrr8T
         5m6EaRB04u9qfy2YxzQK4cjLqZ9yUEhU/vMf7MqgXZai0eFKCwztCiAIs9wZkRp6spSK
         aREZN904MrIfM22c2plPAoyXu95d0UgLXFxglp9wkh0IuiXJ8m7Cz1ZxLWA+eteN8/Jw
         DTqfj0BegYCAN8Z57KZUbLosAh4iaH9i0TF87aAHEYk/WJyGHZyVMnpCx/yxFicxwY1K
         XpHkLMuIVye3rGJnsveTFwykoLL8lwJMfyTyIh2TGKuluHZhT2JUu7RNAhu8c3NGFOIn
         8UDw==
X-Received: by 10.70.54.169 with SMTP id k9mr9949105pdp.135.1426700595899;
        Wed, 18 Mar 2015 10:43:15 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.240.77])
        by mx.google.com with ESMTPSA id om6sm28572154pdb.40.2015.03.18.10.43.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Mar 2015 10:43:14 -0700 (PDT)
Date: Wed, 18 Mar 2015 23:13:10 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v4 2/2] Staging: speakup: Use module_spk_synth
Message-ID: <2269ae0849c4123e4dd9a02addf5f4c79940fd7a.1426700096.git.vthakkar1994@gmail.com>
References: <cover.1426700096.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426700096.git.vthakkar1994@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Macro module_spk_synth can be used for speakup drivers
whose init and exit paths does only module registrations.
So, here remove some boilerplate code by using
module_spk_synth.

Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
---
Changes since v1:
	- No change but as patch is in series with
	  another patch, send new version.
Changes since v2:
	- No change but as patch is in series with
	  another patch, send new version.
Changes since v3:
	- Fix build warnings of v2

 drivers/staging/speakup/speakup_acntpc.c | 12 +-----------
 drivers/staging/speakup/speakup_acntsa.c | 12 +-----------
 drivers/staging/speakup/speakup_apollo.c | 12 +-----------
 drivers/staging/speakup/speakup_audptr.c | 12 +-----------
 drivers/staging/speakup/speakup_bns.c    | 12 +-----------
 drivers/staging/speakup/speakup_decext.c | 12 +-----------
 drivers/staging/speakup/speakup_decpc.c  | 12 +-----------
 drivers/staging/speakup/speakup_dectlk.c | 12 +-----------
 drivers/staging/speakup/speakup_dtlk.c   | 12 +-----------
 drivers/staging/speakup/speakup_dummy.c  | 12 +-----------
 drivers/staging/speakup/speakup_keypc.c  | 12 +-----------
 drivers/staging/speakup/speakup_ltlk.c   | 12 +-----------
 drivers/staging/speakup/speakup_soft.c   | 13 +------------
 drivers/staging/speakup/speakup_spkout.c | 12 +-----------
 drivers/staging/speakup/speakup_txprt.c  | 12 +-----------
 15 files changed, 15 insertions(+), 166 deletions(-)

diff --git a/drivers/staging/speakup/speakup_acntpc.c b/drivers/staging/speakup/speakup_acntpc.c
index f0bfd9e..f418893 100644
--- a/drivers/staging/speakup/speakup_acntpc.c
+++ b/drivers/staging/speakup/speakup_acntpc.c
@@ -318,18 +318,8 @@ module_param_named(start, synth_acntpc.startup, short, S_IRUGO);
 MODULE_PARM_DESC(port, "Set the port for the synthesizer (override probing).");
 MODULE_PARM_DESC(start, "Start the synthesizer once it is loaded.");
 
-static int __init acntpc_init(void)
-{
-	return synth_add(&synth_acntpc);
-}
-
-static void __exit acntpc_exit(void)
-{
-	synth_remove(&synth_acntpc);
-}
+module_spk_synth(synth_acntpc);
 
-module_init(acntpc_init);
-module_exit(acntpc_exit);
 MODULE_AUTHOR("Kirk Reiser <kirk@braille.uwo.ca>");
 MODULE_AUTHOR("David Borowski");
 MODULE_DESCRIPTION("Speakup support for Accent PC synthesizer");
diff --git a/drivers/staging/speakup/speakup_acntsa.c b/drivers/staging/speakup/speakup_acntsa.c
index 3f2b569..af2690f 100644
--- a/drivers/staging/speakup/speakup_acntsa.c
+++ b/drivers/staging/speakup/speakup_acntsa.c
@@ -143,18 +143,8 @@ module_param_named(start, synth_acntsa.startup, short, S_IRUGO);
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
 MODULE_PARM_DESC(start, "Start the synthesizer once it is loaded.");
 
-static int __init acntsa_init(void)
-{
-	return synth_add(&synth_acntsa);
-}
-
-static void __exit acntsa_exit(void)
-{
-	synth_remove(&synth_acntsa);
-}
+module_spk_synth(synth_acntsa);
 
-module_init(acntsa_init);
-module_exit(acntsa_exit);
 MODULE_AUTHOR("Kirk Reiser <kirk@braille.uwo.ca>");
 MODULE_AUTHOR("David Borowski");
 MODULE_DESCRIPTION("Speakup support for Accent SA synthesizer");
diff --git a/drivers/staging/speakup/speakup_apollo.c b/drivers/staging/speakup/speakup_apollo.c
index 678b263..51788f7 100644
--- a/drivers/staging/speakup/speakup_apollo.c
+++ b/drivers/staging/speakup/speakup_apollo.c
@@ -207,18 +207,8 @@ module_param_named(start, synth_apollo.startup, short, S_IRUGO);
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
 MODULE_PARM_DESC(start, "Start the synthesizer once it is loaded.");
 
-static int __init apollo_init(void)
-{
-	return synth_add(&synth_apollo);
-}
-
-static void __exit apollo_exit(void)
-{
-	synth_remove(&synth_apollo);
-}
+module_spk_synth(synth_apollo);
 
-module_init(apollo_init);
-module_exit(apollo_exit);
 MODULE_AUTHOR("Kirk Reiser <kirk@braille.uwo.ca>");
 MODULE_AUTHOR("David Borowski");
 MODULE_DESCRIPTION("Speakup support for Apollo II synthesizer");
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
diff --git a/drivers/staging/speakup/speakup_bns.c b/drivers/staging/speakup/speakup_bns.c
index 2f07028..80f8358 100644
--- a/drivers/staging/speakup/speakup_bns.c
+++ b/drivers/staging/speakup/speakup_bns.c
@@ -127,18 +127,8 @@ module_param_named(start, synth_bns.startup, short, S_IRUGO);
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
 MODULE_PARM_DESC(start, "Start the synthesizer once it is loaded.");
 
-static int __init bns_init(void)
-{
-	return synth_add(&synth_bns);
-}
+module_spk_synth(synth_bns);
 
-static void __exit bns_exit(void)
-{
-	synth_remove(&synth_bns);
-}
-
-module_init(bns_init);
-module_exit(bns_exit);
 MODULE_AUTHOR("Kirk Reiser <kirk@braille.uwo.ca>");
 MODULE_AUTHOR("David Borowski");
 MODULE_DESCRIPTION("Speakup support for Braille 'n Speak synthesizers");
diff --git a/drivers/staging/speakup/speakup_decext.c b/drivers/staging/speakup/speakup_decext.c
index 5550290..2b772f8 100644
--- a/drivers/staging/speakup/speakup_decext.c
+++ b/drivers/staging/speakup/speakup_decext.c
@@ -234,18 +234,8 @@ module_param_named(start, synth_decext.startup, short, S_IRUGO);
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
 MODULE_PARM_DESC(start, "Start the synthesizer once it is loaded.");
 
-static int __init decext_init(void)
-{
-	return synth_add(&synth_decext);
-}
-
-static void __exit decext_exit(void)
-{
-	synth_remove(&synth_decext);
-}
+module_spk_synth(synth_decext);
 
-module_init(decext_init);
-module_exit(decext_exit);
 MODULE_AUTHOR("Kirk Reiser <kirk@braille.uwo.ca>");
 MODULE_AUTHOR("David Borowski");
 MODULE_DESCRIPTION("Speakup support for DECtalk External synthesizers");
diff --git a/drivers/staging/speakup/speakup_decpc.c b/drivers/staging/speakup/speakup_decpc.c
index 7c9c432..f7b9c8a 100644
--- a/drivers/staging/speakup/speakup_decpc.c
+++ b/drivers/staging/speakup/speakup_decpc.c
@@ -491,18 +491,8 @@ module_param_named(start, synth_dec_pc.startup, short, S_IRUGO);
 
 MODULE_PARM_DESC(start, "Start the synthesizer once it is loaded.");
 
-static int __init decpc_init(void)
-{
-	return synth_add(&synth_dec_pc);
-}
-
-static void __exit decpc_exit(void)
-{
-	synth_remove(&synth_dec_pc);
-}
+module_spk_synth(synth_dec_pc);
 
-module_init(decpc_init);
-module_exit(decpc_exit);
 MODULE_AUTHOR("Kirk Reiser <kirk@braille.uwo.ca>");
 MODULE_AUTHOR("David Borowski");
 MODULE_DESCRIPTION("Speakup support for DECtalk PC synthesizers");
diff --git a/drivers/staging/speakup/speakup_dectlk.c b/drivers/staging/speakup/speakup_dectlk.c
index 69e7c2b..b5a23d4 100644
--- a/drivers/staging/speakup/speakup_dectlk.c
+++ b/drivers/staging/speakup/speakup_dectlk.c
@@ -306,18 +306,8 @@ module_param_named(start, synth_dectlk.startup, short, S_IRUGO);
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
 MODULE_PARM_DESC(start, "Start the synthesizer once it is loaded.");
 
-static int __init dectlk_init(void)
-{
-	return synth_add(&synth_dectlk);
-}
-
-static void __exit dectlk_exit(void)
-{
-	synth_remove(&synth_dectlk);
-}
+module_spk_synth(synth_dectlk);
 
-module_init(dectlk_init);
-module_exit(dectlk_exit);
 MODULE_AUTHOR("Kirk Reiser <kirk@braille.uwo.ca>");
 MODULE_AUTHOR("David Borowski");
 MODULE_DESCRIPTION("Speakup support for DECtalk Express synthesizers");
diff --git a/drivers/staging/speakup/speakup_dtlk.c b/drivers/staging/speakup/speakup_dtlk.c
index 89592c0..345efd3 100644
--- a/drivers/staging/speakup/speakup_dtlk.c
+++ b/drivers/staging/speakup/speakup_dtlk.c
@@ -388,18 +388,8 @@ module_param_named(start, synth_dtlk.startup, short, S_IRUGO);
 MODULE_PARM_DESC(port, "Set the port for the synthesizer (override probing).");
 MODULE_PARM_DESC(start, "Start the synthesizer once it is loaded.");
 
-static int __init dtlk_init(void)
-{
-	return synth_add(&synth_dtlk);
-}
-
-static void __exit dtlk_exit(void)
-{
-	synth_remove(&synth_dtlk);
-}
+module_spk_synth(synth_dtlk);
 
-module_init(dtlk_init);
-module_exit(dtlk_exit);
 MODULE_AUTHOR("Kirk Reiser <kirk@braille.uwo.ca>");
 MODULE_AUTHOR("David Borowski");
 MODULE_DESCRIPTION("Speakup support for DoubleTalk PC synthesizers");
diff --git a/drivers/staging/speakup/speakup_dummy.c b/drivers/staging/speakup/speakup_dummy.c
index 362342a..f668112 100644
--- a/drivers/staging/speakup/speakup_dummy.c
+++ b/drivers/staging/speakup/speakup_dummy.c
@@ -129,18 +129,8 @@ module_param_named(start, synth_dummy.startup, short, S_IRUGO);
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
 MODULE_PARM_DESC(start, "Start the synthesizer once it is loaded.");
 
-static int __init dummy_init(void)
-{
-	return synth_add(&synth_dummy);
-}
+module_spk_synth(synth_dummy);
 
-static void __exit dummy_exit(void)
-{
-	synth_remove(&synth_dummy);
-}
-
-module_init(dummy_init);
-module_exit(dummy_exit);
 MODULE_AUTHOR("Samuel Thibault <samuel.thibault@ens-lyon.org>");
 MODULE_DESCRIPTION("Speakup support for text console");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/speakup/speakup_keypc.c b/drivers/staging/speakup/speakup_keypc.c
index cef20fd..6ea0273 100644
--- a/drivers/staging/speakup/speakup_keypc.c
+++ b/drivers/staging/speakup/speakup_keypc.c
@@ -319,18 +319,8 @@ module_param_named(start, synth_keypc.startup, short, S_IRUGO);
 MODULE_PARM_DESC(port, "Set the port for the synthesizer (override probing).");
 MODULE_PARM_DESC(start, "Start the synthesizer once it is loaded.");
 
-static int __init keypc_init(void)
-{
-	return synth_add(&synth_keypc);
-}
-
-static void __exit keypc_exit(void)
-{
-	synth_remove(&synth_keypc);
-}
+module_spk_synth(synth_keypc);
 
-module_init(keypc_init);
-module_exit(keypc_exit);
 MODULE_AUTHOR("David Borowski");
 MODULE_DESCRIPTION("Speakup support for Keynote Gold PC synthesizers");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/speakup/speakup_ltlk.c b/drivers/staging/speakup/speakup_ltlk.c
index 377a6e2..cc4806b 100644
--- a/drivers/staging/speakup/speakup_ltlk.c
+++ b/drivers/staging/speakup/speakup_ltlk.c
@@ -175,18 +175,8 @@ module_param_named(start, synth_ltlk.startup, short, S_IRUGO);
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
 MODULE_PARM_DESC(start, "Start the synthesizer once it is loaded.");
 
-static int __init ltlk_init(void)
-{
-	return synth_add(&synth_ltlk);
-}
-
-static void __exit ltlk_exit(void)
-{
-	synth_remove(&synth_ltlk);
-}
+module_spk_synth(synth_ltlk);
 
-module_init(ltlk_init);
-module_exit(ltlk_exit);
 MODULE_AUTHOR("Kirk Reiser <kirk@braille.uwo.ca>");
 MODULE_AUTHOR("David Borowski");
 MODULE_DESCRIPTION("Speakup support for DoubleTalk LT/LiteTalk synthesizers");
diff --git a/drivers/staging/speakup/speakup_soft.c b/drivers/staging/speakup/speakup_soft.c
index e6e93fb..fb31bb9 100644
--- a/drivers/staging/speakup/speakup_soft.c
+++ b/drivers/staging/speakup/speakup_soft.c
@@ -350,19 +350,8 @@ module_param_named(start, synth_soft.startup, short, S_IRUGO);
 
 MODULE_PARM_DESC(start, "Start the synthesizer once it is loaded.");
 
+module_spk_synth(synth_soft);
 
-static int __init soft_init(void)
-{
-	return synth_add(&synth_soft);
-}
-
-static void __exit soft_exit(void)
-{
-	synth_remove(&synth_soft);
-}
-
-module_init(soft_init);
-module_exit(soft_exit);
 MODULE_AUTHOR("Kirk Reiser <kirk@braille.uwo.ca>");
 MODULE_DESCRIPTION("Speakup userspace software synthesizer support");
 MODULE_LICENSE("GPL");
diff --git a/drivers/staging/speakup/speakup_spkout.c b/drivers/staging/speakup/speakup_spkout.c
index bccddf8..1007a61 100644
--- a/drivers/staging/speakup/speakup_spkout.c
+++ b/drivers/staging/speakup/speakup_spkout.c
@@ -146,18 +146,8 @@ module_param_named(start, synth_spkout.startup, short, S_IRUGO);
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
 MODULE_PARM_DESC(start, "Start the synthesizer once it is loaded.");
 
-static int __init spkout_init(void)
-{
-	return synth_add(&synth_spkout);
-}
-
-static void __exit spkout_exit(void)
-{
-	synth_remove(&synth_spkout);
-}
+module_spk_synth(synth_spkout);
 
-module_init(spkout_init);
-module_exit(spkout_exit);
 MODULE_AUTHOR("Kirk Reiser <kirk@braille.uwo.ca>");
 MODULE_AUTHOR("David Borowski");
 MODULE_DESCRIPTION("Speakup support for Speak Out synthesizers");
diff --git a/drivers/staging/speakup/speakup_txprt.c b/drivers/staging/speakup/speakup_txprt.c
index dbe84b1..6c21e71 100644
--- a/drivers/staging/speakup/speakup_txprt.c
+++ b/drivers/staging/speakup/speakup_txprt.c
@@ -127,18 +127,8 @@ module_param_named(start, synth_txprt.startup, short, S_IRUGO);
 MODULE_PARM_DESC(ser, "Set the serial port for the synthesizer (0-based).");
 MODULE_PARM_DESC(start, "Start the synthesizer once it is loaded.");
 
-static int __init txprt_init(void)
-{
-	return synth_add(&synth_txprt);
-}
+module_spk_synth(synth_txprt);
 
-static void __exit txprt_exit(void)
-{
-	synth_remove(&synth_txprt);
-}
-
-module_init(txprt_init);
-module_exit(txprt_exit);
 MODULE_AUTHOR("Kirk Reiser <kirk@braille.uwo.ca>");
 MODULE_AUTHOR("David Borowski");
 MODULE_DESCRIPTION("Speakup support for Transport synthesizers");
-- 
1.9.1


