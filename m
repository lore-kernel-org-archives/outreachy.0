X-GM-THRID: 8728898174976
X-Received: by 10.236.15.167 with SMTP id f27mr66272119yhf.8.1426577390174;
        Tue, 17 Mar 2015 00:29:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.102 with SMTP id 93ls2802qge.54.gmail; Tue, 17 Mar 2015
 00:29:50 -0700 (PDT)
X-Received: by 10.236.202.66 with SMTP id c42mr57386834yho.18.1426577390024;
        Tue, 17 Mar 2015 00:29:50 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id ri9si2386162pdb.1.2015.03.17.00.29.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 00:29:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id cy3so1750637pad.3
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 00:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=7d5+RP/YhfBSkXQhN69zg9T5OnIzbpec8KqxlW5g+y0=;
        b=0sYmH5tMtJY2Z2+gn1JV4A5HZbLjshjUJ3lWA55/pu7vRGf+apyJzhMpAtXTv6THjI
         sLr5Ru/NSQ5yorpVeIsrSMKZ5zf8Ftr908vrZyEx8SkX6yo+xemfODvwx1UsP7VYiSa0
         ZGFcVSbyBtTFnCK3Tg9I5L27lX9o4mCqNcXRhrycACzXek+u3ANBZmu6mMM8TnnV6I7W
         1oczkOfUIDgwDV677WtDNwU9FxxV0raEBStp2FLIUt6DAn4RZRJ+49py8GswaNDQKada
         yg1A//RCQMi/+UwF4g50vyQtfzUkdlGGzKguvXYq9jU71IQFUjCSjbHGOI3J5V73D7AA
         GWyQ==
X-Received: by 10.70.91.131 with SMTP id ce3mr137063401pdb.30.1426577389613;
        Tue, 17 Mar 2015 00:29:49 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from vaishali-Ideapad-Z570 ([43.249.235.206])
        by mx.google.com with ESMTPSA id qd6sm20709149pdb.89.2015.03.17.00.29.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 17 Mar 2015 00:29:49 -0700 (PDT)
Date: Tue, 17 Mar 2015 12:59:45 +0530
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/2] Staging: speakup: Add helper macro for spk_synth
 boilerplate
Message-ID: <93e46b6ee278940db8dc7a4934b8115248f5131f.1426576680.git.vthakkar1994@gmail.com>
References: <cover.1426576680.git.vthakkar1994@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426576680.git.vthakkar1994@gmail.com>
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

 drivers/staging/speakup/spk_types.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/staging/speakup/spk_types.h b/drivers/staging/speakup/spk_types.h
index 8c565c9..5d0bc5f 100644
--- a/drivers/staging/speakup/spk_types.h
+++ b/drivers/staging/speakup/spk_types.h
@@ -16,6 +16,7 @@
 #include <linux/spinlock.h>
 #include <linux/mutex.h>
 #include <linux/io.h>		/* for inb_p, outb_p, inb, outb, etc... */
+#include <linux/device.h>	/* for struct device */
 
 enum var_type_t {
 	VAR_NUM = 0,
@@ -179,6 +180,15 @@ struct spk_synth {
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
+	 module_driver(__spk_synth, synth_add, synth_remove)
 struct speakup_info_t {
 	spinlock_t spinlock;
 	int port_tts;
-- 
1.9.1


