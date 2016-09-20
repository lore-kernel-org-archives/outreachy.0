X-GM-THRID: 6332371296265961472
X-Received: by 10.200.53.133 with SMTP id k5mr5380072qtb.34.1474370142803;
        Tue, 20 Sep 2016 04:15:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.3.28 with SMTP id 28ls4087410iod.52.gmail; Tue, 20 Sep
 2016 04:15:42 -0700 (PDT)
X-Received: by 10.36.163.129 with SMTP id p123mr831136ite.30.1474370142407;
        Tue, 20 Sep 2016 04:15:42 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id h124si7700323pfe.0.2016.09.20.04.15.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 04:15:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id my20so807547pab.3
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 04:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=43xl2GwFJUedFZzE1hNbxnuVKU9GYkgF+utE72GbN3s=;
        b=b1RHdgFP4iATS5pe7zDxImPVcVpWq87fWvPTOZYgcoDJm1g72EWaq8HtOdZQdNFHWq
         1OWs3cSc0P1IvjA0w55bbgZvKQfAsg1IwA3jgmePRS4xYVgtMKxz+AImy8cf4Or9enY6
         r/K5JxUBpJBnXK2vLGV3dGmvdM1ka5TVYVaET+uZQ02ZTLcTFjJ1RHE7OH7DibDkDAzM
         vbpWEXe3ftHNZkO4/VrOESaVMdLF8FbuWWON0bK7338BjwLbCVvSM27C7wc44qyBX/L+
         IdrTKdJiAdQRNCcHHPT94xl3n29BpnW9THLw4kg11lSfh+10nM2L0gVq7J1ndjOMxSaS
         oW0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=43xl2GwFJUedFZzE1hNbxnuVKU9GYkgF+utE72GbN3s=;
        b=epDWEgT8Z5x6QfgyA6RHgSr2NmUZH0wwFRaYPeFeFOSEwCBIOw2bR1t8j/Afj20Uy0
         xs2jmsmB2C0sse+17oz1k77Tfpo12o6Ce62NZRxsiMmGPQ5ZkMYiBi/JIyq5/UzNVNaC
         p2AIcSpuAscZ/A5YY4A60gEJY8t8Xx2YMhCrWdhbe5CLelxk7stZRJTd4fartT3CIvyJ
         TTi+ULu+jaVP3/U9UKpOxMvPyC5n/rIKNbENnLFsaInr8IQnn+vQ5sWYnybSggWn1ujj
         UB7oJ5H7UU1g6JVKXugDal5xuAcFmQD2rZnuUiq5+Y/SLMXb+QRpzOEHcsHunHksdZvr
         MQ+g==
X-Gm-Message-State: AE9vXwM+T32nts+fCCC+dokMtE1efVkplXqWEv4oay39dXYss7m1qragBQ0X5Xh06JrEuA==
X-Received: by 10.66.249.134 with SMTP id yu6mr55508960pac.44.1474370142238;
        Tue, 20 Sep 2016 04:15:42 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e21sm18505065pfb.96.2016.09.20.04.15.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 04:15:41 -0700 (PDT)
Date: Tue, 20 Sep 2016 16:45:33 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 4/7] staging: rts5208: Fix indentation
Message-ID: <5ec407e034234582f109e67717db7c4166940ae5.1474369970.git.aquannie@gmail.com>
References: <cover.1474369970.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474369970.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes indentation by removing unnecessary TAB. Issue found by checkpatch.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/rts5208/rtsx.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx.h b/drivers/staging/rts5208/rtsx.h
index 2f902d5..c0f513c 100644
--- a/drivers/staging/rts5208/rtsx.h
+++ b/drivers/staging/rts5208/rtsx.h
@@ -70,10 +70,10 @@
 #define rtsx_write_config_byte(chip, where, val) \
 	pci_write_config_byte((chip)->rtsx->pci, where, val)
 
-#define wait_timeout_x(task_state, msecs)		\
-do {							\
-		set_current_state((task_state));	\
-		schedule_timeout((msecs) * HZ / 1000);	\
+#define wait_timeout_x(task_state, msecs)	\
+do {						\
+	set_current_state((task_state));	\
+	schedule_timeout((msecs) * HZ / 1000);	\
 } while (0)
 #define wait_timeout(msecs)	wait_timeout_x(TASK_INTERRUPTIBLE, (msecs))
 
-- 
2.7.4


