X-GM-THRID: 6254903561319088128
X-Received: by 10.129.108.3 with SMTP id h3mr38315007ywc.31.1456333222559;
        Wed, 24 Feb 2016 09:00:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.103.102 with SMTP id fv6ls135894igb.43.gmail; Wed, 24 Feb
 2016 09:00:22 -0800 (PST)
X-Received: by 10.66.142.230 with SMTP id rz6mr18545044pab.31.1456333222126;
        Wed, 24 Feb 2016 09:00:22 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id 12si506677pfb.1.2016.02.24.09.00.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 09:00:22 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id yy13so15481455pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 09:00:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=AzjOeS1bKfmFAzJ+bMpCbMDH0yAfQWWCc2OLrrHEFO4=;
        b=yYT8tU4Sr9qJBemhc69GQoYUhhsMwUhFc/MdcoDAQ9T9gpzLfgYmP1pK3kbqZjDIv6
         IYKL0jRCu5+8RPJvB5Jde5vlBnQuv/IfuoW8e5pxCmKZVbODaBYpsG5vfjpoLTjdccNx
         nWZ89iI7v6+jS3aAQk3YKJN5K4biJe2m9da9w6qI5sVDQ8bL5jZbDmc6fOw/Tm/1leen
         0qq/7TGWpGKDQsSs0xEhFndSwSPWwpWulzf3Fbfq+EhHptRldxVjGY2lb8issc2jx6KV
         0gAE2j2jjkn6FSPzOLmZLFlbVHiAAYpR7rw9CEUl/KnPniIwgoh4GrsZKNm29X3jARRj
         BREw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=AzjOeS1bKfmFAzJ+bMpCbMDH0yAfQWWCc2OLrrHEFO4=;
        b=KPy94XwjvI6yVMPiXwpMLx5lnlvgl+wMB7T4XPwk7b/QHFFSByQHpNQ6yQ3ujUwaxU
         OGLI9qRChlwDbFrZK5ZVw/25JsDuqG8vxtxH8WsV2/NqWvpFmaU8ixEj9DQDTKrQy5ke
         gPSu0tVH10yMlvRoBe5M62dTkn3G9mGG0nA6XZFpWEFro7riG/Bg3KKoeeEca0lHVsU9
         QITG+6/B563CgzPyYV3zH7xR2413UHSWZScslORrwVDHr9GJYtiHs6ZatjjHrWYW15z0
         2zpN78e1VWlBXJMTpSCLTkA7OFWLzdbz7Q6A7G4YxyA9VLQLSDpZVPnbFKUfE4/ya2rH
         fspg==
X-Gm-Message-State: AG10YOTP9eCDf4KtAazbxYWSvqGMvLPY4dDN8vDIqopJBfF5GyV2ghOuqO1QLYOoreVidg==
X-Received: by 10.67.3.67 with SMTP id bu3mr4387380pad.39.1456333221932;
        Wed, 24 Feb 2016 09:00:21 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.170.221])
        by smtp.gmail.com with ESMTPSA id ac1sm6289931pad.41.2016.02.24.09.00.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 09:00:21 -0800 (PST)
Date: Wed, 24 Feb 2016 22:30:15 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Remove parentheses from return arguments
Message-ID: <20160224170014.GA7049@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove unnecessary parentheses from return arguments.

The Coccinelle semantic patch that makes this change is as follows:

// <smpl>
@@
identifier i;
constant c;
@@

return
- (
    \(i\|-i\|i(...)\|c\)
- )
  ;
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_hwi2c.c  | 4 ++--
 drivers/staging/sm750fb/ddk750_sii164.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_hwi2c.c b/drivers/staging/sm750fb/ddk750_hwi2c.c
index 231c021..39c3e1c 100644
--- a/drivers/staging/sm750fb/ddk750_hwi2c.c
+++ b/drivers/staging/sm750fb/ddk750_hwi2c.c
@@ -63,7 +63,7 @@ static long hw_i2c_wait_tx_done(void)
 		timeout--;
 
 	if (timeout == 0)
-		return (-1);
+		return -1;
 
 	return 0;
 }
@@ -248,7 +248,7 @@ int sm750_hw_i2c_write_reg(
 	if (hw_i2c_write_data(addr, 2, value) == 2)
 		return 0;
 
-	return (-1);
+	return -1;
 }
 
 #endif
diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
index 9fd6afb..67f36e7 100644
--- a/drivers/staging/sm750fb/ddk750_sii164.c
+++ b/drivers/staging/sm750fb/ddk750_sii164.c
@@ -236,7 +236,7 @@ long sii164InitChip(
 	}
 
 	/* Return -1 if initialization fails. */
-	return (-1);
+	return -1;
 }
 
 
-- 
1.9.1


