X-GM-THRID: 6400146594222571520
X-Received: by 10.129.178.4 with SMTP id q4mr20519353ywh.122.1490201917541;
        Wed, 22 Mar 2017 09:58:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.70 with SMTP id h64ls327072oth.33.gmail; Wed, 22 Mar
 2017 09:58:37 -0700 (PDT)
X-Received: by 10.157.27.181 with SMTP id z50mr18570667otd.90.1490201917115;
        Wed, 22 Mar 2017 09:58:37 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si474084pfz.1.2017.03.22.09.58.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Mar 2017 09:58:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 81so23490434pgh.3
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Mar 2017 09:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=YTG63ssQVKUnEtSSyWh12LWdIwd8fgAo0itUt/0kgbg=;
        b=JG4chhMCTrsZT7iFO2aZo6S4tpwIPfMEZROH4n67498r0+Fune+L15F++Dn8VD+MR5
         +A2rKJ2Uu0qh6z568rbZM/z+Dua07fpux9xSi0qT0EqGdoa6yCay+3lU62F6ZwcxDuLp
         Tx5Lt9ApC2mIoOp6sjaIKiqBGdv7gGzncuwgwhMCjZZteVhJB4A2EN8MO+ATVg/SpKoh
         c5m3h5eu7o3HM+gdsBiIVcWOhvbRbY+UA9n5Ff4JT/2zbENY13e+bSwGLvtXmKYWjlrD
         FiAhKG713anggcTtpM18OyIFicu7qSIf3Md6DpbsvDw8876fIvSyhzNsiKjwwLEorXgh
         6nhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=YTG63ssQVKUnEtSSyWh12LWdIwd8fgAo0itUt/0kgbg=;
        b=FEM0J4HmetBqzjy6QkJePS4TsUVVgYp9WzMdrAVmix029HPkuWTKeVGR91ccj0QEj5
         MGSCZluHBrqF+tfftKHXmWSCjs0OZIFu8kxwVdPrU27NdB1EKTOoD6OSZtOvv2oAWt3X
         C70WtSbTgplPIQV9BTMKky9Xhew+Pf1Dfj5HMgKgsB7TavYP6z1mZJ4BAU08zROFY/3R
         k82u5KyWM5pji2kWfEqOfkb+854LVyAyhg6sAIE77yRx98lEJhOfdb3k55q/UYYSj9bh
         xKz2fIu4dtnW6jzpmW7vCNroITHqZ3Fn16XBlMrMzzZM4jB2LSF4CsVYrZPswbV5OZMh
         rhtQ==
X-Gm-Message-State: AFeK/H3RfYa8umNDeMZp7AfjuyhosSPpi52M241TVGtJbXZG4hWaHQdTAzu9JOa2+3/2ng==
X-Received: by 10.98.148.25 with SMTP id m25mr39799909pfe.45.1490201916825;
        Wed, 22 Mar 2017 09:58:36 -0700 (PDT)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id s26sm5109653pge.33.2017.03.22.09.58.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 22 Mar 2017 09:58:35 -0700 (PDT)
Date: Wed, 22 Mar 2017 22:28:28 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: thomas.petazzoni@free-electrons.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: fbtft: Replace a bit shift by a use of BIT.
Message-ID: <20170322165801.GA20147@arushi-HP-Pavilion-Notebook>
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
changes in v2
 -improve the code.

 drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
 drivers/staging/fbtft/fb_ili9163.c     | 2 +-
 drivers/staging/fbtft/fb_ili9325.c     | 2 +-
 drivers/staging/fbtft/fb_ssd1289.c     | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
index 4ee76dbd30b5..489151a6bf80 100644
--- a/drivers/staging/fbtft/fb_agm1264k-fl.c
+++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
@@ -369,7 +369,7 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
 			/* select left side (sc0)
 			 * set addr
 			 */
-			write_reg(par, 0x00, (1 << 6) | (u8)addr_win.xs);
+			write_reg(par, 0x00, BIT(6) | (u8)addr_win.xs);
 			write_reg(par, 0x00, (0x17 << 3) | (u8)y);
 
 			/* write bitmap */
diff --git a/drivers/staging/fbtft/fb_ili9163.c b/drivers/staging/fbtft/fb_ili9163.c
index 579e17734612..045cadc3bc65 100644
--- a/drivers/staging/fbtft/fb_ili9163.c
+++ b/drivers/staging/fbtft/fb_ili9163.c
@@ -194,7 +194,7 @@ static int set_var(struct fbtft_par *par)
 
 	/* Colorspcae */
 	if (par->bgr)
-		mactrl_data |= (1 << 2);
+		mactrl_data |= BIT(2);
 	write_reg(par, MIPI_DCS_SET_ADDRESS_MODE, mactrl_data);
 	write_reg(par, MIPI_DCS_WRITE_MEMORY_START);
 	return 0;
diff --git a/drivers/staging/fbtft/fb_ili9325.c b/drivers/staging/fbtft/fb_ili9325.c
index 7189de5ae4b3..7f9e9b25490e 100644
--- a/drivers/staging/fbtft/fb_ili9325.c
+++ b/drivers/staging/fbtft/fb_ili9325.c
@@ -126,7 +126,7 @@ static int init_display(struct fbtft_par *par)
 	write_reg(par, 0x0013, 0x0000); /* VDV[4:0] for VCOM amplitude */
 	mdelay(200); /* Dis-charge capacitor power voltage */
 	write_reg(par, 0x0010, /* SAP, BT[3:0], AP, DSTB, SLP, STB */
-		(1 << 12) | (bt << 8) | (1 << 7) | (0x01 << 4));
+		BIT(12) | (bt << 8) | BIT(7) | BIT(4));
 	write_reg(par, 0x0011, 0x220 | vc); /* DC1[2:0], DC0[2:0], VC[2:0] */
 	mdelay(50); /* Delay 50ms */
 	write_reg(par, 0x0012, vrh); /* Internal reference voltage= Vci; */
diff --git a/drivers/staging/fbtft/fb_ssd1289.c b/drivers/staging/fbtft/fb_ssd1289.c
index c603e1516e64..129e175fcd7e 100644
--- a/drivers/staging/fbtft/fb_ssd1289.c
+++ b/drivers/staging/fbtft/fb_ssd1289.c
@@ -47,7 +47,7 @@ static int init_display(struct fbtft_par *par)
 	write_reg(par, 0x0E, 0x2B00);
 	write_reg(par, 0x1E, 0x00B7);
 	write_reg(par, 0x01,
-		(1 << 13) | (par->bgr << 11) | (1 << 9) | (HEIGHT - 1));
+		BIT(13) | (par->bgr << 11) | BIT(9) | (HEIGHT - 1));
 	write_reg(par, 0x02, 0x0600);
 	write_reg(par, 0x10, 0x0000);
 	write_reg(par, 0x05, 0x0000);
-- 
2.11.0


