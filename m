X-GM-THRID: 2189232701440
X-Received: by 10.152.43.166 with SMTP id x6mr444854lal.3.1424553042048;
        Sat, 21 Feb 2015 13:10:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.27.131 with SMTP id jg3ls310638wid.12.gmail; Sat, 21 Feb
 2015 13:10:41 -0800 (PST)
X-Received: by 10.180.80.35 with SMTP id o3mr459818wix.0.1424553041785;
        Sat, 21 Feb 2015 13:10:41 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-we0-x229.google.com (mail-we0-x229.google.com. [2a00:1450:400c:c03::229])
        by gmr-mx.google.com with ESMTPS id i7si377952wif.0.2015.02.21.13.10.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 13:10:41 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) client-ip=2a00:1450:400c:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x229.google.com with SMTP id x3so11416452wes.7
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 13:10:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=Jl+2yywo1N9MjrN3+Wz0Uv94FI77vji+/1D13iEfZz4=;
        b=bN9iy0TlBCMUWHlJtiLhFF8H+UKLf/4yAhyhfr+hWobBXKZzMGMR7U47NgF1SCwMUR
         cPhtSgVnJKdfnMgEE8Ur91Ee5Q2udgzWecIFf60x/RJshLDs5CJU8uO90ewpS18HRSgW
         k+dN4isagvT5oltHxVRNrLq/p9wV8w6qbu322diQ9lmzMk5Q1KZ26TH5kWpXGn5kDLUE
         uJNsUwsZmengULvhBTeuaPswjZ00NkXIpfw4eDeXv4QibJ5NYFUlvt6ynvZprqqtY8nn
         z0we0DV15+62lowR+1XpSwHfOUOYdCdPghObyCucSMhGyZa4KEPQ65e68HVymRa2BlmP
         03VQ==
X-Received: by 10.194.80.193 with SMTP id t1mr8150388wjx.8.1424553041734;
        Sat, 21 Feb 2015 13:10:41 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.58.202])
        by mx.google.com with ESMTPSA id md8sm8470206wic.13.2015.02.21.13.10.40
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 21 Feb 2015 13:10:41 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: gdm724x: Fixed else after return or break warning
Date: Sat, 21 Feb 2015 23:10:44 +0200
Message-Id: <1424553044-7032-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

The following patch fixes the checkpatch.pl warning:
drivers/staging/gdm724x/gdm_usb.c warning: else is not generally useful after a break or return

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/gdm724x/gdm_usb.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
index 5d44490..d2a3b35 100644
--- a/drivers/staging/gdm724x/gdm_usb.c
+++ b/drivers/staging/gdm724x/gdm_usb.c
@@ -664,9 +664,8 @@ static void do_tx(struct work_struct *work)
 	if (!udev->send_complete) {
 		spin_unlock_irqrestore(&tx->lock, flags);
 		return;
-	} else {
-		udev->send_complete = 0;
 	}
+	udev->send_complete = 0;
 
 	if (!list_empty(&tx->hci_list)) {
 		t = list_entry(tx->hci_list.next, struct usb_tx, list);
-- 
1.8.3.2


