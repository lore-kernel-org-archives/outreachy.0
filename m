X-GM-THRID: 6253849436134309888
X-Received: by 10.129.85.68 with SMTP id j65mr25348433ywb.57.1456087789054;
        Sun, 21 Feb 2016 12:49:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.33.85 with SMTP id h82ls641708ioh.63.gmail; Sun, 21 Feb
 2016 12:49:48 -0800 (PST)
X-Received: by 10.107.136.160 with SMTP id s32mr25010756ioi.14.1456087788589;
        Sun, 21 Feb 2016 12:49:48 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22b.google.com (mail-pf0-x22b.google.com. [2607:f8b0:400e:c00::22b])
        by gmr-mx.google.com with ESMTPS id yd9si2761564pab.1.2016.02.21.12.49.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 12:49:48 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) client-ip=2607:f8b0:400e:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22b as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22b.google.com with SMTP id c10so83403754pfc.2
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 12:49:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=lebyZ1h333jG6eKq7gFQFIG7mWHVa5ETZ4Uz1+acKUc=;
        b=GtzUMcYmimzPxGCCSyKeu9fuMtlKAON2QBEQIXejeZkmWC1V4Kz14BI7Ind5n234Nw
         75c4jGSLDZlMpWqhClhrL3JTH44i2BE0bnZWuHahmyZW1RUavgBzTGCI3mZZnuB+txkv
         DqtawH3XzQY1d2GB5JE3X7rLewuamC5QqPJUJBljiZY98pjSSJT2ZvGnOBWucq5KS0SH
         RLYeZoovUOMO3IsdvH3gjC0fWwI9K+8MhGabpvQi8x8g3ZJXUXuqQL9wxgRGe45Sf6+M
         heBtaGWcwOOzCCK7f22D0FUoCDShPuB7PfQv0dMfTKT0Yg97SR/CKI1cJ5fkfMAD3ycv
         YEZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=lebyZ1h333jG6eKq7gFQFIG7mWHVa5ETZ4Uz1+acKUc=;
        b=aBIDCD22S3/MedcJCagzhW5zN5stmXx2KRF2eSgkGs+7Nj/XKqbs2xSjx4WTZi6e0+
         L1Jaj1XiU21Ld/K/SJhRzeBwSgZQc96eWfgYfXvLZDVyqEOuBE7MFjIeDtNBcvKxiDcL
         0IVqmYQ4tt1JhNoYz/sfPx9jlLlaSZxsg/e3sTJBATBWbs2abA2k0LHTPUj0N1v38SUa
         pNmkjKTrK0mwQye4IfHjPi0QmwJtgQUqemuDC8lCGAFqyHskjCF0i9382EekCehlOZwH
         agn5soRM5q1tvEQf04ixWfDxjO07UBwF3MwNVfIGptRDHQ42SeciJWi0LcxSA0djhvSs
         dh5w==
X-Gm-Message-State: AG10YOQaiA5mP2v1qnYvg8lNtNJ4Mqt2+l1DJK/LUfd23cxBfDVeB3wlIf17E2rt327iQA==
X-Received: by 10.98.93.155 with SMTP id n27mr33435781pfj.88.1456087788461;
        Sun, 21 Feb 2016 12:49:48 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id tb10sm31839483pab.22.2016.02.21.12.49.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 12:49:47 -0800 (PST)
Date: Mon, 22 Feb 2016 02:20:18 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: Drop else after return
Message-ID: <20160221205018.GA6525@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove unnecessary else when there is a return statement in the
corresponding if block.

The following Coccinelle patch used:

@@
expression e2;
statement s1;
@@
if(e2) { ... return ...; }
-else
         s1

@@
expression e1;
@@
if (e1) { ... return ...; }
-else{
	...
-}

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8712/xmit_linux.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/xmit_linux.c b/drivers/staging/rtl8712/xmit_linux.c
index f8866d7..adb51f0 100644
--- a/drivers/staging/rtl8712/xmit_linux.c
+++ b/drivers/staging/rtl8712/xmit_linux.c
@@ -72,8 +72,7 @@ sint r8712_endofpktfile(struct pkt_file *pfile)
 {
 	if (pfile->pkt_len == 0)
 		return true;
-	else
-		return false;
+	return false;
 }


--
2.1.4


