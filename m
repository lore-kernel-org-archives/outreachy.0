X-GM-THRID: 6249584519546929152
X-Received: by 10.50.97.98 with SMTP id dz2mr8613021igb.7.1455099207510;
        Wed, 10 Feb 2016 02:13:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.131.22 with SMTP id f22ls161752iod.62.gmail; Wed, 10 Feb
 2016 02:13:27 -0800 (PST)
X-Received: by 10.107.136.160 with SMTP id s32mr37798103ioi.14.1455099207254;
        Wed, 10 Feb 2016 02:13:27 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id tn7si277890pac.1.2016.02.10.02.13.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 02:13:27 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id fl4so702295pad.2
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 02:13:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=DYqudb6uDG0Drv1HDFAxVIygjiQSC6HOht6dEl3B/xk=;
        b=hRo35PuWjrV9TTDGmKFFclFGr7HT6LKZ9AcjtaSiDE2xdP5Qj1BarBKbOHJukQVEzi
         A3HKx8KF9MlClgWMziAh3eOGtDNT56CvmcBM40951EAt6yMG0xGs1N2sIC6X8GLLYcUb
         5+N00EZJBzUgXBD9Yv2QOGmukI/rrUhmFlhemNL9UdGMSpDxbWnBlnra8TQI6ZgCK17V
         5pr21JMKPR+yI7ibaybbCfXM9AwTr3c6Jl2qQnfgVh2t/kRDDh5dVhkPzDRI3FVMgW6y
         SB7SmiKZWEVCtD4L4AfSuAHmTkSYV+zm5QIBnvloHLaUH3v29XUGceLSwm4Fn7IU7wgr
         5P8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=DYqudb6uDG0Drv1HDFAxVIygjiQSC6HOht6dEl3B/xk=;
        b=Tk9+NvHoZk3fPcNcuMCwMmUG6HD9kuQwbseMfZmZtVje8wmD4PhIxcAzrhEF/YOg7t
         L9hmrdvUDxPe7FSJjMsM4CUJRVKBEabayQ890iorqHefTdE1SDZyUagYVMhVdQoJvJ94
         TiqqsoiYK6PmNcLklB/pEMnpd3ysLgNKTATQApNkuAJQwf+3UWM256sr94R5x1PVJSSR
         k74y+YvQjYt3gcimCm9ubuqH6/5WM7uKtujXPVoRE75G+BPl6IplB+KswbyvP/ivvBvR
         PgEoS1XdiQ1LLJSxl20Mod3AqjijqEQPxSOH4P8YclYa309eYnFyz0Ems0+nUaNihyuy
         5yGQ==
X-Gm-Message-State: AG10YOTyhimIhT5awtEidd1uSKnHFIdznfsuvZq9bnxML140VpeMNNhJbfuYESX5ejZP/w==
X-Received: by 10.67.1.129 with SMTP id bg1mr10744656pad.63.1455099207117;
        Wed, 10 Feb 2016 02:13:27 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.72.191])
        by smtp.gmail.com with ESMTPSA id dg1sm3962661pad.18.2016.02.10.02.13.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 02:13:26 -0800 (PST)
Date: Wed, 10 Feb 2016 15:43:23 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 5/5] staging: comedi: drivers: pcmuio: Merge if conditions
Message-ID: <20160210101323.GA29119@amitoj-Inspiron-3542>
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
Changes in v2:
        -While merging use !x || !y instead of !(x && y)

 drivers/staging/comedi/drivers/pcmuio.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/drivers/pcmuio.c b/drivers/staging/comedi/drivers/pcmuio.c
index 7ea8130..d1d70fd 100644
--- a/drivers/staging/comedi/drivers/pcmuio.c
+++ b/drivers/staging/comedi/drivers/pcmuio.c
@@ -319,10 +319,7 @@ static void pcmuio_handle_intr_subdev(struct comedi_device *dev,
 
 	spin_lock_irqsave(&chip->spinlock, flags);
 
-	if (!chip->active)
-		goto done;
-
-	if (!(triggered & chip->enabled_mask))
+	if (!chip->active || !(triggered & chip->enabled_mask))
 		goto done;
 
 	for (i = 0; i < cmd->chanlist_len; i++) {
-- 
1.9.1


