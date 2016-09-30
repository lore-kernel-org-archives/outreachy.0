X-GM-THRID: 6336120731935440896
X-Received: by 10.159.39.9 with SMTP id a9mr1958734uaa.32.1475243101841;
        Fri, 30 Sep 2016 06:45:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.161.69 with SMTP id k66ls2132590ioe.22.gmail; Fri, 30 Sep
 2016 06:45:00 -0700 (PDT)
X-Received: by 10.107.145.134 with SMTP id t128mr2337423iod.14.1475243100144;
        Fri, 30 Sep 2016 06:45:00 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id x73si2066623pfd.1.2016.09.30.06.45.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 06:45:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id oz2so4841346pac.0
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Sep 2016 06:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hp7w8I9RXH+mctP+Nt60Mbw1Qa/WmQuAVl24F7x6xto=;
        b=qv656PyEagS7axcbsvF8YyirRi9tLuYxwqrOa4TaNkWNGDZHcfHWkS6MAess+kETMj
         jQ6orQNQvVP6gqgQxf32ibzYH74Egzj7eRKmLjOsFUyIeQCYvmKuDihUsoGytg+9O/D2
         hAk4pUNOiExhJ+5JkAZehPTt5iQyQdcvuSp5rJSy6dB8YNWR4OdElV+mGdzrGzGksLOm
         RELA0TsgX0xrHct4vFZbwzfbEgWqpPSNGvysqa9ZnpNkgjh0m1Ei+AvaTNCUzJ9DbgoU
         SvfWW8PxmtWBYEGgNK6R+pUIRiqOq1omd8g/3GDAk85RacOPz+DcInohfmKxriUA0mvy
         uRqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hp7w8I9RXH+mctP+Nt60Mbw1Qa/WmQuAVl24F7x6xto=;
        b=ib0YNjjHO54V0n90i4LdBdXieHpYLySXxayy9nERmVGuXrB4ylESqQwYhUinqs1PoB
         dyNzR+NXettgGBkgZu8DN3LEiVafis2uqzh4M7dpEjSTrQpO0kaKRSejE6w5VRZGXDK/
         cVFND3TWowOc/3A43F+cC0Ge77rE3/NLvUDkoaDOnRvUJn1JMwRRFceVdFrOfjqD961G
         +q9IxtzBj4qg36X7cfCjTxUWc91BAF+ALB41f+x83VyJYwuddB+UFEGpLReLUbz/kcMA
         AwVt3fAsEnIhODKKBXxkh+ZFODrpvEQ0thJ/2GLPF4V9r2VNsnI9+svWazbCO0G6u4Ov
         wlpQ==
X-Gm-Message-State: AA6/9Rk40nAmxwhekgMHJ/3R+SDhELy45SuY30TqBtVY2aITGAQP8RKJAptbVmDWpHUwew==
X-Received: by 10.66.26.174 with SMTP id m14mr11835378pag.58.1475243099959;
        Fri, 30 Sep 2016 06:44:59 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id bl10sm28288899pab.46.2016.09.30.06.44.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 06:44:59 -0700 (PDT)
Date: Fri, 30 Sep 2016 19:14:54 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Aditya Shankar <aditya.shankar@microchip.com>,
	Ganesh Krishna <ganesh.krishna@microchip.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/3] staging: wilc1000: wilc_spi: Compress return logic
Message-ID: <b83a36964c3420c01446956425af5c212ad9ee9e.1475241561.git.namrataashettar@gmail.com>
References: <cover.1475241561.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475241561.git.namrataashettar@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Compress return logic. Done using Coccinelle :
@@
local idexpression ret;
expression e;
@@


-ret=
+return 
  e;
  -return ret;

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index f6c47ca..d865fb1 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -419,8 +419,7 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 
 	if (wilc_spi_tx_rx(wilc, wb, rb, len2)) {
 		dev_err(&spi->dev, "Failed cmd write, bus error...\n");
-		result = N_FAIL;
-		return result;
+		return N_FAIL;
 	}
 
 	/**
@@ -441,8 +440,7 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 		dev_err(&spi->dev,
 			"Failed cmd response, cmd (%02x), resp (%02x)\n",
 			cmd, rsp);
-		result = N_FAIL;
-		return result;
+		return N_FAIL;
 	}
 
 	/**
@@ -452,8 +450,7 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 	if (rsp != 0x00) {
 		dev_err(&spi->dev, "Failed cmd state response state (%02x)\n",
 			rsp);
-		result = N_FAIL;
-		return result;
+		return N_FAIL;
 	}
 
 	if ((cmd == CMD_INTERNAL_READ) || (cmd == CMD_SINGLE_READ)
@@ -480,8 +477,7 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 		if (retry <= 0) {
 			dev_err(&spi->dev,
 				"Error, data read response (%02x)\n", rsp);
-			result = N_RESET;
-			return result;
+			return N_RESET;
 		}
 
 		if ((cmd == CMD_INTERNAL_READ) || (cmd == CMD_SINGLE_READ)) {
@@ -496,8 +492,7 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 			} else {
 				dev_err(&spi->dev,
 					"buffer overrun when reading data.\n");
-				result = N_FAIL;
-				return result;
+				return N_FAIL;
 			}
 
 			if (!g_spi.crc_off) {
@@ -509,8 +504,7 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 					crc[1] = rb[rix++];
 				} else {
 					dev_err(&spi->dev, "buffer overrun when reading crc.\n");
-					result = N_FAIL;
-					return result;
+					return N_FAIL;
 				}
 			}
 		} else if ((cmd == CMD_DMA_READ) || (cmd == CMD_DMA_EXT_READ)) {
-- 
2.7.4


