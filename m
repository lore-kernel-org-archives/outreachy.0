X-GM-THRID: 6675173585137434624
X-Received: by 2002:a24:2584:: with SMTP id g126mr7729315itg.23.1554184962310;
        Mon, 01 Apr 2019 23:02:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7d48:: with SMTP id d8ls4464276ioq.6.gmail; Mon, 01 Apr
 2019 23:02:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx+/GiT/gUR38VMkOMLCuSn51tX0y/nYPvUHXMdrfpNJv1MpB3eMhM+Xw7RuN9/1DDcL0/b
X-Received: by 2002:a5d:954c:: with SMTP id a12mr557644ios.31.1554184961711;
        Mon, 01 Apr 2019 23:02:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554184961; cv=none;
        d=google.com; s=arc-20160816;
        b=mj2MfgZ/cOZJIKxrrBnOArphOuz1HT6KVcz7CZHzz7ydpIcMD3s2Loi/v1eQraq02i
         5HjeT+/0aI/oKYk+gso0IRargqf5sV/yPiMwCGDbLT0X9hBueA8K6cS9wyrpRH3EflEm
         tRWAW/4XPGpomZSOzGFO2wLqpQgrvKVB3YLxqsOHKwCKDXsoQ1ghqF77uTDiKX2XmjQD
         YsNP+ZK12t3UUqUDvkiyhOzNg/TTNGKDTBMVRPaq29+JFZmPcy8dzHBOIAzJ0Y8jMeIt
         PbY7to4puAD2JoZistyNw7oYJaoI9weMQZRMPGx6MJfS6xoAQxZW+sGeMIqc5DmeWhz9
         1Zow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=GL2f/xoRS1RrX2nKu82Sm1RYLr0CyU69TMYlARMrFKI=;
        b=zMtNENy/DSt8hV9xI9NKN9Q1XBM6Hn/84HniQ3ZKkpMEFhbogloxz0mNGQ1tTmyUw/
         OR4v1p35XbHidW2owJa4VwNDrTvB8nlcY/XFImrwWg4pcOQQIVXM445b8TjX67qsz5fY
         Soet3fIaFG9Fphf+r69potyxUI8cnCm6glLNxUBVOqyRh6ckv3LgSFyqqymPrR6h0qJ2
         7TinogiS73KR0llPBfuTen2GHnuhUzP8YyWs2sdlAAMufQfBjbeEYq2M4shQ+ZTuC5tG
         Ee5gOR9bXNgDpiiobLhrZ/njQKWDVZYmgxAIc7YwjB+a6ZbOtir5aLvPVSrdV/SzBYYm
         IuTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=NALsQtWD;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.80 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic313-21.consmr.mail.sg3.yahoo.com (sonic313-21.consmr.mail.sg3.yahoo.com. [106.10.240.80])
        by gmr-mx.google.com with ESMTPS id n6si561786iod.1.2019.04.01.23.02.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 23:02:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.80 as permitted sender) client-ip=106.10.240.80;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=NALsQtWD;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.80 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1554184959; bh=GL2f/xoRS1RrX2nKu82Sm1RYLr0CyU69TMYlARMrFKI=; h=From:To:Cc:Subject:Date:From:Subject; b=NALsQtWDXn25IwYt3JKPim842g+eR1BufZnYnKoIti8iwjqkHjL35pPpyBgaloM03VbaHVu2fJZVu+4OZ6XSQVptrs/CMrFyRok/OzkCN0dXqBmZoLxVZufycydnn/eT0m3GkgbuE5h/pgr7/3CBLgJUtE4fN2Lz0RaDr/kiShuh+54ZO0yBjJ+8q7ExREw5t5M4m2HjKrADnC2rU7LTQT1tq9WU99mrRkEHfGR05UmdfO2umP2u5qK8sjJK0mSaJC/DUA3j6vb/9k2XNfUMS3MEdl7zNoO5OxxNGLERtL11XyoASZOLin8n9bbzOJafdjKW4RlUPNDCUql/cSZUsw==
