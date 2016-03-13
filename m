X-GM-THRID: 6261584556721176576
X-Received: by 10.107.150.133 with SMTP id y127mr15543346iod.34.1457890954029;
        Sun, 13 Mar 2016 10:42:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.72 with SMTP id e66ls3894957qge.51.gmail; Sun, 13 Mar
 2016 10:42:33 -0700 (PDT)
X-Received: by 10.13.248.4 with SMTP id i4mr15091954ywf.20.1457890953492;
        Sun, 13 Mar 2016 10:42:33 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x244.google.com (mail-qg0-x244.google.com. [2607:f8b0:400d:c04::244])
        by gmr-mx.google.com with ESMTPS id y131si1160767ywc.0.2016.03.13.10.42.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 10:42:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) client-ip=2607:f8b0:400d:c04::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x244.google.com with SMTP id t4so10776894qge.1
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 10:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=KcghdCHbaULttiGWgviN/wkJwTaeLIuVd+ldA7suOhc=;
        b=Wnju2CgRy9JudrA21stWIk6uM3DNAi22ae5zx4xDbgUHEC+u6onjoN1VJsKlEi6n81
         oZRW6D/GAiGgjbVlQPPLYORXJpZAa7FHWZ5FP+RMXsciSRC/tF1zVpDq+TavhHMp6pVg
         tgNk2XfmpJFH9rgwD/O8MuYuoV8yWZU/ogsiGX4frDRZ468iPW54y77rA6xots4wxlJH
         sVLd2ViC4kTbhbmpn+wkpe25QN5gyHcUERwBol2fSuyGPOcPXBViOPCek3wEIcSSpHl7
         DvGCJfptAkmdL5L61xD4NG5N/rhEOIq79k0STEBhLRyubaU5Gobo/FkXw4iMohZ6UY2L
         VClg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=KcghdCHbaULttiGWgviN/wkJwTaeLIuVd+ldA7suOhc=;
        b=UByyYN6RcdiTNlxoJeD6riy4u6CQwkg0n7D7PXS8vnr9Nh0HOsOQ31l4btb7a2RNBw
         9MFXDqHNXu39PE1m0jmZJNt+IrPceZySaiGXhw0CXTxwsCs7vnAeCfc4KSTgLAcinVNJ
         IjXu07aCSdOYynYD68Y8E35TQfL0C9dRZ/qVxmroj8UcR2ryOJWeEP544Vl0HMJqTB4j
         ob158EmVWTPxCi+hPekpx4h6F6e7TpFhQRHZ7qXKcPnWpusUxTqHXU3tIpZTNbEbQF5x
         I4J1kNUD5H5W5LKQvcna9RHS8BUnFvgIcDyfOzHzX3qc5nN6phr1+6ig3mwhmc16yl9t
         UQXg==
X-Gm-Message-State: AD7BkJKbuKLKk/Oze0tryN51+MiFWh6daj5xzasxeON6Qnd4xfBeQvQg09zxNg0kM645OA==
X-Received: by 10.140.107.182 with SMTP id h51mr25022331qgf.53.1457890953194;
        Sun, 13 Mar 2016 10:42:33 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id s9sm8575878qks.42.2016.03.13.10.42.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 10:42:32 -0700 (PDT)
Date: Sun, 13 Mar 2016 14:42:30 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 4/8] staging: dgnc: renames PrintName variable to avoid
 camelcase
Message-ID: <ed58b2b7a35fa0edc9504e5c0b06e4cb6590b4a5.1457890698.git.juliana.orod@gmail.com>
References: <cover.1457890698.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457890698.git.juliana.orod@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes a checkpatch issue by
renaming PrintName variable to print_name,
avoiding camelcase.

CHECK: Avoid CamelCase: <PrintName>
+       char            PrintName[200];

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.h | 2 +-
 drivers/staging/dgnc/dgnc_tty.c    | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index b826e53..513a5ac 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -208,7 +208,7 @@ struct dgnc_board {
 	struct tty_driver	serial_driver;
 	char		serial_name[200];
 	struct tty_driver	PrintDriver;
-	char		PrintName[200];
+	char		print_name[200];
 
 	bool		dgnc_Major_Serial_Registered;
 	bool		dgnc_Major_TransparentPrint_Registered;
diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index 285a724..8a68fd8 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -236,9 +236,9 @@ int dgnc_tty_register(struct dgnc_board *brd)
 	 * we are when we get into the dgnc_tty_open() routine.
 	 */
 	brd->PrintDriver.magic = TTY_DRIVER_MAGIC;
-	snprintf(brd->PrintName, MAXTTYNAMELEN, "pr_dgnc_%d_", brd->boardnum);
+	snprintf(brd->print_name, MAXTTYNAMELEN, "pr_dgnc_%d_", brd->boardnum);
 
-	brd->PrintDriver.name = brd->PrintName;
+	brd->PrintDriver.name = brd->print_name;
 	brd->PrintDriver.name_base = 0;
 	brd->PrintDriver.major = brd->serial_driver.major;
 	brd->PrintDriver.minor_start = 0x80;
-- 
2.7.2


