X-GM-THRID: 10181885820928
X-Received: by 10.43.64.143 with SMTP id xi15mr50391719icb.0.1427564675037;
        Sat, 28 Mar 2015 10:44:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.36.230 with SMTP id p93ls134200qgp.95.gmail; Sat, 28 Mar
 2015 10:44:34 -0700 (PDT)
X-Received: by 10.236.207.68 with SMTP id m44mr28544710yho.25.1427564674795;
        Sat, 28 Mar 2015 10:44:34 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id iw3si593770pbd.1.2015.03.28.10.44.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Mar 2015 10:44:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id wz10so74863530pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2015 10:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :content-type:content-transfer-encoding;
        bh=miBKfFdDevvzFKOOa1nyVJyYF3QtazVcZ56WIBICy/E=;
        b=rc+dQfLCuPeccp9KJLecGzLVRVrQ5n9+78nX+2W3qGtpksr5EXVCdhKLiPekiM6aA+
         aN0Q4rNQmjIvo2NRteRRDhiJvFBtQiW+0avoGvgv7FZVIaMdV4QKh9qGBEAvqDG5YsO6
         YvyenKDQRA28ADLAyXWXP9H2O0NMjBH0T2j6TPBJbeiRe+x9WzPnW4EhKZzTwg2yzt6A
         IgNMG5qn0NSfCMRgNM9xnYkeISjAnMvTNL0UydFoEBTzwfDXDk08GGcpFLh0eQ/vnu2e
         Ia/s+ELvY5PAMBGazeQTcYUxt4/9wAQn9hOVGWiSLf8S2lmgZ+ESVturQdYuJ2YhTXC3
         Ri7Q==
X-Received: by 10.66.118.136 with SMTP id km8mr44643438pab.43.1427564674700;
        Sat, 28 Mar 2015 10:44:34 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([101.63.212.243])
        by mx.google.com with ESMTPSA id d4sm5623715pdm.50.2015.03.28.10.44.31
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 28 Mar 2015 10:44:33 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH 1/6] Staging: lustre: Make obd_proc_version_seq_show static
Date: Sat, 28 Mar 2015 23:13:52 +0530
Message-Id: <1427564637-10305-2-git-send-email-darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1427564637-10305-1-git-send-email-darshanapadmadas@gmail.com>
References: <1427564637-10305-1-git-send-email-darshanapadmadas@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

The function obd_proc_version_seq_show is only used in this
file, so make it static.

This eliminates the following sparse warning:
warning: symbol 'obd_proc_version_seq_show' was not declared. Should it be static?

Signed-off-by: Darshana Padmadas <darshanapadmadas@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/linux/linux-module.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c b/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c
index 75e704d..06944b8 100644
--- a/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c
+++ b/drivers/staging/lustre/lustre/obdclass/linux/linux-module.c
@@ -217,7 +217,7 @@ struct miscdevice obd_psdev = {
 
 
 #if defined (CONFIG_PROC_FS)
-int obd_proc_version_seq_show(struct seq_file *m, void *v)
+static int obd_proc_version_seq_show(struct seq_file *m, void *v)
 {
 	seq_printf(m, "lustre: %s\nkernel: %s\nbuild:  %s\n",
 		   LUSTRE_VERSION_STRING, "patchless_client", BUILD_VERSION);
-- 
1.9.1


