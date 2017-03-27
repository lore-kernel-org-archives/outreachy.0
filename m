X-GM-THRID: 6401819323480932352
X-Received: by 10.129.97.214 with SMTP id v205mr9061473ywb.131.1490643981027;
        Mon, 27 Mar 2017 12:46:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.241 with SMTP id 104ls8920626otd.35.gmail; Mon, 27 Mar
 2017 12:46:20 -0700 (PDT)
X-Received: by 10.237.37.219 with SMTP id y27mr7851778qtc.41.1490643980517;
        Mon, 27 Mar 2017 12:46:20 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id a3si239262pfb.2.2017.03.27.12.46.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 12:46:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id o123so12656978pga.1
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 12:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=CqXZCkQcfWqKAQ34k6DL1GDz9Joq6jdfn+6Nt8ROrJY=;
        b=VN5INA3zrf1yRYMhUuJOlppQFswStMYwCVmR14DIisWfVP/ecrKmlz8LZgEl+YVsZ7
         AAvpXGm+ccqT4F3HheFKPOuoJk64JJJoAH1rbtjsvxdZ4zcKrNMHBYRGWDGi7NAQIEat
         KRiVLjL8RKYCCywH1PGKgfQycrC+Wz0mPD/EYYAUNRfJir4g09klGc6UZ+SXWqi427o1
         chXP9xy4eQxy+Ad75YK5j6K3L65/+LmPBnc4OogcnIxbsxu423XrBiwgdA6gtXlqqTr6
         IE7t8qBzhvge5qw9To2Ftd9nZ0xkFsrW8WG5uuyWBNSEJDE7s/HKZdtvGLrxPQzmdGIe
         tgqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=CqXZCkQcfWqKAQ34k6DL1GDz9Joq6jdfn+6Nt8ROrJY=;
        b=rB2kD27tHO1oThdqigwCyO9dfI2+2sj+qmR+8vpuYNqY+P9Xrf6PLz8tgfP0CpK5Ov
         pIFrQUgvtQRMd7dHSxyaDN9wHLRYgbwiPlApOX9QsLD/FyZON5nORtvfpwSdo2cMVXHP
         o6QW3AdaywA/LuJzi0CfMf6Cf2SRMjIzqfhIn8prgK8IelNhz997fDlW1cD+Y64PNoRw
         bhGDLF7NrwiM1nSd2WDoBISHkX1WBSQ584E1vjkD3tvlp/Whm7ojXzGW0MoMw58yoA4f
         rSaFv6RbEFSxf/z/FYagjBQuxVkNs14dPhV7ss7ZQOYziw3WFYDIpH3mpexBfX35skoi
         m86A==
X-Gm-Message-State: AFeK/H3Ci1wkf9nX3BFysQVoNxkEiQJn1XVaGT1Z3tLF8hPp3BqPN4472IIOQi1jYJLklQ==
X-Received: by 10.98.78.4 with SMTP id c4mr26397126pfb.241.1490643980282;
        Mon, 27 Mar 2017 12:46:20 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.128.122])
        by smtp.googlemail.com with ESMTPSA id x15sm2755339pgc.16.2017.03.27.12.46.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Mar 2017 12:46:19 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2 2/3] kernel: pid_namespace: Do not initialise statics to 0
Date: Tue, 28 Mar 2017 01:15:40 +0530
Message-Id: <bad449620ef1e657c989054ef4a1379d2124af4f.1490643620.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1490643620.git.gs051095@gmail.com>
References: <cover.1490643620.git.gs051095@gmail.com>
In-Reply-To: <cover.1490643620.git.gs051095@gmail.com>
References: <cover.1490643620.git.gs051095@gmail.com>

Static variables are initialised to 0 by GCC.
Fixes the following checkpatch error:
ERROR: do not initialise statics to 0 or NULL

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 kernel/pid_namespace.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c
index 9315258..9d4c53d 100644
--- a/kernel/pid_namespace.c
+++ b/kernel/pid_namespace.c
@@ -312,7 +312,7 @@ static int pid_ns_ctl_handler(struct ctl_table *table, int write,
 }
 
 extern int pid_max;
-static int zero = 0;
+static int zero;
 static struct ctl_table pid_ns_ctl_table[] = {
 	{
 		.procname = "ns_last_pid",
-- 
2.7.4


