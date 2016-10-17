X-GM-THRID: 6342440494179549184
X-Received: by 10.98.129.130 with SMTP id t124mr7013860pfd.12.1476714502401;
        Mon, 17 Oct 2016 07:28:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.4.43 with SMTP id 40ls12856146otc.42.gmail; Mon, 17 Oct
 2016 07:28:22 -0700 (PDT)
X-Received: by 10.129.117.70 with SMTP id q67mr7198144ywc.45.1476714502060;
        Mon, 17 Oct 2016 07:28:22 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-lf0-x243.google.com (mail-lf0-x243.google.com. [2a00:1450:4010:c07::243])
        by gmr-mx.google.com with ESMTPS id r142si703488vkf.2.2016.10.17.07.28.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 07:28:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) client-ip=2a00:1450:4010:c07::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:4010:c07::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x243.google.com with SMTP id x79so27092224lff.2
        for <outreachy-kernel@googlegroups.com>; Mon, 17 Oct 2016 07:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7980voxvw1SqQ0s2I7vpiaXCgeybS4olAQ0esAxcGGs=;
        b=h9yFADUHDvJ/t7jquy+FhStVLHtA58nFLI0HK88zx0xKlFcYLCIQM8+3v1DxbIVRCc
         19N73K4sMABAqOlpTFt92Low3GiyZqk1DDuG+WPq2CABvuk3XlMaUV2qVPzZ5XJz6lli
         wVM+42eDNHXjB1HxKQfe1cV9XA8Y69jG6lB905SvSynyaXrkaH0R96cVClwhfKesXCsZ
         c9TxRWT6zcvChI6qMQTaSilJy7weacN0tz4HnpGuk/ud3HX1KcTZbLnnwFIBWVqlO6Mq
         vkuLqJfvJ1QJKXgDhpdHQ6+mCBt5/Fp2KQA9Rx7pf1CrotaNsuPkrbluVHpdqWWnYWVK
         5VaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7980voxvw1SqQ0s2I7vpiaXCgeybS4olAQ0esAxcGGs=;
        b=icRqbwp+J30bbU6+JdOFhWYjy8WL7o9OHa262rRANFP99LQPsqQhj5aMIu8FbNCiMm
         xiYPMmRi88ePzTB/Y8KJzCLI8sL5vzCc5HYuu0sIV39FXSWSpwWXSt6b0OiBqbsi+0lz
         nKQARmGemXQbTiu7Mx+XxTA0k92Istiwml+0q7wmHtzHgMWyZ/EQW9V0TYguZR2ec3Xv
         2GArPHW4YAEUcAXJ+9Ns5JJlb78xs0KdsYpg+m3VBZ6BlyADy3SU6Xna9SZ/LB42uwiA
         SuqRZx2kTUYo8xiVajFrHzoXCb3ap74+0AiVHwth09V5mRiUplPD2svxe0ZckcxWjcfL
         20LA==
X-Gm-Message-State: AA6/9Rm8kC2NrBbk33wGOVLFmQk3ICRxW/kRUgqob2IuertCkfhXYgAyXuuHVtRpgNv9yw==
X-Received: by 10.28.224.139 with SMTP id x133mr9109511wmg.6.1476714501601;
        Mon, 17 Oct 2016 07:28:21 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.81.89.162])
        by smtp.gmail.com with ESMTPSA id r1sm53534889wjc.43.2016.10.17.07.28.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 17 Oct 2016 07:28:21 -0700 (PDT)
Date: Mon, 17 Oct 2016 17:28:20 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: comedi: drivers: Make a read-only structure
Message-ID: <20161017142820.GA11340@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch add const qualifier at the declaration of the structure.
The structure become a read-only data, this increase the security.

Found with Coccinelle:
@r disable optional_qualifier@
identifier s,i;
@@
* static struct s i ={...};

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/comedi/drivers/addi_apci_3501.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/addi_apci_3501.c b/drivers/staging/comedi/drivers/addi_apci_3501.c
index 57f0f46..1fdc0f8 100644
--- a/drivers/staging/comedi/drivers/addi_apci_3501.c
+++ b/drivers/staging/comedi/drivers/addi_apci_3501.c
@@ -94,7 +94,7 @@ struct apci3501_private {
 	unsigned char timer_mode;
 };
 
-static struct comedi_lrange apci3501_ao_range = {
+static const struct comedi_lrange apci3501_ao_range = {
 	2, {
 		BIP_RANGE(10),
 		UNI_RANGE(10)
-- 
2.7.4


