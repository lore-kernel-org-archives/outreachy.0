X-GM-THRID: 6252303404941443072
X-Received: by 10.50.50.208 with SMTP id e16mr3833539igo.12.1455727836318;
        Wed, 17 Feb 2016 08:50:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.137 with SMTP id z9ls4839476qgd.75.gmail; Wed, 17 Feb
 2016 08:50:35 -0800 (PST)
X-Received: by 10.129.4.201 with SMTP id 192mr2305167ywe.15.1455727835868;
        Wed, 17 Feb 2016 08:50:35 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id 79si334777pft.0.2016.02.17.08.50.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 08:50:35 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fl4so14151011pad.0
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 08:50:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=8EptA2NhQ7zQLRJv0zdO55zruJGvsu4+v88SnGMp9xM=;
        b=yXifscHjVYxi6Dkh5AckRTm8OTgwDAsqbQIfIksEl/l42+2/4IbOmkZ2uWnR98mSBZ
         vl2ysyfjwBICjjKKlrKkFHxHkQJSoMdD96q8Op+Vndm9Sg4P5fnUfanmXUu6av/H90Uk
         vDtJAGovGUXMmIB9d0BNVz9M9tk/qeLKpiRrBD159iADPD7KZjq6fsh6SsTehBkrE4zA
         ySiVQtGH6Ue9y0sy1WNIKaIlSGtF76sjoIvw7gJGOe1wFWTFcsZX6XoDaWILDgRmnIr0
         SNOu0jWiAp9JoNtDMBYMVhKiq+w+530v53ANK0Whzcj/7o75Ehyxwrd3sOWilMeA/P7I
         UVBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=8EptA2NhQ7zQLRJv0zdO55zruJGvsu4+v88SnGMp9xM=;
        b=jr9Qwj80WRKSlggwgoTXFckkXaPdd0hkIhY9Hukx7Ozqswhpf9yqYNBsI6mXlF5N9E
         rbkLe4DpZ4CI3blFMjd96GFTFXCOgmblzzyx+Nz13G16AygiHX2sgQWqWV8vu3HtDDWL
         zJjpLgA/kMD4xDmk69gxuRHr+RkMDNBMs01fR9BawlfbCDutmA7J4BdXqjzsNmrXWduZ
         6XjtpGmnx07N2ODB/DdThrLH0O/aKtYAN1gnvlhfRXO2xou5IbSxdTyEt8HILhv5tkB/
         7UcK56p0Fj43n12OH46WqjDRk8W7jXKYhW4grBD7eRPVGv0RUgK9+uKr/4MyJFjoKTvE
         O30g==
X-Gm-Message-State: AG10YORCEJxgFO32AZljzWVIpQAH6/KMM0vSoDRZb6ECEcJ0KxRuYBrL9+eHOpQee6cZJQ==
X-Received: by 10.66.142.226 with SMTP id rz2mr3485623pab.104.1455727835722;
        Wed, 17 Feb 2016 08:50:35 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.146.252])
        by smtp.gmail.com with ESMTPSA id u90sm3914426pfa.60.2016.02.17.08.50.31
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 08:50:35 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Wed, 17 Feb 2016 22:20:26 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v3 1/2] Staging: wlan-ng: Remove function hfa384x_drvr_commtallies
Date: Wed, 17 Feb 2016 22:20:08 +0530
Message-Id: <0ef9ed63eb1f111b5047495090d73586533af309.1455726534.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455726533.git.bhumirks@gmail.com>
References: <cover.1455726533.git.bhumirks@gmail.com>
In-Reply-To: <cover.1455726533.git.bhumirks@gmail.com>
References: <cover.1455726533.git.bhumirks@gmail.com>

The function hfa384x_drvr_commtallies is not used anywhere in the kernel
so remove it. Also remove its prototype from the header file.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
Changes in v2:
* Combine patches 1 and 2 of v1 in a single patch to remove both the
  function and its prototype.
Changes in v3:
* No change.

 drivers/staging/wlan-ng/hfa384x.h     |  1 -
 drivers/staging/wlan-ng/hfa384x_usb.c | 31 -------------------------------
 2 files changed, 32 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 3bc8439..cec6d0b 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -1360,7 +1360,6 @@ void hfa384x_destroy(hfa384x_t *hw);
 
 int
 hfa384x_corereset(hfa384x_t *hw, int holdtime, int settletime, int genesis);
-int hfa384x_drvr_commtallies(hfa384x_t *hw);
 int hfa384x_drvr_disable(hfa384x_t *hw, u16 macport);
 int hfa384x_drvr_enable(hfa384x_t *hw, u16 macport);
 int hfa384x_drvr_flashdl_enable(hfa384x_t *hw);
diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index b6cf93d..4e4b6e3 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -1708,37 +1708,6 @@ done:
 }
 
 /*----------------------------------------------------------------
-* hfa384x_drvr_commtallies
-*
-* Send a commtallies inquiry to the MAC.  Note that this is an async
-* call that will result in an info frame arriving sometime later.
-*
-* Arguments:
-*	hw		device structure
-*
-* Returns:
-*	zero		success.
-*
-* Side effects:
-*
-* Call context:
-*	process
-----------------------------------------------------------------*/
-int hfa384x_drvr_commtallies(hfa384x_t *hw)
-{
-	hfa384x_metacmd_t cmd;
-
-	cmd.cmd = HFA384x_CMDCODE_INQ;
-	cmd.parm0 = HFA384x_IT_COMMTALLIES;
-	cmd.parm1 = 0;
-	cmd.parm2 = 0;
-
-	hfa384x_docmd_async(hw, &cmd, NULL, NULL, NULL);
-
-	return 0;
-}
-
-/*----------------------------------------------------------------
 * hfa384x_drvr_disable
 *
 * Issues the disable command to stop communications on one of
-- 
1.9.1


