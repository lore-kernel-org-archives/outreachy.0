X-GM-THRID: 6401874005308997632
X-Received: by 10.157.63.98 with SMTP id m89mr6460960otc.82.1490552445665;
        Sun, 26 Mar 2017 11:20:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.70 with SMTP id h64ls9401971oth.33.gmail; Sun, 26 Mar
 2017 11:20:45 -0700 (PDT)
X-Received: by 10.157.16.117 with SMTP id o50mr6510297oto.78.1490552445204;
        Sun, 26 Mar 2017 11:20:45 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si1535602pfx.8.2017.03.26.11.20.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 11:20:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 79so6628181pgf.0
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 11:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=mBAYDLWWsQGYLHAGjUYtdJI/Kjvhwx9xnyn4P8a12OE=;
        b=YWJ7BV9514jOPUK3HSs4jswgtbD/Ld+UssK54dRtxBiz9zt0n8mAjONJz1uD2XgZJr
         0qrUWR668HSP47SfzZNVIpFMCG6l10iZaPpvCMP9CtqMpFKzi4lxuzq2uW4qKx5isF80
         w2I6Sf3pV1MG028bUlq9shUUCyZoQK3CVy6IAID+sSEKInM2d7wvqf7IKNndkip3xcMJ
         //cPsTZ/fr10QjgRwsnKwFm2FAhK/zZhrd4utzKCvOdoJg/JLA8B7Puhhm9+l2ImlBqg
         y0BPautJioNJGTgROAjeDVmQh1D7LqaoJZFjuTpBcFZPn21KvCJtL97Dk3GHI+MCB+co
         At+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=mBAYDLWWsQGYLHAGjUYtdJI/Kjvhwx9xnyn4P8a12OE=;
        b=Wennr7cgDArO2NVMrO6EqSBr7F5EeCVQglnY4bDrjeGHkF1tZEqsw6SQiJQfoJ9UhL
         NRC7psMe0QToSeP4pBHLnyioZNRUF/pGTZFx66YMidkfyYR3TnVPUoRTz4OA3S0d4T3A
         +iXj6QErw3Uoo54gTNsuz1PSPYxMSz6qsAuvEN+SDdGZZUyXXzulrNSbARBrqEaNRGcC
         jqR34lzKk6jgM0ipU5aZzYruqGZHLg6U1n1+hhMZqzNrHISpa5rGCciGakm2OZlm/Lw9
         7omR/Fu9ewNLrPMkn6e5p6XhJf/vnF6v3c+9V+LS2g71pX98d0JRkpWvwgKat0XUNa00
         UZOQ==
X-Gm-Message-State: AFeK/H0DltFZHPoypZSdwPlT8VScJGSzDV8jZjHwcXoV0l7SPwLVqVRhPdodiXbx79Tjyw==
X-Received: by 10.98.71.149 with SMTP id p21mr20467986pfi.94.1490552444523;
        Sun, 26 Mar 2017 11:20:44 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id t133sm16153510pgc.24.2017.03.26.11.20.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 11:20:42 -0700 (PDT)
Date: Sun, 26 Mar 2017 23:50:39 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] kernel: pid_namespace.c: Fix line over 80 characters
Message-ID: <20170326182039.GA7507@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Break lines so that they do not exceed
80 characters. Problem found using checkpatch.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 kernel/pid_namespace.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c
index de461aa0bf9a..850a87a1de2a 100644
--- a/kernel/pid_namespace.c
+++ b/kernel/pid_namespace.c
@@ -75,7 +75,8 @@ static struct kmem_cache *create_pid_cachep(int nr_ids)
 
 static void proc_cleanup_work(struct work_struct *work)
 {
-	struct pid_namespace *ns = container_of(work, struct pid_namespace, proc_work);
+	struct pid_namespace *ns = container_of(work, struct pid_namespace,
+						proc_work);
 	pid_ns_release_proc(ns);
 }
 
-- 
2.11.0