X-YMail-OSG: 2Myx4WMVM1l4RFO.6qZ9Pn1QYtwi5r8zUtLE71QEfuNsQBmZKDfuAcdRG9_o_Cm
 mWgJL7HygTQ5deXe9NP4e2kLi_C1QGDVunXA0e9jI.xSfFxOMmzWkfvaqwgBKLg473hyZTnmAPy0
 7mBl7XY3_n0nFh15c1gabbRrBjI.gyDnQKf1DO_gkClusEyr_pu6E4e2Kr.PfXcZ71dg7OPghgIH
 FqOvJNc0G7cQHfnn2WT2FwTgk_AxNmypnXQxxVjRWWd51QXBdJT7ZZBC3IKO3.fIHr76mr75QZSn
 g4LnEtPeWkFp4vn41RskMqrbeYrg7BhdPV4QNMXs.4LIUjwX6WNgaPl8W5diGWsBatBwtgbJiHEl
 dFG9CdUtqovrfHtz6kDqcOSWrwjmA8j1tcLt2GZTpsW1TuU_CF9AgBj5iJpP3spsaBv.QdONL63E
 4Hnnjz0Zt3ooRhIzGNIisfAzNeuGikR9HipCqIRdGBqlluyt8ItshhtpooC6cuNkQVLUaADkpy5G
 Gruv.coW_OIszBpOBa93vYlhkYYWgn5bxSuP5dWzb4lwf9dBLNSlzGpW3ynVnpX1kpztfKxWPKzs
 dLOEuYYFnbjtF9vU00t8Pk5t59gm8h0RpRljtp.IEIN_.hCI4q_BDF5Keqk5MNbmV_G4CiC6vADE
 STI.NetT43V1WRKouAH6hdPD3nEAJ2kqwiPbBp0JLkEjBREpUzzJbGQV93LLbGUwKGslTp.__br4
 JZ_HKKZ1jE13iXIAv.nyjqwmTtykG7mmqJRI69ileZ3VHgl2LgRQt8ZwJt7HN_V9c_epnkrbvMct
 yz8YkJStzDkbHz6XtU7ZuSLc6xCpBwKhjtP7P9.qbrXHXATHnUVoDuKYKxuFUJwCvPeEOQdCO3nC
 KZgxnM_mySwKu97_LgH8JtcEog4xYmc_zELFGIOx1YsZ35Jmmzl1eANbShwSdL6_F90p9lAzOVxf
 aPJLl1jSZCatmUybVoYb1pr0_oqB4TBsFwhSa5dgaTZ9gQynQiAyvIlfCYABQoNN.fENmOIBe7u1
 TMQfqwm6SA0x_yzs2kcex03rWKvEuFW0TKa9ru..iyfNoWOEHRZFpMO67r9YVdJ7A8wEhsCmqNu6
 gVhZv1CxPJXGHlhctaUHlqSh7dufetwJo
Received: from sonic.gate.mail.ne1.yahoo.com by sonic313.consmr.mail.sg3.yahoo.com with HTTP; Tue, 2 Apr 2019 06:02:39 +0000
Received: from 210.212.93.46 (EHLO localhost.localdomain) ([210.212.93.46])
          by smtp431.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 742726d1f3be9d287c2a67c4e8cf26ee;
          Tue, 02 Apr 2019 06:02:36 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	matthias.bgg@gmail.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH] staging: mt7621-spi: Remove parentheses
Date: Tue,  2 Apr 2019 10:41:56 +0530
Message-Id: <20190402051156.6749-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unnecessary parentheses around right hand side of expression.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/mt7621-spi/spi-mt7621.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-spi/spi-mt7621.c b/drivers/staging/mt7621-spi/spi-mt7621.c
index d260b42ff328..0e0e67280b00 100644
--- a/drivers/staging/mt7621-spi/spi-mt7621.c
+++ b/drivers/staging/mt7621-spi/spi-mt7621.c
@@ -302,7 +302,7 @@ static int mt7621_spi_setup(struct spi_device *spi)
 
 	if ((spi->max_speed_hz == 0) ||
 		(spi->max_speed_hz > (rs->sys_freq / 2)))
-		spi->max_speed_hz = (rs->sys_freq / 2);
+		spi->max_speed_hz = rs->sys_freq / 2;
 
 	if (spi->max_speed_hz < (rs->sys_freq / 4097)) {
 		dev_err(&spi->dev, "setup: requested speed is too low %d Hz\n",
-- 
2.19.1


