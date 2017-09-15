X-GM-THRID: 6465897502179590144
X-Received: by 10.176.17.234 with SMTP id q42mr15134666uac.21.1505459077821;
        Fri, 15 Sep 2017 00:04:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.222.13 with SMTP id v13ls6188222iog.40.gmail; Fri, 15 Sep
 2017 00:04:37 -0700 (PDT)
X-Received: by 10.129.178.129 with SMTP id q123mr15428570ywh.109.1505459077128;
        Fri, 15 Sep 2017 00:04:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505459077; cv=none;
        d=google.com; s=arc-20160816;
        b=vHem7EgBaQnbif9bnY1yyeqdu0F2Iaac2IRxYdA0k86i3zkGTdi8XlvCckGujTOaWD
         ab+j5ZdRKMU3909DvcIECQ4ro7lEf5JFKQ6OLbYJiOJmqboszHX2glQG/1iWUdaSrPUJ
         UyvJbuqC50BRYBXKzeoCSGN7j/5FM8u6midu0bLXPfe/4VKkahYVJscYKKLjJzXl1JaE
         IRBzsYusUUauIwJRFfrourvu5JgcHwIuxxlZ0GMgJs1GFAMKJF55gi1TqOrwXaqa0JpF
         vm2SH+D1XkNsp0AHIiNNU5cOMCnIMPWkJVkdjvLaqTJ0rVvqKhn2kKuKwofjOUGrkFZC
         bEwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=/zQktHGCM3OEHYcTyp94JJhbL9Pm8GWQZyR3JWVhb78=;
        b=Q1Ev2RSpq0mhl4VvxAb9vETq2S3UjA16Vm+rvbu2ViiX+deQ2KEERp9Mjq9W4Ju3Ad
         4yAFmk4Gb/tHwqtnR3t6zYdQuOt3i4smbSqlT3y4BTA4fUno91Wk9+NA/OPc0Zd6VHSg
         yDrNXIZ7PxWo94hYbaI7FsG5sX0VH7xZ0hzqsxa9ln3to3iUNmDRpDz0/tsD7HDod3Sc
         y7W6Q2ygdxkZPVVRYVNPDuAAuxIoGhaHpNQcHQZKqmhrZfiG8VSshODob6AH1k6YXIrz
         6lcO0P2YkOCTZiqc4u7pUVppnXvJTcs44IYE24xg0h155xlsadEv3wptKyTMYFJ/KbUm
         IMMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fbCuVmKk;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 8si20779pfa.0.2017.09.15.00.04.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 00:04:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fbCuVmKk;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id f84so842241pfj.3
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 00:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/zQktHGCM3OEHYcTyp94JJhbL9Pm8GWQZyR3JWVhb78=;
        b=fbCuVmKkJh8vcmzyL8cvad4jOD7LqGafQfcSh0XTMlVniSLdlMDJlp5i2NKarh2pJX
         EI1gjsMgf74fDeGESde53CCaOX3t8ZLRAGtebDSfLxduLIO66BoE+xzqefHI1vY+xd5f
         BTouL68cvDTvBuOXpM5teapaTgw+LQ2BoI9eGVehvQWrwmNTxP+BLOzDWVQUOGSGIBIn
         nIuXfPpOuxt9W78udaSFGb2sIDiUM5/nyiwnwq2VvSHjFoAb+hp2JbRUjccKzrTfYEez
         yQXpc4czBFPAmJt5Vx03C4fRmw6ny2WnGVmFB4LuHjLq09kaqxiQpgAmzJXbAf8xmnN+
         F5GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/zQktHGCM3OEHYcTyp94JJhbL9Pm8GWQZyR3JWVhb78=;
        b=XN7+HaL+UIdCnU3yC1axEXQJ+wVJaDrEl1Aakxm86+9EYHX8PxuXxjwUqsgcKVkvkt
         R/iKj1yTXqd+p6NlGH1Pt9o3L/sguAIUcgJo50eHC1SFpBx3CBwaSqa3sC/+g3lTJ1JF
         JU7SxfPtJlLZyWRG1fU09mf6AevI6Ui0IxtaVl2lhxJ9er+wPQ0/0Nu81jnGA4TbSCyg
         HwdUcSnZm8vNZutlQ31XTj9SGjdwt1MIWMkITPgaKuFo1upxfFlX80/r5Wb/tZA3Swiu
         pAgYE9Ixfm7xcr2uLlvUDBS4Dgmbbf3le3lXhKWLxOHTZ8f4N/tTL5ZltbyN08bHIt02
         YZcA==
X-Gm-Message-State: AHPjjUgf1HANsO99KeFcwLkpx0bWkORU8QTuMh/LfwkXc/htwbrS3Gfs
	EFVj8m0LR5mZQg==
X-Google-Smtp-Source: AOwi7QBkoN6gzsYqhl8joUeJLtmc/+isFjm1QAwzX6QwVTM9aNSkVPsyLA1OqG8tOCLxbefRbrvF4A==
X-Received: by 10.84.252.129 with SMTP id y1mr11862514pll.107.1505459076735;
        Fri, 15 Sep 2017 00:04:36 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([14.139.155.24])
        by smtp.gmail.com with ESMTPSA id d18sm800948pfk.11.2017.09.15.00.04.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 00:04:35 -0700 (PDT)
Date: Fri, 15 Sep 2017 12:34:30 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: pi433: Merge assignment with return value
Message-ID: <20170915070424.GA18122@meghana-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Removes the unnecessary assignment of retval preceding
the return statement.

Detected using the following Coccinelle script:
@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
 drivers/staging/pi433/rf69.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/pi433/rf69.c b/drivers/staging/pi433/rf69.c
index c4b1b21..f5b90aa 100644
--- a/drivers/staging/pi433/rf69.c
+++ b/drivers/staging/pi433/rf69.c
@@ -690,9 +690,7 @@ int rf69_set_preamble_length(struct spi_device *spi, u16 preambleLength)
 	/* transmit to chip */
 	retval = WRITE_REG(REG_PREAMBLE_MSB, msb);
 	if (retval) return retval;
-	retval = WRITE_REG(REG_PREAMBLE_LSB, lsb);
-
-	return retval;
+	return WRITE_REG(REG_PREAMBLE_LSB, lsb);
 }
 
 int rf69_set_sync_enable(struct spi_device *spi, enum optionOnOff optionOnOff)
-- 
2.7.4


