X-GM-THRID: 6257139324842672128
X-Received: by 10.66.122.101 with SMTP id lr5mr18255341pab.3.1456853776382;
        Tue, 01 Mar 2016 09:36:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.194 with SMTP id c63ls1738957ioj.109.gmail; Tue, 01
 Mar 2016 09:36:16 -0800 (PST)
X-Received: by 10.66.147.106 with SMTP id tj10mr18032812pab.30.1456853776108;
        Tue, 01 Mar 2016 09:36:16 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id ff2si4911638pad.2.2016.03.01.09.36.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 09:36:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id fl4so115809733pad.0
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 09:36:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=t0z2JpSKu4u+FRKPAstCC8kbmKyCFIv4yIkTZDdpQdQ=;
        b=RIw50g6HQJcD9WtH3R8bUwhwNA/9HzlNl23UEiBCUmydnu7P5LCbSJRBcrC4fF03C6
         +ncejCjgYB+PB3ZMkOlKXY8F2ubOmnCdZ3hVsjs7RT9zhqn5It38TXVYUxHprt8b5l2o
         5ySLB9EqcdXVZtCXpDYlPQuGNU3NV7ZGqxOOSq5EZWcT2dqXnfN7+NIwu1kVSlOv3ra9
         EEuzPukXkn41jcYqLb9RNMdhbrRmhEXIIPTMVIMNGILsI44vbbEODKVyqNoFu20LhL79
         eU+KSX4mHH4cpqexwO/u2Q1fMaNfuRIZl9FpOU8fMmAhRvEoupY6ZKdM0aVBWWzi9A66
         V7uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=t0z2JpSKu4u+FRKPAstCC8kbmKyCFIv4yIkTZDdpQdQ=;
        b=JIRh8jIiC0k52tCigve8HKoNndvqEC4ceyhXAUeSvaq5lm0ZRVNXhUF5cO6n9S7Uut
         LfPeyrAcfNcEuIwg0YHRlYFVXAeUuH79tEx/rywdQe6FQdeqTP79UQZIbD8UsK5lhveQ
         7gxR6xK3GNgkTRwUds0g/SApWPhfQ9MZKrKGG+dfs219xjt1UF8unqBzqITk7Bm/gMfA
         PLsh7lcRmuDz0hVrD8FwO2crDvccOLYyUomjDUmtUIwedJD/9Oiy8Kv+r77GG8nDSDWj
         E8qU7F8yba2woa9EeK9MjMpQzciU7jm5U6gIcvpEMq7cTkNmoge7eALLkDx3zjVUoPIr
         6B6g==
X-Gm-Message-State: AD7BkJKxHLc1yfHSV3cFvCtIaypb9E+GDtPtLlXmQYjlZ8jC5TKrkepR7ID6+VUrYBhydQ==
X-Received: by 10.66.147.164 with SMTP id tl4mr30982563pab.40.1456853775981;
        Tue, 01 Mar 2016 09:36:15 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w20sm11908365pfi.31.2016.03.01.09.36.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 09:36:15 -0800 (PST)
Date: Tue, 1 Mar 2016 23:03:30 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723au: hal: Remove Unused macro
Message-ID: <20160301173330.GA21348@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

PlatformIndicateBTACLData is an unused macro. Hence, removed.

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
index 1688f66..e6aec7f 100644
--- a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
+++ b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
@@ -77,8 +77,6 @@ if ((BTCoexDbgLevel == _bt_dbg_on_)) {\

 #define PlatformZeroMemory(ptr, sz)	memset(ptr, 0, sz)

-#define PlatformIndicateBTACLData(...)	(RT_STATUS_SUCCESS)
-
 #define GET_UNDECORATED_AVERAGE_RSSI(padapter)	\
 			(GET_HAL_DATA(padapter)->dmpriv.EntryMinUndecoratedSmoothedPWDB)
 #define RT_RF_CHANGE_SOURCE u32
--
2.1.4


