X-GM-THRID: 6205609650776178688
X-Received: by 10.107.34.8 with SMTP id i8mr5015658ioi.2.1444856167060;
        Wed, 14 Oct 2015 13:56:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.244 with SMTP id 107ls433170qgp.24.gmail; Wed, 14 Oct
 2015 13:56:06 -0700 (PDT)
X-Received: by 10.31.182.10 with SMTP id g10mr4415384vkf.7.1444856166568;
        Wed, 14 Oct 2015 13:56:06 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id pe1si1036973pac.2.2015.10.14.13.56.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 13:56:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id rc13so64345055pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 13:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=REKel8UwREjIXf43evi+vyC3IdJu9xWFbLGGnsDHCyc=;
        b=c1dJ5LPiA0cwl0esLEEa3OEVTzjFu+juoyLvSpk/lmfAlx01blX/a4+vYrVSz6at5B
         QbmeTJMJG6eVkpt9zM8YFoRexGUQBzqiI/VqW6w9gP7wY6RR7Z2Tbwv88bxULdWV9V7N
         JeOmv5pgp3oWfBQc7NcCzMxY/lxbFKkVkfHhOhPd+WP5bBaoqNuItMeWy+dY3tKVA3rb
         qNq+lowNEQ2MyRhcCIPmIIM2Rai9Nl795bIM1nvaBAsKakpbH/D7LL7LGhtpK9WEfagg
         tCiST7rD4MOQdy6t9R1ACwLVppr0HAJu31Awamh8XGL6CHciLgUtwrtLU4n/aDt10f9G
         Bf4g==
X-Received: by 10.68.95.225 with SMTP id dn1mr5691179pbb.11.1444856166402;
        Wed, 14 Oct 2015 13:56:06 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.206.151])
        by smtp.gmail.com with ESMTPSA id qb7sm11349834pab.47.2015.10.14.13.56.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 13:56:06 -0700 (PDT)
Date: Thu, 15 Oct 2015 02:26:02 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/5] staging: unisys: Remove useless intialisation
Message-ID: <d94e93c26a76a85798f0c44f246d1b4023825f08.1444855933.git.amitoj1606@gmail.com>
References: <cover.1444855933.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444855933.git.amitoj1606@gmail.com>
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
 drivers/staging/unisys/visorinput/visorinput.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/unisys/visorinput/visorinput.c b/drivers/staging/unisys/visorinput/visorinput.c
index 3a1b24f..6e42d59 100644
--- a/drivers/staging/unisys/visorinput/visorinput.c
+++ b/drivers/staging/unisys/visorinput/visorinput.c
@@ -264,7 +264,7 @@ register_client_keyboard(void *devdata,  /* opaque on purpose */
 
 {
 	int i, error;
-	struct input_dev *visorinput_dev = NULL;
+	struct input_dev *visorinput_dev;
 
 	visorinput_dev = input_allocate_device();
 	if (!visorinput_dev)
-- 
1.9.1


