X-GM-THRID: 6261962794533388288
X-Received: by 10.50.20.135 with SMTP id n7mr13887232ige.5.1457976911748;
        Mon, 14 Mar 2016 10:35:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.230 with SMTP id k93ls4197241qge.78.gmail; Mon, 14 Mar
 2016 10:35:11 -0700 (PDT)
X-Received: by 10.129.3.69 with SMTP id 66mr18873755ywd.41.1457976911326;
        Mon, 14 Mar 2016 10:35:11 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id sf5si3466983pac.1.2016.03.14.10.35.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2016 10:35:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id u190so10386745pfb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Mar 2016 10:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=rQMNJhYrPCDEy2Ohvjo2wkPdzSgtT17ipoae39reDVc=;
        b=ty5bLrTRjm/EWu57gvXE5zdawYZiVvyyDnkH5VzZfFnajFj0MVkMSSsCusqQPWl/aN
         NHXbKW90mZmn7vQMGdi7iJ2CdAyFqN7nAwQWOkKdv00EJR3BiVHW9gY5kXO7YKKiccwL
         2K6+CKPb39ZySzxz0cKjiqYFFHatS+PKQxP7fQZXRsHlCUkutv5XsJaiAVw/C5BSrg82
         gxtaiDSuUiInQzS9BHmjlNF8cuK7mL6e5N0NOS6WrT7qFPB4fmktiTQd6dt2J954N0j5
         hzlELME1hDP5kJ95G5LUREwijha3krO4NeSFuw2GK84JNIY1qII5hLGg1SjWRxPbd/Ht
         YmYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=rQMNJhYrPCDEy2Ohvjo2wkPdzSgtT17ipoae39reDVc=;
        b=kr13MT7cSj+AJZq5m/93eTr9Ja7h1w+DAVUocFHRwy19utOUH9oMUXBH9nL0k9ia4L
         wYpnjKhdisgV4tGllSv3DBob3wJAp1Nc0y75hE8eGhlBtMZywt79xlwCnXPj+gESCcJs
         rgSqytYvgMbnheeHuvTFs50luGqK26MU7459EXX9rIBoEbLdBB6bzz4enXtuEDcGYqpp
         cdSpzMM7OV4OcrLJSZtgFPf0ah7xdNf4iG84ua4HSjMtxQXcerQ8IMcIp4aFHIGnwA6V
         dZrSwnyQE1V2wccQB65Hdp+NoXqud2KZfOspa9RV2GiXn8crA6LIgaWQupVHdtyjOKWU
         qNPg==
X-Gm-Message-State: AD7BkJJmvqNyQHCZ2v2be7Qmr5GGOzKFfaj5c8m6O0JdvQ9cAdrTcexQnHJqIHxtFdUYrQ==
X-Received: by 10.98.67.195 with SMTP id l64mr31731208pfi.111.1457976911141;
        Mon, 14 Mar 2016 10:35:11 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-64-227.dhcp.embarqhsd.net. [67.232.64.227])
        by smtp.gmail.com with ESMTPSA id 82sm33595591pfb.64.2016.03.14.10.35.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 14 Mar 2016 10:35:10 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 3/4] staging: wilc1000: replace sem_test_disconn_block with a completion
Date: Mon, 14 Mar 2016 10:35:05 -0700
Message-Id: <e592f003955be8d1e59e90c7b78d2a956eee39ee.1457974909.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1457974909.git.amsfield22@gmail.com>
References: <cover.1457974909.git.amsfield22@gmail.com>

Semaphore sem_test_disconn_block is used to signal completion of its
host interface message. Since the thread locking this semaphore will
have to wait, completions are the preferred mechanism and will offer
a performance improvement.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
Tested-by: Leo Kim <leo.kim@atmel.com>
---
 drivers/staging/wilc1000/host_interface.c | 6 +++---
 drivers/staging/wilc1000/host_interface.h | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 22b328f..054f330 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -1857,7 +1857,7 @@ static void Handle_Disconnect(struct wilc_vif *vif)
 		}
 	}
 
-	up(&hif_drv->sem_test_disconn_block);
+	complete(&hif_drv->comp_test_disconn_block);
 }
 
 void wilc_resolve_disconnect_aberration(struct wilc_vif *vif)
@@ -3099,7 +3099,7 @@ int wilc_disconnect(struct wilc_vif *vif, u16 reason_code)
 	if (result)
 		netdev_err(vif->ndev, "Failed to send message: disconnect\n");
 
-	down(&hif_drv->sem_test_disconn_block);
+	wait_for_completion(&hif_drv->comp_test_disconn_block);
 
 	return result;
 }
@@ -3406,7 +3406,7 @@ int wilc_init(struct net_device *dev, struct host_if_drv **hif_drv_handler)
 	}
 
 	sema_init(&hif_drv->sem_test_key_block, 0);
-	sema_init(&hif_drv->sem_test_disconn_block, 0);
+	init_completion(&hif_drv->comp_test_disconn_block);
 	init_completion(&hif_drv->comp_get_rssi);
 	init_completion(&hif_drv->comp_inactive_time);
 
diff --git a/drivers/staging/wilc1000/host_interface.h b/drivers/staging/wilc1000/host_interface.h
index 085adee..3ab94a7 100644
--- a/drivers/staging/wilc1000/host_interface.h
+++ b/drivers/staging/wilc1000/host_interface.h
@@ -276,7 +276,7 @@ struct host_if_drv {
 
 	struct mutex cfg_values_lock;
 	struct semaphore sem_test_key_block;
-	struct semaphore sem_test_disconn_block;
+	struct completion comp_test_disconn_block;
 	struct completion comp_get_rssi;
 	struct completion comp_inactive_time;
 
-- 
2.1.4


