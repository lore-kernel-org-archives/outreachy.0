X-GM-THRID: 6251584620419088384
X-Received: by 10.107.15.79 with SMTP id x76mr17895801ioi.31.1455560471349;
        Mon, 15 Feb 2016 10:21:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.81.106 with SMTP id e97ls2767208qgd.67.gmail; Mon, 15 Feb
 2016 10:21:10 -0800 (PST)
X-Received: by 10.129.51.2 with SMTP id z2mr17294624ywz.49.1455560470480;
        Mon, 15 Feb 2016 10:21:10 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id 12si2735208pfb.1.2016.02.15.10.21.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 10:21:10 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id ho8so90299148pac.2
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 10:21:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=MAJh3cobbOMwSUPcaNu+iTTlMeCPQOdnoLspJrMGfZs=;
        b=FjW/Sh2zlQyP9uUnWK1HEtEMsrbELSu/SZlQ1TcguoYxoDsCOS8Qbqs3/6UU9SBvjy
         u2q40rhqP+tm/pKLzAsQsnPOawMe7W5NenhhhoeqfUMGNZC1AIr+vB1JZbY3ViJyoCAl
         NhDZnY5giBpdT/VWir/HuT+j7vVosCZ7O28d571J1SxfZyPpSXU3nFLFGfmMR0vg+AQl
         EOsrslzQlOhiUjHsKuquNGjtaJAMQpCGeRqexjuTW+/PXA0TqP6KA+le5wZYHDCzCJsf
         gMM52LSlHDYIn3WmqaBB4TqbF4Be8gU65W9FfCp/XPA0sYaIA7991yB2zWgfCjeWaiJF
         5tqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=MAJh3cobbOMwSUPcaNu+iTTlMeCPQOdnoLspJrMGfZs=;
        b=Mw8BW+5kxolF+2B5E2p9o78tPQoTBm3QDHABpsUzMMwAVziK//Yx0A83w6TOReYf3K
         FUCkGYlG80L1xy8Hwk6+2NEoauxH9PDoTdBDU5JZFChn4b0Mf226Ghavtrk/Mnwgx9To
         Lg3QhT3uUqvaghni5GQvsnoCgNqg7TGhuKm+lkDZjXAcNVDb4O/jo5x0/Nkm/gg4Ta8e
         p7XmRhLjQZmISTRtSG5mpxC2xbbcjW0Z92qShKOssmHu9Otu6IzEdx53k4V8dqbYHHzW
         m8T19juu4yZq/z/JILYxC5nb/sCx7PYOKc9HWcNSkds01PJDoCZe0Kg1MMwEHoVeDwAY
         AuLQ==
X-Gm-Message-State: AG10YOS7Zf9g8wM8xMT0xYMhFABS7WyOB08xOoOfm1zg/oQnSRCmSwIeWb8bbsPRGE5JsQ==
X-Received: by 10.66.101.36 with SMTP id fd4mr25731689pab.76.1455560470306;
        Mon, 15 Feb 2016 10:21:10 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([171.48.60.250])
        by smtp.gmail.com with ESMTPSA id xg9sm23939247pac.9.2016.02.15.10.21.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 10:21:09 -0800 (PST)
Date: Mon, 15 Feb 2016 23:51:06 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Remove inclusion of header file
Message-ID: <20160215182106.GA3501@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

version.h header inclusion is not necessary as detected by
versioncheck.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/sm750_hw.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index 01850bf..807d992 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -1,4 +1,3 @@
-#include <linux/version.h>
 #include <linux/module.h>
 #include <linux/kernel.h>
 #include <linux/errno.h>
-- 
1.9.1


