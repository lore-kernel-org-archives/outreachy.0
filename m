X-GM-THRID: 6261584556721176576
X-Received: by 10.66.142.230 with SMTP id rz6mr15255074pab.31.1457890922312;
        Sun, 13 Mar 2016 10:42:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.104.67 with SMTP id gc3ls1377897obb.76.gmail; Sun, 13 Mar
 2016 10:42:01 -0700 (PDT)
X-Received: by 10.182.236.34 with SMTP id ur2mr15112919obc.10.1457890921338;
        Sun, 13 Mar 2016 10:42:01 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qk0-x242.google.com (mail-qk0-x242.google.com. [2607:f8b0:400d:c09::242])
        by gmr-mx.google.com with ESMTPS id w69si1097982ywa.3.2016.03.13.10.42.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 10:42:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) client-ip=2607:f8b0:400d:c09::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c09::242 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x242.google.com with SMTP id q184so5412743qkb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 10:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MUgDdqHB0Xcqn5poeCu+/bPGxZCBGg//CS4or1MkuvM=;
        b=VcXEk6xVJMWx7gnZva5EajJ/bWYsi0YGvwXSdq+Qq76IOvKEQ61f2aVTdBTMOoEk7J
         RxOccaTGblvKHmzgAaX0yb8pQnomvKqV8C1ftEuWItnUsM+2ooAmAOEGJP9hNFlrU39a
         ZibcS4SiPO4Dmoz9fYFjdGS7VrGHdKtBFQvH9CwDiCk91fTJitU0lpFD4BGTBeo6LPIm
         9BAyXXRdUdKOW5Vct0mAyOtNet6JEFujl36Of4MlUiZUs2cu+X5PKMWxXlnE99g85x5v
         UuqQtIpadMqRkuyw4OXm2JJZZTL+2taAcDNU0XuTLE3mJ816iC1ed9+wLqCPNmq9T9vl
         mFEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=MUgDdqHB0Xcqn5poeCu+/bPGxZCBGg//CS4or1MkuvM=;
        b=Yq47vOskCX4p/WbLydzLMN3/myzZsIxQlqTxQyJqOYiDc2FM6yi9ggYVVanc8I6rjO
         lV4ojqzmngwSrpNXz5fBRAj/988TSFnb7hb2NTFasjh0pLm2Lq3pISOC2kWDfv0KD7YD
         PROHuYrWyqJfbvmFkjXAtR8dGAcqsMKvvcD50oBU57rQnyudwkvU3XW+lwSfzTQ7wSvj
         KqCP0jhHNgESeudRzjaJr22YUgVcbGAvEehUeC2fLJc/zCngRcN2ZAOj1fmOOEIpWrwh
         OS1kEJzt+j1k42c+hYBc4L59xneAYWz9WFcjFV/09HaDnEKZOn1I5hltnRUwj7rDzAuH
         5Jpg==
X-Gm-Message-State: AD7BkJIroEpcA6n12x6y+Cez30SaE2aLZTTyHWeBjhLYl1ThNNdiM6gOj+H5jNbn9OD1mg==
X-Received: by 10.55.217.17 with SMTP id u17mr25181747qki.108.1457890920971;
        Sun, 13 Mar 2016 10:42:00 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id w66sm8532364qgd.26.2016.03.13.10.41.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 10:42:00 -0700 (PDT)
Date: Sun, 13 Mar 2016 14:41:57 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/8] staging: dgnc: renamed SerialName to avoid camelcase
Message-ID: <f76d4183ca69cb4bc087a4f1c91ebe032e71c1bf.1457890698.git.juliana.orod@gmail.com>
References: <cover.1457890698.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457890698.git.juliana.orod@gmail.com>
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


