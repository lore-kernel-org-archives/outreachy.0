X-GM-THRID: 6251162931836223488
X-Received: by 10.66.141.102 with SMTP id rn6mr11770931pab.26.1455462289744;
        Sun, 14 Feb 2016 07:04:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.112.42 with SMTP id in10ls578008igb.13.canary; Sun, 14 Feb
 2016 07:04:49 -0800 (PST)
X-Received: by 10.50.164.134 with SMTP id yq6mr7768295igb.13.1455462289407;
        Sun, 14 Feb 2016 07:04:49 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id ff2si2443665pad.2.2016.02.14.07.04.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 07:04:49 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id yy13so71950161pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 07:04:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Hb4K12uNnmqLim620SvYhtQGCtulU53ohNyMDCgYMuo=;
        b=slr4jXQR4n3rpNQur9WDdqnpJGwDastkrTG0tly9IQgBj3+O3SD5HUyrSg7o63tjbX
         MW6FL4izl0ZjwyTIGmjqSqbEqr5IffFY2v9hBcg/gbOqFmQK5SoVc8UAB9x8xAwwQkBk
         DxXGJcppvhZ0yOMo8rKMMzSUn7f7B0wdT0pdrDRYu8nibWV77Jp5IshKTtU1TviXc0+W
         W5LdTS4dsILUXTk1D/41QMMiG2n9lBlnbDF7ynqGPVZDxj8nhqzR49P07A4WRYEEan+b
         caUEPrFLKCeUbRoSqC9rtTno8om0zz7HJOjbTJsFMAyylhse8vlEo53cV5dxQd7Kgg+5
         3yiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Hb4K12uNnmqLim620SvYhtQGCtulU53ohNyMDCgYMuo=;
        b=mtDRGGe4SHKmFz8WzzmLWq8wTiekXEYhEBWUE6HToSNFeBUq/8czwsjiH4QrY5D+t2
         s509Nz7oqcSecnACFhm/x3XrQfUi0xeEZO8kUwr9FAGx7i2i9ytrDpAQUhHx4hwW9R+6
         ymkIZzHl4FUTICclRsmAN33Tuq0Oio4zfwNr2IafTPpa64lMimOvLb8yObjiHE5Q9Xbh
         W/xyXhgKeVW5aRp+aBaqMv2omLAtiRbUabH6FTkLj2Wh4pA3UE3B84F3pwD8jc4BYsWp
         emKvgPp+kyJBxtCvBT6KItFshFNc4HCP/koVYrRtj2tbjuPY7eqrL6cH0I5GKmCIj21W
         ZPlA==
X-Gm-Message-State: AG10YORceMAQUXwfPa4sonYTaCw1Es7mLwlNEZp5p1ZOlM5H4MWjP2BKQx4REhTVkxHSsA==
X-Received: by 10.66.97.102 with SMTP id dz6mr16852757pab.59.1455462289295;
        Sun, 14 Feb 2016 07:04:49 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.137.116])
        by smtp.gmail.com with ESMTPSA id w89sm32142278pfi.13.2016.02.14.07.04.45
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 07:04:48 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 14 Feb 2016 20:34:40 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rdma: hfi1: Delete NULL check before vfree
Date: Sun, 14 Feb 2016 20:34:28 +0530
Message-Id: <1455462268-6963-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The function vfree test whether the argument is NULL and return
immediately. SO NULL test is not needed before vfree.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rdma/hfi1/user_sdma.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/user_sdma.c b/drivers/staging/rdma/hfi1/user_sdma.c
index d3de771..4f55950 100644
--- a/drivers/staging/rdma/hfi1/user_sdma.c
+++ b/drivers/staging/rdma/hfi1/user_sdma.c
@@ -468,8 +468,7 @@ int hfi1_user_sdma_free_queues(struct hfi1_filedata *fd)
 		fd->pq = NULL;
 	}
 	if (fd->cq) {
-		if (fd->cq->comps)
-			vfree(fd->cq->comps);
+		vfree(fd->cq->comps);
 		kfree(fd->cq);
 		fd->cq = NULL;
 	}
-- 
1.9.1


