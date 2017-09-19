X-GM-THRID: 6466548746929831936
X-Received: by 10.98.204.139 with SMTP id j11mr254347pfk.11.1505786216318;
        Mon, 18 Sep 2017 18:56:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.224.140 with SMTP id c134ls6299220ith.22.canary-gmail; Mon,
 18 Sep 2017 18:56:55 -0700 (PDT)
X-Received: by 10.13.203.82 with SMTP id n79mr22180566ywd.192.1505786215491;
        Mon, 18 Sep 2017 18:56:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505786215; cv=none;
        d=google.com; s=arc-20160816;
        b=drT9t325c+T+P6vMnvjJgdYjNG36pWtg4MYh4TttV+syvMWXHqZEfyDruWXDL8P+bn
         XAVZjgHPowTCG3JOtqBtfrrEOny+OA0rumIXlq3vEYzT/d1JW3Ac0WUs63QaEP9hRaxt
         GPBMQsWSYzZgz/qAQd4bagvwfJWh8pUywS0kZXtOiok13PC5r9AU3ENsZq42ovANe1Q4
         IybLBmVvCOkvOYUpg3ZBDvHTq48H3bbG0EUr3QCzHqUu+++Fw6L/w0PualTlkjWJ8d07
         5c27mdnqyEJT6b3fNuhiwUVpktmxc+dqM9Ux2X586Y7v+6HjiUDBKZrjIJcfBLQo5ur5
         JVuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=7oiDR7lTD18C2Hqts7H0Gx3hb5VSU3yK4U1HSkXgx/o=;
        b=jjY77clF13O8RXZM2qfYMofnU1Op8rSzwPy+GACEKH7E2HkaU1pkDRgL+aSO+gh2J5
         oy36kqvOHANzxdNV5AdwmAAVyIfg5fRvTkAIJr+JlOX+yzTB0fsv4y52BSql21/3vc7N
         Q8NJJom5wOJ8uCNvsmTnVPiENRd2gr8Att9Ekxe5zBAjMgtXfJ+xCS83SWfDNTz1wdRS
         Z8Ea+yd4nOO+UAiyCaj9qcZZ2B7Q5Ux42O8RF2PZDjHzN5xdPChOFT3UdUop+EqbUqCN
         If+d9sH1hI+1HV7QX3/7f/ApxRbwbA34P//+XoxDoCGNo4ATYUDduGzQ45HFTxql7ne6
         W2eQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JFFS2uLs;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id k76si96685pfa.10.2017.09.18.18.56.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 18:56:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JFFS2uLs;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id i130so1205891pgc.0
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Sep 2017 18:56:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7oiDR7lTD18C2Hqts7H0Gx3hb5VSU3yK4U1HSkXgx/o=;
        b=JFFS2uLsOo0g9/Fl/NzFNIsOLcvA9I0EeInJ3nPGJr8B/vRhHL82wU72RxV+RSrGVF
         Rc2jwpJIuYWshrxq65apyAqYx6Z1LdoWC402zbRVVom0Hxjl8Z48dE/4wNCgrUqsdwvp
         guKG44wjpISm+OSw8R+FWqwadJTEYe2mTr/hPCQ5It7pQ7HyYKCcA2MHHR/XSbYxQUXT
         CE35/yKT9Zx61hAm9RhYUJS4VHTrJeRWUXVuCKvI5p8hrow9hWwi0wrlT4YVX75PsE3A
         BD9gGDSy3n5HTsKfdGXZ3Fh6gblbBt94tXbd+4PD5EcQs+s2+O5KZ3BKz99YwN2sHfgz
         qPrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7oiDR7lTD18C2Hqts7H0Gx3hb5VSU3yK4U1HSkXgx/o=;
        b=Bwt6luFGdFVulWVn0DpKuGG20tStS9UbyOr636BR2marI3l7krvDBOebD9t1hAAJ1p
         77Kk93pZ93AWcd4Pl5i4WW+kkrg42YwMaod3StB6E1Q5K8aF2fct2QhN6Z/SEZ2e9CdM
         zYjRhXgTYNEntCWl0EbidIATCf6lfXzCbikiVJC2rvXn+xe32H9fjBqixgoifMrOnyPe
         h+6meTss/NYQdUfZYwNcDt2Dk9LhRLwCeAptHiZtDbeeD2j3dLZZ/8YJRDkQFrZpPr0b
         +/391IzgaCoOIH18r6B3es7j29A+b1kXdMos9bOLBCJkZJdyowONfw6YkCLShBCzXvkT
         v5DA==
