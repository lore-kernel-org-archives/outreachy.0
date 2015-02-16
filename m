X-GM-THRID: 54191456256
X-Received: by 10.42.103.197 with SMTP id n5mr21778449ico.13.1424112058214;
        Mon, 16 Feb 2015 10:40:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.237.80 with SMTP id va16ls891106obc.60.gmail; Mon, 16 Feb
 2015 10:40:58 -0800 (PST)
X-Received: by 10.182.102.73 with SMTP id fm9mr6801431obb.38.1424112057952;
        Mon, 16 Feb 2015 10:40:57 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com. [209.85.220.49])
        by gmr-mx.google.com with ESMTPS id nt14si95301pab.2.2015.02.16.10.40.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Feb 2015 10:40:57 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.220.49 as permitted sender) client-ip=209.85.220.49;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 209.85.220.49 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-f49.google.com with SMTP id eu11so263044pac.10
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Feb 2015 10:40:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=GBCT+iklLsmPPx9MVpzZLQFjaj5eyX7Fn1mgGFS2DxE=;
        b=OEV6GGkgSjQhmKd0z5Jcpg2FpMCsk8NtiEC+p5VrdV5UXMfW/PlUvmtFTzlj4tKDMJ
         2uUUX2426Rv9GO4rK/jdzpZrwq3PDwJsB+lyxAEjrRIPWlHYYPbgIzTKzCKbe2GJQ5fT
         00CsxTv+NFu99NyKTZiqvIZjugLD0uMfKVZyX2miZRNDiTsb/kozKcOwhdnO7euyGV1G
         dyx2HDAnxHWN9GBe6D223QTumeXYbbLXlu8vco/xPMsuhtc/PHwswDXhrTl37d9h6Kgj
         q9b8tpYsu7qWuYoVMP+CPqtBSNLFF1vhu5e4CwFDYmgGjHI9TiPHqzLrAgh+qqvTavWm
         SkHg==
X-Received: by 10.70.37.4 with SMTP id u4mr42586937pdj.40.1424112057852;
        Mon, 16 Feb 2015 10:40:57 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id qp3sm14769642pdb.11.2015.02.16.10.40.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 16 Feb 2015 10:40:56 -0800 (PST)
Date: Tue, 17 Feb 2015 00:10:44 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: dgnc: Removed trailing whitespace to improve
 readability.
Message-ID: <20150216184044.GA19703@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Removed trailing whitespaces to improve code readability and remove checkpatch warning.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.h | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index a8157eb..734bdc2 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -398,11 +398,11 @@ struct channel_t {
 /*
  * Our Global Variables.
  */
-extern uint		dgnc_Major;		/* Our driver/mgmt major	*/
-extern int		dgnc_poll_tick;		/* Poll interval - 20 ms	*/
-extern spinlock_t	dgnc_global_lock;	/* Driver global spinlock	*/
-extern uint		dgnc_NumBoards;		/* Total number of boards	*/
-extern struct dgnc_board	*dgnc_Board[MAXBOARDS];	/* Array of board structs	*/
-extern char		*dgnc_state_text[];	/* Array of state text		*/
+extern uint		dgnc_Major;		/* Our driver/mgmt major */
+extern int		dgnc_poll_tick;		/* Poll interval - 20 ms */
+extern spinlock_t	dgnc_global_lock;	/* Driver global spinlock */
+extern uint		dgnc_NumBoards;		/* Total number of boards */
+extern struct dgnc_board	*dgnc_Board[MAXBOARDS];	/* Array of board structs */
+extern char		*dgnc_state_text[];	/* Array of state text */
 
 #endif
-- 
1.9.1


