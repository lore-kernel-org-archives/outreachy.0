X-GM-THRID: 6341139895139958784
X-Received: by 10.200.44.7 with SMTP id d7mr4068774qta.68.1476491721672;
        Fri, 14 Oct 2016 17:35:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.128.36 with SMTP id b36ls3434954iod.51.gmail; Fri, 14 Oct
 2016 17:35:20 -0700 (PDT)
X-Received: by 10.36.189.71 with SMTP id x68mr37381ite.30.1476491720200;
        Fri, 14 Oct 2016 17:35:20 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id x14si2865229vkd.3.2016.10.14.17.35.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Oct 2016 17:35:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id b186so5671742vkb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 14 Oct 2016 17:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=DUS20nVTDKa+wxUnUBUcqJ8YerYN4/KNczJ82A3R3vE=;
        b=yWlKjLvRC48L6qxaWGHqzlLTZs6WfMcvtVCwXAlPyrD0MgHFEWMaA9lns0nF9Jk+7g
         rJFfPfIFPiZzv3nQcW2/H/0cL6frTmyH//bIyYjLApeYJu4A3P1TsCQjPlUSy/ZgfbOg
         1PYanAFMAduSJuPgDpozGmwZY3s/B5vKFWBGELebigjM+4uuNQJEGPfHesURfJQOz+CX
         APx5s0tMDxM+SE0NWvzvuS5EjAWKoJprNtQaqtY6Fv9dPnbxlyRzI1X1+k2kJOLOoq1s
         2otVdCEPqyUMdjTfWhP/5M0Y4KxPXq6BNHo4Dyr+BduuvDygfPM6/aqARkU4z56UR0Z3
         hBYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DUS20nVTDKa+wxUnUBUcqJ8YerYN4/KNczJ82A3R3vE=;
        b=bTi10hvJCO+g9AHSwiQXTd3BtWgwr4hT2EJfY8bYTq9MKTtMuoaVfmjfsmuXPaqq+G
         zJEg1h68DXy8n/3DgFofvlh1idP9I2HKXqX5w4Z9kFhLmYa+4eqiGzliX8ynA3fOfsT+
         udbbaMOWUg+M7BHPP9rdBWCG+9NnUIFCOPXkmrrYlgX8FVVKeBls6WkVs0rZinQBS2sj
         YDlJ1VV5FqNmfMVUkaManni3esmAuoDWxYovl82/HdB4JCeNgqgvg5e7x9EbhLfuUjW0
         mPyJwlLRYOQVbIf0z3CzP+e/zPKr0Mbz1xt8v2Dz6V3YK3zplaRGoHpHNrBkOhSGuSHB
         XySg==
X-Gm-Message-State: AA6/9RmkHsiRGZJWLd2Uci0VdkC0q/789q3jxw/jJkacNePmlE+VNCzc5QXPABcC8e+0BQ==
X-Received: by 10.31.244.14 with SMTP id s14mr11032503vkh.31.1476491720029;
        Fri, 14 Oct 2016 17:35:20 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id 18sm192426uag.16.2016.10.14.17.35.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Oct 2016 17:35:19 -0700 (PDT)
Date: Fri, 14 Oct 2016 21:35:13 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: lidza.louina@gmail.com, markh@compro.net, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: dgnc: Add const qualifier to struct declaration.
Message-ID: <20161015003513.GA16186@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Const qualifier added to struct declaration to avoid data overwrite
during runtime and improve security.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---

 v2: Rewrite log message.

 drivers/staging/dgnc/dgnc_driver.c | 2 +-
 drivers/staging/dgnc/dgnc_tty.c    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.c b/drivers/staging/dgnc/dgnc_driver.c
index fd372d3..6576674 100644
--- a/drivers/staging/dgnc/dgnc_driver.c
+++ b/drivers/staging/dgnc/dgnc_driver.c
@@ -93,7 +93,7 @@ struct board_id {
 	unsigned int is_pci_express;
 };
 
-static struct board_id dgnc_ids[] = {
+static const struct board_id dgnc_ids[] = {
 	{	PCI_DEVICE_CLASSIC_4_PCI_NAME,		4,	0	},
 	{	PCI_DEVICE_CLASSIC_4_422_PCI_NAME,	4,	0	},
 	{	PCI_DEVICE_CLASSIC_8_PCI_NAME,		8,	0	},
diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index ef9a45b..cf8aefd 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -50,7 +50,7 @@ static unsigned char		*dgnc_TmpWriteBuf;
 /*
  * Default transparent print information.
  */
-static struct digi_t dgnc_digi_init = {
+static const struct digi_t dgnc_digi_init = {
 	.digi_flags =	DIGI_COOK,	/* Flags			*/
 	.digi_maxcps =	100,		/* Max CPS			*/
 	.digi_maxchar =	50,		/* Max chars in print queue	*/
-- 
2.7.4


