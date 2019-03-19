X-GM-THRID: 6670157635256320000
X-Received: by 2002:a17:902:1126:: with SMTP id d35mr7225614pla.8.1553017602070;
        Tue, 19 Mar 2019 10:46:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:282b:: with SMTP id e40ls11038492plb.6.gmail; Tue,
 19 Mar 2019 10:46:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwyEOG/2UG8MNTUC829SHbQdm2roEGAxad7RplBJd+a2vjb4t1M0hvNrK2xvx7fnwS1ZR7v
X-Received: by 2002:a17:902:6802:: with SMTP id h2mr7258809plk.6.1553017600597;
        Tue, 19 Mar 2019 10:46:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553017600; cv=none;
        d=google.com; s=arc-20160816;
        b=xSTHQS5XA92JFsAzui2f7ffPb6dTyeYNBusw0nYPhQLqxitbuQnXq4FVY3Aol0k+a+
         Kn1jYMTQ76K1LkDgLMQQncnZrypC2mHC7cDO1J12cO3Cj5xArseqJN8QI81uovJ4TIxU
         cyNdyCoeX2G7Aw9baLaTdFWgcK1hGDKmcKDtjLBMq3QEMlyJ/l2js/0E1x3CWW0+XGpd
         Tocl3KwcTekhEn3G67QERmDiKizHVVx2Nb6wTtvLliDp9RAnSGG5k/xNqQ7WyTO2qzfW
         PONtMcPEEM6Qv+bScyrfOgheooaE7EK8+y4UbRL9LmRZv4nZf7Z36nDkiIUPlxRWOqYN
         R24w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=cpSlTbv5IW6Yks0fTq8AQa8FnJJOuFs69muQE+NU0h0=;
        b=UYldGlXMCg/ZRS+rwvhF+65Z4UyKdCYA1uPUvp9BR8F7PxnpzuulCfnmYqrRgTHCYY
         XB6mruhQ+oea309JGybWCLvU7WYaNwgxU6Ps6Y/SXeL1Ule8PrQAvIQuWNdZv/4ukXO9
         v06KmY6CrBfZVTqsnUKY9qaFdjsDf+Nsj4srSTM2r/QdYcYCp1eciMS2/vfYRQ6cakEn
         ai/ynyRt54jzcd3A0QB8x+fZDpK4bNpQ+tdpyn1999PyhEPK6y2rxX7gIBtOzzAuMSz/
         ZM/X0x+DDiUnMcGXZnknIFYv1RAetqAhguRf1kYuHAIyKIPd45meqXr0cRa0wpKGzKsA
         pdjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kj2q+Pz4;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id e71si708860pfc.1.2019.03.19.10.46.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 10:46:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kj2q+Pz4;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id 8so10811974pfr.4
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 10:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=cpSlTbv5IW6Yks0fTq8AQa8FnJJOuFs69muQE+NU0h0=;
        b=kj2q+Pz4U1+dmaTB++ba0qonquA1a6nzj7sRt9QlFAriVqxRngEZNnR8vOjLi5d/g3
         Zs5s8Sm6PLDvDMYJvm9Gxsli1lzkkE7HBSZEoXN0sXl8+IHNznk/RczedmKQhJ2ppStW
         HaLMJzOYJNoBCOHpe4HCMTl33PKoExkTFJBPG0pHtAuccxdlhRSsC0KJZa7jKk48zwYC
         JvW7qrLkz6BRf9ac9KVRaxqItL6HyvoZi4mSqKgn8Xfx6YarlDYriZPoWPlSkFeQ5jl/
         VoMVLafVr2z4HVazIsVtzOq+WtwZzyFiWqmK2+fZb3lBeeXwGSRuYUmMtALNwJZmWo33
         kRPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=cpSlTbv5IW6Yks0fTq8AQa8FnJJOuFs69muQE+NU0h0=;
        b=kOPr0UsfuzU3xpD19BslGdfIaK7MC+4idXef093J8Mxhm2momyTlFPebrSNT7x1VmC
         To2oG+V+Fk286pJcfJKtjqDVOFioGcwiRLxhGXjm6lgRf4WSJr5M9IHPSaPj0/VbprYU
         ch2LzfxlhtnnLXdKq70zS4WvGr4fwk9lwUwHNfUgGpKNic9q2sT0FtPkVIkoVxfSnaow
         zGL5wfrHF8fQlak3XAY1O2VCLTVYT6MpRgMluYkfaFGoeCuGNdYV/HSYHdOyL9ieUizM
         7eZT32eGe8YlqMBZTsKGjzPmUao2cCu5vhAU8eRdLfB3y12MMVpkU1MHJCurzXjrvMnD
         40/g==
X-Gm-Message-State: APjAAAXLW9Ga+4YV+7owtq/+C7JBlDUpSQRr3LrpJArt5UO1D63ldVeT
	wmQJRv2xbuPM8mioBSRiN1C/4HvA57M=
X-Received: by 2002:a63:c60c:: with SMTP id w12mr2971527pgg.446.1553017600286;
        Tue, 19 Mar 2019 10:46:40 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.165.64])
        by smtp.googlemail.com with ESMTPSA id z14sm6297029pgi.11.2019.03.19.10.46.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 10:46:39 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8192u: ieee80211: ieee80211_tx.c: Adjust space around else.
Date: Tue, 19 Mar 2019 23:16:28 +0530
Message-Id: <20190319174628.5016-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix the spacce around else.
Issue found by checkpatch.pl

ERROR: spaces required before that open brace '{'
ERROR: spaces required before that close brace '}'

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v2:
Correct the patch number.
Remove From line.
 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index 024fa2702546..19e5b4fdd524 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -851,7 +851,7 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
 		  else
 			ieee->seq_ctrl[0]++;
 		}
-	}else{
+	} else {
 		if (unlikely(skb->len < sizeof(struct rtl_80211_hdr_3addr))) {
 			printk(KERN_WARNING "%s: skb too small (%d).\n",
 			ieee->dev->name, skb->len);
-- 
2.17.1


