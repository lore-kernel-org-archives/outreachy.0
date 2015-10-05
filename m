X-GM-THRID: 6202253257836855296
X-Received: by 10.107.135.15 with SMTP id j15mr29388786iod.28.1444074618060;
        Mon, 05 Oct 2015 12:50:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.107.7 with SMTP id g7ls3162509qgf.98.gmail; Mon, 05 Oct
 2015 12:50:16 -0700 (PDT)
X-Received: by 10.129.72.205 with SMTP id v196mr26962507ywa.11.1444074616567;
        Mon, 05 Oct 2015 12:50:16 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id pe1si3545253pac.2.2015.10.05.12.50.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 12:50:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id fv12so189288842pac.2
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 12:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=9Kx87fQ7qQjBDjVp9WaVCcImNhuz4/KtA/rFdKnjCFk=;
        b=pAH/jdZAoW+ZLGQrq0YRDT08rufhrjResO1zBdX3LXdFUIxqVIT3X94fWihTXxVMP5
         dnXnrba8DkJTJ3gecL2zQWsx7KccVbOP/LBuA4LcdIsPh/c78kR+qWZMc7lhjF7TQZsM
         ZrXDOgTL71CWGdw91343R8keLD6FrO6o5R8VidTJLBEqpXypYn827cBlIC03z8vYAWj8
         uoyCEZnTsrYfAbp9YVT73WRq18BUfAlTx+f2rHSkiK+xUwF+spVOI+DrO0HvBtXhfBFK
         JLdbz7/P2su3Dr06NoQxfwRjE0FEOnrP+3QTMLGlzFOaOQ+GP5L4XS+lX1tw/Ye0xGbo
         cKVg==
X-Received: by 10.68.137.3 with SMTP id qe3mr42735260pbb.26.1444074616370;
        Mon, 05 Oct 2015 12:50:16 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.187.15])
        by smtp.gmail.com with ESMTPSA id kh7sm29104512pbc.93.2015.10.05.12.50.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 05 Oct 2015 12:50:15 -0700 (PDT)
Date: Tue, 6 Oct 2015 01:20:12 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: usleep_range is preferred over udelay
Message-ID: <20151005195012.GA21881@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix checkpatch.pl issue: "CHECK: usleep_range is preferred over udelay;
see Documentation/timers/timers-howto.txt".
Replace `udelay()` with a call to `usleep_range()` with a reasonable upper limit.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 469c566..897dc77 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -237,7 +237,7 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
 		i = 5;
 		tmp16 = r8712_read16(padapter, TCR);
 		while (((tmp16 & _EMEM_CODE_DONE) == 0) && (i > 0)) {
-			udelay(10);
+			usleep_range(10, 1000);
 			tmp16 = r8712_read16(padapter, TCR);
 			i--;
 		}
-- 
1.9.1


