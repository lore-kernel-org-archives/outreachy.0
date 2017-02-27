X-GM-THRID: 6391112885364326400
X-Received: by 10.99.112.89 with SMTP id a25mr5786718pgn.168.1488189947977;
        Mon, 27 Feb 2017 02:05:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.79.79 with SMTP id c76ls2045406itb.21.gmail; Mon, 27 Feb
 2017 02:05:47 -0800 (PST)
X-Received: by 10.107.24.67 with SMTP id 64mr5361994ioy.52.1488189947431;
        Mon, 27 Feb 2017 02:05:47 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id c123si2795413pfa.4.2017.02.27.02.05.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 02:05:47 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id x17so476810pgi.0
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 02:05:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Z8ccpJCfoEJjGxqvKIHQlVirUpAVB6EoiWnqREd4brg=;
        b=Ci8lnDw7E7HUHseYBbIET4yB+M3u9XmtHihNq0ZZmfqlUf0Sc//r4U4q61lb5ylCWw
         519NygAfrwXzgvKi/50V9B0Kc+VEmFIslse9fO+Sy4vFtf3wsgyrZ3ID1s8S4hbSxT7Z
         0GpOHmMKPzfXWZCtCVjfovrv7Rv6mPNTdhtE+f/nsHJBbi+tJJ+AuShwFN4xyPId51uj
         BK+eQ85uJilH2h+ICraTv6REZtHCgbrH/316ffHkVAg0x6Q/tRgzaWPk/xGXF6GsTCXI
         disdxxfGAA91VoEeaLkh6N19i+fnicEsI5EGAm8z1ChhzA/2Ih7ekGCes5fTzWQQRrZD
         U40Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Z8ccpJCfoEJjGxqvKIHQlVirUpAVB6EoiWnqREd4brg=;
        b=ueKTm3VGRrWVOKcuhtYfAM0KmYvxxFiVmStgmrCzR04oF2EGR+IcztriyD1Q2lMpk5
         NPpkEwdlqNkVOg6tV5p59/9rZ+G6Ud+pswKwVzJcTIINhejQL3tmkGsfRobdqBfz0RPv
         P1h8Ru2neXcl4UtBfL0aPtWAqKpRDPiXqjnzZQABvRlwOFivF29YXhjtiqGyIaOfLxa6
         e4u5r6b5g9OhE7s5zBffeFRhVC1TMUlBSOykNrPH9HEHpOykRWi20PQ71ZmYItxem7Ei
         rvrEs8ZuVIbK8PsHboCg4fpkZkOs4cCCeK78GAnXbMSWe4X0MRcoUPuBeYlro5IId/E1
         IfZA==
X-Gm-Message-State: AMke39m9Hx1V+4wzCw/ictROB412i8XUo70tlI6LQbxJgekI4TGq5sUbvD6vbhm+s4O/rA==
X-Received: by 10.98.153.25 with SMTP id d25mr20055069pfe.15.1488189947081;
        Mon, 27 Feb 2017 02:05:47 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.211.102.161])
        by smtp.gmail.com with ESMTPSA id l71sm29775140pga.32.2017.02.27.02.05.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 02:05:46 -0800 (PST)
Message-ID: <58b3f9fa.4a3e630a.a1117.f3ba@mx.google.com>
X-Google-Original-Message-ID: <20170227100533.GA2768@<rvarsha016@gmail.com>>
Date: Mon, 27 Feb 2017 15:35:33 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v5 2/7] staging: sm750fb: Fix line over 80 characters.
References: <cover.1488189320.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488189320.git.varshar186@gmail.com>
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


