X-GM-THRID: 6205598685907124224
X-Received: by 10.68.217.74 with SMTP id ow10mr4263767pbc.10.1444853536571;
        Wed, 14 Oct 2015 13:12:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.202 with SMTP id h10ls1863617igt.38.canary; Wed, 14 Oct
 2015 13:12:16 -0700 (PDT)
X-Received: by 10.107.27.7 with SMTP id b7mr4823807iob.30.1444853536135;
        Wed, 14 Oct 2015 13:12:16 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id wl2si1061856pab.1.2015.10.14.13.12.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 13:12:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id ur7so14388069pab.3
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 13:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=VajO6N6JwwXxoVyFn8zUk5squBBwQYWotFtApwOEjW8=;
        b=az+yIhmSwHuswugbKeKF5CQkBd3KAdKjbwNSjcriMogDDZobDNJFG1+WrhGeu6oJvn
         k9wPzea5sIQDr/wob9fdMauLWBqWCjWFAinOQZepxWPTRr8IiNFjLORm/Jj53K5Gwoi5
         2pV4IwXFgZqeKtPZfBAxR1jFeex701KIWMBo6CwES/0+/OleAp+838e0ir9xDTVeWi+P
         VldgZmj2fgcpxKu4qvjk65+3niC7G4b4VPTpB5oR/BJFLkBBWXwHrTngwiBriZeSEJQs
         Cbm8vDXzM2d/1U78seM0w/gOKt6Ck+ETAwG996jvGxi1s+fk9QiM/ZMcs6lOQG4O7y+f
         /HpA==
X-Received: by 10.68.192.9 with SMTP id hc9mr5470692pbc.57.1444853535915;
        Wed, 14 Oct 2015 13:12:15 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.206.151])
        by smtp.gmail.com with ESMTPSA id sl7sm11195096pbc.54.2015.10.14.13.12.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 14 Oct 2015 13:12:15 -0700 (PDT)
Date: Thu, 15 Oct 2015 01:42:11 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wlan-ng: Remove useless initialization
Message-ID: <20151014201211.GA1835@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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
 drivers/staging/wlan-ng/hfa384x_usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index e109a7f..444ebed 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -1194,7 +1194,7 @@ int hfa384x_cmd_download(hfa384x_t *hw, u16 mode, u16 lowaddr,
 ----------------------------------------------------------------*/
 int hfa384x_corereset(hfa384x_t *hw, int holdtime, int settletime, int genesis)
 {
-	int result = 0;
+	int result;
 
 	result = usb_reset_device(hw->usb);
 	if (result < 0) {
-- 
1.9.1


