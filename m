X-GM-THRID: 6406607470592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f04d7bc1ed043b39
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.8.67 with SMTP id p3mr3502924wia.7.1425447056184;
        Tue, 03 Mar 2015 21:30:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.36 with SMTP id n4ls109572laj.27.gmail; Tue, 03 Mar
 2015 21:30:54 -0800 (PST)
X-Received: by 10.112.189.227 with SMTP id gl3mr357658lbc.2.1425447054598;
        Tue, 03 Mar 2015 21:30:54 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x229.google.com (mail-we0-x229.google.com. [2a00:1450:400c:c03::229])
        by gmr-mx.google.com with ESMTPS id i7si1025395wif.0.2015.03.03.21.30.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 21:30:54 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) client-ip=2a00:1450:400c:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x229.google.com with SMTP id q59so7089054wes.3
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 21:30:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=8ix6etzmxCOKAfLeuksxQuhEdXZSLUHTKH+bfb/OLjc=;
        b=c4kAtzYOx02isCNwprqjTZBu8Jz/8CtZJKlhKnLYwVwJNsSa0aYzScB0p5Bt3Ka9zE
         k9RmoBUHCmGj31OGfonI7AtAbF2S8KZxOF2i46EYnd5Q+4VIAyQwRGrMXT+mA+84e49C
         hZug9M299VVDJKkhKJehtESpvO3pys0TPS3yZvaYdm4Qpriaw4WyJZkYcHl9oH8FqLTG
         6KFxO8x9oXogfR0Zz0NEWV+RDg4/fRE/DT586Avc1mXFqi0qNLSsFapVpNB1JgrHnGbc
         U4QM35ayvd+REH3JhTnSouc5JGVgRO2m3H1ZmuG1n/htWF8YeqLUlggd04DzwPMoeps/
         XlAg==
X-Received: by 10.195.12.167 with SMTP id er7mr4553259wjd.54.1425447054535;
        Tue, 03 Mar 2015 21:30:54 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id pp10sm2705964wjc.31.2015.03.03.21.30.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 21:30:53 -0800 (PST)
Date: Wed, 4 Mar 2015 07:30:49 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 04/13] staging: media: bcm2048: remove extra parentheses
 around right bit shift operation
Message-ID: <57256f9cfccb8ed20912588df7c5f68687aecfad.1425446659.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around bitwise right shift operation.
The case handled here is when the resultant value is assigned to
a variable. The issue was detected and resolved using the following
coccinelle script:

@@
expression e, e1;
constant c;
@@

e =
-(e1
+e1
>>
-c);
+c;

@@
identifier i;
constant c;
type t;
expression e;
@@

t i =
-(e
+e
>>
-c);
+c;

@@
expression e, e1;
identifier f;
constant c;
@@

e1 = f(...,
-(e
+e
>>
-c)
+c
,...);

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index 5382506..116251b 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -2245,8 +2245,7 @@ static ssize_t bcm2048_fops_read(struct file *file, char __user *buf,
 
 		tmpbuf[i] = bdev->rds_info.radio_text[bdev->rd_index+i+2];
 		tmpbuf[i+1] = bdev->rds_info.radio_text[bdev->rd_index+i+1];
-		tmpbuf[i+2] = ((bdev->rds_info.radio_text[bdev->rd_index+i]
-				& 0xf0) >> 4);
+		tmpbuf[i+2] = (bdev->rds_info.radio_text[bdev->rd_index + i] & 0xf0) >> 4;
 		if ((bdev->rds_info.radio_text[bdev->rd_index+i] &
 			BCM2048_RDS_CRC_MASK) == BCM2048_RDS_CRC_UNRECOVARABLE)
 			tmpbuf[i+2] |= 0x80;
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

