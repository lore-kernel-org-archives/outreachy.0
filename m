X-GM-THRID: 6337545646226014208
X-Received: by 10.200.48.196 with SMTP id w4mr602757qta.84.1475574831346;
        Tue, 04 Oct 2016 02:53:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.13 with SMTP id f13ls4527994ioe.45.gmail; Tue, 04 Oct
 2016 02:53:47 -0700 (PDT)
X-Received: by 10.66.16.73 with SMTP id e9mr606303pad.2.1475574827318;
        Tue, 04 Oct 2016 02:53:47 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-yw0-x242.google.com (mail-yw0-x242.google.com. [2607:f8b0:4002:c05::242])
        by gmr-mx.google.com with ESMTPS id v21si2531133ywa.7.2016.10.04.02.53.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Oct 2016 02:53:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) client-ip=2607:f8b0:4002:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:4002:c05::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x242.google.com with SMTP id g192so7481072ywh.0
        for <outreachy-kernel@googlegroups.com>; Tue, 04 Oct 2016 02:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6ite4asntU7T9Jutl5WYak4wvxwVEsZVOLJ91u/iLcM=;
        b=z7OBn+vcHK/emGIF9nUH5Y3QfgLkyBk+VdrsGoRe7wJ0oYqR9wHZfVhlyET0tuSgOp
         1Dw8lhbSonzJumBR8TGzOFcTkkeJy8rpNRbqiby4GCh83ZwiwnW3cx+fsoZdJr0guEdQ
         ifvm8dLnomnHYewfC7wC1NliG6paIMz/LNyQ6wd19F7CEYwV9MeKpoMZEVrNSASPWFzA
         SHd+LaxB6mrK375ckRzPK77JHzMzQUl4V24LuSGPCZKJrhjBOVSt7kKyCfOf6EDABFH8
         qIrhnfkRvlVy3pzk8WvZsh88mg5yngaGkaqaR7C9GDTC38byWuhu6NctO72PzGpLLdwa
         sWgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6ite4asntU7T9Jutl5WYak4wvxwVEsZVOLJ91u/iLcM=;
        b=LNW95BdkzWZUq2cUxrf3r0V0dEfTRX1KHY1MgZt1zvAk/qQSNyI0KchkXQ8oLrZboR
         rO/n3PC8W4GQGbPqJNsexA48XzOau3wvgzRHdHKxOszvV5qX3CO9koK35WuQYpgtDvWX
         DAa9HhKHB0IYn+8Gfg8rDQ9Tf5YYxWMDu28S2FroiJW6uy/7i+Ykm5lCJWWEAHZjFViw
         01/oKJ0NFC9aRH70i9o/QTtL8EoAbtSqUNcaK3kOllkCxDeDm3sLl9mSIacn7MSlP2KW
         AwdFF384HzC4X1OjeQOETD0Ds4n3gwKIsmp7uDTnumvP5I36LR8S7TdmBOP3YtKF1sCP
         +9GA==
X-Gm-Message-State: AA6/9RkyeEffFydDZ8xf1S9hCGt5lQdAVDPoAWeKe6GHvRf9ANye+gBSVOC+WDMuIZRlJg==
X-Received: by 10.129.169.193 with SMTP id g184mr1777601ywh.92.1475574827125;
        Tue, 04 Oct 2016 02:53:47 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id i84sm17225933ywi.7.2016.10.04.02.53.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 04 Oct 2016 02:53:46 -0700 (PDT)
Date: Tue, 4 Oct 2016 06:53:44 -0300
From: Elise-Lennion <elise.lennion@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Add log level to printk().
Message-ID: <20161004095344.GA3903@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: printk() should include KERN_ facility level

KERN_ facility levels ensure that unecessary messages, in different steps of driver implemention and testing, don't saturate the log file.

When log level is not explicited it defaults to DEFAULT_MESSAGE_LOGLEVEL (usually "4"=KERN_WARNING). A module startup message usually isn't a WARNING.

Signed-off-by: Elise-Lennion <elise.lennion@gmail.com>
---
 drivers/staging/sm750fb/ddk750_help.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/ddk750_help.c b/drivers/staging/sm750fb/ddk750_help.c
index 9637dd3..fc7e936 100644
--- a/drivers/staging/sm750fb/ddk750_help.c
+++ b/drivers/staging/sm750fb/ddk750_help.c
@@ -11,7 +11,7 @@ void ddk750_set_mmio(void __iomem *addr, unsigned short devId, char revId)
 	devId750 = devId;
 	revId750 = revId;
 	if (revId == 0xfe)
-		printk("found sm750le\n");
+		printk(KERN_INFO "found sm750le\n");
 }
 
 
-- 
2.7.4


