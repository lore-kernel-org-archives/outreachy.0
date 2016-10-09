X-GM-THRID: 6339307459607265280
X-Received: by 10.31.141.193 with SMTP id p184mr6254030vkd.21.1475985036279;
        Sat, 08 Oct 2016 20:50:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.169 with SMTP id 38ls8265403otx.46.gmail; Sat, 08 Oct
 2016 20:50:35 -0700 (PDT)
X-Received: by 10.157.43.147 with SMTP id u19mr7189645ota.77.1475985035822;
        Sat, 08 Oct 2016 20:50:35 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id a62si1607851vke.2.2016.10.08.20.50.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 20:50:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id 2so3160152vkb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 20:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=lB6vBIga9ZMcG8+lJhSWqSghPd7PjrlOw25cmF2a5xI=;
        b=QDi0QZd7gWcPYrAZfNebsqu+Y3rzcHKhcgH5hGDTIH2Jr4XVfm8FbVtLfcSrTV1vsE
         aZ1/Osc3aoJCjf+RbqWs9nkPB/zM6doKnHlztUMpNzZeszl8hjvZpC3B1PukNuwrIlm/
         Ieq2kdGiLzHFfMEa3dsc3jdtpK3agrOQ3+4LRkpIdWBg6VdhowDl4hrqsY1jAHIG0yFD
         d+iLizilKioYtrA6+igJLJQleM6yzs4XMW7AKZo6WXx1bhXvTvB+A9HWDYUtfXr1F+Zk
         jadmVxtuG40gOGm3T2vQjJurCaPJtVv14JxWSh9q+wzWyfq0MahgXjIAuDNNc+G3fazY
         CkJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=lB6vBIga9ZMcG8+lJhSWqSghPd7PjrlOw25cmF2a5xI=;
        b=HljIJp7hkCW72OjHUC14wpwK7OVpmhGuN52tMgxNl+2CmwcGvy1ZjQbfEa3HUmNQp8
         jHpCVE/u7ewIFWIi5SESiF4AMr3RE5DliblsDyX0yIOVCmbpRBAbflXk3aUAsvIOys51
         uTwF554sEnssuriMTC8o4msiOcXmmrIlMBs0GUoJ3xO4abXoUIGIMvgrVZFZ49Oe7FVL
         k3NbkE4vhH8ocVEFlM2bZa6mtmWZQmkyAm0Op7XuA7C5Trw/puk75gg2yTjEbmmE+7Ig
         j6coq/gSjSI9+7NYMN35DKRCN041UOINt9gnoqtGjVjzvNwIS++87Kpf20YfNNgqOs0q
         ofOQ==
X-Gm-Message-State: AA6/9Rkm6Vvm7atooF09gQyVXHmVnUoeYih+/2NuScNbc4pGbQ3x9m+dL5NWD4RXxTVHcg==
X-Received: by 10.31.87.133 with SMTP id l127mr19208468vkb.152.1475985035645;
        Sat, 08 Oct 2016 20:50:35 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id i28sm2784332uab.8.2016.10.08.20.50.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 20:50:35 -0700 (PDT)
Date: Sun, 9 Oct 2016 00:50:29 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: jarod@wilsonet.com, mchehab@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: lirc: Format block comments.
Message-ID: <20161009035029.GA5358@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: Block comments use a trailing */ on a separate line

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/media/lirc/lirc_sasem.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/lirc/lirc_sasem.c b/drivers/staging/media/lirc/lirc_sasem.c
index 4678ae1..920c4a1 100644
--- a/drivers/staging/media/lirc/lirc_sasem.c
+++ b/drivers/staging/media/lirc/lirc_sasem.c
@@ -103,7 +103,8 @@ struct sasem_context {
 
 	struct tx_t {
 		unsigned char data_buf[SASEM_DATA_BUF_SZ]; /* user data
-							    * buffer */
+							    * buffer
+							    */
 		struct completion finished;  /* wait for write to finish  */
 		atomic_t busy;		     /* write in progress */
 		int status;		     /* status of tx completion */
@@ -295,7 +296,8 @@ static int vfd_close(struct inode *inode, struct file *file)
 		if (!context->dev_present && !context->ir_isopen) {
 			/* Device disconnected before close and IR port is
 			 * not open. If IR port is open, context will be
-			 * deleted by ir_close. */
+			 * deleted by ir_close.
+			 */
 			mutex_unlock(&context->ctx_lock);
 			delete_context(context);
 			return retval;
@@ -397,7 +399,8 @@ static ssize_t vfd_write(struct file *file, const char __user *buf,
 
 	/* Nine 8 byte packets to be sent */
 	/* NOTE: "\x07\x01\0\0\0\0\0\0" or "\x0c\0\0\0\0\0\0\0"
-	 *       will clear the VFD */
+	 *       will clear the VFD
+	 */
 	for (i = 0; i < 9; i++) {
 		switch (i) {
 		case 0:
-- 
2.7.4


