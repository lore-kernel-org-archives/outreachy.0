X-GM-THRID: 6391112885364326400
X-Received: by 10.129.84.213 with SMTP id i204mr4408295ywb.46.1488123775341;
        Sun, 26 Feb 2017 07:42:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.232 with SMTP id 95ls3889635ots.19.gmail; Sun, 26 Feb
 2017 07:42:55 -0800 (PST)
X-Received: by 10.129.168.195 with SMTP id f186mr4814100ywh.49.1488123774995;
        Sun, 26 Feb 2017 07:42:54 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si2812361pfd.3.2017.02.26.07.42.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 07:42:54 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 1so9759858pgz.2
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 07:42:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=BAQSSla0luby31ONiFPiX8qJeMbmbiAXsxb/5gVeGmA=;
        b=uCrwSafwLCFWFvphYFeZrGOoKOTIa96mhWiX8bx7wsUasvCm4crQXNl9L/exbTu5bR
         PeYpEEw/5xPCczdehelEdD4Groj+2BQPqy3bB4Pjf0204iLL1MMZi+svZV8lYuNe+SU0
         jkaZgEj9VWzBiNtQb0SN09cMJaiMxfeht1QPnFhDxGFLHEMrbEOao02cKmqKl7ranb+U
         uSEXTAvlfRUWiOVMU1j4xnN7vmeMioNvw6l5P9Yfosiq0eCbEkgwfc7lSk1VWduk9//9
         JnYLL5aoihGP6TAa1bjeQn1WvuMzwstAjeN3hnglSZ3nuXMxJQArZ9woaCbC8C66Us6X
         mqCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=BAQSSla0luby31ONiFPiX8qJeMbmbiAXsxb/5gVeGmA=;
        b=NDigOyLLtTpIMceaCMLaBo94LomAuGUr7t8EOMyrVYTAa3uzRJAzffxJhQHeJ5EMKO
         jnlU6HKabba4q5/zA87TUrWAMGHDMvJUbNi8Q/k6zkpXbuPFWTysn0gz4DnfcY6URJkG
         8suGA7aikmSXo2uL+uaXvovuxFkl+7jJXe8IiOfToH1HpBWoI3toySf9SIvXPBNxmVec
         6rBl2ongTQQ1E9uVWYEQi/xAZfDNpk4acIwsHCDy6a/XRyqY89BkUQqYONgnRNsLX3dX
         PyVcqWTH3P/m7E2bUrMADoytcggQgZS8ugIWeHS9CXkRWdcNQHFDO0y38SdARDcWcVTa
         gmZQ==
X-Gm-Message-State: AMke39nQYRZxtRjJkVciC2IXSiP9fPhsoxJrmUHlKBlzDB6uUaxAEUapBlWfzxzJt5W9zw==
X-Received: by 10.99.222.17 with SMTP id f17mr15883272pgg.127.1488123774776;
        Sun, 26 Feb 2017 07:42:54 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.145.221])
        by smtp.gmail.com with ESMTPSA id a1sm25466615pgn.51.2017.02.26.07.42.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 07:42:54 -0800 (PST)
Message-ID: <58b2f77e.4170630a.2d266.61d8@mx.google.com>
X-Google-Original-Message-ID: <20170226154250.GA28932@<rvarsha016@gmail.com>>
Date: Sun, 26 Feb 2017 21:12:51 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v4 2/7] staging: sm750fb: Fix line over 80 characters.
References: <cover.1488122987.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488122987.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Line over 80 characters are split to fix the following checkpatch issue:

WARNING: line over 80 characters

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v4:
-Added proper version number to patch.

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


