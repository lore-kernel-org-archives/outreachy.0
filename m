X-GM-THRID: 6391112885364326400
X-Received: by 10.13.213.142 with SMTP id x136mr3066345ywd.113.1488046926180;
        Sat, 25 Feb 2017 10:22:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.36.198 with SMTP id k189ls2616764iok.46.gmail; Sat, 25 Feb
 2017 10:22:05 -0800 (PST)
X-Received: by 10.36.33.66 with SMTP id e63mr2343902ita.38.1488046925487;
        Sat, 25 Feb 2017 10:22:05 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id s64si2286744pfk.0.2017.02.25.10.22.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 10:22:05 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o64so2272116pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Feb 2017 10:22:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Z8ccpJCfoEJjGxqvKIHQlVirUpAVB6EoiWnqREd4brg=;
        b=pWJm/84doIpnErhc1keFlpKQMUQ9Uo4FfES1FneZ1YKBO/a32+tXfEBF1DZN9fjuUQ
         qghkuvl4849bsqxMWRzyBpkq9jx5be6ONROwBLKFr5sBiw+gtelu9hmnrXKsM/qWFmgo
         SUh9Mz4osaXMnjd4iKSInNGBJVROM8VYSM1qRngDxz4mUiWVGcWXW/wzR6b13mLx3Tup
         Ida1RQbM4GuzLyXystxVRWIcWQ/crcPJqRJDUksgEf+jsBieKlD5dZfDnLoQ4HxudH+4
         EmN5lhYYklmhoCJd60Z6Bn1aB94dTzomjuPRcJAozZLRjHhUmL4lWyJ/ShNcsqWmwMFm
         A9nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Z8ccpJCfoEJjGxqvKIHQlVirUpAVB6EoiWnqREd4brg=;
        b=HAHHAU2OCnqVpvdRmo+JeomEZ9PK+HSkkh39/bXbcNXCarPV5QqYNePnyv5qTc9j1C
         +7S2ZgFqSaATQqXW5O3cB48B8huxC16NfT0DSgF0zSlE0PzBGza/eOomDLDsdNMBEIMI
         iqI/0tclZrD2ftPifXd835jy4Uh8TCUum6+VNdKqz3BMUZN/ZLbyGDr0MCP7Oatj7JWn
         1+b1J/b2hDnDlJJMKzkpv+nbY6p5OOX04+sBq75D9QFZ4xBpdZD2jW6QfcKCyfLCQEuk
         ciDd+g7c4ApKqn/XGjK4qNnYleQL5bgYpeYJ+87hS3w20r2Obh7xSOKK5RvOU65FZcbf
         7GTQ==
X-Gm-Message-State: AMke39n4bSFT8CFG2OZOr3n3rqGygV2R748BYsmvuX82GsWvLlDTcG0Pl1l21GYVzGkpdw==
X-Received: by 10.84.232.198 with SMTP id x6mr12489636plm.74.1488046925127;
        Sat, 25 Feb 2017 10:22:05 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.154.88])
        by smtp.gmail.com with ESMTPSA id w18sm21664859pfa.127.2017.02.25.10.22.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Feb 2017 10:22:04 -0800 (PST)
Message-ID: <58b1cb4c.1249620a.b008b.d4c3@mx.google.com>
X-Google-Original-Message-ID: <20170225182201.GA7002@<rvarsha016@gmail.com>>
Date: Sat, 25 Feb 2017 23:52:02 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/7] staging: sm750fb: Fix line over 80 characters.
References: <cover.1488045682.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488045682.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Line over 80 characters are split to fix the following checkpatch issue:

WARNING: line over 80 characters

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 7948ca9..9e49298 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -69,11 +69,11 @@ static void set_chip_clock(unsigned int frequency)
 		pll.clockType = MXCLK_PLL;
 
 		/*
-		 * Call sm750_calc_pll_value() to fill the other fields of the PLL
-		 * structure. Sometimes, the chip cannot set up the exact
-		 * clock required by the User.
-		 * Return value of sm750_calc_pll_value gives the actual possible
-		 * clock.
+		 * Call sm750_calc_pll_value() to fill the other fields
+		 * of the PLL structure. Sometimes, the chip cannot set
+		 * up the exact clock required by the User.
+		 * Return value of sm750_calc_pll_value gives the actual
+		 * possible clock.
 		 */
 		ulActualMxClk = sm750_calc_pll_value(frequency, &pll);
 
-- 
2.9.3


