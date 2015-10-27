X-GM-THRID: 6210059285862285312
X-Received: by 10.66.182.135 with SMTP id ee7mr20085984pac.32.1445937888106;
        Tue, 27 Oct 2015 02:24:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.75 with SMTP id i69ls44032qgd.21.gmail; Tue, 27 Oct
 2015 02:24:47 -0700 (PDT)
X-Received: by 10.13.203.76 with SMTP id n73mr33327326ywd.15.1445937887640;
        Tue, 27 Oct 2015 02:24:47 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id zg1si4108899pbb.2.2015.10.27.02.24.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 02:24:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id hk11so217468181pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 02:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=4U1eVS2D8T158nIBmFzazBP+99o5AvEmQ6FBWpLcvds=;
        b=Z3upDErUm5l8oFybwj4XW8nToREf0qKamq0AZHDcVV5O4LmVh5OVbjQCW8mJd8gtH9
         2RSTM3o04N4KzT3a3dR1i3AOHOBfZS+gpKG5srcbEUB9A6PYIFHOnZ9tSGxoJrl/Jo6b
         VJzeenCX8ZPZqbjIzjb7tM4AZGJU2VoRUZGzSCiVENCbkG9iqm8fsfsRVMwutKxPeeof
         Oe2wxmrTQK9SW487qhhq5AmfSwTJpfWlFttYhmxDx8vnzKy/j6vT1UzHDFRsItnYcdWY
         ZBb4Fn+tPakgL1iE8VFbxlb5LIzpXDYOqUBH4m8k5D+LM5T5xcumkLYq08XwZE0Z0wvW
         lagg==
X-Received: by 10.68.57.176 with SMTP id j16mr27620669pbq.166.1445937887510;
        Tue, 27 Oct 2015 02:24:47 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id mk5sm38682984pab.44.2015.10.27.02.24.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 02:24:47 -0700 (PDT)
Date: Tue, 27 Oct 2015 14:54:51 +0530
From: Sirnam Swetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] Staging: panel: spaces preferred around that '/'
Message-ID: <9bba2654431dadb3333f4cc869be1f2cf3fe5bbf.1445937649.git.theonly.ultimate@gmail.com>
References: <cover.1445937649.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445937649.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch issue:

CHECK: spaces preferred around that '/'

Signed-off-by: Sirnam Swetha <theonly.ultimate@gmail.com>
---
 drivers/staging/panel/panel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/panel/panel.c b/drivers/staging/panel/panel.c
index a7e3875..030a0cf 100644
--- a/drivers/staging/panel/panel.c
+++ b/drivers/staging/panel/panel.c
@@ -71,7 +71,7 @@
 #define KEYPAD_BUFFER		64
 
 /* poll the keyboard this every second */
-#define INPUT_POLL_TIME		(HZ/50)
+#define INPUT_POLL_TIME		(HZ / 50)
 /* a key starts to repeat after this times INPUT_POLL_TIME */
 #define KEYPAD_REP_START	(10)
 /* a key repeats this times INPUT_POLL_TIME */
-- 
1.9.1


