X-GM-THRID: 6250764782783168512
X-Received: by 10.129.145.193 with SMTP id i184mr6596524ywg.32.1455369599356;
        Sat, 13 Feb 2016 05:19:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.74 with SMTP id z68ls1930996qge.36.gmail; Sat, 13 Feb
 2016 05:19:58 -0800 (PST)
X-Received: by 10.129.109.197 with SMTP id i188mr6302597ywc.8.1455369598908;
        Sat, 13 Feb 2016 05:19:58 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id u66si2129358pfa.2.2016.02.13.05.19.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 05:19:58 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id y7so185024paa.3
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 05:19:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=vw/GYjXxuE3pVIQ7XAjHSl7oRzyQqOJeQ/+MjX/Ks+I=;
        b=Tvgr/kWr7GcXxdlC0fn7D9RIT9t//6h8/A16ppK0DlbtgVHHkOKK1drnpouMZxJGRg
         x7S8Zy9wHyMymaI2bMCLLOasvhjd+98TbzEUbGM9G5OZIRqRk4I/QW2DyHrPvubNP02+
         8prD/TmpOjt3HzmzG6hN6hJX9Us0m8zFSUz1kM1er96XqMHaTmRGkK2zDNTtwnsVVtLv
         OyraNVAaZkQ5gyV20syAGEW3OJ7nRRCmakiXjeEeb26RUO8Qle70pmn2NJcKPyHJnfLV
         oqeNYlS1LzAC9zS5mWy7ArxEPSlPHqTyj1NMPibkPB/SKACm6MaxXmv+/8abbMUmXfka
         xoaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=vw/GYjXxuE3pVIQ7XAjHSl7oRzyQqOJeQ/+MjX/Ks+I=;
        b=RgYCIS4pMr0OaJftDz9IlcXGo/8uLGADyHQqqT7hR33kR8xg4id7LkrY/9zATw64ho
         6UQaOSw5cSrmRoG3FfXvOYqueTMRTu8lPVYfIEuNRkduJpJxagpHGYvIGW410fiBytvo
         a9ji0rRmQM/pGixGIBCK9xN4KBd9WTuRUrWWUSi/JQLrvD8fVk2ZmmT6J0fq7f36z5kL
         +CBP9D2YB9PW4cfwnjkid0Hra13J1t8fSOMvRokV8rD7urB9JnfPpE/RFqHaqc6QVLvp
         Uee5wS2zywP+emknuqumCdTxvsvsjLwrxNbepNBKrx+S1d8ItaY7jOkcvwHCTeMo79K/
         BbKg==
X-Gm-Message-State: AG10YOS9xpxoWdNZ86agnK7UM6cCIddXWnwoX3jkWHTdMCbGcQF+6I62KIoi9AQti27iqA==
X-Received: by 10.66.119.71 with SMTP id ks7mr9781272pab.151.1455369598780;
        Sat, 13 Feb 2016 05:19:58 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.191.38])
        by smtp.gmail.com with ESMTPSA id s90sm26277027pfa.49.2016.02.13.05.19.54
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 13 Feb 2016 05:19:58 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sat, 13 Feb 2016 18:49:49 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 1/2] Staging: wlan-ng: Drop wrapper function
Date: Sat, 13 Feb 2016 18:49:34 +0530
Message-Id: <b39ecec6b67790a1651985cf4dd043c280cd09a1.1455368638.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455368638.git.bhumirks@gmail.com>
References: <cover.1455368638.git.bhumirks@gmail.com>
In-Reply-To: <cover.1455368638.git.bhumirks@gmail.com>
References: <cover.1455368638.git.bhumirks@gmail.com>

Drop the function prism2mgmt_pstr2bytearea and replace its function call
with the standard function memcpy that it wrapped.
The code becomes cleaner after this patch.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/wlan-ng/prism2mib.c | 24 ++----------------------
 1 file changed, 2 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2mib.c b/drivers/staging/wlan-ng/prism2mib.c
index cdda07d..e1b2e47 100644
--- a/drivers/staging/wlan-ng/prism2mib.c
+++ b/drivers/staging/wlan-ng/prism2mib.c
@@ -388,7 +388,7 @@ static int prism2mib_bytearea2pstr(struct mibrec *mib,
 		prism2mgmt_bytearea2pstr(bytebuf, pstr, mib->parm2);
 	} else {
 		memset(bytebuf, 0, mib->parm2);
-		prism2mgmt_pstr2bytearea(bytebuf, pstr);
+		memcpy(bytebuf, pstr->data, pstr->len);
 		result =
 		    hfa384x_drvr_setconfig(hw, mib->parm1, bytebuf, mib->parm2);
 	}
@@ -543,7 +543,7 @@ static int prism2mib_wepdefaultkey(struct mibrec *mib,
 		len = (pstr->len > 5) ? HFA384x_RID_CNFWEP128DEFAULTKEY_LEN :
 		    HFA384x_RID_CNFWEPDEFAULTKEY_LEN;
 		memset(bytebuf, 0, len);
-		prism2mgmt_pstr2bytearea(bytebuf, pstr);
+		memcpy(bytebuf, pstr->data, pstr->len);
 		result = hfa384x_drvr_setconfig(hw, mib->parm1, bytebuf, len);
 	}
 
@@ -759,26 +759,6 @@ void prism2mgmt_pstr2bytestr(struct hfa384x_bytestr *bytestr,
 }
 
 /*----------------------------------------------------------------
-* prism2mgmt_pstr2bytearea
-*
-* Convert the pstr data in the WLAN message structure into an hfa384x
-* byte area format.
-*
-* Arguments:
-*	bytearea	hfa384x byte area data type
-*	pstr		wlan message data
-*
-* Returns:
-*	Nothing
-*
-----------------------------------------------------------------*/
-
-void prism2mgmt_pstr2bytearea(u8 *bytearea, p80211pstrd_t *pstr)
-{
-	memcpy(bytearea, pstr->data, pstr->len);
-}
-
-/*----------------------------------------------------------------
 * prism2mgmt_bytestr2pstr
 *
 * Convert the data in an hfa384x byte string format into a
-- 
1.9.1


