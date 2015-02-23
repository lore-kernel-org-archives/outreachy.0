X-GM-THRID: 2517133950976
X-Received: by 10.70.45.49 with SMTP id j17mr6206516pdm.4.1424684999290;
        Mon, 23 Feb 2015 01:49:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.114.167 with SMTP id jh7ls847082igb.36.gmail; Mon, 23 Feb
 2015 01:49:59 -0800 (PST)
X-Received: by 10.68.194.97 with SMTP id hv1mr11055456pbc.0.1424684999044;
        Mon, 23 Feb 2015 01:49:59 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pd0-x236.google.com (mail-pd0-x236.google.com. [2607:f8b0:400e:c02::236])
        by gmr-mx.google.com with ESMTPS id bo1si4139718pbc.0.2015.02.23.01.49.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 01:49:59 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) client-ip=2607:f8b0:400e:c02::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x236.google.com with SMTP id fp1so24203063pdb.9
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 01:49:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=W5Q5P2X4RXskSHJJKzE9JvcLkgdCzd3l+cavEambaic=;
        b=K2vUKgntTrdE98zbEgsr2SfFy4BFaSwz2RNq7WJe4HT0qleoKMZ6YQ1BINI/+54Xs0
         jPizlDzHmRLfwIxLecafc0nYrho+CXvM0tld4ew6D93ippPsKQeEO2oh1w97DtbYl/5x
         q3J2vsm5luI+GbeHcbjbsQ9tO3BiO+Oz0IsjL5IKWT7+ys5bYjLDcdeYuJj9LXFmkMyt
         3T8z4X4BLy1kJ+d+o2xUH4jeswGiLcme71nv46d432C0OJDROB/u4OvmfZxLFWXeot8y
         axug/JdBRyzK4zpS5GnPqByFHMbAAUruiImLqEG5LTPwQQdgeecgfj5GrEctyXB4YQo0
         WePQ==
X-Received: by 10.66.142.131 with SMTP id rw3mr17953014pab.34.1424684998968;
        Mon, 23 Feb 2015 01:49:58 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id kp1sm34921227pbd.54.2015.02.23.01.49.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 01:49:58 -0800 (PST)
Date: Mon, 23 Feb 2015 15:21:00 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/4] staging: rtl8192u: Clean-up comment line style
Message-ID: <0103912c5f48fa319b9503c985a2fd28952e2b90.1424683660.git.navyasri.tech@gmail.com>
References: <cover.1424683659.git.navyasri.tech@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424683659.git.navyasri.tech@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Convert style of comment from C99 to C89 to fix the
following checkpatch.pl error:

ERROR: "Do not use C99 // comments"

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v3:
    -None in this file of the patchset

 drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
index eb89321..bcb2479 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_crypt.c
@@ -11,7 +11,7 @@
  *
  */
 
-//#include <linux/config.h>
+/* #include <linux/config.h> */
 #include <linux/module.h>
 #include <linux/init.h>
 #include <linux/slab.h>
-- 
1.9.1


