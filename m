X-GM-THRID: 6395138092490031104
X-Received: by 10.99.96.10 with SMTP id u10mr2892227pgb.141.1488984118531;
        Wed, 08 Mar 2017 06:41:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.191.134 with SMTP id p128ls1069010iof.31.gmail; Wed, 08
 Mar 2017 06:41:57 -0800 (PST)
X-Received: by 10.99.114.70 with SMTP id c6mr2985880pgn.17.1488984117570;
        Wed, 08 Mar 2017 06:41:57 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id g82si612211pfb.5.2017.03.08.06.41.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 06:41:57 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 25so3621287pgy.3
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 06:41:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=5J2FMejGy2oPR6O9+c+aZAaKBavzxZ5EsGj8/wHsQzc=;
        b=nhJPqdroUpEciyL+/YaNWh7PTwiFGHoNKPaEPVjcPUfiGS57zBZweMUAnVwiT21jys
         I6wn/3dszwLwTJXjqAfQ57sQawiQOV6XtQ8NQXS1/2BAofcWbIlmQ7xoGakbl4en7I5j
         x/NBIyPSknuCWUos9N1gVTGxFqbxGKYefWWRPok4CsQg1U6AgM8/9H/BKoumxgJdonO/
         ynchm9Dt3TkiwQnTgEKYY/fGJMMsttnqNmdnr0gis4qt9hetCkHlnLsQgnf23Ryfbpki
         xaGypFGGQI+UuiwL3fB8Pv7oIxdWGsncd/E9P1PDZEedW3xYDD10KHJd6GdXSwfwyUEx
         Ygdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5J2FMejGy2oPR6O9+c+aZAaKBavzxZ5EsGj8/wHsQzc=;
        b=JLD4JtKg1qgskO1vigS91xs+8bhBwP14DoCDzCuX7/BcdFdh0a/U3PJtJrArGemVwd
         xadkNz2G5hScAjqy4qlddJmqH5VmJTYnWNswmY4HT6b2S03t3SenGlcrW3qlhvdQItx7
         XwsXg/nP6AGStZDTc5HAax4L+oEldVkTcycAotXJIln4rATsrqV2bIFtDenRUgWnNlhd
         2XExJQLORG4IiEDOxk1X6z0WxCD+JDsgE2ZCvWCoG7KSwX09ZZ9CmiKWEcnuEh6530Tw
         sU4jknpfiZS54yijAKDe9Mg//BVpVq3Pg3tA47NgVZBpkggajNIWVUbO/BYMlCRmy6rn
         Z0sg==
X-Gm-Message-State: AMke39mLebVn5/UZTDliD5DZNNkOtgRQPJjROb4+9Ina8ZOL9EEh8ao+3bJT93vXd+Befw==
X-Received: by 10.99.6.76 with SMTP id 73mr7333223pgg.83.1488984117348;
        Wed, 08 Mar 2017 06:41:57 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id e16sm6741042pfb.102.2017.03.08.06.41.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 06:41:56 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: greybus: Remove unneeded header file
Date: Wed,  8 Mar 2017 20:09:30 +0530
Message-Id: <1488983970-8493-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

module.h contains a call to moduleparam.h making the call to it
redundant and useless.

The Coccinelle semantic patch used to make this change is as follows:
@ includesmodule @
@@

@ depends on includesmodule @
@@

- #include <linux/moduleparam.h>

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
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


