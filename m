X-GM-THRID: 6249584377858097152
X-Received: by 10.107.16.87 with SMTP id y84mr38601703ioi.2.1455094753786;
        Wed, 10 Feb 2016 00:59:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.134 with SMTP id g128ls184330ioe.45.gmail; Wed, 10 Feb
 2016 00:59:13 -0800 (PST)
X-Received: by 10.50.183.39 with SMTP id ej7mr8434593igc.3.1455094753517;
        Wed, 10 Feb 2016 00:59:13 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id tn7si250901pac.1.2016.02.10.00.59.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 00:59:13 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id c10so657207pfc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 00:59:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=GeeJh4f5JygmQmEz4/Uo4+fnSs48Zr/6jktMjl/gAeQ=;
        b=OboaHXqLzUlRrzEt1+E5t5tp3G+uCbnIO8Dg+vJXfeJT1+V1jPDC2gF4/3wTACCdl7
         Qz0qYgDGTpmBS3cXnmzSMk0ZBWnVX7as8TvPed3cEUTpMb6TOfp7tI0p1VR8BqytuG8o
         CfXQqSxdVJN6AeqOBoqbb2TNSeXrpR2lnlpDGo0BKWVPuQlJ2Oythk8BIGQ4O5b8awv+
         6UwAX5fxP+ru409E6uPS7gAgfy+aHQufQuoOdLy8Uq9CDWvNFhKutO2o7SCmMhQg8O4c
         mxYpbYYUoAQ3ExVJ6rQ69h+ZeitJa3lerTmBacHBCOaZLIb6kF3CAoSEJliWIQWvB53C
         Ihxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=GeeJh4f5JygmQmEz4/Uo4+fnSs48Zr/6jktMjl/gAeQ=;
        b=AN1pqC9ybZNB4H6AOfBmwqyxfGZrN3fru7nS8LdMMf60AGMVoDsvCIF/SWNMIO/0M0
         sSlm0PH5Ua/zObCf9hghEWoUsORxNE3OzL/PMPOZCeNrO029coXjBphqcSBl0V57yTBn
         kyOrAMmo323p6HJYbBaomc0z76DkR7TrxqWDSDdQhDFUsmRSrHZeia3rYkdNIotNWkQP
         MW5sIllMn2TV8ziZ862icTfPb03NS+GxoQOfPShtt3fhbra1lTrrmLJnBca+Zvn/wamo
         XdXU/5g0s+DHnNRXWZ5mqOcMB/RXJ8mbgQ+zOi1B23bojApNp27BIVQ8OjScakk/9A4g
         r5aw==
X-Gm-Message-State: AG10YOTVGLZuprGfOvDbnTLzOwTI/KSrT16ZVfWiGgyPSsELTPibfWZqSVF21uQHO9pUew==
X-Received: by 10.98.18.207 with SMTP id 76mr55918278pfs.53.1455094753355;
        Wed, 10 Feb 2016 00:59:13 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.72.191])
        by smtp.gmail.com with ESMTPSA id ux2sm3332534pac.46.2016.02.10.00.59.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 00:59:12 -0800 (PST)
Date: Wed, 10 Feb 2016 14:29:09 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/6] staging: comedi: drivers: comedi_8254: Remove useless
 statements
Message-ID: <20160210085909.GA14587@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Drop if conditions that have an unrequired return in a void function.

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
 drivers/staging/comedi/drivers/comedi_8254.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/comedi/drivers/comedi_8254.c b/drivers/staging/comedi/drivers/comedi_8254.c
index 0d5d56b..1feb2af 100644
--- a/drivers/staging/comedi/drivers/comedi_8254.c
+++ b/drivers/staging/comedi/drivers/comedi_8254.c
@@ -241,11 +241,6 @@ void comedi_8254_write(struct comedi_8254 *i8254,
 {
 	unsigned int byte;
 
-	if (counter > 2)
-		return;
-	if (val > 0xffff)
-		return;
-
 	/* load LSB then MSB */
 	byte = val & 0xff;
 	__i8254_write(i8254, byte, counter);
-- 
1.9.1


