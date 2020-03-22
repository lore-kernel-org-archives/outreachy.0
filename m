X-GM-THRID: 6806903169675689984
X-Received: by 2002:ad4:5429:: with SMTP id g9mr15032333qvt.134.1584855646213;
        Sat, 21 Mar 2020 22:40:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:f1d:: with SMTP id e29ls4912064qtk.2.gmail; Sat, 21 Mar
 2020 22:40:45 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtFujJTHGgu3Rhf5roX6PDWxOvS2cvSRZCJxUZTTGh0tYZg6eDnnDXkSRREqRyGKABISkHL
X-Received: by 2002:aed:30c1:: with SMTP id 59mr14754187qtf.106.1584855645251;
        Sat, 21 Mar 2020 22:40:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584855645; cv=none;
        d=google.com; s=arc-20160816;
        b=Ad7dk190LK0bF9y/rIZMnKzWdCD/fC1ig04WXdkyp6cxt0EEypNtj7bUPRgfKOIt+J
         V4DiqtW8toaXgWb+iDUMRdgV6mmoAiu9IoXHR8qi2LYYi0VryQ4Nh/R2PCfxwgpOrDQ8
         Slq5jbtCSu4RevNQkxpqZgTxyGBYiVEyKA2APPiYocP3oSokmxVw8ZcfmkVmfapqyrpM
         w+JDCYCh6y9CjChz9iUhF02bhO/0lX/l6K9rs5wkkrymd4REOO52wh1/koWLBRYpJwNx
         97CjYf+oUkzdywe+2q/FFXFOj/9IlzKW67cIGTV0rw7tDQ8dZzGj+e38D675bGdqm6sa
         HNvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=5Qslfo6+sK2MV9FRCpFCeQSlkefUIpkZNeAEI/BqmBY=;
        b=vfS/15YCba7CrHRmCPXHAcLc42Dyefi96MBrunAiJCVUIp/3UHpUpOdB4ftLhQp8rC
         cSm6Zpf6zAdd7NrfvfugKntNa4S1KuvQu4uWhMM2LVCi8XvSjELLryQJTjKqQoHXy7sN
         1sXNO8GnWJ4wyKlu/bB92uhK9HNJLjYhLBbqUrWrPlf2eZFVhv/NJNKq28+yglvVo9uP
         rrfAIdSFSQ/zhqqNKVdarDDoQC1pF2z0Xvq23+yckHoT4d297NS+/+Yj1AuDrwJkQEgW
         qN+dSzEsaEc0JSE0VrO5rF+n6c1Dwi3OdBmyEZzGl+s096QCO6wUxBE9pgSiMtUc0R5x
         +78g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iQpSP2xD;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id j7si670833qkm.3.2020.03.21.22.40.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 22:40:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iQpSP2xD;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id b22so5367682pgb.6
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 22:40:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=5Qslfo6+sK2MV9FRCpFCeQSlkefUIpkZNeAEI/BqmBY=;
        b=iQpSP2xDO6M2oM7vrsG0bnc7G+ptfQp6zTjirhJ/jYzfqDldlxHH5Gz3d02LtVes4h
         6SD1xAmP1oWHeL0CVpCIVCcJiX6/5z4qwFHZ3vx5hCvgmAsa8Zlv3EdKPgn7l+eNSWd2
         WfsVk2IACBIGurtYG6nhztA3xJW3CaVdHi2otX4WlVYH/mGL8e2nMcEhLpJDtMwupUBH
         3lSF/rVa6hqnuDJnqH28ANLaswYYFD5aHt0xRm/OStsGXO1Xf880QjhYQmKqcTVL7sP0
         KATSQRtH1fgGWel8jvBraRjKp/GeniUG3BGXLYxodxxu7xBoivV7Zvxs8BfE8q8uLw2U
         pGeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=5Qslfo6+sK2MV9FRCpFCeQSlkefUIpkZNeAEI/BqmBY=;
        b=Ve1tmwgx/pAkwYKRVW9IR0r5p3+pp5mq1/tYuW/Z9n3CinLExpmn0I9swNDCYaEVqW
         rHlmlxtGRykl6eiQBiYuePEOtFGjmCepsThT6jbGbAlHCorBXSMHQCJrJp5K6NxUJgmd
         oHCKkScPPN9P2uT2xA2y4EeqeL6jeQxm0yltQscr3DI0WfXq7cWl8KEitjiLFf1wswOy
         ZVkyAD5bLbkIr3KUvwSjmCs6OxvsligiM5fRv7o3H0LnzXkYdUjvv+j+ReM9oXlD7Zo3
         YjeUyaBLyRm3zBscLnsOdeLoEmUAOJO9JSjkVkot3+Aszrs1umA6KjoCC8Tlu7i/5QmT
         MDrQ==
