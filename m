X-GM-THRID: 6337746804060192768
X-Received: by 10.129.95.137 with SMTP id t131mr4530895ywb.41.1475977231842;
        Sat, 08 Oct 2016 18:40:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.18 with SMTP id 18ls8010569ote.9.gmail; Sat, 08 Oct 2016
 18:40:31 -0700 (PDT)
X-Received: by 10.200.39.79 with SMTP id h15mr4403586qth.73.1475977231275;
        Sat, 08 Oct 2016 18:40:31 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x241.google.com (mail-vk0-x241.google.com. [2607:f8b0:400c:c05::241])
        by gmr-mx.google.com with ESMTPS id p131si2262649vkf.1.2016.10.08.18.40.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 18:40:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) client-ip=2607:f8b0:400c:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::241 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x241.google.com with SMTP id 192so3115874vkl.2
        for <outreachy-kernel@googlegroups.com>; Sat, 08 Oct 2016 18:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=XI59/j4m+RBRfVCVm9STWt9vsjdOzZEWaumqyCWNpPs=;
        b=klDaulthEAVnVdBBhwCVPuIqsszTyNnqHRT6s6IIyGYtaBAu5uTn3ODJJLFyYZPLOh
         nwBolqLMamqGIZhOhwlZ6KkVwsn85UjWmLnOI9hkOwkjuotfgwCXh+XUkRajcZ7eq/AD
         gvAcA5PxVU9mIrLDYZPppfn9hFoXKqnxDwSR7E5e0XgxNlI1dWVl5eVBHyIoGoxkpscg
         0k5u/zHiFI60a8m/2szpjuJyxlxHd/K40CaKfzrxI7upQSuHzCu3W/5l2HdWgy/8WLH+
         sqBnHZJvF4WkI0ytcKLRs7BffW1QuZRgzvsTq/vNxkveMg/bBX5C+t+SzmwjwZ6yBIsQ
         OvJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=XI59/j4m+RBRfVCVm9STWt9vsjdOzZEWaumqyCWNpPs=;
        b=lNKMBMmfm+NO/fqKN/oWNlE/gigfd3nKgyruvAs8O+KVaPbRePv20CKYycLzKQTOAA
         JqYVAlV0cVE9uZ6MldHkCTVxOFWjZ8ULbPtKuxUBNLMnMhUo+9u6g4WPrLUPPIOXV+CW
         Kxja9PZw4ejnHkLlfXxM2HM/Bsb7yZqcRoDAWXKQcv1Qgex0ep+7VQHJCvmBT1pqkGoo
         WmP5vTfaQxHvEzB04vgjkHE9JaF+V/SvvtQXXzhm+PTXVRzhXXP1jICdhTWMQBUsLZXu
         uMF5f2bpI3IST86F2G8zZ4hsTen+I4EGQyaCIBRlpvIIXUM531NL0Uv0JOrO+U3preCV
         LUUA==
X-Gm-Message-State: AA6/9Rl9Kv+ohFZDr4wZS1/pQqKVbh8GkjJ9X5dLtM3yyXVaRchbJUr/BBOBf0Q12a33eg==
X-Received: by 10.31.147.138 with SMTP id v132mr19160251vkd.91.1475977231131;
        Sat, 08 Oct 2016 18:40:31 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id q10sm5285520vkd.0.2016.10.08.18.40.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Oct 2016 18:40:30 -0700 (PDT)
Date: Sat, 8 Oct 2016 22:40:24 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v4] staging: sm750fb: Replace printk() with pr_info().
Message-ID: <20161009014024.GA30473@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: printk() should include KERN_ facility level

New checkpatch warning appears after including KERN_ facility level.

Fix checkpatch warning:

WARNING: Prefer [subsystem eg: netdev]_info([subsystem]dev, ... then dev_info(dev, ... then pr_info(...  to printk(KERN_INFO ...

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/sm750fb/ddk750_help.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_help.c b/drivers/staging/sm750fb/ddk750_help.c
index 9637dd3..e72a29c 100644
--- a/drivers/staging/sm750fb/ddk750_help.c
+++ b/drivers/staging/sm750fb/ddk750_help.c
@@ -11,7 +11,7 @@ void ddk750_set_mmio(void __iomem *addr, unsigned short devId, char revId)
 	devId750 = devId;
 	revId750 = revId;
 	if (revId == 0xfe)
-		printk("found sm750le\n");
+		pr_info("found sm750le\n");
 }
 
 
-- 
2.7.4


