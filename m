X-GM-THRID: 6249584519546929152
X-Received: by 10.13.234.77 with SMTP id t74mr20077984ywe.12.1455094786061;
        Wed, 10 Feb 2016 00:59:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.211 with SMTP id h19ls180247igt.9.gmail; Wed, 10 Feb
 2016 00:59:45 -0800 (PST)
X-Received: by 10.50.62.113 with SMTP id x17mr6877336igr.13.1455094785819;
        Wed, 10 Feb 2016 00:59:45 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 79si294543pft.0.2016.02.10.00.59.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 00:59:45 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 71so653864pfv.1
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 00:59:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=jzpPv1xmfLvBZM6sOHJhX9zuSMfwzqrsa6nDlyk2NdI=;
        b=cdeZraOw8HYE/AZDXhzukucJKaGl87HlkFmaOhHiUm2vg5BdFuXsOqK4nRF7cdD7Wu
         1TVXi/85ZMfN+9HwsWu2slKSQN9w1MlOMgahvdQa9yhYTZr8jOPOgdf8dLmEzvI0R+eS
         Ev9o834+w9ciVIjpzyRhCLFB1yDKjxUBpMMAoZWwxRvqg2la7DBSI+YDJJiAvK7r7b2W
         /9frODNJtzfaA0HeHiJGFhcIQb9VEl66keJmukPxnvr7fzgn7y5UWqn1wDJ4pY0Ez6bs
         9qRE1LhOahdAyADPnL8RXJRf8nkOYKDVC2i2hfwThOBuOL+JiRmY9kimNMsOOND67YRi
         EY4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=jzpPv1xmfLvBZM6sOHJhX9zuSMfwzqrsa6nDlyk2NdI=;
        b=dLI3j9utGZZzzQe3X8ZmCGOFjYZFIAlrldgtQknk/XrOwX5EpOVhCo21GQFGyizGb+
         7xssL7NokDwiw2Mucb96UZbieEtyFLVPAoMo34btTb8g9EyoHvOfFyVKKo0ImJTBMsb0
         1qQuKYT3D6KdiOTC+2if+dWRt2C1z302bKMkMMa99tMER+iiM9UBDIauq4uMA7XIQ6cz
         NtLzPRd9Mp0tcBuGpizxWOMExQoVyL78phX3kBAl9SSCklXwJDBsJy/Rj3L4sAUC+dZa
         aQ82aQtl9zSnBSbqpqt5IywPbeAtT0Js9RSBoQcJVnYL/JM3urBOG+1pbcXkdYsv1BXG
         8G0Q==
X-Gm-Message-State: AG10YOS8mAyKZm+Ma+qjEI12SaJd28XKeFqI3rs76XN+1pD/xgUR8SFXlOejCZCH4MKSQg==
X-Received: by 10.98.12.29 with SMTP id u29mr56138335pfi.116.1455094785663;
        Wed, 10 Feb 2016 00:59:45 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.72.191])
        by smtp.gmail.com with ESMTPSA id a21sm3372295pfj.40.2016.02.10.00.59.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 00:59:45 -0800 (PST)
Date: Wed, 10 Feb 2016 14:29:42 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/6] staging: comedi: drivers: pcmuio: Merge if conditions
Message-ID: <20160210085942.GA14651@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Merge if conditions with the same statements.

Found using Coccinelle. The semantic patch used to find this is as
follows:

//<smpl>
@@
statement S;
expression e,x;
@@

* if(e)
(
{ ... return ...; }
&
S
)

* if(x)
(
{ ... return ...; }
&
S
)
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/comedi/drivers/pcmuio.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/drivers/pcmuio.c b/drivers/staging/comedi/drivers/pcmuio.c
index 7ea8130..d303b48 100644
--- a/drivers/staging/comedi/drivers/pcmuio.c
+++ b/drivers/staging/comedi/drivers/pcmuio.c
@@ -319,10 +319,7 @@ static void pcmuio_handle_intr_subdev(struct comedi_device *dev,
 
 	spin_lock_irqsave(&chip->spinlock, flags);
 
-	if (!chip->active)
-		goto done;
-
-	if (!(triggered & chip->enabled_mask))
+	if (!(chip->active && (triggered & chip->enabled_mask)))
 		goto done;
 
 	for (i = 0; i < cmd->chanlist_len; i++) {
-- 
1.9.1


