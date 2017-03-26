X-GM-THRID: 6401812239556280320
X-Received: by 10.99.119.205 with SMTP id s196mr6187232pgc.152.1490538064795;
        Sun, 26 Mar 2017 07:21:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.39.226 with SMTP id c89ls8238643otb.2.gmail; Sun, 26 Mar
 2017 07:21:04 -0700 (PDT)
X-Received: by 10.129.130.7 with SMTP id s7mr6249004ywf.134.1490538064420;
        Sun, 26 Mar 2017 07:21:04 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id s67si1286476pfs.4.2017.03.26.07.21.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 07:21:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id p189so5301584pfp.0
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 07:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=4HJ7urt2I90TcDCSdns1c8nygo7iaFA9wlM4yzwessM=;
        b=cWBOMnCecVzHuOCghmERxRgg4Cqe1j0YqdurndkkssTQZKzrP8JPOuIXsxOzeYokbc
         D0Ag6rLY2GeX6UXb1dSYAeIjDWgdFYzhschcb6TQH+x9SDXOQGuDKT1alpMQNxMLMbHl
         Wn7lWaNL9/RG8Letv941QsbQrEnrTAesIb2BLtUqXRdYHDB3L0jW5WtXGvGVOREwhM1m
         hfZiYrvH1gE7vtmFEWQ1S2j8bORJQFeWkDrg4SZCyj2b+vqrabGxTKDxdMx2fNNGT2E+
         UOrr4LqVLBo0IJNFqUKJZ3R66kXQyTf4F4nkTCbGRpceCUHxZeAFyF0sumayvV99o89M
         oKUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=4HJ7urt2I90TcDCSdns1c8nygo7iaFA9wlM4yzwessM=;
        b=jXTXT1IqwD+2+3NT34Gri1FYGO7OM6Swa2TLwO+fnNK0L7TJBsw3xne/dIZzDTHBAg
         cJTkGebFJObfeOEiFpWFUyfxicnuWkcL+YIkvfmViqXIcttw1PsIF7JD4DN/oLhWLRKr
         PC/qkXqA9PUdJ+qoPoxGwZPYxP5X1JdvjzNrqe5vqEwl0G/m/DhFDewOTFg9TLtJCiOv
         xWJnXfRpTvcpq4W2yboIepDkkTkPHBFOzq4You/DYxFeAnWujzYAYWKv+ae1rZmWGuLf
         MnpsyN1M3SK2XxXGAM2UWs+dMiRc8lLLgfjb4q7Z5eEzhLYfSIK3QF0JryAN0A/aWZYO
         sWdA==
X-Gm-Message-State: AFeK/H0mhiJj8t02tDu7AwNeR+ZVTAOtlDmQ8e+rIClJH5JhWvlNvUtz0ZtFSRESoKN19Q==
X-Received: by 10.98.86.152 with SMTP id h24mr19751943pfj.184.1490538064176;
        Sun, 26 Mar 2017 07:21:04 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.128.57])
        by smtp.googlemail.com with ESMTPSA id n8sm15429001pgd.5.2017.03.26.07.21.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 07:21:03 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] kernel: pid_namespace: replace deprecated __initcall with device_initcall
Date: Sun, 26 Mar 2017 19:50:43 +0530
Message-Id: <1490538043-18383-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

__initcall maps onto device_initcall(). Such code should use
device_initcall() directly. Issue detected using checkpatch.pl.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 kernel/pid_namespace.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c
index bee22fd..5f29687 100644
--- a/kernel/pid_namespace.c
+++ b/kernel/pid_namespace.c
@@ -452,4 +452,4 @@ static __init int pid_namespaces_init(void)
 	return 0;
 }
 
-__initcall(pid_namespaces_init);
+device_initcall(pid_namespaces_init);
-- 
2.7.4


