X-GM-THRID: 6338573002731421696
X-Received: by 10.157.35.137 with SMTP id t9mr4723123otb.105.1475814032001;
        Thu, 06 Oct 2016 21:20:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.122.12 with SMTP id a12ls1172462itc.22.canary; Thu, 06 Oct
 2016 21:20:28 -0700 (PDT)
X-Received: by 10.36.70.130 with SMTP id j124mr9390561itb.18.1475814028116;
        Thu, 06 Oct 2016 21:20:28 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x243.google.com (mail-vk0-x243.google.com. [2607:f8b0:400c:c05::243])
        by gmr-mx.google.com with ESMTPS id o72si1682797vkc.0.2016.10.06.21.20.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 21:20:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) client-ip=2607:f8b0:400c:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::243 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x243.google.com with SMTP id z126so1503845vkd.0
        for <outreachy-kernel@googlegroups.com>; Thu, 06 Oct 2016 21:20:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=flJEWTr9gC2t0s4fmmkkkgm3Zq7fjMGs5iJEYYwwgpA=;
        b=s2k/EGFXFqA5vCMZ4Ycv0aqFTQW4wMTPU4gaX5b+v/h7TWHYGWlvy45I4A2go23OTe
         Msev5kbUGST7Q6DpT3mRA/lm0LGi9EWhbAS/4OMuj7u6pOl5+J6pPEU0MI6RNWv4O3RS
         kMAzqKzUL2tT4AOu15s4ocpgrdW/Jn2RxYyeDqGhsABJJNomwzXnrotjFoc5htuMzOFW
         A3qAFZdJAu0XDq5WS1IQ1RCHkP0dVLjiLU41SHiA43EIhr5U3I38DfBtWeHeaj8SnfCj
         qPmCKKqdwvKczFOS87jPhywR8QJakMf4MSuIQTT1cQfKFHcymGE3G07DO4kcRRhUaZOl
         k2JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=flJEWTr9gC2t0s4fmmkkkgm3Zq7fjMGs5iJEYYwwgpA=;
        b=E1y/9+S4KcCJ8bmwGjUUcxwGK2gGUeeNwnpwJr15R90laTadHLRP+buRkzJFDdynqz
         etMKSHfNjKZsQ1ltCyT6q6MDzbZB2s6piXfPv5hNf3vzN+t2WOsjDAbYIbj2LY8zU+7d
         /AewNEnb6goDXgSVsJ/6svxFiBdoITAtRunTv519IRU3Xd5IMf5K8q9BCvJyMKKcgoES
         GvHGvRqSvgBhyNEOj3ktsAFetspJIZbxOtt2hLeFLf8GgEEYMHJJfa9udyDPS/Sj+cmF
         CPW3YVcfuAfrxg5VxSRDnbZli8c+kFmuZWPrTfhBYcYamfSBCes4t6n7qzuqD17KtWlA
         EIlg==
X-Gm-Message-State: AA6/9RnvQvAa3vvvbaVgXnoxCVQBrtdxFMDeRYbNmugkTV1R7v+6b1/gz9LE2zL68SJZSg==
X-Received: by 10.31.1.212 with SMTP id 203mr11594584vkb.99.1475814027938;
        Thu, 06 Oct 2016 21:20:27 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id q135sm5524589vka.8.2016.10.06.21.20.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 21:20:27 -0700 (PDT)
Date: Fri, 7 Oct 2016 01:20:23 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] staging: wilc1000: Format block comment.
Message-ID: <20161007042023.GA20391@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: Block comments use a trailing */ on a separate line

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index f08cf6d..572e57d 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -858,7 +858,8 @@ static int wilc_spi_init(struct wilc *wilc, bool resume)
 	/* the SPI to it's initial value. */
 	if (!spi_internal_read(wilc, WILC_SPI_PROTOCOL_OFFSET, &reg)) {
 		/* Read failed. Try with CRC off. This might happen when module
-		 * is removed but chip isn't reset*/
+		 * is removed but chip isn't reset
+		 */
 		g_spi.crc_off = 1;
 		dev_err(&spi->dev, "Failed internal read protocol with CRC on, retrying with CRC off...\n");
 		if (!spi_internal_read(wilc, WILC_SPI_PROTOCOL_OFFSET, &reg)) {
-- 
2.7.4


