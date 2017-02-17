X-GM-THRID: 6387984774735069184
X-Received: by 10.157.25.145 with SMTP id k17mr2297117otk.60.1487326407807;
        Fri, 17 Feb 2017 02:13:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.226 with SMTP id s89ls2328899otb.19.gmail; Fri, 17 Feb
 2017 02:13:27 -0800 (PST)
X-Received: by 10.13.211.5 with SMTP id v5mr2199610ywd.128.1487326407364;
        Fri, 17 Feb 2017 02:13:27 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id u12si643872pfd.3.2017.02.17.02.13.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 02:13:27 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id o64so3815153pfb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 17 Feb 2017 02:13:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=csIW9t199jd3Ux+YWTRICPkVDZA4tGHvf8b5zKYlCNs=;
        b=u3CHvbT8iu+sVm3o+wngRGsp6zWLQ24FQxSDCTimPaGjgfwfLZsZ15cvINiAUutX60
         +wefkgZiWZnNL50ebjX/hAkC7ZBvdFC2ErsrPd/Y+/jcBNK2tTY1K4xhd4urA69wM4Tp
         1M3MLulbae/wSQSzv3/F+x24w148AZfijbubqV7pOLysxGSDhse1kTzT+CifzBMq9pTL
         hfloln7RCiuczOK1IXkH3oHYzc2AO+MArUrO7udNrl0thkkms6PZ6NYhH3tTyBeMfK70
         qjzruanUgQ+FyvnjZrKQMPs2OgCNCHr0l1bI2F29nxIEggWkddMb++FGAuX710IrtZvk
         TA+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=csIW9t199jd3Ux+YWTRICPkVDZA4tGHvf8b5zKYlCNs=;
        b=M5eGgxtHaSmRW5ZVw4d/meHexIVo5i3p7v1qqq4v9lQ83EsTkDKI+qJ5/IYeG1XINI
         eRcktH7u+HIa8Q/XIANjIXCOv2TFydxrjU/aYZCz97NmRKcKcMQQqeLpIFkcMCNCTNCP
         6VfsrXtx47fEVQ9og2kyA/yLLE0Ds/KDCZ2BpIzeLharh8olzcStHauw7I+NVxJ6IJXu
         +hM/s1jq80Mi78X/Y9EWuGQv98uT7LWlipgtNvaExpI0OSKmzJbReRJENdtlqvOqHyL5
         gjAs1z/0e3BG8avbVh19AucNB7fieIxscdMpeNvLpWzFBcYNoN/6TNJ3Pu3lPaV9wxV7
         GbpA==
X-Gm-Message-State: AMke39n8kLcD1FX9mlmZ0BfWv/GYZerRfTenDUpd/Tm4g33E47nh9Y9l7SGmj+rzz/yH4Q==
X-Received: by 10.98.147.78 with SMTP id b75mr8436533pfe.128.1487326407088;
        Fri, 17 Feb 2017 02:13:27 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.201.59])
        by smtp.gmail.com with ESMTPSA id p66sm18573524pfb.88.2017.02.17.02.13.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 02:13:26 -0800 (PST)
Date: Fri, 17 Feb 2017 15:43:07 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: rtl8192u: ieee80211: Remove typedef to the
 tx_pending_t structure
Message-ID: <20170217101307.GA17027@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Using typedef for a structure type is not suggested in Linux kernel coding
style guidelines. So remove typedef from structure tx_pending_t.
The typedef name is not used anywhere. All variables of this type are declared
using "struct tx_pending_t".
Also change the structure name to tx_pending since it is normally only
typedefs that have names that end in _t.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
v2:
Changed the structure name from tx_pending_t to tx_pending
Made the changelog clearer

 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 0d24705..176083e 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -1456,10 +1456,10 @@ enum ieee80211_state {
 
 
 
-typedef struct tx_pending_t{
+struct tx_pending {
 	int frag;
 	struct ieee80211_txb *txb;
-}tx_pending_t;
+};
 
 typedef struct _bandwidth_autoswitch {
 	long threshold_20Mhzto40Mhz;
@@ -1883,7 +1883,7 @@ struct ieee80211_device {
 	RT_POWER_SAVE_CONTROL	PowerSaveControl;
 //}
 	/* used if IEEE_SOFTMAC_TX_QUEUE is set */
-	struct  tx_pending_t tx_pending;
+	struct  tx_pending tx_pending;
 
 	/* used if IEEE_SOFTMAC_ASSOCIATE is set */
 	struct timer_list associate_timer;
-- 
2.7.4


