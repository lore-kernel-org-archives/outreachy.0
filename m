X-GM-THRID: 6260469597645832192
X-Received: by 10.182.47.132 with SMTP id d4mr3367079obn.40.1457629165600;
        Thu, 10 Mar 2016 08:59:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.11 with SMTP id g11ls2034361qgf.2.gmail; Thu, 10 Mar
 2016 08:59:23 -0800 (PST)
X-Received: by 10.129.89.198 with SMTP id n189mr3286484ywb.10.1457629163649;
        Thu, 10 Mar 2016 08:59:23 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id 12si678388pfb.1.2016.03.10.08.59.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 08:59:23 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id 124so73440424pfg.0
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 08:59:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=iQn2vvKn3NvhR0E3061eP/nwj7zznTQh31Prqra4lHI=;
        b=wZj8Lz/4J6sD3cixw8gulCsKxGQ9CfddWVg2RCz7TurfhBlPaxwiUd8tAcrkfyQDNX
         4XgqKO4ccKNJlZ4QYJ5jdySEBVbQnp9z7uL0p3VXM8PS7eOvX9UcFr2lXgYGpe2c5s1d
         Tmij5GW086wJlfJK1GYNtALvmfEVx0Mmj24d0VbZKQMuywDSIuR/a8xZSqE6kvqLTM89
         MzzDwy6+Sc4F/sBnMUyX68b10iEALrxtkruh2TWUkReYkmbvwfZtdru80cMSD4b7Urcb
         59nkmcNJrdVYTwkxQXtkxRjHoewvhc/ufeAqxiVHuHVOpJF2aEDCtP0YdSyNI91I6Xdd
         xQRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=iQn2vvKn3NvhR0E3061eP/nwj7zznTQh31Prqra4lHI=;
        b=fCs6xwIAuqjXBfqIRzwbeAABf9UZ2fnlt7dB8IRPuJjBwKtLgux3tIobTrs2RDYaZN
         ZlT5H1v/k2UGgPneVC6DnzMLfRqOGGn4blbqGWJkHhA4X/53NEBBTa/pOgDrjuakKGno
         eWkh/1rZwkFGho0scShePl7NGNHbabLSZx4oGkooAMtlUCmgvJIWb9cPDVO4IrJSSEsS
         TsZ4c3agkAxUlLnwLhah7ktJpay246XHiMMP9+6z9YFDFgVsQMjvCtIymxgBmLlxEBPQ
         MqAakOd9fnoraP6ibbnArxDzi7pNjQhZSKP15SgdXzVTb7neh1/IT1rP2ch3XmR5X8EA
         eg1w==
X-Gm-Message-State: AD7BkJLAci7F3bJy1Vy173KFecTW+ZUmxG/cm7Jq1NCO/aFY/ov8E+/Bv8LjMoZnJzER1g==
X-Received: by 10.98.69.1 with SMTP id s1mr6412458pfa.120.1457629163465;
        Thu, 10 Mar 2016 08:59:23 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id lq10sm6810926pab.36.2016.03.10.08.59.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 10 Mar 2016 08:59:22 -0800 (PST)
Date: Thu, 10 Mar 2016 22:17:12 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: xmit_linux: Remove unnecessary else after
 return
Message-ID: <20160310164711.GA18407@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the checkpatch warning that else is not generally
useful after a break or return.

This was done using Coccinelle:
@@
expression e2;
statement s1;
@@
if(e2) { ... return ...; }
-else
         s1

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


