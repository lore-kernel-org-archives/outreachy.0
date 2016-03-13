X-GM-THRID: 6261584556721176576
X-Received: by 10.129.79.81 with SMTP id d78mr14847508ywb.23.1457888851941;
        Sun, 13 Mar 2016 10:07:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.40 with SMTP id i8ls359626igv.33.gmail; Sun, 13 Mar 2016
 10:07:31 -0700 (PDT)
X-Received: by 10.66.163.4 with SMTP id ye4mr15140706pab.23.1457888851661;
        Sun, 13 Mar 2016 10:07:31 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x243.google.com (mail-qg0-x243.google.com. [2607:f8b0:400d:c04::243])
        by gmr-mx.google.com with ESMTPS id s129si1236537ywb.5.2016.03.13.10.07.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 10:07:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::243 as permitted sender) client-ip=2607:f8b0:400d:c04::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::243 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x243.google.com with SMTP id 14so10733690qgg.3
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 10:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MUgDdqHB0Xcqn5poeCu+/bPGxZCBGg//CS4or1MkuvM=;
        b=RksHGD+kr8vG6itayQuaqaw1Wu0Lq52L20svLuvCHKKAiKmKEaDc4lZqU7AHReivcQ
         ES4xoYZMMqtkQP1koHneDHE2+e70/HTYdla+uIaElFimISD4Bmz3Srz72sxdKq9d3lTa
         5bQRJhqY+k9+UKiRaeVmCL4LBar8DjYOVt6MwQlkRAJ6TlRm6Iri51NlYHDiRT4ATy/7
         fBlXEUn+t4tFC3Bv/lQBUft5hfdAWcJKZPzZyxGyuGuaZr7ra0UpGfpww5M5BUHTTvt7
         WsJa/3JJDLVXggp8Iag8TerUAyqC/7SwA/OSZzZFqXQhFJoPkFNT138HjK6vtrfl7m4H
         kgsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=MUgDdqHB0Xcqn5poeCu+/bPGxZCBGg//CS4or1MkuvM=;
        b=TyF93CPkNxqstbyJG5Kpt6SgXQnMWwHWQ2e/gY7r58s39YVJFdNWPCGzUGhT1kT3wq
         hYwDAukKtgZ6r9O3neMpiQdqNJzOTVovCLj+nbnEB6sRFR97YrEQCeeFwsPAj7rKKtKu
         DvRKBNm+1GEh4VA8F7ktPXTML4whHBKmVgOpF4ChXJmcNlfpD9ir5i2qDmss/wckkNo2
         0FcqgstK+LI0ABRztZs/5EePbhZHfAs2C9J/DpY8v4ssQMCrJG5WiktnWBP/mMID/FI+
         p7vAQERocYr5JR3vFLfiMs928x9T8JWcOlufTFsoM2ahKgWfZCC0Fyra9jIbg3HuzF3D
         BemQ==
X-Gm-Message-State: AD7BkJLgJhwZUJayagaclR4YL3GG0zcc3UfuWMxTiR1R0HsRLbyV0JaaPiAmPDMFCFPYtw==
X-Received: by 10.140.196.85 with SMTP id r82mr25838845qha.60.1457888851369;
        Sun, 13 Mar 2016 10:07:31 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id f108sm8478680qgf.15.2016.03.13.10.07.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 10:07:30 -0700 (PDT)
Date: Sun, 13 Mar 2016 14:07:28 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/8] staging: dgnc: renamed SerialName to avoid camelcase
Message-ID: <f76d4183ca69cb4bc087a4f1c91ebe032e71c1bf.1457888423.git.juliana.orod@gmail.com>
References: <cover.1457888423.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457888423.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch renames SerialName variable in dgnc_driver.h
and its calls in dgnc_tty.c in order to avoid checkpatch
issues.

CHECK: Avoid CamelCase: <SerialName>
+       char            SerialName[200];

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.h | 2 +-
 drivers/staging/dgnc/dgnc_tty.c    | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index 483d1d9..b826e53 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -206,7 +206,7 @@ struct dgnc_board {
 						 */
 
 	struct tty_driver	serial_driver;
-	char		SerialName[200];
+	char		serial_name[200];
 	struct tty_driver	PrintDriver;
 	char		PrintName[200];
 
diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index bad4f61..2fe0d8c 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -180,9 +180,9 @@ int dgnc_tty_register(struct dgnc_board *brd)
 
 	brd->serial_driver.magic = TTY_DRIVER_MAGIC;
 
-	snprintf(brd->SerialName, MAXTTYNAMELEN, "tty_dgnc_%d_", brd->boardnum);
+	snprintf(brd->serial_name, MAXTTYNAMELEN, "tty_dgnc_%d_", brd->boardnum);
 
-	brd->serial_driver.name = brd->SerialName;
+	brd->serial_driver.name = brd->serial_name;
 	brd->serial_driver.name_base = 0;
 	brd->serial_driver.major = 0;
 	brd->serial_driver.minor_start = 0;
-- 
2.7.2


