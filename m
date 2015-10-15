X-GM-THRID: 6205781635135176704
X-Received: by 10.129.132.1 with SMTP id u1mr6323759ywf.58.1444896864923;
        Thu, 15 Oct 2015 01:14:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.102.65 with SMTP id fm1ls399870igb.6.gmail; Thu, 15 Oct
 2015 01:14:24 -0700 (PDT)
X-Received: by 10.67.4.38 with SMTP id cb6mr6570463pad.44.1444896864656;
        Thu, 15 Oct 2015 01:14:24 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id el2si1337674pbb.0.2015.10.15.01.14.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 01:14:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id ao1so15946924pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 01:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=OHxWvYyKn20+ZPjpQC2OOYez4BY5Hj/tG/uaKVebeVQ=;
        b=tGlTKvlnjzEpEUIsAtDe5z2PVpHJFZaXMkW4XGWkhT2itdbJgt2LCk7qkqqA1YkxC+
         nlv1ZugPJd1dZE/UXt0nvqo/ATcIf4W7gMahEwslgensgU2OJpWUmQ27SUYOs/JSlDPz
         xaa7Nl5ydBs71aBhnAqm59yfPbWcx/Qaw4dcClMbeOLJrnEUr7JJ/NBgGLFOHIXDpNal
         x3pWvIzLsB/OvoW6DvC7Gan1yCKvQZ1Vv5yAVPnffhLz58cGwy3xqlymfqfleyQ7BFLx
         mlQ8RiJC2F9IBxOeOSRtbd4BCLIUfD2MMjxP4XbezfhxwVF7Iqa1O2QbVcWKSCHxuIb8
         uc7Q==
X-Received: by 10.66.121.225 with SMTP id ln1mr8785886pab.86.1444896864527;
        Thu, 15 Oct 2015 01:14:24 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.84.71])
        by smtp.gmail.com with ESMTPSA id rm9sm13876873pab.14.2015.10.15.01.14.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 15 Oct 2015 01:14:24 -0700 (PDT)
Date: Thu, 15 Oct 2015 13:44:20 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 08/18] staging: skein: Remove useless initialisation
Message-ID: <6d35b85db57fb61779a91957746531bb9bd8fedb.1444895819.git.amitoj1606@gmail.com>
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
 drivers/staging/skein/skein_api.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/skein/skein_api.c b/drivers/staging/skein/skein_api.c
index 5bfce07..7f23803 100644
--- a/drivers/staging/skein/skein_api.c
+++ b/drivers/staging/skein/skein_api.c
@@ -128,7 +128,7 @@ int skein_mac_init(struct skein_ctx *ctx, const u8 *key, size_t key_len,
 void skein_reset(struct skein_ctx *ctx)
 {
 	size_t x_len = 0;
-	u64 *x = NULL;
+	u64 *x;
 
 	/*
 	 * The following two lines rely of the fact that the real Skein
-- 
1.9.1


