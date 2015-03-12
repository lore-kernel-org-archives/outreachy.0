X-GM-THRID: 7783898415104
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,50e70a48f0408055
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.80.7 with SMTP id n7mr40130219obx.10.1426134467344;
        Wed, 11 Mar 2015 21:27:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.230.101 with SMTP id sx5ls379932obc.54.gmail; Wed, 11 Mar
 2015 21:27:47 -0700 (PDT)
X-Received: by 10.182.66.8 with SMTP id b8mr32608690obt.23.1426134467192;
        Wed, 11 Mar 2015 21:27:47 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id gb13si1082829pac.2.2015.03.11.21.27.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2015 21:27:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mail=iskaranth@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x230.google.com with SMTP id fb1so17125015pad.7
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2015 21:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
         :references;
        bh=9mkATMss1pgonCPP8KVGQ7Aer6P3dPZVgSDPb4+p9GE=;
        b=jwQgw0n9yfSNVwW9Jjjn/BgflSs5yMMcjLwy3FTArFXhkLfCkE02OvTcwvzjSpRLrs
         UF1IQFKUWyjYVg4BP+zH5RQJNS15op7dATf/RCbC1lSi4/j/Dfavhafu3ZyGMBH4cByB
         mDooE/Z+5nb4XklGyXd3lnN6km9NlTSaBrfxIZ/U5BoPIweMHUgvG7eK4zkxiIOj7PvY
         T+aBz41zLnf2jhmrXqUqvCpCwWg8z6c+mpI3fn2NChWEPc7Od37LSY70UBamoTs6hQRa
         S4hdguRjkxHn0B/SZ2XoCPmp83yyEAmT0IqAm9L2BI/gjSF9/5QY9TZRDW8MJIbLSS6/
         WJjw==
X-Received: by 10.70.41.71 with SMTP id d7mr65940727pdl.44.1426134467092;
        Wed, 11 Mar 2015 21:27:47 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from localhost.localdomain ([222.117.133.143])
        by mx.google.com with ESMTPSA id ny9sm8476191pdb.37.2015.03.11.21.27.44
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Mar 2015 21:27:46 -0700 (PDT)
From: Supriya Karanth <iskaranth@gmail.com>
To: iskaranth@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 4/4] staging: sm750fb: remove intialization of static ints
Date: Thu, 12 Mar 2015 13:26:21 +0900
Message-Id: <eab81b25a9f49d778372602918f4e642bb2acbb0.1426129493.git.iskaranth@gmail.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <cover.1426129493.git.iskaranth@gmail.com>
References: <cover.1426129493.git.iskaranth@gmail.com>
In-Reply-To: <cover.1426129493.git.iskaranth@gmail.com>
References: <cover.1426129493.git.iskaranth@gmail.com>

static ints are initialized to 0 by the compiler.
Explicit initialization is not necessary.

Found by checkpatch.pl - ERROR: do not initialise statics to 0 or NULL

changes made using coccinelle script:
@@
type T;
identifier var;
@@
static T var
- =0
;

Signed-off-by: Supriya Karanth <iskaranth@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index aa0888c..343137f 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -46,14 +46,14 @@ typedef int (*PROC_SPEC_INITHW)(struct lynx_share*,struct pci_dev*);
 
 /* common var for all device */
 static int g_hwcursor = 1;
-static int g_noaccel = 0;
+static int g_noaccel;
 #ifdef CONFIG_MTRR
-static int g_nomtrr  = 0;
+static int g_nomtrr;
 #endif
 static const char * g_fbmode[] = {NULL,NULL};
 static const char * g_def_fbmode = "800x600-16@60";
 static char * g_settings = NULL;
-static int g_dualview = 0;
+static int g_dualview;
 static char * g_option = NULL;
 
 /* if not use spin_lock,system will die if user load driver
-- 
2.1.0


