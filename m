X-GM-THRID: 6335417907044941824
X-Received: by 10.13.220.66 with SMTP id f63mr9293871ywe.129.1475079429583;
        Wed, 28 Sep 2016 09:17:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.165 with SMTP id 34ls1402511ots.13.gmail; Wed, 28 Sep
 2016 09:17:09 -0700 (PDT)
X-Received: by 10.200.34.169 with SMTP id f38mr9159174qta.68.1475079429034;
        Wed, 28 Sep 2016 09:17:09 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id um12si2274703pab.2.2016.09.28.09.17.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 09:17:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id r9so1590756paz.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 09:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=iitDn2kwluI0+sh5YQSVH7aAvjTITnZ0w3eUWdpruXw=;
        b=IfaJ3VlnMCbMYe6hNZCTjXqMYfljew7UBOYyl7ocW1hUjo4GfeU5TpyuMB3KElAdoP
         yWKyx6igDLTx9P2u37qf803MiJRZgnHCGiWAq9YSY7fwBSkktf6ckj3btXdP5l7YWr4+
         dsbP4qrCGe0IKPinY+MiqzgW46nHjbLgRvmxpVla8RAmzPqo/4a2L3fnWtkDlAPoQBKA
         dnHMCuDJyAxLk4S4GWtxh7V4krwwoMIRFpn5dT8sxjiAgEu3BF0wDjQY8uQ2bJf5p5kJ
         qgYdVq8CSW49oI19Or+CFhiVzVb33hqrS+ExJjMxyQKVEDyb42sa9w/wDPE0oZmQ59rY
         yUbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=iitDn2kwluI0+sh5YQSVH7aAvjTITnZ0w3eUWdpruXw=;
        b=MtqQWUiK4juG+fezkVW2SUNptZIybRJwfXtnxDv9Sz087iA7XG1rblJG9YzmpvF7SQ
         yq9mesRUXrQjB0FvdN+JnlpT8LBe7WWtxb/jnl77Ko4uzziqvQVzzjd7GAZGbvg6JOUv
         GNTqyyz4gCA8IUGXSiErgyWEPV+UFtz2BWraeMfb1jd+MGJXKDrVidGM85cMdEtxTO2i
         av+fwqDgiIu85cr3NYBv7mDZkhblmESniAbNLovybbbDolMUWcVuJwde34pPVon5iW0z
         61nXjHkaR3/Z3pvj6GdUjfz1MUo6NazolLAHs27TERUyJKn6BPusKIJ9htWbDaII1dPr
         ro1w==
X-Gm-Message-State: AA6/9RkOCUift3AqqCmuvLBBmfxWDxTXeE1Bw8pgQx7sJdNzXfSyf0Sr4AId3ptMc8pDDg==
X-Received: by 10.66.135.50 with SMTP id pp18mr31658517pab.18.1475079428814;
        Wed, 28 Sep 2016 09:17:08 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.172.176])
        by smtp.gmail.com with ESMTPSA id c4sm13775618pab.5.2016.09.28.09.16.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 09:17:08 -0700 (PDT)
Date: Wed, 28 Sep 2016 21:46:51 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: jic23@kernel.org, mranostay@gmail.com, knaack.h@gmx.de, lars@metafoo.de,
	pmeerw@pmeerw.net, linux-iio@vger.kernel.org
Subject: [PATCH v4] iio: maxim_thermocouple: Align 16 bit big endian value of
 raw reads
Message-ID: <20160928161651.GA28186@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Driver was reporting invalid raw read values for MAX6675 on big
endian architectures. MAX6675 buffered mode is not affected, nor
is the MAX31855.

The driver was losing a 2 byte read value when it used a 32 bit
integer buffer to store a 16 bit big endian value. Use big endian
types to properly align buffers on big endian architectures.

Fixes following sparse endianness warnings:
warning: cast to restricted __be16
warning: cast to restricted __be32
Fixes checkpatch issue:
CHECK: No space is necessary after a cast

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
Fixes: 1f25ca11d84a ("iio: temperature: add support for Maxim
thermocouple chips")
---
Changes in v4:
Reverted back to v2 with changed names for buffers

Changes in v3:
Updated the commit message
Updated the changelog to include explanation to the bug fix
Fixed the checkpatch issue: CHECK: No space is necessary after a cast
Added the fixes tag

 drivers/iio/temperature/maxim_thermocouple.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/iio/temperature/maxim_thermocouple.c b/drivers/iio/temperature/maxim_thermocouple.c
index 39dd202..066161a 100644
--- a/drivers/iio/temperature/maxim_thermocouple.c
+++ b/drivers/iio/temperature/maxim_thermocouple.c
@@ -123,22 +123,24 @@ static int maxim_thermocouple_read(struct maxim_thermocouple_data *data,
 {
 	unsigned int storage_bytes = data->chip->read_size;
 	unsigned int shift = chan->scan_type.shift + (chan->address * 8);
-	unsigned int buf;
+	__be16 buf16;
+	__be32 buf32;
 	int ret;
 
-	ret = spi_read(data->spi, (void *) &buf, storage_bytes);
-	if (ret)
-		return ret;
-
 	switch (storage_bytes) {
 	case 2:
-		*val = be16_to_cpu(buf);
+		ret = spi_read(data->spi, (void *)&buf16, storage_bytes);
+		*val = be16_to_cpu(buf16);
 		break;
 	case 4:
-		*val = be32_to_cpu(buf);
+		ret = spi_read(data->spi, (void *)&buf32, storage_bytes);
+		*val = be32_to_cpu(buf32);
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


