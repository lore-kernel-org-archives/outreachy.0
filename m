X-GM-THRID: 6615237556487323648
X-Received: by 2002:a25:9d06:: with SMTP id i6-v6mr27940584ybp.4.1540313864007;
        Tue, 23 Oct 2018 09:57:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:824b:: with SMTP id d11-v6ls1527773ybn.17.gmail; Tue, 23
 Oct 2018 09:57:43 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62/Hg2HeWqCiUshmFltgcdOwughsChkOYnZR3BpdtmOHGCA55qOxNt6v84XuCCvp4Hvqb0L
X-Received: by 2002:a25:df0a:: with SMTP id w10-v6mr9615973ybg.30.1540313863080;
        Tue, 23 Oct 2018 09:57:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540313863; cv=none;
        d=google.com; s=arc-20160816;
        b=VFdFBTbgz4iZqRvzeCfqT3Jj3uTH5eIb449VUQ5xP50A9JStS6vnCtYpvBbWfdF6l+
         2aFEp124w+dF6jXExr5Qc8Sxr/mYgnf4PlxkPvBZ2n0qgLtYgAjfPPNEBa7VM+hC2SCK
         /5BLaSCqB/w7170hJd7q0fjUmhj7QwCnCVTsvWuriDC3796qcEV9UjxZTpQMjiaoc03E
         Fs/cO6GMU2D07GeOhdGTzuRzIQgkW3r3H2TIGC0srFoe/PIA/zOzx4xSahEKAGuXtD77
         +ucKD1ujbmy59ilkRg5W4eDWsxxBARx32TTFWAtw8Lsq3aPjZm1khpngYR19NaCi7vaI
         kBtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=p5o52nqldIe4LkN1l8M+kcZ/16jTsNIqy5SPbGR3ioM=;
        b=EatC8gUWnjqFPQVbYtWwNiv31R06cpvsDbiTG2WqvwYF1rMQIbAF4KRUHm3QcBqxky
         AhKJrsDxYo4pmojeBJVBUXF9OwuVNTdS1m37ILMF5XpXdmgrW2Ky2aRE7lGxBTo8drvu
         uiah4c5P8sRS1TuJkTxRIFvJg3C7TiNakSPvhqAMJVbptogSUiQyBnuvBj3Zr28mJ8js
         L8ofXLm89qRX1oCIWvLS4BMiPOBpqye6+OXtpCJVLk2q5aH3ziVR4PxU/y6zhtaWtP+3
         3yrqvOkbYmHy1v1fdt3D5wbTcSPAeUCQMZ3htzMOj6JSsdjroCyR17z5NKT4I9ewG5Kx
         H2pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZzUCJYw7;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kimbrownkd@gmail.com>
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com. [2607:f8b0:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id s132-v6si91254ywg.1.2018.10.23.09.57.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Oct 2018 09:57:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) client-ip=2607:f8b0:4864:20::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZzUCJYw7;
       spf=pass (google.com: domain of kimbrownkd@gmail.com designates 2607:f8b0:4864:20::22c as permitted sender) smtp.mailfrom=kimbrownkd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22c.google.com with SMTP id j68-v6so1701016oib.7
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Oct 2018 09:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=p5o52nqldIe4LkN1l8M+kcZ/16jTsNIqy5SPbGR3ioM=;
        b=ZzUCJYw75BzABQJ1UPgC2sTJFZvtiAurS+zFj+8KgLvAPygeNaG1dWlHm6pWzaukZ7
         fAKup2JdP56+8VGY/PHMG3bKwyWsNH4A2dmhqcBiy24HyRyYVQUg7HQW2Jc4e2CaVwhK
         Ve1jFsH0cNqfUL+EzuQoyrPiyKGNcHR+5b9u9eL6ePIqLXgPV7GnyTsLQ13HZLyTilkn
         8mUb2INhzkSVjgRtR9iaI1f8VzKhBJ3Wp8QHptnsrYaeizIbNUjouLhbaJDYIl5Ege+E
         0IurMh13DLcNYGxeJGQrrd+cYwgGNbCjtSDUmpxMZm9wV94JNqMid1WmVAs8hA5/jDyN
         kOGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=p5o52nqldIe4LkN1l8M+kcZ/16jTsNIqy5SPbGR3ioM=;
        b=U5icHXoTt2/FsPUO4hatpfjO1VwYKxcKcof9a+7qZ/Lqian5rBJUyU9C91o3oge9Oy
         Mgkjfei5ci0Pj8IHY7nokWAExpKLsga+cc+LZLVEAlc9ShsXZ330EvFqSQv0x651caX8
         0vgJ0+1JrMfBv3ikEbH65+qx+6ld/q4cSQr/CROOnzvzNTVUazW2WVDkeOo62Lmcjm5B
         TgqLXqMaeY3ajXYk0MfmksyeB6d9qqMmEDqOi/D3DDmJYuvq09Xsl1q57kJv6O4g9F++
         /YIpOKYaQuR8OpzbDUDwcv1k6UUhKBqWYiVpvxcYSWdqWj/iCIIJfIkmMoGWgn5kc8tF
         bSCw==
