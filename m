X-GM-THRID: 6338401470738595840
X-Received: by 10.129.49.76 with SMTP id x73mr3390756ywx.92.1475774094207;
        Thu, 06 Oct 2016 10:14:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.33.60 with SMTP id i57ls3414772otb.48.gmail; Thu, 06 Oct
 2016 10:14:53 -0700 (PDT)
X-Received: by 10.129.169.130 with SMTP id g124mr4070045ywh.126.1475774093795;
        Thu, 06 Oct 2016 10:14:53 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id d11si1055465pfl.2.2016.10.06.10.14.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 10:14:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id t25so1423554pfg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 06 Oct 2016 10:14:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=VP8HE6kIKE9u1ldIVLNsoWvaKO+OAnRA+F1xDCnaCUk=;
        b=HUUYRDJ6CPcPqil5oLulIVIWvQQVfnCCyYrrsA/aYhlwFY1q0w1LYbfqi8DUvZf0bn
         BQrhcQQrDICi5chDXdHWvJs4+BSYe39GlIygNfwXVzBGSk7ND3f30Uy/j7yl8Z1e2BF0
         JL+iy4RqonjOhCN+r8NjTuizkbSF5+bgINGnS1+4lA8hA7roR1ziMuYFHfDrQznhuGNJ
         z7bw8HbsJTPcH95o5VReqbLMhmC72xuii5nXmIQZUipkLBkeDjeqVSLQAu3RevdFqPQG
         z4lLYBfaxXFiqOljGfftuzR6bOAB5KfP1JvtoXTdamVeRuRl8pRVrivpMZD0RnCiTbML
         Zf0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=VP8HE6kIKE9u1ldIVLNsoWvaKO+OAnRA+F1xDCnaCUk=;
        b=Pmljj1dPlOygjyztMJ/7XhFUZu4f/Jgh5+Qnb4xJ3zusRrQ7Z40O2WG7sd/YUf+UVz
         NlTfUXEKf4bAYWcV3O0riuR7iAX50R2UX4X5a9q/PPAmIYCL3GeCzUDUP8Szc3Lp0Rcs
         uOU6023fUEsZ2/sGdBMHjkPZsbhTSL6GIjKS0nCWTUr4HoX/YO53/bqfHQ+mKV4wwceX
         fmV51WK5UYaNmft2dI8iCiInv/vP4t51nuao+zGLTtOkZSH7XUmvcw8FAJMzO3TWelUy
         2lk63yhs0JH3npnyyB+rxVASDdnWl8Vgq6T0IQlHcar5q5iODz5Hn9cAF39KShFzub9h
         lczA==
X-Gm-Message-State: AA6/9RnSPFi7MLHSxiq296927vtiEUaMO0zrRvjZKTsw30mf57ufEXZiq4EtU4cOx3hpMQ==
X-Received: by 10.98.24.133 with SMTP id 127mr7637684pfy.98.1475774093600;
        Thu, 06 Oct 2016 10:14:53 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([223.176.139.122])
        by smtp.gmail.com with ESMTPSA id i8sm24227803paw.25.2016.10.06.10.14.43
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 06 Oct 2016 10:14:51 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Thu, 06 Oct 2016 22:44:30 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rts5208: xd: remove unused function  xd_check_err_code
Date: Thu,  6 Oct 2016 22:44:28 +0530
Message-Id: <1475774068-22447-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove the function xd_check_err_code as it is not used anywhere in
the kernel. Function detected using Coccinelle but removed by hand.
Script:

@initialize:python@
@@
def display(name,p):
        print(name,p[0].file)

@r1@
identifier func;
type T;
position p;
@@
static T func@p(...)
{
...
}

@r@
identifier r1.func;
@@
func

@script:python depends on !r@
func << r1.func;
p << r1.p;
@@
display(func,p)

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rts5208/xd.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
index 1de02bb..8efc512 100644
--- a/drivers/staging/rts5208/xd.c
+++ b/drivers/staging/rts5208/xd.c
@@ -42,13 +42,6 @@ static inline void xd_set_err_code(struct rtsx_chip *chip, u8 err_code)
 	xd_card->err_code = err_code;
 }
 
-static inline int xd_check_err_code(struct rtsx_chip *chip, u8 err_code)
-{
-	struct xd_info *xd_card = &(chip->xd_card);
-
-	return (xd_card->err_code == err_code);
-}
-
 static int xd_set_init_para(struct rtsx_chip *chip)
 {
 	struct xd_info *xd_card = &(chip->xd_card);
-- 
1.9.1