X-Gm-Message-State: AHPjjUj9XvpK4xWLOPmvuy+6AT4iFkS/qw4ePJpNvNsQpmKD0aPRFGi/
	0n16NC5JfEz4a2hp8lg=
X-Google-Smtp-Source: AOwi7QBSMRhHQR3GteO7hNK62L38o2snEyQbPiZbIfzdHuTsDzGfJdKobQLOLJDB9OlJGV5kK4ZmOA==
X-Received: by 10.84.235.65 with SMTP id g1mr476727plt.353.1505786214744;
        Mon, 18 Sep 2017 18:56:54 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from Haneen ([64.77.242.50])
        by smtp.gmail.com with ESMTPSA id d18sm880094pfk.11.2017.09.18.18.56.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 18:56:53 -0700 (PDT)
Date: Mon, 18 Sep 2017 19:56:51 -0600
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, hamohammed.sa@gmail.com
Subject: [PATCH v2] staging: iio: Replace bit shifting with BIT macro
Message-ID: <20170919015651.GA4554@Haneen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch replace bit shifting on 1, and 3 with BIT(x) macro.
Issue resolved with the following Coccinelle script:

@r1@
identifier x;
constant int g;
@@
(
0<<\(x\|g\)
|
1<<\(x\|g\)
|
2<<\(x\|g\)
|
3<<\(x\|g\)
)

@script:python b@
g2 <<r1.g;
y;
@@

coccinelle.y = int(g2) + 1

@c@
constant int r1.g;
identifier b.y;
@@
(
-(1 << g)
+BIT(g)
|
-(0 << g)
+ 0
|
-(2 << g)
+BIT(y)
|
-(3 << g)
+(BIT(y) | BIT(g))
)

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
Changes in v2: 
- undo changes where it results in different styles mixed up
- remove parenthesis aroun BIT(y) | BIT(g)

 drivers/staging/iio/impedance-analyzer/ad5933.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
index 3d539ee..4cb418e 100644
--- a/drivers/staging/iio/impedance-analyzer/ad5933.c
+++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
@@ -229,7 +229,7 @@ static int ad5933_set_freq(struct ad5933_state *st,
 		u8 d8[4];
 	} dat;
 
-	freqreg = (u64) freq * (u64) (1 << 27);
+	freqreg = (u64)freq * (u64)BIT(27);
 	do_div(freqreg, st->mclk_hz / 4);
 
 	switch (reg) {
@@ -318,7 +318,7 @@ static ssize_t ad5933_show_frequency(struct device *dev,
 	freqreg = be32_to_cpu(dat.d32) & 0xFFFFFF;
 
 	freqreg = (u64)freqreg * (u64)(st->mclk_hz / 4);
-	do_div(freqreg, 1 << 27);
+	do_div(freqreg, BIT(27));
 
 	return sprintf(buf, "%d\n", (int)freqreg);
 }
@@ -452,9 +452,9 @@ static ssize_t ad5933_store(struct device *dev,
 
 		/* 2x, 4x handling, see datasheet */
 		if (val > 1022)
-			val = (val >> 2) | (3 << 9);
+			val = (val >> 2) | BIT(10) | BIT(9);
 		else if (val > 511)
-			val = (val >> 1) | (1 << 9);
+			val = (val >> 1) | BIT(9);
 
 		dat = cpu_to_be16(val);
 		ret = ad5933_i2c_write(st->client,
-- 
2.7.4


