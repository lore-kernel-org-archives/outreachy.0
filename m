X-GM-THRID: 6388480168644575232
X-Received: by 10.157.54.253 with SMTP id s58mr4235635otd.41.1487433949098;
        Sat, 18 Feb 2017 08:05:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.87.199 with SMTP id u190ls1240769ita.8.canary-gmail; Sat,
 18 Feb 2017 08:05:48 -0800 (PST)
X-Received: by 10.36.225.139 with SMTP id n133mr55291ith.9.1487433948283;
        Sat, 18 Feb 2017 08:05:48 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id s64si687767pfk.0.2017.02.18.08.05.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 08:05:48 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id c193so1644961pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 08:05:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4KnkEqxW0tN1vWP58JfL469s8CbnhQJztjv7KQMaboA=;
        b=EjlkOwRLx/zkmODE0xhgv9qeVYh9jcWSW5a+uXThutWwquVVK65Lcey9sLKArUPUu+
         R3VY18mVP1lE4eXYYVhn1V+aPoqwNZ2iOiGwgglDewBrQmNRYGd8m8rPtVDvMuxFYnM3
         fIRrPpMxD350/G1xw5kkh5DJT+p//Ff+qGgCYCv10FSbuKTMpWB2suER2oLZtM+V7Ra0
         0g6MGyVSx5C5cbhXPYmZBlr9JgiMeYgzjYn3z9gLmR1q8pqar4uAV8Aon7G/55m6o0MM
         rdxuEjWvmDsH2shSjnOBFHi08DXzCTbJ8A3Ma0LS+jgs4LXtNX8rB5oJRfNDHjyW1fl3
         a5GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4KnkEqxW0tN1vWP58JfL469s8CbnhQJztjv7KQMaboA=;
        b=Q3f3uMoHw1dc0j83ySVDzmwR/UJaaWYhcoRb7yeMzM0xp6gmsq8JRj8TddMVc060Wz
         8/IW1irIs+dPdsnAG97IsbBYCnjFh68j9OXsTaFY0rH63GvTlvjHfzqIsxrujKBh5XGC
         05DTUjU2UkXdylcStusuFiWFx8oX6mwlPdN8edY/r+woQ5hrgnYqHrLiAZ/SXL3taer4
         CrT1im5U/iZfrJrIr4A7jiFaOXTaJzBPMF0iorfLXjO4LBkn+meMYk/vExM1rbg0v9Nm
         zTbv7aIt3mcnrO3NYap43Bh5mO+zMjJ02VPc38vXMyLrRNclfaJegwFCeK11ZeD+9GSO
         0sxA==
X-Gm-Message-State: AMke39mewajWmw7xaaxPpC7JvcBd4Y20eQ0MZWZ3o3Q9DI89YUZS7uaq6qwdNWE8Hyjnpw==
X-Received: by 10.99.105.66 with SMTP id e63mr16977982pgc.104.1487433948082;
        Sat, 18 Feb 2017 08:05:48 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w16sm26225139pgc.15.2017.02.18.08.05.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Feb 2017 08:05:47 -0800 (PST)
Date: Sat, 18 Feb 2017 21:35:45 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 5/6] staging: rtl8192e: Fixes multiple blank lines issue
Message-ID: <20170218160545.GA32279@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the checkpatch.pl issue:
Please don't use multiple blank lines

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8192e/rtl819x_HT.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h b/drivers/staging/rtl8192e/rtl819x_HT.h
index f53903e..eceb548 100644
--- a/drivers/staging/rtl8192e/rtl819x_HT.h
+++ b/drivers/staging/rtl8192e/rtl819x_HT.h
@@ -53,7 +53,6 @@ struct ht_capab_ele {
 
 	u8	MCS[16];
 
-
 	u16	ExtHTCapInfo;
 
 	u8	TxBFCap[4];
@@ -62,7 +61,6 @@ struct ht_capab_ele {
 
 } __packed;
 
-
 struct ht_info_ele {
 	u8	ControlChl;
 
@@ -101,7 +99,6 @@ enum ht_aggre_mode {
 	HT_AGG_FORCE_DISABLE = 2,
 };
 
-
 struct rt_hi_throughput {
 	u8				bEnableHT;
 	u8				bCurrentHTSupport;
@@ -120,14 +117,12 @@ struct rt_hi_throughput {
 
 	enum ht_spec_ver ePeerHTSpecVer;
 
-
 	struct ht_capab_ele SelfHTCap;
 	struct ht_info_ele SelfHTInfo;
 
 	u8				PeerHTCapBuf[32];
 	u8				PeerHTInfoBuf[32];
 
-
 	u8				bAMSDU_Support;
 	u16				nAMSDU_MaxSize;
 	u8				bCurrent_AMSDU_Support;
-- 
2.7.4


