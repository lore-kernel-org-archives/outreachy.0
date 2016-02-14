X-GM-THRID: 6251095544771379200
X-Received: by 10.129.103.69 with SMTP id b66mr10252066ywc.58.1455446599668;
        Sun, 14 Feb 2016 02:43:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.139 with SMTP id m11ls2831525qge.62.gmail; Sun, 14 Feb
 2016 02:43:17 -0800 (PST)
X-Received: by 10.129.102.215 with SMTP id a206mr11020467ywc.40.1455446597727;
        Sun, 14 Feb 2016 02:43:17 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id ui7si2764007pab.0.2016.02.14.02.43.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 02:43:17 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id e127so6190054pfe.3
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 02:43:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=pb4VC4atSrHVJ/reF3g6eScBZUtiw9vZs/gdBa8YHBo=;
        b=X0TM/EpREwiPH9ndlQxbuepTn1lrrXKzcCPw5AraSegOCjiYLEFgXyJQ06glp7ajBS
         ijDA77axDbu7f5E8nL2VmXBzkgGW5TrJBKYVDxByoGGFDlq3Bch+sn+1Vj3ciL9mftOQ
         0qojheNTkkTm71CLIlMQjbZ9O+Ft6sh43XOG1TLhyY+lE3x1b7hoO49TsQBBuB1SpTIC
         CGoOqoDl63M0Xi9WwXqlCl0tIbKJJNRlmG6Z+xoALN8CBC8poM6OSdNywn3Z3/TkgBsz
         afmyNLgIYd9jO+RBIgftVyNRo10AZxwk/dT3yoyUv40d6BSHzB9Wpbum7qoeyR54dB4j
         NjPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=pb4VC4atSrHVJ/reF3g6eScBZUtiw9vZs/gdBa8YHBo=;
        b=HIP7U3T1Hi4+SdRheZqYKRaoZREiWoiO8dRy9fG8A1NH8tDsVlECSQimb11Y0YzKOv
         v38xW8NatuOrOYGKbgEt9HvT9mJBb2jOcP2YYkzHXO2m3jgt/pJKOLN6kxUv4S56o2Dt
         NoOvyr3cTf6FqtvV+5ntwvDK7KYHZzQ80VTFy0H2ouYkmIdsnEfcuDquWfblx60ZWCv2
         fL4RdO/WXYwsUCvuYE8HWeHwOHbpDC1A2HhOIQZY5VF2C58felraQOhRJ+7gSgYd+Pww
         qTomNRufWJDMSqzAsRcF0Peun6JstSc8o4dokG3ApaX5CuNV90BYBaaKNW36x+e0tLXE
         kDzQ==
X-Gm-Message-State: AG10YORhTaKLD+q+FKkIEnF14/3cPza46s2Vbwx2oXZbOlOM2DiXjE9BPOWSy8iH3buUkg==
X-Received: by 10.98.44.73 with SMTP id s70mr15534376pfs.2.1455446597583;
        Sun, 14 Feb 2016 02:43:17 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id q85sm25075627pfq.81.2016.02.14.02.43.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 02:43:17 -0800 (PST)
Date: Sun, 14 Feb 2016 16:13:42 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging:fbtft: Fix block comment coding style
Message-ID: <20160214104333.GA27431@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Add the required leading * on subsequent lines as well as move the */ on a separate line. Checkpatch found this issue.


Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index 3bcbabf..c61c6ce 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -519,7 +519,8 @@ static ssize_t fbtft_fb_write(struct fb_info *info, const char __user *buf,
 	res = fb_sys_write(info, buf, count, ppos);
 
 	/* TODO: only mark changed area
-	   update all for now */
+	 * update all for now
+	 */
 	par->fbtftops.mkdirty(info, -1, 0);
 
 	return res;
-- 
1.9.1


