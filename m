X-GM-THRID: 6395138092490031104
X-Received: by 10.200.50.241 with SMTP id a46mr1555698qtb.13.1488987460499;
        Wed, 08 Mar 2017 07:37:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.73.132 with SMTP id g4ls3444777otf.39.gmail; Wed, 08 Mar
 2017 07:37:40 -0800 (PST)
X-Received: by 10.157.43.49 with SMTP id o46mr2618619otb.27.1488987460112;
        Wed, 08 Mar 2017 07:37:40 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 2si632537pfz.1.2017.03.08.07.37.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 07:37:40 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id b5so3769213pgg.1
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 07:37:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=vmZYqtP9yCUEUP78ZtT0JRlJv4nJYTRZwqkdwmzxrJc=;
        b=XYRd0bZlzEQvC4lNY3J9Dcai+1392VZUCJjvjxz2t4LYTHltweRCIrSmvH7VRQjtKo
         I5lOwlf0H+qEywMMJunEKpd9K5qZFnaHIsB/jllx8xaYWfdrTlTd6Z+v2FetgQHJQzi8
         lJhj7K24pNQV7B3FOXPEXXNjD8PCJnbn7Ckx4AxC2Lz3zza63hku5zbUar5kujABw446
         ADMCu8m4EQ6RhWKYeGTXaKrEt+DeMbqC+BM/lVcSIvrd63a5IPDpHBIOOHdcTYqzx7sj
         hssYEI21Q5k15OK9JsIpMITC+/CHIMCYcvajjF/V6La6SNswdcxaOtMXUrB52iZOPjoh
         6Czw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=vmZYqtP9yCUEUP78ZtT0JRlJv4nJYTRZwqkdwmzxrJc=;
        b=ojIGVPwScvaSDF0HXothGetkXtNSNoloZbzGp4Effqkab3EMB484WdVd2I638WlZdK
         Yddg9sA5NfiC8aTSJVduqAO2ZU87nRZNLHb6GnwY/9FaqRjRa0Z7zY/3CouPCHU8MoOK
         +eJUJYnZasqdjk3MMziI3ixdWxX3PmEqgZN3678rZILc4uUWyeNdU0KcqwqvxBHoTeoh
         Uu3H1kLdLFUQAF2pF8S6P3GBdNd25hL5r23IkA6daHZ7zdO9wrYw1YdH1jFFBS7tHT7T
         Zrcg5Se9f+DDonxbbXoSarea2Rgn7ZaRWa7n1x4+2IyxJ33MhQ3v0euznmrPtUmynMg4
         hPXA==
X-Gm-Message-State: AMke39nhEY5n6MbFTZoz3UvRPUNH46YhTNNw8yRTn2cGnKnGRtoEI3rey1n/dAlo4+JZZA==
X-Received: by 10.99.50.70 with SMTP id y67mr7527598pgy.109.1488987459779;
        Wed, 08 Mar 2017 07:37:39 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id b70sm6988063pfc.100.2017.03.08.07.37.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 07:37:39 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2] staging: greybus: Remove unneeded header file
Date: Wed,  8 Mar 2017 21:05:10 +0530
Message-Id: <1488987310-11915-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

module.h contains a call to moduleparam.h making the call to it
redundant and useless.

@ includesmodule @
@@

 #include <linux/module.h>

@ depends on includesmodule @
@@

- #include <linux/moduleparam.h>

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
Changes in v2:
        - Added the missing line to the script.
---
 drivers/staging/greybus/gbphy.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/greybus/gbphy.c b/drivers/staging/greybus/gbphy.c
index 64a1eb9..603de6f 100644
--- a/drivers/staging/greybus/gbphy.c
+++ b/drivers/staging/greybus/gbphy.c
@@ -11,7 +11,6 @@
 
 #include <linux/types.h>
 #include <linux/module.h>
-#include <linux/moduleparam.h>
 #include <linux/kernel.h>
 #include <linux/slab.h>
 #include <linux/device.h>
-- 
2.7.4


