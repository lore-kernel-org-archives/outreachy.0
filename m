X-GM-THRID: 6250414434247770112
X-Received: by 10.182.72.137 with SMTP id d9mr5041789obv.31.1455338038183;
        Fri, 12 Feb 2016 20:33:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.4 with SMTP id c4ls457555qgc.26.gmail; Fri, 12 Feb 2016
 20:33:57 -0800 (PST)
X-Received: by 10.13.215.140 with SMTP id z134mr5358685ywd.7.1455338037728;
        Fri, 12 Feb 2016 20:33:57 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ui7si2167592pab.0.2016.02.12.20.33.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 20:33:57 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id e127so4797561pfe.3
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 20:33:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=U2tI6T40ml/GYjjJ5ej12NSgUiHWpnimU00jXZZCi+8=;
        b=vi2obqJhdQIDMTH/gViByjzF9F9KFFciL1TpeLA7OyhGkdWd7tnf+7f8bmvhdnda1l
         8wWzG8oQLp6U8xQH6Skz+DtVUF5gtHnqAh+Ulk/IhS/vzCKBQXAI0CmXp3LnHZTioNcN
         XbimgXOQhPS8J16JEq28JMUL1cNGHuD0t6QGqqugIdMc6YqshKom8dqUIl4cNiOPwq/G
         SGKMUlQ2toQ+600RaP4LYxtZkAVEb1AgXK7jux3un4VwbLFogdQ+ysO4ZQ0DbEJg4q4K
         hK9GPERLUHF/8SWUH7eOMqk5ZJMfoNlI7gzL6F9y+Tb49ivRKrUYoVIkkc83nTPBTUm3
         JhMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=U2tI6T40ml/GYjjJ5ej12NSgUiHWpnimU00jXZZCi+8=;
        b=Qdu7PMDhSMbaEVuQS0I+YxiTFjsu/5gZ2i4qe7KKytLCes+TxV/uVNMYhVWwNIhg8l
         srhkBJY65WEddSEa6IiGhtaVNwKH/obRSrEo9x2dCGfB6NyAjEsc9p12zFTDFjE3nYM8
         BGOt+NqcY12oiwMrdLiOaf14W8CO02TbQxugMznXLNfwSP4+CQRkIkRJU7J0AH9BhV6k
         skG+XnWpD7Hhz2Hg7zawgvcQvnOWPUqWlNM5L9W/WSVIU+JgV2dmG+VrUOVlHeOVUQrh
         DRf+NK1Bj1QgWNkj7/LTzpRPbWGSI/SggOuO/njdYhc94KazK6GYjvI9L7RR9NSC+Zch
         xQng==
X-Gm-Message-State: AG10YOStYmTsm9z/BwwuPPtZAmJvGVYwUWFSamGsjydmHEQwDTO/8ZUqeyOb77AKRCH0rQ==
X-Received: by 10.98.67.67 with SMTP id q64mr7521361pfa.44.1455338037549;
        Fri, 12 Feb 2016 20:33:57 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.149.32])
        by smtp.gmail.com with ESMTPSA id s21sm22783980pfi.29.2016.02.12.20.33.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 20:33:57 -0800 (PST)
Date: Sat, 13 Feb 2016 10:03:54 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/6] staging: rtl8192u: ieee80211: rtl819x_BAProc: Replace
 MSECS with msecs_to_jiffies
Message-ID: <20160213043354.GA6271@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace driver specific macro MSECS with msecs_to_jiffies().

This was found using the following Coccinelle semantic patch:

//<smpl>
@@
expression e;
@@

- MSECS(e)
+ msecs_to_jiffies(e)
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Removed extra line introduced in previous version.

 drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
index 3bde744..789b7c9 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
@@ -19,7 +19,7 @@ static void ActivateBAEntry(struct ieee80211_device *ieee, PBA_RECORD pBA, u16 T
 {
 	pBA->bValid = true;
 	if(Time != 0)
-		mod_timer(&pBA->Timer, jiffies + MSECS(Time));
+		mod_timer(&pBA->Timer, jiffies + msecs_to_jiffies(Time));
 }
 
 /********************************************************************************************************************
-- 
1.9.1


