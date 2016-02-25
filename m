X-GM-THRID: 6255098629488377856
X-Received: by 10.182.105.133 with SMTP id gm5mr38521047obb.41.1456378705827;
        Wed, 24 Feb 2016 21:38:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.248.226 with SMTP id yp2ls83749obc.38.gmail; Wed, 24 Feb
 2016 21:38:25 -0800 (PST)
X-Received: by 10.182.254.35 with SMTP id af3mr38615295obd.37.1456378705543;
        Wed, 24 Feb 2016 21:38:25 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id yd9si940035pab.1.2016.02.24.21.38.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 21:38:25 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id fl4so25983912pad.0
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 21:38:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=IXkwMyzNh9mgWT/LKng3fx2FxZZU7SENv/VsgPNsv0g=;
        b=dlZo6wl7+OXvbjUeAaBxvJXr6qw/aD1YmAkHD6Y5Az3pPn8gw7I/m3c8t3Bzj6M1AU
         3oalPqS2W24HUAegina0CAjhFVUFIiaNhCF7sE2AHlbGmb33bM3LDx4f1bquQmqpHSQq
         Rz0y5w0/RQNjXbl6OGAIm4c2mnbBpQnjn4+tbTnOdxna62u/HM2kNHbsR1MGLLGeGM9H
         ivDYhw7fAriyDN+bhFbeNVIf/s4Ts7qItRmcV45By6jwUhHTGUlnqSCgejqc9uiUStNP
         G5bhyswlpqQsXvYk8kx4QOVDuWzBSzS7wyD1iFj4zOoVuTFopFLNl1hnfut2B/0jkF42
         +gRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=IXkwMyzNh9mgWT/LKng3fx2FxZZU7SENv/VsgPNsv0g=;
        b=aNlEtkk476sZxWV8ESbxRwzwvtRyu6C0EKDDU3DcW/DMTo4CMlLXl3roQ/ev86GCw1
         X9JXsDzzLDveufMgSRVilXAw5ojg1bPRoGauuX958D1yAHsRirlpYJ/IzZJ+hbNQqiHW
         CBG0zPPJySOqTr2ib4MuSqBQMGNrPFpIvuCUCGdoSqMFaEtoC/Lf1IYteEuSW110x3JQ
         8Jyzi0XnbnVFCmL27o5Y0INRwk2alznJk/CRyOuX2wUQNwv76cE+CnR6/s21xM7nUPlo
         apM9wE2NsNt2/ejRHKCB3KfPLxVuHeYWSI/QTZfAIBjlozDibo/VDWunewRUi2fZemWJ
         fysA==
X-Gm-Message-State: AG10YOS9WW6MOyYPAbROf0V2EJl1JwpFtsE1nLUug4DO/k5DOuk9mnervOvtRMLUZYH92Q==
X-Received: by 10.66.252.73 with SMTP id zq9mr60000905pac.16.1456378705357;
        Wed, 24 Feb 2016 21:38:25 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.175.16])
        by smtp.gmail.com with ESMTPSA id 87sm8787514pfq.93.2016.02.24.21.38.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 21:38:24 -0800 (PST)
Date: Thu, 25 Feb 2016 11:08:20 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/6] staging: rts5208: Remove unnecessary pci_set_drvdata()
Message-ID: <fe5fb673ab07e82be78ad39ff53d5da896891827.1456377485.git.amitoj1606@gmail.com>
References: <cover.1456377485.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456377485.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Unnecessary pci_set_drvdata() has been removed since the driver
core clears the driver data to NULL after device release or on
probe failure. There is no need to manually clear the device
driver data to NULL.

The Coccinelle semantic patch used to make this change is as follows:
//<smpl>
@@
struct pci_dev *pci;
@@
- pci_set_drvdata(pci, NULL);
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rts5208/rtsx.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index 7882193..b231946 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -1001,8 +1001,6 @@ static void rtsx_remove(struct pci_dev *pci)
 
 	quiesce_and_remove_host(dev);
 	release_everything(dev);
-
-	pci_set_drvdata(pci, NULL);
 }
 
 /* PCI IDs */
-- 
1.9.1


