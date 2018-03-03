X-GM-THRID: 6528718721660223488
X-Received: by 10.99.173.69 with SMTP id y5mr1746412pgo.89.1520085782072;
        Sat, 03 Mar 2018 06:03:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.11.211 with SMTP id 80ls3647430pfl.2.gmail; Sat, 03 Mar
 2018 06:03:01 -0800 (PST)
X-Google-Smtp-Source: AG47ELuRtmEhVjQ6IaP5Sl7fINiNBAQnd0QD+9flkDrCiY/3eyp0QT0p2Vyt5icjl5hi2czUx2Ul
X-Received: by 10.101.91.199 with SMTP id o7mr1769629pgr.37.1520085781006;
        Sat, 03 Mar 2018 06:03:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520085780; cv=none;
        d=google.com; s=arc-20160816;
        b=HUJmY73RWfCsBqcJR4TaQg062/H8ZaXTIw2NZo3Bl4Yre9ERha/JIxB0Orn13lsp9o
         zwxgEUp9Slb+p+VKSuIyUT9icbD5hkP0pc5qJacetTS0Lv9fL/oxJ+9dfVNcRGkyXtyA
         3nTKVlnhf91TF/EfBAXZzm4pbm+ribuoYR+FhrdoP5pIxMu68MHfBdXFk1obaUdMDEvB
         v7rbtlc1iMECxL4YrczQFjeyfKgY3jiE9CLNfyQh5MvLiniFUc+6i5Cs7iFlSxlccksp
         Lkz5laH8TZsnS4yyeGohCVaYLq/YUIy1RjwXrAQHrJOMtv5zKnBdpNTHXzNCabd+nuoe
         vIpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=IJh65k/VwyEPUk/YIa+GbIL5NJYiFGUgwl6s4o/vvSA=;
        b=mSUpfrzUVLjHaX5cM1DNZlTQwv4wI3E52UcKm9Awy/pSz1XFszcaG6Z+lp9hBTRr8U
         8miky67oC72Pv00S9KO7xtwM6BhBzPsL4Vp16LYVaACUCa6x4P2mCGSFpQ8Bxa0KY3Z+
         YxIZjLL4YDMcgbyrZ/LV27cb3qfJenXEjgbLIYF8XHF7PUBnZtsanpd3wWxGMaQQT52v
         yPT/NI11BJkXXc33ZGpxIIq+F+jDrlA2DJbD6h7CzohdLTfN/wIEb06ftj6JpXkZD0zw
         cv9WkMpPP0eWPVJm9b5/KsmoH5QuFP3AViMs7QgYl66tNgqpWaebLHLValWxNfmQvq1N
         IvPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ER9jmqXj;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pl0-x242.google.com (mail-pl0-x242.google.com. [2607:f8b0:400e:c01::242])
        by gmr-mx.google.com with ESMTPS id q12si428696pgn.2.2018.03.03.06.03.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 06:03:00 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::242 as permitted sender) client-ip=2607:f8b0:400e:c01::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ER9jmqXj;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::242 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x242.google.com with SMTP id i6-v6so7285012plt.7
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Mar 2018 06:03:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=IJh65k/VwyEPUk/YIa+GbIL5NJYiFGUgwl6s4o/vvSA=;
        b=ER9jmqXjSSIZfrDP3e4muQ7m5WeRMZqQuV9q2u/cEvOznXACT0gk1/CwqIN3sSbiRj
         i4Y+3HrmzSfNrWd4K/4hrVgusuv1K3nT4m/nWID1VGbfBPpydM4VJBNntLlW/B1PWcEp
         whSSSQfMITepEQ+hy6RMhMcFF6VueyZYhcOU8VmGFBusZoM1+o9yDe/bicrihC5pLj34
         eVVWlHSGsQizsmmoGK2LqeqdC7Qc5MxCaQYDAGDJewMJDCOAMEua9qsndBAG7wnvZ2oJ
         Th0+oLUU7UxAJsS+gY3OgxFGl5YdonEaO+3Py9IKRdUCPfrfewdStOSwHM3KXDd2P31F
         4ylA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=IJh65k/VwyEPUk/YIa+GbIL5NJYiFGUgwl6s4o/vvSA=;
        b=K5u4iKBdqpKeptau96uRr3E4wPY35l0Lrc5FEOBMam3wSQj/FidhU0814DAGGX5ozr
         avJeqJr/WEBl0NpGhL3JnNgUflppf1dxpu1ezEqA/0R3XnUx0+Md1J/+WX69Zjn7vSyT
         3Sg5AYsp+lv9urjttZwm3qtZLj3DRVf5nhj7Hr/7gPu16VlzC162qTjRQv6PJldtgbn1
         jsTQPVdvmlM4KbCfdC4y6v5bPc8InyujREsPYMhbBrVtgMpKh0Apmp/Rm5+cZ33e2F/i
         zYrCWinKMn1Wc1dkUkodSp5OHzKKWA+6+NYPsLrTvQZTPjp1gIzC2TqM8582bglkcVXL
         MEFw==
X-Gm-Message-State: APf1xPD8cEvoeazxOamsC0GwmHneQXy6GuX4scMYo8Pxu/NfWixfybpb
	b4tPhMtyw6n/mfhV/ilQK3BhXQ==
X-Received: by 2002:a17:902:7404:: with SMTP id g4-v6mr8130199pll.235.1520085780096;
        Sat, 03 Mar 2018 06:03:00 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g15sm4660863pgv.61.2018.03.03.06.02.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Mar 2018 06:02:58 -0800 (PST)
Date: Sat, 3 Mar 2018 19:32:33 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: boris.brezillon@free-electrons.com
Cc: Richard Weinberger <richard@nod.at>,
	David Woodhouse <dwmw2@infradead.org>,
	Brian Norris <computersforpeace@gmail.com>,
	Marek Vasut <marek.vasut@gmail.com>,
	Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>,
	linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] mtd: nand: Added spaces around ('=' and '<')
Message-ID: <20180303140233.GA9634@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Add spaces around ('=' and '<'),  to conform to the Linux
kernel coding style. Issue found using checkpatch.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/mtd/nand/ams-delta.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/ams-delta.c b/drivers/mtd/nand/ams-delta.c
index d60ada4..9de6572 100644
--- a/drivers/mtd/nand/ams-delta.c
+++ b/drivers/mtd/nand/ams-delta.c
@@ -94,7 +94,7 @@ static void ams_delta_write_buf(struct mtd_info *mtd, const u_char *buf,
 {
 	int i;
 
-	for (i=0; i<len; i++)
+	for (i = 0; i < len; i++)
 		ams_delta_write_byte(mtd, buf[i]);
 }
 
@@ -102,7 +102,7 @@ static void ams_delta_read_buf(struct mtd_info *mtd, u_char *buf, int len)
 {
 	int i;
 
-	for (i=0; i<len; i++)
+	for (i = 0; i < len; i++)
 		buf[i] = ams_delta_read_byte(mtd);
 }
 
-- 
2.7.4


