X-GM-THRID: 6254033434194214912
X-Received: by 10.141.3.134 with SMTP id f128mr26003093qhd.7.1456130638978;
        Mon, 22 Feb 2016 00:43:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.90.71 with SMTP id w65ls1321098qgd.6.gmail; Mon, 22 Feb
 2016 00:43:58 -0800 (PST)
X-Received: by 10.129.132.3 with SMTP id u3mr27424875ywf.5.1456130638523;
        Mon, 22 Feb 2016 00:43:58 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id ui7si3033578pab.0.2016.02.22.00.43.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 00:43:58 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id fy10so87615237pac.1
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 00:43:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=esfs8T4owpe+RGUHcSJ5s2LUdVHVET8qM+pMgLu0h1s=;
        b=gMIGx4mJtM/0Mr/xjVh11l9jpM45aZBFl24zqzzL8KoGBhOiYIxRnKU1824aIqxVZV
         Q5vdckcrynvRu5qFIDjHxxEMbemc1FeEPSfgDImt8c9n3UlWYHifvYz9PudSaRBVlWB7
         aw0+5w7w7TD7IxgfyBJWcSk4EuqVR1g87tPExU2PDhQn7BsWE8RwDdQHr+so7+wWByx3
         gwlNik3MBqcq3wo5lga5QHqMmYZej3PSrbLgxPCLSjtql/byf3ts24zVI7xWt1nRuu2c
         VoBNcNvtcRjPTel1ZJVUW25n/z/QAeFpzrFU+xPcrrLw49QAtXSz/NjpA/46pp9WjY5S
         QrBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=esfs8T4owpe+RGUHcSJ5s2LUdVHVET8qM+pMgLu0h1s=;
        b=GTZsUeqIucUetBrYSvEN5ryBBoDqR71qqZSDW1arp8ODpFhuDTMudodqbEU6UsYPoP
         P1xZvChkT+hG012C6QB1OJtuGs0O2z4fyPwuqdromn/1ioWwJSHvW9Cq+zoPNf8gHuaj
         HOdHR2TVW/rx/ItzomIXqJa9ldT3k3WlJwiuxmWm8SbXUeeGIArXopjhkJZn9YTqwusS
         n+2YePUCGtqIqlend2y2dD3UqsXs1lFkVstU8mhaJSkWTOigauxyyMUpull14o63fN3+
         T8t9EiwbhyrD89DDV2mW2P+ePOpt92Z/he4dRvxNvW2uIHsK/uopYemxOL5ELlJN/w+E
         2wlQ==
X-Gm-Message-State: AG10YOTQcVjz3bIDyOdc8mfunHPMN9xnpA1gWixTbOjbiTZCn3wr/rTkuN3aLxoJ7bM6QA==
X-Received: by 10.66.152.231 with SMTP id vb7mr36572307pab.132.1456130638341;
        Mon, 22 Feb 2016 00:43:58 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id k14sm34955764pfj.0.2016.02.22.00.43.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 00:43:57 -0800 (PST)
Date: Mon, 22 Feb 2016 14:13:44 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/7] staging: emxx_udc: Remove header file
Message-ID: <b90c0b7947dc72447fc2c4642c465baf30bbf188.1456129759.git.amitoj1606@gmail.com>
References: <cover.1456129759.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456129759.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove duplicate include file. Found using includecheck.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index a1f624f..d38673c 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -21,7 +21,6 @@
 #include <linux/ioport.h>
 #include <linux/slab.h>
 #include <linux/errno.h>
-#include <linux/init.h>
 #include <linux/list.h>
 #include <linux/interrupt.h>
 #include <linux/proc_fs.h>
-- 
1.9.1


