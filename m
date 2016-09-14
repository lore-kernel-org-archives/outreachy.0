X-GM-THRID: 6330158331185856512
X-Received: by 10.98.23.151 with SMTP id 145mr1609257pfx.5.1473854838676;
        Wed, 14 Sep 2016 05:07:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.27.155 with SMTP id z27ls909828otd.46.gmail; Wed, 14 Sep
 2016 05:07:18 -0700 (PDT)
X-Received: by 10.129.55.13 with SMTP id e13mr1706659ywa.9.1473854838244;
        Wed, 14 Sep 2016 05:07:18 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id si10si1108648pab.1.2016.09.14.05.07.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 05:07:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id vz6so681613pab.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 05:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HErDMgcs0PXuPn/abeUFvv1v5ffs2qeFlE4NKwwvE5I=;
        b=n2yLJaMH94cXZM3Fo93K38Is96L6Cf9i1CkikvE+nwNWEwJ7Z3kGAAhOfr8Az3BIC5
         V9eo8STfmhttJuPtwea2fP9BZkdeOYvzmhS6p4Wsi4dNzWvjLk/1I5qMsW2Rz5Y1j4OS
         pll/n2V8tKT3TJC83z6T2bS3Mb29OYikqunNeuRzFn1yE/ZmwZxG7VHXf/hFkEsbPQJO
         MmfigutD96Ol7asiawVGcGOd66y61kZmTIHEP/LN1geB82/dH/+92dfIuSuqSFVwEpee
         Nuy/9k2ODQXDNSJiCpnM2yfG3CPeLt5WaAUWOLtL3oaYYGxRn0s5M5/EsJKXetC3Vzsh
         4bJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HErDMgcs0PXuPn/abeUFvv1v5ffs2qeFlE4NKwwvE5I=;
        b=ZyLjIlJLC1Oy6181xT/t6bSLhILw/zhZe3YIzLGW1aMcqRBDmv8lNTQCUHXjz3FoPq
         jMSx+aW2BtA1ndX2syDfnERYegjzK99fSFCiTdZlaHxKPBIompvaRues8wCdG05LJaqo
         V2rt1SKaZnrynKopmJw0Edm/k5ftKSGS1YHPdGqcWd+goGalavKet69onjYGTGTVBZf+
         9ivi+6TCKssBprCekH3/OgDKpNyKFTSIw/Eczvwep7YCjTld1lCT99o1cx72+ISphEfa
         zd6s6EB8jdIM4jU06TZqNnzFD6yIw0MBX1GdwDBkCY62JdYoQkFvMH6lcE1ejQi7zCLs
         Bv+w==
X-Gm-Message-State: AE9vXwNTIHZ9+ici+cixbBZdSyiwT+a6gFrHwhGN3ZYNYy/iZc+IkZup+VwydFbnq4cqEg==
X-Received: by 10.66.224.101 with SMTP id rb5mr3927470pac.45.1473854837877;
        Wed, 14 Sep 2016 05:07:17 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([182.77.94.114])
        by smtp.gmail.com with ESMTPSA id h67sm9204731pfg.32.2016.09.14.05.07.15
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 05:07:17 -0700 (PDT)
Date: Wed, 14 Sep 2016 17:37:51 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Subject: [PATCH] Staging: sm750fb: Remove unnecessary blank line
Message-ID: <20160914120751.GA3656@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary blank line.
This patch is detected by checkpatch.pl script .
CHECK: Blank lines aren't necessary before a close brace '}'

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/sm750fb/ddk750_display.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
index ca4973e..f286ffc 100644
--- a/drivers/staging/sm750fb/ddk750_display.c
+++ b/drivers/staging/sm750fb/ddk750_display.c
@@ -134,7 +134,6 @@ static void swPanelPowerSequence(int disp, int delay)
 	reg |= (disp ? PANEL_DISPLAY_CTRL_FPEN : 0);
 	POKE32(PANEL_DISPLAY_CTRL, reg);
 	primaryWaitVerticalSync(delay);
-
 }
 
 void ddk750_setLogicalDispOut(disp_output_t output)
@@ -159,7 +158,6 @@ void ddk750_setLogicalDispOut(disp_output_t output)
 		/*se blank off */
 		reg &= ~CRT_DISPLAY_CTRL_BLANK;
 		POKE32(CRT_DISPLAY_CTRL, reg);
-
 	}
 
 	if (output & PRI_TP_USAGE) {
-- 
1.8.2.3


