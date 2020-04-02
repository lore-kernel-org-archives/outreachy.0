X-GM-THRID: 6809913191851622400
X-Received: by 2002:a37:4ed5:: with SMTP id c204mr4488458qkb.328.1585852054909;
        Thu, 02 Apr 2020 11:27:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6214:5b1:: with SMTP id by17ls145006qvb.7.gmail; Thu, 02
 Apr 2020 11:27:33 -0700 (PDT)
X-Google-Smtp-Source: APiQypIzWZb+fwyvB5NDeLZtZCs5WAFLYIjstsHDucP6SyKXqMb8PwTe9reRrdNFi3i6i2qW+sm3
X-Received: by 2002:a05:6214:183:: with SMTP id q3mr4773242qvr.234.1585852053731;
        Thu, 02 Apr 2020 11:27:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585852053; cv=none;
        d=google.com; s=arc-20160816;
        b=QeF6N9UNeP1sXLJUcZgx04tVH6yMwq+ZwO5GFbz6RJAFVpOGMgiU4EqrW+vWqC3I+q
         i8ScJ2wgapgNp3RUUFRgH18fB1x33UAVTyHcpjwHFl/jmDYf0Ze/D1VpfgILQ0WxC9N4
         lcRN3mK1KsNBqVeUE6O6vQtJ1FfHY+ZhkaFjueom5PMqTG3Lve/mVhZNiLFNL+v1hrGo
         DEsQakAC4G/VvJW4bzDZDT/g915FHTxGpW5l4Xiug+pbDqU6OReyjz2dyrhv0aDbx3f7
         DNe72N2rYJsOvMRipbboMDKnjtadJNDMALi5SHrmmro7jPGqi+KbF7cYAdiB1M7cKNb/
         JKIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=lzxvV/x1O3A5r2XKIj51TkQd8UzHL6H56EMPmFkEgjw=;
        b=w666LhWQ41OTO6yQBEipg8skBJdVI67rl/+9drFLXSZ3vVqQMQEwdk0842wDxLs1dU
         BXMS1pNOB14COXNFgMvMigstHOLIqG2fSurBLMrIF6Yo9dKa3gal1N3ZK2yJelF3g4wJ
         AJn2Fbs2yox4QUYbMhYVrylFAgAXoDM8w0gmT74i5Pn32CVtFIYGcSt9vHTXZjofSCfM
         mmr9LjnbHjsrd0PDV0+eNY87Jtaavg448NE+KVLjWwN2luHGqdJBJkk2tSexPM0+CpKQ
         vkTy9OEkHnZ6e1vSGEgq24aK2VtMhipHfHZZK/mcIOaIeg+1LoZSa7mTIaGvB7CqDFBH
         qXDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XBjO1HER;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id 198si355244qkh.7.2020.04.02.11.27.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 11:27:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XBjO1HER;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id m15so1835868pje.3
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Apr 2020 11:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=lzxvV/x1O3A5r2XKIj51TkQd8UzHL6H56EMPmFkEgjw=;
        b=XBjO1HERYjktlReBl2zThr1TSq/2WLGMJkMiueI1aLc4YRu3dZeEThqAhEfgiQcEG4
         mfPSBrebzb/XatONmtSS1ehtdmzSQnl3WLqsn0KXwqKjWeAMtpx5GnPyvQsW4V0w9ObH
         lCEo6r//b/mIWBIYJKHC1Qtx265XmUwkWhOwnRjOM95mdSCFB1TB/HG3R1YxoHEQ0Bbn
         HCX9dRuUJzYiXcwqin9E+BbBx8jfIZ/O2XHKyr0TuK6WVgVBGDAF8DTeTTqQGdp+eI4a
         n0wepzUFHmR8Iykm41JSPAyY7LcHhq0nFE9RcCSuunicqKMchViHDV+QxSXKjP4wV3zV
         sFDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=lzxvV/x1O3A5r2XKIj51TkQd8UzHL6H56EMPmFkEgjw=;
        b=r7zch3VtKUr0Nl+k9ZCkFco2tmfgO7ZjH8nI5/WXAlwnbjjawTZ/5JRbpDFnYl9Q3R
         XSIb9FUE64jQb69mJxU2tmICIsS17lPodfxmEDLdhsMO5ksLcXDQrnM4TnBU3Qx4OGIZ
         NZuPcbSPKJgQwOoU3KuG3EpCpuvBfwa9BoZ2BIlEmJcUmAI/jgs7wdIiw1YFsojxLtbu
         Qhj6Z2lq1mSPGEKk21iRlK7C9WrZgIvh1Fy7J4C3UNYoe9Q/Y+WwYTlTR5IO+ion26PE
         T4NsLS1KlVxNhkt2vshPJPxWotvVZLjBsxQ2a/sBJ1IiPHw0iR17nY1hbXLuKtAEBE7R
         CRRQ==
X-Gm-Message-State: AGi0PuaXbZ6E5YoQ5mhnL4dNF6XlZrUBmsNgXEfc+vWmeviicYVQKXod
	zXLBJH1zLjLRwIK+wjohK7ygfAmmiQ7RtA==
X-Received: by 2002:a17:902:b40e:: with SMTP id x14mr1882843plr.154.1585852052742;
        Thu, 02 Apr 2020 11:27:32 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([2409:4065:11f:6885:4516:34fe:f4bf:419b])
        by smtp.googlemail.com with ESMTPSA id x189sm4195398pfb.1.2020.04.02.11.27.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Apr 2020 11:27:32 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	sbrivio@redhat.com,
	julia.lawall@inria.fr,
	Larry.Finger@lwfinger.net,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH v3 1/3] staging: rtl8188eu: Properly structure the multiline comment
Date: Thu,  2 Apr 2020 23:56:19 +0530
Message-Id: <20200402182621.61694-2-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200402182621.61694-1-debsoumyajit100@gmail.com>
References: <20200402182621.61694-1-debsoumyajit100@gmail.com>

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


