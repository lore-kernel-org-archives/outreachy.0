X-GM-THRID: 6341139895139958784
X-Received: by 10.157.45.161 with SMTP id g30mr2700613otb.116.1476411683967;
        Thu, 13 Oct 2016 19:21:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.14.129 with SMTP id 1ls7316294otj.31.gmail; Thu, 13 Oct
 2016 19:21:23 -0700 (PDT)
X-Received: by 10.200.53.22 with SMTP id y22mr2710210qtb.58.1476411683681;
        Thu, 13 Oct 2016 19:21:23 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id t8si2454477vkb.2.2016.10.13.19.21.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 19:21:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id 130so1979631vkg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 13 Oct 2016 19:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=qnAOuEYcIOhX4osv7/eVipjwJoXrNH36CDoiib07F1M=;
        b=0fJI+YCeLEtq8Ubr8TiSgRjh7cF9y+171KXUyH+0UwnjWe4FeNvyCRcG1ypQ8ja9xw
         m2J/Qjbw5MIVuTy4WpHFnxIPbP7N61oWuNc0AcJmw6/tIfSzq0C9G+vM/E1oGL347lFR
         BuQX0xGLkyoRweFFzbyukVzjcnQaoCbvigD1v86v1yATJEmNZLrKqdvN7Knsl0axXM4M
         LBhTWY2OIGi9nxq+C1bfnvygzTn8GPnCzQPevaMIgCEDjh+A2KNEPRnRbZ29Cn0HjCpN
         QrALGEIdEKJpabCIv0o2kaTlHmpZ2hZdcxfv5PmM3qrc64G+DzdoFNFqgWbjTOJ2bO17
         hung==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=qnAOuEYcIOhX4osv7/eVipjwJoXrNH36CDoiib07F1M=;
        b=axczHdfMR40mlzdBRt7mgafeGnytRJ4OecvNjeOTD0OoWjQ7lvk20a73FDAOJ9yPlq
         Sg7lcOPmqxyDjOhjRyZs+cmtcjg2A6OjyvH/pVIpqEYwTQfd8fkJ/Ra5fZAczEgMU8RT
         U3m/qGOw4UemCCsnrDogv65ktuTixrnUs9x6JmgST50wi4ykipMng9EDncRNzEpnHZ8+
         MfnfUeJfVoCUrdTwIXo5nAviknxuo20zEMKEnCJdgjc5ziv9jBI2xe7W+06LmuiepgFy
         w6tatgn9pikY5me6mUqbke5koVEPOVKq+6Ghiyrx/ja+dv3dZUwSoAErB+n6RzbcY5Gn
         KDog==
X-Gm-Message-State: AA6/9RnzJ1a9YtMKXjWeODVnvWBYey8wGXzCTwwvORK0nb4eX9PKD9vC0/BdvCm8oPbxAw==
X-Received: by 10.31.183.134 with SMTP id h128mr6359878vkf.124.1476411683540;
        Thu, 13 Oct 2016 19:21:23 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id m12sm6547586vkd.3.2016.10.13.19.21.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 19:21:23 -0700 (PDT)
Date: Thu, 13 Oct 2016 23:21:16 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: lidza.louina@gmail.com, markh@compro.net, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: dgnc: Add const qualifier to struct declaration.
Message-ID: <20161014022116.GA5477@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Const qualifier added to struct declaration to make the code more
efficient.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
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


