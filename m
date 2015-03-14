X-GM-THRID: 8221215424512
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,35fc9dbaa0120918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.109.34 with SMTP id hp2mr6470828wib.4.1426297275018;
        Fri, 13 Mar 2015 18:41:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.6.33 with SMTP id cr1ls403693lad.47.gmail; Fri, 13 Mar
 2015 18:41:13 -0700 (PDT)
X-Received: by 10.112.148.10 with SMTP id to10mr2651509lbb.18.1426297273972;
        Fri, 13 Mar 2015 18:41:13 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x230.google.com (mail-wg0-x230.google.com. [2a00:1450:400c:c00::230])
        by gmr-mx.google.com with ESMTPS id gj20si245036wic.1.2015.03.13.18.41.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 18:41:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) client-ip=2a00:1450:400c:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::230 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggv3 with SMTP id v3so987480wgg.1
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 18:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=2uJUCBzY06ipSlEhnOrlKnvRQmUCmSAHE2nz61COHKU=;
        b=PzAKKa8u/uZNZAoXwFitH6LKFxg2+z3wpzd3lUOjfHvdEGDH4aq3P4HCgZQ2FiXeuv
         Lc9JugkM8hHOi9gLAJhtW99YHnJW8YIeVGMaPaLa01Y2FVXUAi7SROf1zPAu5eEPamyl
         QlBKW7Iiqq563+xoEu2SKTKyuC8HzpM4ermqyC9NGaVoMovlBeeGXa+TZCkwlCPtDrug
         j0fgg6ixVwf6yg7FTZrJGdbVn9yKJ+mQlOTzrKJ2hSNnfASqWnqLbatFSkLXUznkaVoP
         Kg19rvDjg4oALJ7vAw3m0igb0nYanLmgfAO5RTsPDNuhd5zMvh3vKia/UOjUCCwJ33N2
         pMag==
X-Received: by 10.181.9.107 with SMTP id dr11mr57320258wid.40.1426297273892;
        Fri, 13 Mar 2015 18:41:13 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id fm10sm5035861wib.7.2015.03.13.18.41.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 18:41:13 -0700 (PDT)
Date: Sat, 14 Mar 2015 03:40:33 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/6] Staging: iio: Use braces on all arms of if statement
Message-ID: <38207d31cade0692d205d011d4374ea4ee6d7b8f.1426296329.git.cristina.opriceana@gmail.com>
References: <cover.1426296329.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426296329.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Add braces to improve consistency when using if statements.
Found by checkpatch.pl:
"CHECK: braces {} should be used on all arms of this statement".

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/iio/frequency/ad9834.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/frequency/ad9834.c b/drivers/staging/iio/frequency/ad9834.c
index cc465d5..8e6cce5 100644
--- a/drivers/staging/iio/frequency/ad9834.c
+++ b/drivers/staging/iio/frequency/ad9834.c
@@ -111,9 +111,9 @@ static ssize_t ad9834_write(struct device *dev,
 		break;
 	case AD9834_FSEL:
 	case AD9834_PSEL:
-		if (val == 0)
+		if (val == 0) {
 			st->control &= ~(this_attr->address | AD9834_PIN_SW);
-		else if (val == 1) {
+		} else if (val == 1) {
 			st->control |= this_attr->address;
 			st->control &= ~AD9834_PIN_SW;
 		} else {
-- 
1.9.1