X-Gm-Message-State: ABuFfohKSGTpRR6ASGpWv3MzM2sY8ar3mkfWu8NJ0HE3tA3424pgXYZc
	IaTTn8ZQDtj3HI7bfVxiiKK6PxCID3o=
X-Received: by 2002:aca:4243:: with SMTP id p64-v6mr25960473oia.130.1540313862413;
        Tue, 23 Oct 2018 09:57:42 -0700 (PDT)
Return-Path: <kimbrownkd@gmail.com>
Received: from v (68-188-226-58.dhcp.bycy.mi.charter.com. [68.188.226.58])
        by smtp.gmail.com with ESMTPSA id k54sm141940otb.8.2018.10.23.09.57.41
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 23 Oct 2018 09:57:41 -0700 (PDT)
Date: Tue, 23 Oct 2018 12:57:39 -0400
From: Kimberly Brown <kimbrownkd@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 2/3] staging: rtl8192u: Fix misspelling in variable name -
 Style
Message-ID: <d4854573922a3ff303644c76b33c80504e8982e2.1540311428.git.kimbrownkd@gmail.com>
References: <cover.1540229302.git.kimbrownkd@gmail.com>
 <cover.1540311428.git.kimbrownkd@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1540311428.git.kimbrownkd@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Fix the spelling mistake in variable name 'txhipower_threshhold'.
'threshhold' should be 'threshold'. Issue found by checkpatch.

This is a coding style change which should have no impact on runtime
code execution.

Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
Reviewed-by: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
---
 drivers/staging/rtl8192u/r8192U_dm.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 5fb5f583f703..6c9f9d82477d 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -2983,7 +2983,7 @@ static void dm_init_dynamic_txpower(struct net_device *dev)
 static void dm_dynamic_txpower(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
-	unsigned int txhipower_threshhold = 0;
+	unsigned int txhipower_threshold = 0;
 	unsigned int txlowpower_threshold = 0;
 
 	if (priv->ieee80211->bdynamic_txpower_enable != true) {
@@ -2993,18 +2993,18 @@ static void dm_dynamic_txpower(struct net_device *dev)
 	}
 	/*printk("priv->ieee80211->current_network.unknown_cap_exist is %d , priv->ieee80211->current_network.broadcom_cap_exist is %d\n", priv->ieee80211->current_network.unknown_cap_exist, priv->ieee80211->current_network.broadcom_cap_exist);*/
 	if ((priv->ieee80211->current_network.atheros_cap_exist) && (priv->ieee80211->mode == IEEE_G)) {
-		txhipower_threshhold = TX_POWER_ATHEROAP_THRESH_HIGH;
+		txhipower_threshold = TX_POWER_ATHEROAP_THRESH_HIGH;
 		txlowpower_threshold = TX_POWER_ATHEROAP_THRESH_LOW;
 	} else {
-		txhipower_threshhold = TX_POWER_NEAR_FIELD_THRESH_HIGH;
+		txhipower_threshold = TX_POWER_NEAR_FIELD_THRESH_HIGH;
 		txlowpower_threshold = TX_POWER_NEAR_FIELD_THRESH_LOW;
 	}
 
-	/*printk("=======>%s(): txhipower_threshhold is %d, txlowpower_threshold is %d\n", __func__, txhipower_threshhold, txlowpower_threshold);*/
+	/*printk("=======>%s(): txhipower_threshold is %d, txlowpower_threshold is %d\n", __func__, txhipower_threshold, txlowpower_threshold);*/
 	RT_TRACE(COMP_TXAGC, "priv->undecorated_smoothed_pwdb = %ld\n", priv->undecorated_smoothed_pwdb);
 
 	if (priv->ieee80211->state == IEEE80211_LINKED) {
-		if (priv->undecorated_smoothed_pwdb >= txhipower_threshhold) {
+		if (priv->undecorated_smoothed_pwdb >= txhipower_threshold) {
 			priv->bDynamicTxHighPower = true;
 			priv->bDynamicTxLowPower = false;
 		} else {
-- 
2.17.1


