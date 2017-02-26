X-GM-THRID: 6391112885364326400
X-Received: by 10.157.5.39 with SMTP id 36mr3682399otw.2.1488113127633;
        Sun, 26 Feb 2017 04:45:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.210 with SMTP id 76ls9770448otf.33.gmail; Sun, 26 Feb
 2017 04:45:27 -0800 (PST)
X-Received: by 10.13.202.133 with SMTP id m127mr551605ywd.37.1488113127223;
        Sun, 26 Feb 2017 04:45:27 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id c123si2331650pfa.4.2017.02.26.04.45.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 04:45:27 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 1so9472370pgz.2
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 04:45:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Z8ccpJCfoEJjGxqvKIHQlVirUpAVB6EoiWnqREd4brg=;
        b=XLg4ueh+i3TZoyUSQYdig0j4g4yrC+ban74SC8kVY3j1VEjhHM7ke3hz6JjHiNBEZG
         snDYmPKznXMt/XFJsF2324cActWZYaQVu6rl6o4Hj7gKJcRrXnDiSIxNX8ugrdekcOCl
         +qMrI9y0W6SmcpVE8VHTIgXwb3Z7IvZa+fl+5RJ+DVB6xOBwtK6S+11gHEkXT4HiB8G8
         TSi2cjs+CvjHr0hsWLzjX0eBnrTGJRFQZbvU6H8w3w9nr9YJMIIzcWqsneEj0Oxo1mvC
         ppiByZySZjRTnspy9cBPma08lPyoT4ZeaRAmZJD0EC44Dvk92fIur894AuVTRNNEEOQ2
         kR4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Z8ccpJCfoEJjGxqvKIHQlVirUpAVB6EoiWnqREd4brg=;
        b=lon5V2cj1LFmcwmmiwneY5hxz/rpkzyni+SMOAebPdGYR4zzB9S6rGsQ9vp/GdwLB5
         lzShT89yjjfhKYmE0iQ4bZniDDXtXXL2DtqajqZmCXVSqjiQThtbOt1R+uqoFqr5ZyIm
         7xaJyKR1JDFD+jNgNdOzWI0wG62ESmguW4/PiMDvVrwfLphPwXzIaxNB9u9fCOUeiEyW
         NmcZNMKGgVf3iVAxmIm01oNthkF0T34dLIuesj4OKuK2JbAZQZVqB8j+ynh1IYIEfBPD
         w1dUram4aCZlKNDrmu3vAigadhsYgxHljnIU3bzq1k3Y36dsQPkWHN3Vxv9XE2cQAbYt
         ejFw==
X-Gm-Message-State: AMke39k0tGC82BM2B64mB1dgddANnvzGzLjlqZL1GbEW/kBgjw79OkwaTzzCeIVWgeKrNw==
X-Received: by 10.84.138.129 with SMTP id 1mr8678050plp.37.1488113127002;
        Sun, 26 Feb 2017 04:45:27 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.145.221])
        by smtp.gmail.com with ESMTPSA id q64sm24888517pga.0.2017.02.26.04.45.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 04:45:26 -0800 (PST)
Message-ID: <58b2cde6.4343630a.91a3b.4a08@mx.google.com>
X-Google-Original-Message-ID: <20170226124523.GA17714@<rvarsha016@gmail.com>>
Date: Sun, 26 Feb 2017 18:15:23 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/7] staging: sm750fb: Fix line over 80 characters.
References: <cover.1488112339.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488112339.git.varshar186@gmail.com>
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


