X-GM-THRID: 6249603310238564352
X-Received: by 10.182.109.233 with SMTP id hv9mr4995527obb.18.1455099161309;
        Wed, 10 Feb 2016 02:12:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.92.203 with SMTP id b69ls281171qge.5.gmail; Wed, 10 Feb
 2016 02:12:40 -0800 (PST)
X-Received: by 10.13.238.130 with SMTP id x124mr38425322ywe.53.1455099160701;
        Wed, 10 Feb 2016 02:12:40 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id ui7si328155pab.0.2016.02.10.02.12.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 02:12:40 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id yy13so706203pab.1
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 02:12:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=b4GR817sJ8Sehp0TxjVkiTfY/QpFyY/bwU1goKNQMio=;
        b=OwZC66c+D4OYNHk2wfxFQreK+INIWlluSh/myJQglrZOp4G67cUmZRRkwc92t9s6TP
         WHT+K9M88W51JtSL1hU0vXJYQ4TJ5aa8Ud3E9moZsMktwudodoo3/atgAMpj0pbCWvh9
         cwuJ12SSu9to0kmWk9FuNIuySGVY3MNGg875efnfp84KM0D3bCcSSiljRNV9+gTISm9M
         ZkjkPKdlJCzobmv6skymF9ai0HjquPVtSPEh9XgwpVW+zsumq47F72RPiF6+DF7IHHMa
         B3Sv7XAVWiAqpa269BasOMQqH2GeHIxdXsEC7gPSQ2mwn3SXwQqBxIdmnCYs9Z4X6KX5
         f/Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=b4GR817sJ8Sehp0TxjVkiTfY/QpFyY/bwU1goKNQMio=;
        b=iWyEVuyQ49bX+ogkl6x5NQB+7Wk8hwchrrcnpa0wyWL0iQa7ss/kQqsrRNycjoiWpE
         QnRH19yZjLPYV4z38BhgfPZ3iS3sP46kg/uAIDwOBuspDhpvTuR3sN7MeKnKY+IPkwTa
         BgNhV2+bTc43VGhxwHC7LycDbpSQZIUbTzVHc8h3YdqHhwN2gWtdhDTYCp7zlbSfXFfj
         FDattyMicEK/tn76MIP2BNIg1fikZn/CqBsakKIS9YltvcCLp6EqTK5oG+MMv484wetE
         V0W2RG3yM2atZfo58CADgQRGSOhTEiCkMeGt7UxGGE1YYwvSJYnIwktZGC9ye9YHp+RV
         N5lg==
X-Gm-Message-State: AG10YOQ+YIduYdlrfaSYrQW+i2U5IBr3ZDka0z7dj6GnNlicyMLIDxUUy7IIdxnmexepBQ==
X-Received: by 10.67.1.129 with SMTP id bg1mr10740496pad.63.1455099160532;
        Wed, 10 Feb 2016 02:12:40 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.72.191])
        by smtp.gmail.com with ESMTPSA id 74sm3957144pfs.33.2016.02.10.02.12.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 02:12:40 -0800 (PST)
Date: Wed, 10 Feb 2016 15:42:37 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/5] staging: comedi: drivers: comedi_8254: Merge if
 conditions
Message-ID: <20160210101237.GA29034@amitoj-Inspiron-3542>
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
        -Merged if conditions instead of dropping them.

 drivers/staging/comedi/drivers/comedi_8254.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/drivers/comedi_8254.c b/drivers/staging/comedi/drivers/comedi_8254.c
index 0d5d56b..e00d467 100644
--- a/drivers/staging/comedi/drivers/comedi_8254.c
+++ b/drivers/staging/comedi/drivers/comedi_8254.c
@@ -241,9 +241,7 @@ void comedi_8254_write(struct comedi_8254 *i8254,
 {
 	unsigned int byte;
 
-	if (counter > 2)
-		return;
-	if (val > 0xffff)
+	if ((counter > 2) || (val > 0xffff))
 		return;
 
 	/* load LSB then MSB */
-- 
1.9.1


