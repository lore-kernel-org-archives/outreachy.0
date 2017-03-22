X-GM-THRID: 6400146594222571520
X-Received: by 10.129.18.130 with SMTP id 124mr19642329yws.56.1490150251423;
        Tue, 21 Mar 2017 19:37:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.40.193 with SMTP id s59ls123364ota.39.gmail; Tue, 21 Mar
 2017 19:37:30 -0700 (PDT)
X-Received: by 10.129.46.136 with SMTP id u130mr20417641ywu.38.1490150250959;
        Tue, 21 Mar 2017 19:37:30 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 2si2116pfz.1.2017.03.21.19.37.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 19:37:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 81so20005916pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 19:37:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=9a1RPQ39m9I0gF74cYWySKdKErWDVyRYB4FdszYy4Ac=;
        b=RRktlG3xzcolb4aIgE7mKOVwrlDzpiRWAOdIFZEDxSO/EpApmgcEvF5ViEbnHOQd4Z
         Nqwc0FqW2x3DCk4un6C+SUAz2xI3Fp95jSX3TvXCbeneM3qBucZK6mSDmfY6Jq6IAUL5
         88ULNnysqX98047tXHdgE4mZlgjB2rEjYyKJ7IH1OmeUTxN8YnyuNtynSrC6LqTHVJK2
         ZeL1jLOF/T5NofkJCDOfO2aVInXB3HTk+AgXoiBQR2URsBRqklgkdPjxnMlU3/pmcFAJ
         3GqhU4IjLVJtHlgt0ll4PjAaiCG0diKaUdbhfhm/yc3LbJefrf/NRUPSHtQ3A4dpi5en
         rwsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=9a1RPQ39m9I0gF74cYWySKdKErWDVyRYB4FdszYy4Ac=;
        b=OFYxye+IpboHof9rbDBVoTKsEhWWrZuoj+ITdY7LtFq9MeR301Al+2yCL3JDxF/4O/
         0fdbF7UyXYsyZcMLWEeb9J84wSYQ41c77ZRQijKaEY2xelLoTaR8Ipu1EmxAmTSs3aJI
         yuQ+yj8+SWzf07CSYsfYcTyJbvlQQoxaYi+kXfrFs7NG6R3DXdvvc7TFut85UEt5qQyZ
         T86GrpsQ6CPJp/acstY7bNO3siQkfXh8qNCu6Zy+9KTAFvuAbqbxfILPU0n3hTtL7Ewp
         n113sQfP0aeBIlpV9ILtENRh0dgHof34wqtIcsTacQfiAdTpd4wFmD1M1He4UfGJ67do
         ba2A==
X-Gm-Message-State: AFeK/H3iUI0JFQqHu3jGF5TOAvoYBim2iT1pjWMVjpuT2sQZ0v+sPyZeEZ8FcCM43H2JPw==
X-Received: by 10.98.67.157 with SMTP id l29mr43898117pfi.251.1490150250606;
        Tue, 21 Mar 2017 19:37:30 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v9sm41948041pfg.133.2017.03.21.19.37.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 19:37:29 -0700 (PDT)
Date: Wed, 22 Mar 2017 08:07:26 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: thomas.petazzoni@free-electrons.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: fbtft: Replace a bit shift by a use of BIT.
Message-ID: <20170322023725.GA10711@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch replaces bit shifting on 1 with the BIT(x) macro.
This was done with coccinelle:
@@
constant c;
@@

-1 << c
+BIT(c)

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/fbtft/fb_agm1264k-fl.c | 4 ++--
 drivers/staging/fbtft/fb_ili9163.c     | 2 +-
 drivers/staging/fbtft/fb_ili9325.c     | 2 +-
 drivers/staging/fbtft/fb_ssd1289.c     | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
index 4ee76dbd30b5..d31deeab69b2 100644
--- a/drivers/staging/fbtft/fb_agm1264k-fl.c
+++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
@@ -369,7 +369,7 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 			/* select left side (sc0)
 			 * set addr
 			 */
-			write_reg(par, 0x00, (1 << 6) | (u8)addr_win.xs);
+			write_reg(par, 0x00, (BIT(6)) | (u8)addr_win.xs);
 			write_reg(par, 0x00, (0x17 << 3) | (u8)y);
 
 			/* write bitmap */
@@ -392,7 +392,7 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 			/* select right side (sc1)
 			 * set addr
 			 */
-			write_reg(par, 0x01, 1 << 6);
+			write_reg(par, 0x01, BIT(6));
 			write_reg(par, 0x01, (0x17 << 3) | (u8)y);
 
 			/* write bitmap */
diff --git a/drivers/staging/fbtft/fb_ili9163.c b/drivers/staging/fbtft/fb_ili9163.c
index 579e17734612..06a5a5f6e33e 100644
--- a/drivers/staging/fbtft/fb_ili9163.c
+++ b/drivers/staging/fbtft/fb_ili9163.c
@@ -194,7 +194,7 @@ static int set_var(struct fbtft_par *par)
 
 	/* Colorspcae */
 	if (par->bgr)
-		mactrl_data |= (1 << 2);
+		mactrl_data |= (BIT(2));
 	write_reg(par, MIPI_DCS_SET_ADDRESS_MODE, mactrl_data);
 	write_reg(par, MIPI_DCS_WRITE_MEMORY_START);
 	return 0;
diff --git a/drivers/staging/fbtft/fb_ili9325.c b/drivers/staging/fbtft/fb_ili9325.c
index 7189de5ae4b3..ab1267a9cd11 100644
--- a/drivers/staging/fbtft/fb_ili9325.c
+++ b/drivers/staging/fbtft/fb_ili9325.c
@@ -126,7 +126,7 @@ static int init_display(struct fbtft_par *par)
 	write_reg(par, 0x0013, 0x0000); /* VDV[4:0] for VCOM amplitude */
 	mdelay(200); /* Dis-charge capacitor power voltage */
 	write_reg(par, 0x0010, /* SAP, BT[3:0], AP, DSTB, SLP, STB */
-		(1 << 12) | (bt << 8) | (1 << 7) | (0x01 << 4));
+		(BIT(12)) | (bt << 8) | (BIT(7)) | (BIT(4)));
 	write_reg(par, 0x0011, 0x220 | vc); /* DC1[2:0], DC0[2:0], VC[2:0] */
 	mdelay(50); /* Delay 50ms */
 	write_reg(par, 0x0012, vrh); /* Internal reference voltage= Vci; */
diff --git a/drivers/staging/fbtft/fb_ssd1289.c b/drivers/staging/fbtft/fb_ssd1289.c
index c603e1516e64..b22a07d79b34 100644
--- a/drivers/staging/fbtft/fb_ssd1289.c
+++ b/drivers/staging/fbtft/fb_ssd1289.c
@@ -47,7 +47,7 @@ static int init_display(struct fbtft_par *par)
 	write_reg(par, 0x0E, 0x2B00);
 	write_reg(par, 0x1E, 0x00B7);
 	write_reg(par, 0x01,
-		(1 << 13) | (par->bgr << 11) | (1 << 9) | (HEIGHT - 1));
+		(BIT(13)) | (par->bgr << 11) | (BIT(9)) | (HEIGHT - 1));
 	write_reg(par, 0x02, 0x0600);
 	write_reg(par, 0x10, 0x0000);
 	write_reg(par, 0x05, 0x0000);
-- 
2.11.0


