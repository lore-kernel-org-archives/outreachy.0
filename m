X-GM-THRID: 5958272024576
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2b16960f09c11e68
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.68.243.104 with SMTP id wx8mr8096740pbc.3.1425319962692;
        Mon, 02 Mar 2015 10:12:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.230 with SMTP id 93ls1828295qgj.75.gmail; Mon, 02 Mar
 2015 10:12:42 -0800 (PST)
X-Received: by 10.236.40.112 with SMTP id e76mr30833025yhb.5.1425319962517;
        Mon, 02 Mar 2015 10:12:42 -0800 (PST)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id pc4si1654583pac.0.2015.03.02.10.12.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 10:12:42 -0800 (PST)
Received-SPF: pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of tinajohnson.1234@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mail=tinajohnson.1234@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id eu11so2327243pac.1
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 10:12:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=TmtWCanSKJorH9aGV5egwDDgJ1Ezeo+pvBi20IwWlMY=;
        b=guGNM7gffUCVA0XnfHxa9yvO5aId1F+dIOOhxaH1/1o8S2AHeoV24crbrZjLe8ABoR
         l7BvACubq7Huf9m0oxTecz5ZhVdZ00CF/zWZD6aWKqc53UXELYWikK0c8f91Pdu1RwAc
         5VtdQxXlON/jF5SPkzHwsf0WJMQEeAjAdhAePXUkV4Rin+qfh1LfvH6rQ9TIJoKaqt8j
         kFjx0tFFi3303hYmmexF5slJ7YhKqmSopXDMXRVzbPXJ9YL45nQC+xBpUEAdZKE5dW1M
         8t8ioZdKa9UFIrDJ4+GWtqX/UxYo236KhpMsr2Dh+ID1ZaqC2WHzs4pvOZLMtbMOww3J
         FvIg==
X-Received: by 10.66.189.105 with SMTP id gh9mr5416960pac.41.1425319962352;
        Mon, 02 Mar 2015 10:12:42 -0800 (PST)
Return-Path: <tinajohnson.1234@gmail.com>
Received: from localhost ([117.252.20.251])
        by mx.google.com with ESMTPSA id kh5sm6628165pbc.41.2015.03.02.10.12.39
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 10:12:41 -0800 (PST)
From: Tina Johnson <tinajohnson.1234@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Tina Johnson <tinajohnson.1234@gmail.com>
Subject: [PATCH v3 0/2] Replaced printk() with pr_err() and pr_cont() in lustre
Date: Mon,  2 Mar 2015 23:40:24 +0530
Message-Id: <1425319826-14232-1-git-send-email-tinajohnson.1234@gmail.com>
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


