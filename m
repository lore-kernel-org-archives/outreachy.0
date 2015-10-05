X-GM-THRID: 6202168376668717056
X-Received: by 10.66.144.2 with SMTP id si2mr19302124pab.6.1444054855318;
        Mon, 05 Oct 2015 07:20:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.85 with SMTP id l82ls1665696iod.74.gmail; Mon, 05 Oct
 2015 07:20:54 -0700 (PDT)
X-Received: by 10.107.8.93 with SMTP id 90mr26976331ioi.30.1444054854855;
        Mon, 05 Oct 2015 07:20:54 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id zg1si3800429pbb.2.2015.10.05.07.20.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 07:20:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id lk4so177588035pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 07:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=/IwoSJYyeV2M0QsmwBPBC+Y/tgg62yk5ybg7ERSgAYk=;
        b=DmssfNfDSSPczvFtlC71E9kq0eOkR3FMNw5gZ5JplqJfd/UosVr+Cb90cTkV4AEEE0
         qzXDK54R3HpeHviWOFt/XMHEeAHFYgY3kL5h2JpsS0baCjnlW690GEdKltisJQw1qgAH
         c9YKFzfUoAUD1gqM2MZ/758/FZQqxuxDjL0j5SGkYq7xndAy7yQtdknWUO0H4AspT0LL
         deXNpBCoKzK1e/uh6bJaeOmwP508qpKdHhkHtm55wx27mYFt9ygAw0goB+OZnyirnkHF
         PECPbztTh7W6LJKMhy53A/ZRD0/TmBHrihPqoPJW96pYs6mJSZWfuvBGc33zrF1Nf/44
         0Ccw==
X-Received: by 10.69.2.69 with SMTP id bm5mr39762258pbd.41.1444054854680;
        Mon, 05 Oct 2015 07:20:54 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.64.141.177])
        by smtp.gmail.com with ESMTPSA id pq4sm16001083pbc.53.2015.10.05.07.20.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 05 Oct 2015 07:20:54 -0700 (PDT)
Date: Mon, 5 Oct 2015 19:50:50 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vt6655: Remove true comparison
Message-ID: <20151005142050.GA18417@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove comparison to true in if statement. Problem found using
checkpatch.pl
CHECK: Using comparison to true is error prone

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/vt6655/card.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index ecbe94f..f842be6 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -428,7 +428,7 @@ bool CARDbRadioPowerOff(struct vnt_private *pDevice)
 {
 	bool bResult = true;
 
-	if (pDevice->bRadioOff == true)
+	if (pDevice->bRadioOff)
 		return true;
 
 	switch (pDevice->byRFType) {
-- 
1.9.1


