X-GM-THRID: 6336161909682733056
X-Received: by 10.66.159.193 with SMTP id xe1mr2199320pab.1.1475252655134;
        Fri, 30 Sep 2016 09:24:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.75 with SMTP id t11ls5934462ott.34.gmail; Fri, 30 Sep
 2016 09:24:14 -0700 (PDT)
X-Received: by 10.200.55.71 with SMTP id p7mr2150684qtb.16.1475252654710;
        Fri, 30 Sep 2016 09:24:14 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id u125si487191itc.0.2016.09.30.09.24.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 09:24:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id q2so5176541pfj.0
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Sep 2016 09:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VN1Fa4Q2C4FlUTda9PQSuGj+JZrBVGJbKjSHSWtpmKU=;
        b=XPiacV37nVCTiRu7oLfvYSsnvbB+40yZ6GAXGJcZBg3BvTbz0UYIZmWKjbWQCcC3QR
         BEZ4d4tjPzrSloZ1S0FQB1RXjTARjaATZ65EZBUww8lco8aHadla7fbuUHd2LSLDAnSH
         ljbSarxXSADnAqjIfw/FmEzAAqSlRR/ONMF1SvpjtDvflyac6jhQBH8AsckX/k6vjzQc
         ++VQA645YbWZmjOAFfw9RKP0lwymOZrhvu+VTY6yKl7KkEkhQgIzKWO8xw2EWg5YvvMa
         0co4uOPLUusECm+Ztl6nx8UvoAzZEEvwXDtc2nfTrXXPL/D6Bdr8f6WxKAl2AyIv+Rhs
         pTcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VN1Fa4Q2C4FlUTda9PQSuGj+JZrBVGJbKjSHSWtpmKU=;
        b=eETBIjBPu/beI9jg2iYeiSqx+y+gpCv4BYg5Vd7q7LPBvlHwkECeNti7jfjfmUB7lT
         sSyD1qGxnW5iwjAhkg4oDjWG06WUZOpm2vlZZUbcTKpIpZIdLxQUmRdmxseOBLG9waWq
         VyVdsDi27QQI1BR6Xhd4+yS1VVs8s2A8VvZvyVjgucreXa2R7bKqffRnJER9M2HGZdUN
         9u1FqaG1X5P2nus6Kujq231Xh5755UaLbpDS+gupNBZlLUjzbzY1Hf7IovfRGffhpiO6
         yE9LzUjtQU0lJwKkqbOOuNEqewuHp45Qx3nKA2pPOIrEwl7LOI+j1But/oBpZfAbhIzT
         K1MQ==
X-Gm-Message-State: AA6/9Rlwm07Sx38Tv/EDUaEutOmYncOsUc4BkWisUTxjWJgPk8Z2dt/kNLbgwjV+KGhKYg==
X-Received: by 10.98.14.20 with SMTP id w20mr13300028pfi.9.1475252654277;
        Fri, 30 Sep 2016 09:24:14 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id x8sm29043022pfi.93.2016.09.30.09.24.11
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 30 Sep 2016 09:24:13 -0700 (PDT)
Date: Fri, 30 Sep 2016 21:54:02 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, knaack.h@gmx.de, pmeerw@pmeerw.net
Subject: [PATCH] staging: iio: adc: ad7192: Fix block comment
Message-ID: <e55c4a26afeb396db3cefe4071125b228d4ba3a0.1475252219.git.anchalj109@gmail.com>
References: <cover.1475252219.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1475252219.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fix the problem of block comment when the block comment 
detect by the checkpatch.pl 
CHECK: Block comments use a trailing */ on a separate line
so to fix this problem just remove trailing */ and add it on the next line

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index f843f19..7c0635f 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -36,9 +36,11 @@
 #define AD7192_REG_ID		4 /* ID Register	     (RO, 8-bit) */
 #define AD7192_REG_GPOCON	5 /* GPOCON Register	     (RO, 8-bit) */
 #define AD7192_REG_OFFSET	6 /* Offset Register	     (RW, 16-bit
-				   * (AD7792)/24-bit (AD7192)) */
+				   * (AD7792)/24-bit (AD7192))
+				   */
 #define AD7192_REG_FULLSALE	7 /* Full-Scale Register
-				   * (RW, 16-bit (AD7792)/24-bit (AD7192)) */
+				   * (RW, 16-bit (AD7792)/24-bit (AD7192))
+				   */
 
 /* Communications Register Bit Designations (AD7192_REG_COMM) */
 #define AD7192_COMM_WEN		BIT(7) /* Write Enable */
@@ -81,12 +83,15 @@
 
 /* Mode Register: AD7192_MODE_CLKSRC options */
 #define AD7192_CLK_EXT_MCLK1_2		0 /* External 4.92 MHz Clock connected
-					   * from MCLK1 to MCLK2 */
+					   * from MCLK1 to MCLK2
+					   */
 #define AD7192_CLK_EXT_MCLK2		1 /* External Clock applied to MCLK2 */
 #define AD7192_CLK_INT			2 /* Internal 4.92 MHz Clock not
-					   * available at the MCLK2 pin */
+					   * available at the MCLK2 pin
+					   */
 #define AD7192_CLK_INT_CO		3 /* Internal 4.92 MHz Clock available
-					   * at the MCLK2 pin */
+					   * at the MCLK2 pin
+					   */
 
 /* Configuration Register Bit Designations (AD7192_REG_CONF) */
 
-- 
1.9.1


