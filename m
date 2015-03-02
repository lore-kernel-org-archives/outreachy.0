X-GM-THRID: 5958272024576
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2b16960f09c11e68,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.140.231.139 with SMTP id b133mr27090866qhc.1.1425314872085;
        Mon, 02 Mar 2015 08:47:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.80.134 with SMTP id c6ls1797325qgd.21.gmail; Mon, 02 Mar
 2015 08:47:51 -0800 (PST)
X-Received: by 10.236.202.233 with SMTP id d69mr3085955yho.13.1425314871906;
        Mon, 02 Mar 2015 08:47:51 -0800 (PST)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from mail-pd0-x236.google.com (mail-pd0-x236.google.com. [2607:f8b0:400e:c02::236])
        by gmr-mx.google.com with ESMTPS id q9si741108pds.2.2015.03.02.08.47.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 08:47:51 -0800 (PST)
Received-SPF: pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) client-ip=2607:f8b0:400e:c02::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) smtp.mail=tinajohnson.1234@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x236.google.com with SMTP id nh10so17242101pdb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 08:47:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=TmtWCanSKJorH9aGV5egwDDgJ1Ezeo+pvBi20IwWlMY=;
        b=bzpli+C/vdlVJEHtMrGqVHPlQ6SSu8o+zaXsYfTVRiLbPgmH+J3Vh7vodnW1t6tq4d
         H4aaNbwKHPRPbSMfwXNHkt7LpHO5TE4dtj9fjxZxkIHVmRXeSl20yXjNZfxJDfHzcBWI
         xf5TxT2CFdd3xC/NQ3g+uVZfCEM6QvZyUEgqLuR5njw0471cqk4nU/oLyoq8S/1fYRCH
         oEf1fk0mThH2QcKSR4/N6SrYv5sltbSOhRi9cYZPjR1QdlSj6UavCdcMfF8g/WDUAuy5
         l6xsFG1fgq3AcRB7eRtNmDD+UyIgz20iyLe8XY7n3uGX7BSDbKi5NhaN6NUrOd4/tARo
         P9PQ==
X-Received: by 10.70.53.65 with SMTP id z1mr49121767pdo.38.1425314871744;
        Mon, 02 Mar 2015 08:47:51 -0800 (PST)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from localhost ([117.252.23.150])
        by mx.google.com with ESMTPSA id ly7sm12559939pdb.1.2015.03.02.08.47.49
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 08:47:50 -0800 (PST)
From: Tina Johnson <tinajohnson.1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Tina Johnson <tinajohnson.1234@gmail.com>
Subject: [PATCH v2 0/2] Replaced printk() with pr_err() and pr_cont() in lustre
Date: Mon,  2 Mar 2015 22:15:45 +0530
Message-Id: <1425314747-9532-1-git-send-email-tinajohnson.1234@gmail.com>
X-Mailer: git-send-email 1.7.10.4

The following two patches replaces the printk() with pr_err() and pr_cont()
to remove the checkpatch warning:

Prefer [subsystem eg: netdev]_err([subsystem]dev)

Tina Johnson (2):
  staging: lustre: lustre: libcfs: Replaced printk() with pr_err()
  staging: lustre: lustre: libcfs: Replaced printk() with pr_err() and
    pr_cont()

 drivers/staging/lustre/lustre/libcfs/module.c    |    4 ++--
 drivers/staging/lustre/lustre/libcfs/tracefile.c |   19 +++++++++----------
 2 files changed, 11 insertions(+), 12 deletions(-)

-- 
1.7.10.4


