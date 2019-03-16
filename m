X-GM-THRID: 6668997090845130752
X-Received: by 2002:a5d:83c4:: with SMTP id u4mr5779618ior.34.1552746885521;
        Sat, 16 Mar 2019 07:34:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7644:: with SMTP id z65ls2292348itb.4.gmail; Sat, 16 Mar
 2019 07:34:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyx9eUCB2DtNiO09CXRCaMxSL3GzLs7h4YtOaVxqMHrmwb0tMjzzX2c5p1I2Df0YbHbC9t4
X-Received: by 2002:a24:2741:: with SMTP id g62mr724911ita.30.1552746884642;
        Sat, 16 Mar 2019 07:34:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552746884; cv=none;
        d=google.com; s=arc-20160816;
        b=quXWAGXJh1g6G5bIFMSYP3ZPo58hWHEGa48OknJ3Xw9jo+XtCOI5RHQgJi7c+k/V8e
         hEjksedZizV91Wrc23j2WoF3i9A/3MbZzFmqFwuKC52+1af5D9bGOibOT+XPsTXs3NjY
         OGC5F0lc/HkcXMgwPtNA6GbQvp/gBlkGhwV5+I1xhx6EUsAYzOAHLtLbww+8o5GuGkIq
         gD2/1GZo/3ixoD3eekKeOfOqiAq0So1tjJXvOZLK1flVo/oCGZcB+2uk2VW6TK6VUMal
         uohFgE2H9LDB7yPfcxT1N5WfUugrpHQzKb12EMsW92QLHP1VMgkQp5WGXFTAku/vfk6v
         CPcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=PMoQ6wTGAc5aO6w4gHr6jWXnBrffZmW474f6dHkQtM4=;
        b=QYsBMTv/wAQ7T3INExUW9dJyCsOFiUtPbsoaq7x9WyKkuvqk8VGplAKcMqyqJPubni
         iIoMO9QVEgosFU09WaPsY0juc0CUFUPio6guAAMMW9aJPNbwy1ytCMhFXcppDEQzpc1t
         QH9fmt5jSW9p7XXg6HP6X6JNlGada74jFVpgS8Mw4Grs060shgyBfgC7eoDXZXqdiHcF
         WD0zPcPG79RdEJbTII594M6zpk/W/2LYc6E97I1V2Ued2x18tFdBJn5r+5xxMG4lB/uS
         BVdFUbktSGG0UqEcZQGmTFZs3q2OJtYHcihydilw/qWiuYejIyDB8K7L107109qob1tW
         PT+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="HRs/jqLt";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id n185si625313itn.3.2019.03.16.07.34.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 07:34:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="HRs/jqLt";
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id e17so8414008pgd.2
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 07:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=PMoQ6wTGAc5aO6w4gHr6jWXnBrffZmW474f6dHkQtM4=;
        b=HRs/jqLtWFl7w0yvW9RuBWtp7nKtMT+6bZsR0MQFrvpN1Zxz741ZS+H09NvfLuF9CX
         Yb8dX2KbkvFRTzyaqs4hq3HmmHzS1/i2UT/WV6kOJYUK9lJCKdrEVSlGymFmvGgjH7qB
         1F2SE1FNqxsL1Fhuw4qj6aoMmBB5UBWaQxhwE0ZJnK6lM+ueXQgeQEq4zn5uP5Mpdi6q
         95zEM0DxDbgaMwoz3KLLHksJz82llxENWfXKYIUIoApueHinFmm802gXh6l0g/aiG2h6
         20f3DqLRK6ldLv6Dmk5C+CdJKVlPOM1RV+Q+uHuVznqk9Yr+LrnQ9WYY4k+/lo8/gvTL
         2XqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=PMoQ6wTGAc5aO6w4gHr6jWXnBrffZmW474f6dHkQtM4=;
        b=IUqHwUmKQEeUlY2gh5DXZwV+ks2I7a5gdPq8HbTT0SVZVxPdV3yWlcDD5nbRGjg1O0
         sL+VyMR9w8PgzZUteFZXlRJg9nVaNA4Te8ZI8sc/fXucCBzq5ZMFXq5R/getqCn82vq+
         0Xk2gmrGChzlRHypo2Wxy220OakV+q/cWHPQkc6G+YncP4DUF6XptpP7aKmEcj6FRJFr
         J87tpBlI3qhAR5Pp9Z8rJEoabfRh4OwqQyG3c9rH+otwhiBNpaI1H7rLVdM/QQqf/5Ef
         EsMW/6HhGCTQ749GV3OVJsX1IEkE1QjpCmqMQjjmq7apGkFImTpHIZ2aJxlli/w2Tdg6
         N4QQ==
X-Gm-Message-State: APjAAAVeye74Ap1JT6c/1fXVX/KZpfoK6jnubTUJQW8jqj3PqbNxhdd1
	D66xY2vo5adiSo53ZSiIJazmaTl6
X-Received: by 2002:a63:4343:: with SMTP id q64mr8515213pga.105.1552746883835;
        Sat, 16 Mar 2019 07:34:43 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.92.32])
        by smtp.gmail.com with ESMTPSA id x7sm7472698pgc.7.2019.03.16.07.34.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Mar 2019 07:34:42 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] staging: greybus: definitions with comments
Date: Sat, 16 Mar 2019 20:04:26 +0530
Message-Id: <1552746866-11000-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Code can be better understand by comments. Comments given to definition
of mutex and spinlock_t

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/greybus/connection.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/connection.h b/drivers/staging/greybus/connection.h
index 5ca3bef..aaee172 100644
--- a/drivers/staging/greybus/connection.h
+++ b/drivers/staging/greybus/connection.h
@@ -46,8 +46,8 @@ struct gb_connection {
 	gb_request_handler_t		handler;
 	unsigned long			flags;
 
-	struct mutex			mutex;
-	spinlock_t			lock;
+	struct mutex			mutex; /* a mutex object */
+	spinlock_t			lock;  /* lock to perform a busy wait */
 	enum gb_connection_state	state;
 	struct list_head		operations;
 
-- 
2.7.4


