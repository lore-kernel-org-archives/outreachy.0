X-GM-THRID: 6335076166751223808
X-Received: by 10.107.3.96 with SMTP id 93mr7271541iod.3.1474999861502;
        Tue, 27 Sep 2016 11:11:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.54.199 with SMTP id l190ls3307498itl.2.gmail; Tue, 27 Sep
 2016 11:10:58 -0700 (PDT)
X-Received: by 10.36.245.4 with SMTP id k4mr1343685ith.28.1474999858388;
        Tue, 27 Sep 2016 11:10:58 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id e66si792373pfk.2.2016.09.27.11.10.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 11:10:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q2so1046378pfj.0
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Sep 2016 11:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SMXNm7uXFYoFGWsHc+XI44mAxkUx73PLuk5aDOhAr2c=;
        b=c6gs6czKQmMxts/VFaNuzAMcOWAn2fKbtVGnhItNGnLL+SAwBN1ZT3aKhnmbMaVrvv
         foD6boIoW9akLIiS2G67xW8JqUTqK9jTXDTIvF1k3jo++8+I5DFXHBa6FEuf9UaYDotZ
         ulfE0PDs89SC5bHIzpd25gtt6zIafa0qNN9k/uWEmc3WwDWIw3yqZoVim3TZECELrAEf
         DDjZA2/mbmqg1n4r4Cx/BfBCXonXBPdu0N6wx2Y8GdQwmdYmiHZLGJMiSSPMDM3+wWIv
         057yNoDUwnSgE7fIzEjaKwT5x/dvagDNtuP3kvajWfXBgsVDdDasNVndKoEpPyPh3lXt
         12jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SMXNm7uXFYoFGWsHc+XI44mAxkUx73PLuk5aDOhAr2c=;
        b=VjFyglM66BMzCvcUl6fYUFgvIQMUoJ/aaUbRk4Vj61eVbH1nAdsHgapnvPFRO7UAGt
         wyKie5gOuEALZRYM66i42O3lRWIbn1fJ+BHZ9WcCQ09CYNLK9HTJu+BfRVXEa7B6/uvX
         IczOUhsUQx4BpNZ1I/UA63d1Q7yi1iQncVwW5AZdUv+ra8U9UOiYmUpgt2eVT6rUHwnj
         xwiNcJkrj0IKILbBabum1vyexI/1uUg+oPXrMrBzLMuPkXN5Jv6okzwApXvbzfUzYEre
         Tp1e+MO3sJFLr9LHu9FkGZ45K1G/zvocGVgGzD7wahGcosP+2Z8FDB6CYZHoTy0c3ysv
         nwUw==
X-Gm-Message-State: AE9vXwOZfcnC+O6VsNFfeT/LldIdCIRU3fXTV/JVvKdB4+7TjrmeUk/f1q2BJX6P7IpL2g==
X-Received: by 10.98.102.81 with SMTP id a78mr50107266pfc.28.1474999858169;
        Tue, 27 Sep 2016 11:10:58 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.246.152])
        by smtp.gmail.com with ESMTPSA id 126sm6518134pfd.46.2016.09.27.11.10.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 11:10:57 -0700 (PDT)
Date: Tue, 27 Sep 2016 23:40:40 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Matt Ranostay <mranostay@gmail.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Subject: [PATCH v3] iio: temperature: maxim_thermocouple: Replace unsigned
 int with __be16/__be32 to fix endianness warnings
Message-ID: <20160927181039.GA16272@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix following endianness warnings using sparse:
warning: cast to restricted __be16
warning: cast to restricted __be32
Use __be16 type for incoming read data when storage_bytes equals 2 and
__be32 when storage_bytes equals 4.
Also, the patch fixes the following bug:
Variable 'buf' which is an unsigned int (32 bits) points to a location where
only 2 bytes of data are placed during spi_read(). These 2 bytes go in the
upper bytes. be16_to_cpu() casts buf to 16 bits. When storage_bytes equals 2,
(for thermocouple chip-MAX6675) this will work on Little Endian systems but
will give invalid data on Big Endian systems. The patch fixes this bug existing
on Big Endian systems for chip MAX6675.
Additionally, the patch removes space after a type cast as suggested by
checkpatch.pl.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
Fixes: 1f25ca11d84a ("iio: temperature: add support for Maxim thermocouple chips")
---
Changes in v3:
Updated the commit message
Updated the changelog to include explanation to the bug fix
Fixed the checkpatch issue: CHECK: No space is necessary after a cast
Added the fixes tag

 drivers/iio/temperature/maxim_thermocouple.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/iio/temperature/maxim_thermocouple.c b/drivers/iio/temperature/maxim_thermocouple.c
index 39dd202..01cad6e 100644
--- a/drivers/iio/temperature/maxim_thermocouple.c
+++ b/drivers/iio/temperature/maxim_thermocouple.c
@@ -123,22 +123,24 @@ static int maxim_thermocouple_read(struct maxim_thermocouple_data *data,
 {
 	unsigned int storage_bytes = data->chip->read_size;
 	unsigned int shift = chan->scan_type.shift + (chan->address * 8);
-	unsigned int buf;
+	__be16 buf1;
+	__be32 buf2;
 	int ret;
 
-	ret = spi_read(data->spi, (void *) &buf, storage_bytes);
-	if (ret)
-		return ret;
-
 	switch (storage_bytes) {
 	case 2:
-		*val = be16_to_cpu(buf);
+		ret = spi_read(data->spi, (void *)&buf1, storage_bytes);
+		*val = be16_to_cpu(buf1);
 		break;
 	case 4:
-		*val = be32_to_cpu(buf);
+		ret = spi_read(data->spi, (void *)&buf2, storage_bytes);
+		*val = be32_to_cpu(buf2);
 		break;
 	}
 
+	if (ret)
+		return ret;
+
 	/* check to be sure this is a valid reading */
 	if (*val & data->chip->status_bit)
 		return -EINVAL;
-- 
2.7.4