X-Gm-Message-State: ANhLgQ2dqHKd/8NqSdLY1QX15kdNAvKxfzbRbgpN7jQTXbF4cM6B5mIe
	+XdxmHWpKhIwOzYUNrJ8YNt9Gw6W
X-Received: by 2002:aa7:947c:: with SMTP id t28mr17202512pfq.239.1584855644205;
        Sat, 21 Mar 2020 22:40:44 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.191])
        by smtp.gmail.com with ESMTPSA id h26sm9827409pfr.134.2020.03.21.22.40.41
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 21 Mar 2020 22:40:43 -0700 (PDT)
Date: Sun, 22 Mar 2020 11:10:39 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Cc: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: comedi: ni_pcimio: remove old unused code
Message-ID: <20200322054035.GA9669@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Found multiple #if 0 code blocks that appear to have never been used.
Additinal comments around intended functionality may be introduced
separately. As these commented code blocks do not appear to be
ever useful, they can be removed.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>

---
Resending patch for review. No changes since last version.

 drivers/staging/comedi/drivers/ni_pcimio.c | 48 ----------------------
 1 file changed, 48 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_pcimio.c b/drivers/staging/comedi/drivers/ni_pcimio.c
index 7c82d5f9778f..d8e34d2e1104 100644
--- a/drivers/staging/comedi/drivers/ni_pcimio.c
+++ b/drivers/staging/comedi/drivers/ni_pcimio.c
@@ -481,43 +481,6 @@ static const struct ni_board_struct ni_boards[] = {
 		.ao_speed	= 250,
 		.caldac		= { ad8804, ad8804 },
 	},
-#if 0
-	/* The 6115 boards probably need their own driver */
-	[BOARD_PCI6115] = {	/* .device_id = 0x2ed0, */
-		.name		= "pci-6115",
-		.n_adchan	= 4,
-		.ai_maxdata	= 0x0fff,
-		.ai_fifo_depth	= 8192,
-		.gainlkup	= ai_gain_611x,
-		.ai_speed	= 100,
-		.n_aochan	= 2,
-		.ao_maxdata	= 0xffff,
-		.ao_671x	= 1,
-		.ao_fifo_depth	= 2048,
-		.ao_speed	= 250,
-		.reg_611x	= 1,
-		/* XXX */
-		.caldac		= { ad8804_debug, ad8804_debug, ad8804_debug },
-	},
-#endif
-#if 0
-	[BOARD_PXI6115] = {	/* .device_id = ????, */
-		.name		= "pxi-6115",
-		.n_adchan	= 4,
-		.ai_maxdata	= 0x0fff,
-		.ai_fifo_depth	= 8192,
-		.gainlkup	= ai_gain_611x,
-		.ai_speed	= 100,
-		.n_aochan	= 2,
-		.ao_maxdata	= 0xffff,
-		.ao_671x	= 1,
-		.ao_fifo_depth	= 2048,
-		.ao_speed	= 250,
-		.reg_611x	= 1,
-		/* XXX */
-		.caldac		= { ad8804_debug, ad8804_debug, ad8804_debug },
-	},
-#endif
 	[BOARD_PCI6711] = {
 		.name = "pci-6711",
 		.n_aochan	= 4,
@@ -569,17 +532,6 @@ static const struct ni_board_struct ni_boards[] = {
 		.reg_type	= ni_reg_6711,
 		.caldac		= { ad8804_debug },
 	},
-#if 0
-	[BOARD_PXI6731] = {	/* .device_id = ????, */
-		.name		= "pxi-6731",
-		.n_aochan	= 4,
-		.ao_maxdata	= 0xffff,
-		.ao_fifo_depth	= 8192,
-		.ao_range_table	= &range_bipolar10,
-		.reg_type	= ni_reg_6711,
-		.caldac		= { ad8804_debug },
-	},
-#endif
 	[BOARD_PCI6733] = {
 		.name		= "pci-6733",
 		.n_aochan	= 8,
-- 
2.17.1


