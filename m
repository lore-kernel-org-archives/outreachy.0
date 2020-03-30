X-GM-THRID: 6809913191851622400
X-Received: by 2002:a17:902:6b86:: with SMTP id p6mr11638048plk.150.1585556479280;
        Mon, 30 Mar 2020 01:21:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:7d6:: with SMTP id 205ls11456511pgh.7.gmail; Mon, 30 Mar
 2020 01:21:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvo2KAZV4i9iQnMGOHPp+AAPnj8tnteeO9AeXX4/WPa3tqAbf1SH21fuhTkwQWF6Na+2Uvy
X-Received: by 2002:a63:8c51:: with SMTP id q17mr12038528pgn.320.1585556477893;
        Mon, 30 Mar 2020 01:21:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585556477; cv=none;
        d=google.com; s=arc-20160816;
        b=JmRUpLKJKCwUvJACTyb7T+wj/6KBPjI64qTTByrVef/51LU26iF5hV5Xs1iuufwM7u
         VVKVvwXEs2/1SW9WHR2XJRsDRX3Whze4a8vV5DMPTZRdZGhBm1gJSA6Fa1wTqijP1Boq
         owy0HlWveaX0kW8Ov/JZe4wHJWW3wZaSjNetHHpy0MqJElkoHm+FRedtDSDeyOCA5ktr
         3AhsVWGMZSFHP3d/NFpJycclMnM/HC22fr2Jm/ZTrmeTlOD2bIz8MYXhzot/VyeEYcIU
         JBEnLp2PxuBR7KHBs8CwbbuYMAJn4DtNZFzVUvhr16pvE4HmHcknT6Mp/SgKP2CugpZ5
         enZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=lzxvV/x1O3A5r2XKIj51TkQd8UzHL6H56EMPmFkEgjw=;
        b=j1LTcj+fNnxEu5C1m2ek0BTmxWtVbTpZ/pGOaG0wvkJzq2lv1Osgic5U2v89wVXUYm
         Du5OAVCLhu2TKsYFcmv5DGTTF/dIji/CKevM8N+xUKTjoLR6ojQVTiGunEaH2qtx25bv
         hynVayB8tuzcobMJUYJfu0e84ZvLzUCGrW0xl1kH3kfjsJnycuD4U4ItTJteBQnQf/A1
         8zx9w3GFcfgCAlrW6S/124XF6p7cCbjKcYzdVUtBHoK5QmwJuBB6lT8irQ/2Wr3phKLC
         LwmGMZaf2aAKePnTzzmhaUXB90A8mTi+iVUk/p2206iWq1rMI/V6TxVxjGdO8JfE5265
         wZzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XIKy85AZ;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id y5si778973plr.4.2020.03.30.01.21.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 01:21:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XIKy85AZ;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id k5so6113090pga.2
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 01:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=lzxvV/x1O3A5r2XKIj51TkQd8UzHL6H56EMPmFkEgjw=;
        b=XIKy85AZd+b7fhPu9Qu00Sw86yKPe/D6o8fiaB/pTnHspdCQbHVlf1ewcTCcV7GHS+
         Oa4M1qZNSpbrk6BuF0ByBZDFX2Xs4Gq1HOz2wa4v4YNdgzBtxWXTJeruJyWItzGEimEm
         XvuDk1b7r8y2/ouLgO/PSCtk2LqHpw/OfS2tjfXWMjriiDAvv/QopdzgegrSVXG5xlpU
         DnCsbQm3znzCI1ug2WHD1MhTHoSyTNBDSbJUJT9YLWzJ5frbmq7tpYgRSgxZYLQhLkve
         TW36HkNfiCkcM1TUYgobL3H2cbSBeKHsPXM0hawiYJgdytKupXRkmWw0iMRJqPMik5av
         6Nfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=lzxvV/x1O3A5r2XKIj51TkQd8UzHL6H56EMPmFkEgjw=;
        b=ZJcDIDRQcxA0PZNx6PJu2IJfDxxUpm5IUGwk+hWcyTgfBKn82vlz0lR/ADXdA/Xqve
         wnCx/z221yqIwu+UsJkDKZbWydsW0bCL2oaTrSN73YhuDLiKGad26MMh7bOivXwJ1J+I
         2Tlt8xZPbrAmYsDHbGFHiRXVOuzFCaq3eX9Oq1HGZWpPAmarZES8/zVOSLgMYMMYgSFH
         vWTqgxj5nAwgxVsTHvV/f7VIIIYsKqUsmG6ahFTuEi4D/DD0XMgW9EyUky27D8lfUa2D
         F7L2MxGJ0SS4THMh2KENszIZ5P+zLHGeDcohoHwtdad7PCOoJvl4n8XZ2X/ipMMvGt4Z
         FQIg==
X-Gm-Message-State: ANhLgQ2wdtPufiPBcw5M8QTC7ze6uL17FQhvrikS5C68bY8Lrws9raVx
	8LG2HtABQz971gx2xY6GkJBdhOG5YEtznA==
X-Received: by 2002:a62:3402:: with SMTP id b2mr11802277pfa.195.1585556477561;
        Mon, 30 Mar 2020 01:21:17 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([157.42.216.19])
        by smtp.googlemail.com with ESMTPSA id v25sm9238049pgl.55.2020.03.30.01.21.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 01:21:17 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Larry.Finger@lwfinger.net,
	outreachy-kernel@googlegroups.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH 1/2] staging: rtl8188eu: Properly structure the multiline comment
Date: Mon, 30 Mar 2020 13:50:35 +0530
Message-Id: <20200330082036.12928-2-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200330082036.12928-1-debsoumyajit100@gmail.com>
References: <20200330082036.12928-1-debsoumyajit100@gmail.com>

Add "*" at the start of each line of the multiline comment to improve
code readability and to adhere to the uniform Kernel coding style.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 93283c7deec4..5b2b4d1d56f6 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -1226,17 +1226,17 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
 }
 
 /*
-op_mode
-Set to 0 (HT pure) under the following conditions
-	- all STAs in the BSS are 20/40 MHz HT in 20/40 MHz BSS or
-	- all STAs in the BSS are 20 MHz HT in 20 MHz BSS
-Set to 1 (HT non-member protection) if there may be non-HT STAs
-	in both the primary and the secondary channel
-Set to 2 if only HT STAs are associated in BSS,
-	however and at least one 20 MHz HT STA is associated
-Set to 3 (HT mixed mode) when one or more non-HT STAs are associated
-	(currently non-GF HT station is considered as non-HT STA also)
-*/
+ *op_mode
+ *Set to 0 (HT pure) under the following conditions
+ *	- all STAs in the BSS are 20/40 MHz HT in 20/40 MHz BSS or
+ *	- all STAs in the BSS are 20 MHz HT in 20 MHz BSS
+ *Set to 1 (HT non-member protection) if there may be non-HT STAs
+ *	in both the primary and the secondary channel
+ *Set to 2 if only HT STAs are associated in BSS,
+ *	however and at least one 20 MHz HT STA is associated
+ *Set to 3 (HT mixed mode) when one or more non-HT STAs are associated
+ *	(currently non-GF HT station is considered as non-HT STA also)
+ */
 static int rtw_ht_operation_update(struct adapter *padapter)
 {
 	u16 cur_op_mode, new_op_mode;
-- 
2.17.1


