X-GM-THRID: 6331967538741641216
X-Received: by 10.129.5.216 with SMTP id 207mr14613760ywf.6.1474276464760;
        Mon, 19 Sep 2016 02:14:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.13 with SMTP id f13ls3077764ioe.45.gmail; Mon, 19 Sep
 2016 02:14:24 -0700 (PDT)
X-Received: by 10.66.85.37 with SMTP id e5mr3725850paz.118.1474276464215;
        Mon, 19 Sep 2016 02:14:24 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id h124si6169147pfe.0.2016.09.19.02.14.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 02:14:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id vz6so6726798pab.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 02:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=6bgZTotvN9NVX4HhPA8570m6DCs8clLeN3ojdppXZYQ=;
        b=F1EezJ57hkvSXGntKbefItWBxS4glWAKhS/wkPrs9T14ic1SkB6Dboxw3XGXqdTRjD
         tjoTxErrg/6jV8SzlRd2aYhUqXv08Xse0eQWFAL7YIveqeEWJ11mVN9gy2C9bXbkYyuq
         ZaD6QDwhf0mcDX+En4WAmWSCiQ2wX8njFM2yVWWP06IWymPpHa4xkYMsu0to8+mATAvR
         c9HAyl9beXIlB5hLL3mOUx3tYZs5+qEpg9RlBKf0YxJk2wEQ0yQ2O/g8jPnhkh0uiYlh
         7Gd7jU8fU8PZ1Fpa94x+Pg7N5BuC/nK4Av7j+LfpWUfJrBPd58Fj63kxADpJz+tp0DNf
         IK6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=6bgZTotvN9NVX4HhPA8570m6DCs8clLeN3ojdppXZYQ=;
        b=SsMq/4w2OeQJhvmkJdGvMpFxkQNgLG2qPp/6LxLkCmnX3xuw6pBSW+63ksci2CSE1E
         MBOUAcPqNZyikvDp1KLqGbOC1rf/baA+H23/rBguQ1b4/JfZ0SObW7R7577cwAl4gsVz
         O/c0TAOMzCrlsVELgYna94fPxa27FVWg3G88VlcKVE1ytLwBzn2amEC2urpCMNLHjr7X
         EC9hjB1UsZlvy/RZ6Jl4Cz8XlnrPJKMKVWu4mY62JVl+GihqlwtFjuphNilORfmql3AF
         AXdvh9p5xn9iqr0eR92Q4p/lhq8BFjP9FrhTGF0Qdm1ZnyOD90V8Tc+7lmxotcz1lAjw
         U4ZQ==
X-Gm-Message-State: AE9vXwNz8e6ibacQOlCLRVwWD3XTFimwMo+JMGc2kq1/uWhZX6CVAOUbIddWAvsoD8uK4Q==
X-Received: by 10.66.241.65 with SMTP id wg1mr44649022pac.155.1474276463829;
        Mon, 19 Sep 2016 02:14:23 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.188.202])
        by smtp.gmail.com with ESMTPSA id zb14sm24184460pac.4.2016.09.19.02.14.22
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 02:14:23 -0700 (PDT)
Date: Mon, 19 Sep 2016 14:45:04 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] Staging: rts5208: rtsx: Use x instead of x != NULL.
Message-ID: <0240f1081da0e08d77cf548bbee1a3c31bec08e7.1474275111.git.bankarsandhya512@gmail.com>
References: <cover.1474275111.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474275111.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Use x instead of x != NULL. This patch was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/rts5208/rtsx.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index d75fa8d..d7554f4 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -131,7 +131,7 @@ static int queuecommand_lck(struct scsi_cmnd *srb,
 	struct rtsx_chip *chip = dev->chip;
 
 	/* check for state-transition errors */
-	if (chip->srb != NULL) {
+	if (chip->srb) {
 		dev_err(&dev->pci->dev, "Error: chip->srb = %p\n",
 			chip->srb);
 		return SCSI_MLQUEUE_HOST_BUSY;
-- 
1.7.1


