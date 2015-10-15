X-GM-THRID: 6205781635135176704
X-Received: by 10.13.220.4 with SMTP id f4mr6279623ywe.22.1444897260317;
        Thu, 15 Oct 2015 01:21:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.77 with SMTP id 71ls609671qgi.28.gmail; Thu, 15 Oct
 2015 01:20:59 -0700 (PDT)
X-Received: by 10.31.178.196 with SMTP id b187mr6432646vkf.3.1444897259907;
        Thu, 15 Oct 2015 01:20:59 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id pe1si1269178pac.2.2015.10.15.01.20.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 01:20:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id ao1so16160397pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 01:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=4wlReoRYQromwbGHjfDhyJgSM2VIWqJw9WthSo+x7QM=;
        b=pADHOPotnmYUlRzpepBUcWJjgA0AqVcCb1baJkP3Ik82tOusLlJxyswnzFcxzyX3wk
         xKJSoEQEV8a2rT6ZBsurKb/W8d/U2euukujogBP747rPFn7wlDXm/ehJSHCiiuoH5oAf
         ljVVaoWIhTE0L0TN7JJV5q42jCcHjflPcD32NZC6H4kUgbLAifNx0DdoNSGfi7MQ11wF
         0Hyg6xyb63vlYX1/K8K+humHfPI/+jT6LeZNTWlmDnuUx66bGzkEGfJ9vZ/akl/kxHI0
         A6jZtK66dBTMTs1rwYqYZCd3NA05GaBqHOq6d23UaRf3rhTXCF+f6b/GlF1YjUjfNcOV
         Nq+Q==
X-Received: by 10.66.146.69 with SMTP id ta5mr8863025pab.46.1444897259744;
        Thu, 15 Oct 2015 01:20:59 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.84.71])
        by smtp.gmail.com with ESMTPSA id be3sm13797469pbc.88.2015.10.15.01.20.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 15 Oct 2015 01:20:59 -0700 (PDT)
Date: Thu, 15 Oct 2015 13:50:56 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 13/18] staging: rdma: ipath: ipath_eeprom: Remove useless
 intialisation
Message-ID: <89a2e6f89cd4b58d0c999803b118ad924d5f9ec1.1444895819.git.amitoj1606@gmail.com>
References: <cover.1444895817.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444895817.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove intialisation of a variable that is immediately reassigned.

The semantic patch used to find this is:

// <smpl>
@@
type T;
identifier x;
constant C;
expression e;
@@

T x
- = C
 ;
x = e;
// </smpl>


Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/ipath/ipath_eeprom.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rdma/ipath/ipath_eeprom.c b/drivers/staging/rdma/ipath/ipath_eeprom.c
index fc71819..ef84107 100644
--- a/drivers/staging/rdma/ipath/ipath_eeprom.c
+++ b/drivers/staging/rdma/ipath/ipath_eeprom.c
@@ -411,7 +411,7 @@ bail:
  */
 static int i2c_probe(struct ipath_devdata *dd, int devaddr)
 {
-	int ret = 0;
+	int ret;
 
 	ret = eeprom_reset(dd);
 	if (ret) {
-- 
1.9.1


