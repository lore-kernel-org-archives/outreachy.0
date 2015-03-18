X-GM-THRID: 9034069442560
X-Received: by 10.52.29.4 with SMTP id f4mr60652115vdh.3.1426700589697;
        Wed, 18 Mar 2015 10:43:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.132 with SMTP id d4ls501814ioj.68.gmail; Wed, 18 Mar
 2015 10:43:09 -0700 (PDT)
X-Received: by 10.66.123.74 with SMTP id ly10mr49311187pab.16.1426700589146;
        Wed, 18 Mar 2015 10:43:09 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pd0-x22a.google.com (mail-pd0-x22a.google.com. [2607:f8b0:400e:c02::22a])
        by gmr-mx.google.com with ESMTPS id pc4si3256158pac.0.2015.03.18.10.43.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 10:43:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::22a as permitted sender) client-ip=2607:f8b0:400e:c02::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c02::22a as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x22a.google.com with SMTP id op1so49364009pdb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 10:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=TsMkblkWmzYNsURWE24rMVETv7m55xlliNglzB8hUYI=;
        b=Mq4h7NnbhJJ6SgYdhF8VSshk/3DnyfxTI/n7qqcVdzSZ4w7Mx9qcT2cim/Eipf/WIZ
         8yPwqPyIxRxkF9SL9JTU1iNicCtuj9awj/422Y25QXiBXxI4QcAbhhEmq3JdlM48cqHO
         g/gBbNbKuLVoToJd+XrDtvuMbbCWJw5b3d5P8mr4ajEUWxvK5ZNsQj0Kmnt5N3M/4GXl
         Itg/N9je7/2X/SWTzzWEhFT3EZzzYx0brtUPNGGAJS4DKHBKmg+lowtw1bujy6EWM8zh
         kzi/bSbUmyHftQ1QGQtYTDlEeHg0+dR/RsC0qoWK7svNBvqvfXlV5awWiZBt+0syZk8R
         Dmmg==
X-Received: by 10.66.124.164 with SMTP id mj4mr166938726pab.83.1426700589051;
        Wed, 18 Mar 2015 10:43:09 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([150.107.240.77])
        by mx.google.com with ESMTPSA id se2sm28657992pac.38.2015.03.18.10.43.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Mar 2015 10:43:08 -0700 (PDT)
Date: Wed, 18 Mar 2015 23:13:04 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v6 1/2] Staging: speakup: Add helper macro for spk_synth
 boilerplate
Message-ID: <8d3ade257801e25a95c6f825d1339c78ef334356.1426700096.git.vthakkar1994@gmail.com>
References: <cover.1426700096.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426700096.git.vthakkar1994@gmail.com>
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
Changes since v5:
	- No change but as in a patch-series with
	  another patch, resend it

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


