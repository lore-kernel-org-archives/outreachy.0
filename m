X-GM-THRID: 6388545925534449664
X-Received: by 10.13.240.193 with SMTP id z184mr4994531ywe.129.1487449259947;
        Sat, 18 Feb 2017 12:20:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.70 with SMTP id a64ls2698388otc.35.gmail; Sat, 18 Feb
 2017 12:20:59 -0800 (PST)
X-Received: by 10.157.13.2 with SMTP id 2mr5078976oti.81.1487449259617;
        Sat, 18 Feb 2017 12:20:59 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id s64si795430pfk.0.2017.02.18.12.20.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 12:20:59 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 5so7942230pgj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 12:20:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=n+aQ4W/yxt350/lEY9CmEULsz8id++S9alsa9gzOYmI=;
        b=m2PGU1OwHsvXCXxPQH2aIQycSCS8lPpdwid/ZtKtCOI/qwOmHw6IdKrTMVXHw8E3S3
         we2ME6Zn/n91iRcO2xnA4rr3NYvhY6tVhZHYhrg6M1zXKhnVDcwVmxR9Q/qZjpozA+wa
         kbnKNa5B7OOA7RI5xXKwbNE73Kdm0BgCjwjCSSWfFa7eFVIg5LH+sysMZ/X2LbdSHF6E
         DwblxvYWxPzMu+cJ/RgLvq3L8oNYNYjdq5EHhGnsC0XIadFQFeqh5fi6YqQTZHgwTHT6
         cffzxv05cw2tvzhVUIWZxVhmmDu3kMDpkIpyht2Rcs2sZ0E6wxgyO4wy2L9tY4Dc+3tt
         UjUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=n+aQ4W/yxt350/lEY9CmEULsz8id++S9alsa9gzOYmI=;
        b=gY7UQMmQ0mQnSuvtEDuMm3Lmbn94Ao+19MFeGvYbEn6FkhWA2cU32SVjlW4UwcD4Mj
         FKCecXTsuRVkZgrrlWVyPj0oFnCtgHSCjrJf2XJHSULJtqI/Ht9Vi9IXp0gH/Kg/OcLm
         M8yE4hd3c7g3Itve8FVs0yBWCEQHlxA/ALhvnIxaHfkiNl8rS9IsbP9qoioln32qCV1x
         KYU3r64EErSXup5M4Ou02wSMBaqlDDw8TJySKQeZuWTXVEC0N7ZNNj78H832Uh4lu2XT
         6GQpxx87dRzD750iQAmtdSOCIkJ1QfYpzuEkAoDpVaqYvKFcKVBDUF3aaVf03b16IG+i
         yf1Q==
X-Gm-Message-State: AMke39ng7hP9ZexPO1pIYCrTatQCPNphb263GfGuF9TtAhwaVrHP/sE5CvhAojrT+8gBRw==
X-Received: by 10.99.174.71 with SMTP id e7mr18284623pgp.3.1487449259406;
        Sat, 18 Feb 2017 12:20:59 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id a76sm26617832pfe.131.2017.02.18.12.20.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Feb 2017 12:20:57 -0800 (PST)
Date: Sun, 19 Feb 2017 01:50:56 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: forest@alittletooquiet.net
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 1/6] staging: vt6655: Compress return logic
Message-ID: <20170218202056.GA3995@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Simplify function returns by merging assignment and return into
one command line.
Found with Coccinelle
@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/vt6655/card.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index e0c9281..b513846 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -920,7 +920,7 @@ u64 CARDqGetTSFOffset(unsigned char byRxRate, u64 qwTSF1, u64 qwTSF2)
 
 	qwTSFOffset = qwTSF1 - qwTSF2;
 
-	return qwTSFOffset;
+	return qwTSF1 - qwTSF2;
 }
 
 /*
-- 
2.7.4


