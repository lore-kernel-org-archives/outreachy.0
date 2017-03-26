X-GM-THRID: 6401746705564303360
X-Received: by 10.99.67.197 with SMTP id q188mr6091252pga.31.1490522805140;
        Sun, 26 Mar 2017 03:06:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.9.15 with SMTP id 15ls1272438itm.9.canary-gmail; Sun, 26
 Mar 2017 03:06:44 -0700 (PDT)
X-Received: by 10.99.6.213 with SMTP id 204mr5741930pgg.166.1490522804483;
        Sun, 26 Mar 2017 03:06:44 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a3si1158010pfb.2.2017.03.26.03.06.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 03:06:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id o123so2751406pga.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 03:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4WGAsOeX6g46Zz7v2scOLC5IORExincijqZMdyvhHNI=;
        b=GBkLC4cJNjvcVUu/YNyc1qX4n0NsU45DYiS8CjDork9xrSUqIiXE00kMYMfzUlL4kW
         XSdDccewl+ttGGsuYYQKlAZ+moOI0NaoA2tHbdBta5lpWzbfJVebC93XoV7gqcwjV8Kr
         jbl+rwHkAiUtO1Pz1qaz4cWgT2ihxA6Bqhgr83pJDk79xA111N6GCV70PI4kdr+wnyDg
         0+i0V+LbUZdB87Lb6+Ov2rx9O85/aIf2eltDOOILG0aUAqQkY9X4j9IBb18iWsyx19Dr
         /WHUJUO/1hkB0cvlFErNxJSfJcYIKBHPUDtdIZWtfNBBQYwGA9Z2Q5efPBGYPzWmvAGu
         2pPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4WGAsOeX6g46Zz7v2scOLC5IORExincijqZMdyvhHNI=;
        b=oaF1NuzY7bO6+PdnEbr5DVXPhyuUVANFbmTyjskrntPkRBrQD3MJGNZTYFn9D4/Z7E
         PS1tzbqdeVy2qjQO48foDPc3hFoipC07m34sEe05kEiLI/zW2vCqTotl7aeFD+dtfEb3
         XJsYamsW18A1TFPbyGqXpKdUIYT0et+jY+2ZacU871zaKEvYlql2RTIWaQT9ohVUS8RQ
         I1of855yJfEhMj8VH93TUNBvzNeaylZ9Bmo2xKy7jrmxPPn3ipWarLBKRV+XMmqPUFIM
         jQVSwb9lLpwrmYfMbvmlD3htRkdrdif/JBIfhvFdBE0FIfkQnOVBK6GymOfRcJCoMpCI
         /3Kw==
X-Gm-Message-State: AFeK/H1DOIvsfT54InA6KpVSxrl8gihCUl/F4re8ZiLuJYnvO7pPi+fu3es7CIpXquOzcQ==
X-Received: by 10.99.111.138 with SMTP id k132mr18733174pgc.138.1490522804279;
        Sun, 26 Mar 2017 03:06:44 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.128.197])
        by smtp.gmail.com with ESMTPSA id e70sm14475937pfl.105.2017.03.26.03.06.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 03:06:43 -0700 (PDT)
Message-ID: <58d792b3.c98b620a.56f9f.4cd6@mx.google.com>
X-Google-Original-Message-ID: <20170326100640.GA16152@<rvarsha016@gmail.com>>
Date: Sun, 26 Mar 2017 15:36:40 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 3/5] include: linux: pid: Add identifier to function
 definition argument.
References: <cover.1490516333.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490516333.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Add ns as the identifier to function definition argument struct
pid_namespace and this patch fixes the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 include/linux/pid.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/pid.h b/include/linux/pid.h
index a465173..b450100 100644
--- a/include/linux/pid.h
+++ b/include/linux/pid.h
@@ -132,7 +132,7 @@ extern struct pid *find_vpid(int nr);
  * Lookup a PID in the hash table, and return with it's count elevated.
  */
 extern struct pid *find_get_pid(int nr);
-extern struct pid *find_ge_pid(int nr, struct pid_namespace *);
+extern struct pid *find_ge_pid(int nr, struct pid_namespace *ns);
 int next_pidmap(struct pid_namespace *pid_ns, unsigned int last);
 
 extern struct pid *alloc_pid(struct pid_namespace *ns);
-- 
2.9.3


