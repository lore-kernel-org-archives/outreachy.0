X-GM-THRID: 6528283603618496512
X-Received: by 10.36.10.209 with SMTP id 200mr967064itw.48.1519984473793;
        Fri, 02 Mar 2018 01:54:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.98 with SMTP id v95ls1791286ioi.7.gmail; Fri, 02 Mar
 2018 01:54:32 -0800 (PST)
X-Google-Smtp-Source: AG47ELu5SX69BfYwb77G6YjcilD5neelshsdn2WvaQd13uyGcG4IbJv6paO2O/BqH4Ib/TYPNRVm
X-Received: by 10.107.198.65 with SMTP id w62mr3647446iof.105.1519984472887;
        Fri, 02 Mar 2018 01:54:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519984472; cv=none;
        d=google.com; s=arc-20160816;
        b=gB/fAg9JELv7TC1jMxPOWnJ0VHRkzhPoVvzzyWdcQ67yokJOSIgIJEgg+hVbA5NK+8
         +i6B7BkSl5WgT17inlBqXrP1Lx9V9CarYA/GUCdxkaooXk5PDGTBy8j7jCbtkMNballb
         EYLAJ6p4fP/CHAan2qWAh5H6BQmW5H5Snyk0LyI2RW2tnqtKYvttkfOBqLaWssJmUmHr
         I0AeuxSeUATKqSf4DS0fgIKRF0ixcOsjCpr0mvXRGpTaqaaCxLur3iQ5wGUwvKYXcuPx
         Wq1U+dTrd8TKXUNCZUS+kgKPQPU6gi2/trAEEBOkUWzfQmFLApVmYmoF1JV8Ubh+hG6q
         Pg4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=GGAAZZDiiDsNkLRiRM9DHEAMET/CIoOEmlmWyel1iCk=;
        b=rs5HF6KDLE8HcO6NrsoPngE996aR9yuv/wZLxHx3sjEyEKsibpS1wtbpW07iVzUGcG
         OcygXZs3RRs17m1HfM7yLHZKjpwgfUIW8i60iYeavS1vw3ciWvDj+fgPu5uhaJn78YUp
         eXccV9BDKf0dcy0ecRLwcjXImt8Bxg08GfEJEfwe72g9ZSHE4qWSSdNinwAsZPHKp30Y
         VyMgFUQZtOjrOQqfp1M20pfZoagFEcUGEXPIGhRu4FALgCPvb2gYzUbldz6NG1W7x96j
         V6iAR8ysTj4bJ1bNWqzxka+0f10mo0wsjaq4DopguNby/hLqT7dPaQCieOEn61rOGG/U
         6s6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pmjBs9wh;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::22a as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pg0-x22a.google.com (mail-pg0-x22a.google.com. [2607:f8b0:400e:c05::22a])
        by gmr-mx.google.com with ESMTPS id 71si446965ioz.0.2018.03.02.01.54.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 01:54:32 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::22a as permitted sender) client-ip=2607:f8b0:400e:c05::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pmjBs9wh;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::22a as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x22a.google.com with SMTP id m19so3589039pgn.1
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 01:54:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=GGAAZZDiiDsNkLRiRM9DHEAMET/CIoOEmlmWyel1iCk=;
        b=pmjBs9whdOKYIQ00wPFFWlx32xDJ76xzvu7SR7EilQDT6m0ARpfHAQvGjO2et1qOX6
         T7wg8P4UGxtIUwLwPn523nlCA1GLcK+AdpHzLUqM9ij4sn4TveL1Ch2bSBU/QMtmj4D/
         hNgZKW2bzt38A4J7cEmpbGEYp/rhIquCnNZQSKa9no9Q1vT4M3EN3pNGqJwwG9840QXX
         gFFhst++71i5MhfzDpE5wgxeHedo+WnmyYAxla0GWAk1vPk3jv6zo/bsSTn4JMYK50IC
         OcjlYMqmKDon3bnTnAPkWiBWjR1sd3HvpXVl3q6DFEeUopROirhc/Je2NwQoWFc8fzGy
         rbqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=GGAAZZDiiDsNkLRiRM9DHEAMET/CIoOEmlmWyel1iCk=;
        b=aMhAtRZBhpcFLnmJh5SOTHZtLYJens6vpNNvB0odMO/PzaxEzqBG8Rcg1osR8uXmAA
         q5+vyFUOSIZ1ygjDH/oUqwdIqijYF9qaB29hHMdFUNgUfZnegkogvk2+hgNDW8fAOThZ
         sbtXsfqkLHfl8YlqpAcSGizE4LZhwGNaQt6xok79QTlnZQwwCofc0sZYWWBCp0td1KbC
         67LdhM6I8CbbBLuGuPkSecEBn67v0RZIOqvBsW7feVBL03/VpRxJ2ryBnSOAHjaVfVyy
         1eymc2ZSADCNP+HdQ7N+Wv1In3rXsACvKJ4XhArb1KwSFC6XFP4liMq/9dQ6KB4PobjO
         rTuQ==
X-Gm-Message-State: APf1xPByGV0TUwH+JwESZUPfYnp0mjupLy2srLEn6UPaMF0cZBEM/HYm
	I7jj5xCE7VtMjZoE8E5bIzo=
X-Received: by 10.101.77.142 with SMTP id p14mr4194770pgq.106.1519984472511;
        Fri, 02 Mar 2018 01:54:32 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-21-83.resnet.ucsb.edu. [169.231.21.83])
        by smtp.gmail.com with ESMTPSA id 70sm8904804pgb.86.2018.03.02.01.54.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Mar 2018 01:54:31 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH] staging: rtlwifi: remove condition where it has no effect
Date: Fri,  2 Mar 2018 01:54:01 -0800
Message-Id: <1519984441-14752-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove condition where if and else branch are functionally identical.
Issue found using cond_no_effect.cocci Coccinelle script.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
 drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c b/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
index ffff5b0..5b82640 100644
--- a/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
+++ b/drivers/staging/rtlwifi/btcoexist/halbtc8822b2ant.c
@@ -2885,12 +2885,8 @@ static void halbtc8822b2ant_action_a2dp(struct btc_coexist *btcoexist)
 							     NORMAL_EXEC, 5);
 
 		} else {
-			if (wifi_turbo)
-				halbtc8822b2ant_coex_table_with_type(
-					btcoexist, NORMAL_EXEC, 10);
-			else
-				halbtc8822b2ant_coex_table_with_type(
-					btcoexist, NORMAL_EXEC, 10);
+			halbtc8822b2ant_coex_table_with_type(btcoexist,
+							     NORMAL_EXEC, 10);
 
 			halbtc8822b2ant_ps_tdma(btcoexist, NORMAL_EXEC, true,
 						109);
-- 
2.7.4


