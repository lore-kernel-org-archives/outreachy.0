X-GM-THRID: 6249584432757342208
X-Received: by 10.182.92.226 with SMTP id cp2mr36683227obb.19.1455094766833;
        Wed, 10 Feb 2016 00:59:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.137 with SMTP id z9ls276636qgd.75.gmail; Wed, 10 Feb
 2016 00:59:26 -0800 (PST)
X-Received: by 10.129.145.193 with SMTP id i184mr36459911ywg.32.1455094766033;
        Wed, 10 Feb 2016 00:59:26 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id tn7si250955pac.1.2016.02.10.00.59.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 00:59:25 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id fl4so619336pad.2
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 00:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=bXAS2+k6tvGUmNCjUexvxW9+We3MW8JB+W/hVfaM/GE=;
        b=PEeeRJL8eTAwqBEMtHvNIjvs7rYij9rSN1zIQ8AzGk7hknhoslD9qVKHwQg99rmCBW
         yJ/I+7QrfJILkglqs9XCK6NWV3OyUfkzQZqGdnZSTc45RR9KTunLr9no1i7t3Rq6wM3o
         0l7Yfp2tOR4VAvwgtBCMO30oO2jlE8I3kvC6iuxlMnIEZpsmjNTKQfTxo8AfLQweNbkg
         ffIdR+5dVX3d6E4uXGk0irZJJ4mEfBALmJ9GkowzKQWvzVxhvBUqPTPWYQscZvurg2M2
         a4qNHK3aasM/xxarr00o3GgIOxIFTeFrbc3+wCUmrPtQsHzUcV9t6E8d7nd9fJG65JWT
         QsqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=bXAS2+k6tvGUmNCjUexvxW9+We3MW8JB+W/hVfaM/GE=;
        b=BXlrsVcTkUXMrbh2gZnTY0TJs8xZE6G31XU9EvhafEaLLm4S+45ZwyImEERJKOomDZ
         4ZdVEjIaq7pBLtXHs/9cavNKrp7p49R/dNYB8qb4cxa9V05sp5KTLviVvJ8YHWsdORbr
         JhnNDHubrVg42Im2IujeXvbAYnCPk99gZdZiOsE9UhNP37HxJbK+gETwXqEw27v8YpaS
         8wGIXJ5Sxiw6BfOsA5dtG3UmeU7grjhU/2EA8GYsYpLn9iKR81f+p9VRbF1BP+5EcTYf
         6f8/JTUICK1Z/mxX7dGBeJYKekpcebzIYMGocRIgUgps0ouBsJN6hkgFufTmL5DgZjUa
         lkeA==
X-Gm-Message-State: AG10YOS2ph4usycyBami9of1zOlysr4jVulHA0H/FmtWGyZXlsQ1vInuChabug14sHE6Ag==
X-Received: by 10.66.193.233 with SMTP id hr9mr57284131pac.18.1455094765869;
        Wed, 10 Feb 2016 00:59:25 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.72.191])
        by smtp.gmail.com with ESMTPSA id t12sm3360335pfa.54.2016.02.10.00.59.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 00:59:25 -0800 (PST)
Date: Wed, 10 Feb 2016 14:29:22 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/6] staging: comedi: comedi_fops: Remove useless statements
Message-ID: <20160210085922.GA14616@amitoj-Inspiron-3542>
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
 drivers/staging/comedi/comedi_fops.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index d6bcf73..35e79d7 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -2811,12 +2811,6 @@ void comedi_free_subdevice_minor(struct comedi_subdevice *s)
 {
 	unsigned int i;
 
-	if (!s)
-		return;
-	if (s->minor < COMEDI_NUM_BOARD_MINORS ||
-	    s->minor >= COMEDI_NUM_MINORS)
-		return;
-
 	i = s->minor - COMEDI_NUM_BOARD_MINORS;
 	mutex_lock(&comedi_subdevice_minor_table_lock);
 	if (s == comedi_subdevice_minor_table[i])
-- 
1.9.1


