X-GM-THRID: 6261584556721176576
X-Received: by 10.50.85.37 with SMTP id e5mr9949897igz.12.1457888899720;
        Sun, 13 Mar 2016 10:08:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.166 with SMTP id n38ls1285796ioi.67.gmail; Sun, 13 Mar
 2016 10:08:19 -0700 (PDT)
X-Received: by 10.66.193.225 with SMTP id hr1mr15055867pac.34.1457888899421;
        Sun, 13 Mar 2016 10:08:19 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x244.google.com (mail-qg0-x244.google.com. [2607:f8b0:400d:c04::244])
        by gmr-mx.google.com with ESMTPS id w69si1091556ywa.3.2016.03.13.10.08.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 10:08:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) client-ip=2607:f8b0:400d:c04::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x244.google.com with SMTP id 14so10735436qgg.3
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 10:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=KcghdCHbaULttiGWgviN/wkJwTaeLIuVd+ldA7suOhc=;
        b=1HCdwLSD7T/0Om1tz6DZ5gdR++W39WQvzGeiSZiIbxKVwE0ZD19CJphGjsw/Hrm47z
         rvOjb65tIowzPxbM1NTvf8Q24dACIpC+qp7ueG+CGRqwghPlvRzU57ZS6n8+HVtwAXIK
         1wpIWC0Fgs2MbrUDUcbgzmAbAhfXqV/QjwrZy133PdksGpbzInWfcnRzwOV9rdY0G8a1
         1Ue4exVwhDW2lrX5ZimGMlDyDOYaLvylVA6zD+prmjmuQjm3NHSjvOPJKgHT3amEfHbs
         wTNs+GuDQln336z/lh8FHV8PNArgzr71PIzm4cd2ooQf3B5ynCbO9j604J2DfNdtqVts
         A1bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=KcghdCHbaULttiGWgviN/wkJwTaeLIuVd+ldA7suOhc=;
        b=K0AcAtPK9UITFuF+kHe+e+FkYUr1nKQ1237aVR4rfb3sgqjHVmMNOrqRTrYZr3zIVN
         nqQd/pxqy4mVO57XFWGHQxopbfoIOi6JufWJo4IcM98m4mKzppW3mG0O6yHBX0gBCRCX
         5QmkWmpepVQdvyRsQ6c4kJ14cVam9sUE/Lbwig1f1uuBWogedN8kd3eiHPVBTviMmzij
         xnYePG5tQrE6Awle8DV3n2he4Mlk2UaWSkcL722AK+eQu5eannLkhgPGoqOSvkhTNP2d
         aUxL3+lu1zmyqF+XGwydNh8eJu5Me8p7jaH9KhdmSaaFhR0Y1KFeT03OrSP75VUfggxF
         m1bQ==
X-Gm-Message-State: AD7BkJJ5N9vkSmTNfKq5HhvKx/2psrcFHHbR3TwRJst6OMQfKtBW7DtIKkuiSFWNwQy/KQ==
X-Received: by 10.140.225.6 with SMTP id v6mr26830674qhb.0.1457888899007;
        Sun, 13 Mar 2016 10:08:19 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id s104sm8469463qgs.22.2016.03.13.10.08.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 10:08:18 -0700 (PDT)
Date: Sun, 13 Mar 2016 14:08:15 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/8] staging: dgnc: renames PrintName variable to avoid
 camelcase
Message-ID: <ed58b2b7a35fa0edc9504e5c0b06e4cb6590b4a5.1457888423.git.juliana.orod@gmail.com>
References: <cover.1457888423.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457888423.git.juliana.orod@gmail.com>
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


