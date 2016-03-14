X-GM-THRID: 6261962794533388288
X-Received: by 10.140.250.69 with SMTP id v66mr19157440qhc.22.1457976827308;
        Mon, 14 Mar 2016 10:33:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.83 with SMTP id g80ls2023169iod.90.gmail; Mon, 14 Mar
 2016 10:33:46 -0700 (PDT)
X-Received: by 10.50.143.101 with SMTP id sd5mr13939268igb.4.1457976826658;
        Mon, 14 Mar 2016 10:33:46 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id ui7si3478755pab.0.2016.03.14.10.33.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2016 10:33:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id x3so5341943pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Mar 2016 10:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=9+uYuq+6/kJQhClzxUnE5r/CITtGZlYw3MBrRmbZNfE=;
        b=BZ5z5t4I8N0MXQgEIZ04ptMmyx7UEU18bOKSt1YRDASJmzQ2YwHZJMCpdYl5uf/GSU
         akCtcF0ocbafa2OY1gM2BS1onRz1ORITOXcyqWx86ZEyZYT273MujMGVh6Y8Hk9u77I1
         xv5aLUz98N/ccUoOtbLzYRpCIScw6xpU6w+vbGhEJYQIZyOr8IHypoAq+1YvZ1q3dDb3
         2chP7sEnUkk6S+VYy/JuMA8eLj1GDtPjYtru3AOpF/80aQ8VxVmg+X5J5GM0OmbMqlr5
         ia+g/qBq+fjSKOuh2sZMcONBEGpyV59z7NSzAL0NrAeiPs357fqyYHWjOMZqc0QCE+54
         nsag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=9+uYuq+6/kJQhClzxUnE5r/CITtGZlYw3MBrRmbZNfE=;
        b=GQ75ZBU/+sarrH35v/SHicDUj1yrefbd3ywIjtZxYiRG5mR4+i8vYhmnkDYN+1ucLP
         YOZC8Onem//gsR+66B/D1TAmN+f7jfawB3LTcmaW8x71izIZJHEJoHAuw/5U+sKPN3/L
         G9KXiEjeen0rKjjrNjOQHfWmbtIGsXErfxvat0dvjqdExMxBhnksZsMKi8b5ppkT+mKD
         KxKNYw+WN4Gd3Gw9tZ3ABhRWbup43Mgo/C8QjSvjT0/zii1Oh+BGgIX1qaJRSadHbtxg
         eG+A6pwgvOO1M1QdV5mZQveUu6esenIcgCg43sVQF3y6NQOo+LN+bkxg9XfZh9WZSUgA
         Jq7g==
X-Gm-Message-State: AD7BkJJuIVeNuVk+AnJ0UnFwFQzMg8ZLOiBpw1apagYc6/ELKlzx2mRasGsCWAWJTKWekw==
X-Received: by 10.98.14.207 with SMTP id 76mr31907469pfo.1.1457976826438;
        Mon, 14 Mar 2016 10:33:46 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-64-227.dhcp.embarqhsd.net. [67.232.64.227])
        by smtp.gmail.com with ESMTPSA id b25sm33613765pfj.25.2016.03.14.10.33.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 14 Mar 2016 10:33:45 -0700 (PDT)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/4] staging: wilc1000: use completions in host_interface
Date: Mon, 14 Mar 2016 10:33:40 -0700
Message-Id: <cover.1457974909.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4

This patchset replaces the semaphores in struct host_if_drv with the
more preferred locking mechanisms completions.

Each semaphore was used in the send/receive of HOST_IF_MSG_* messages.
Each builds and queues a message (LOCK!) and then a corresponding
"Handler" function is called from the hostIFthread() when the message
is returned (UNLOCK).

Note that in Patch 4 you will not see a 1:1 correspondence between
wait_for_completion and complete. Whereas 6 different functions build
the KEY messages, only 5 handlers are used.

Changes in v2
  - spun off patch 5 as a separate patch so that this set only includes
    semaphores->completions
  - rebase/rebuild 
Changes in v3
  - rebase/rebuild

Alison Schofield (4):
  staging: wilc1000: replace semaphore sem_inactive_time with a
    completion
  staging: wilc1000: replace semaphore sem_get_rssi with a completion
  staging: wilc1000: replace sem_test_disconn_block with a completion
  staging: wilc1000: replace sem_test_key_block with a completion

 drivers/staging/wilc1000/host_interface.c | 43 ++++++++++++++++---------------
 drivers/staging/wilc1000/host_interface.h |  8 +++---
 2 files changed, 26 insertions(+), 25 deletions(-)

-- 
2.1.4


