X-GM-THRID: 6211053698454388736
X-Received: by 10.13.251.194 with SMTP id l185mr1146060ywf.47.1446123630626;
        Thu, 29 Oct 2015 06:00:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.109.170 with SMTP id ht10ls1837261igb.20.canary; Thu, 29
 Oct 2015 06:00:29 -0700 (PDT)
X-Received: by 10.50.20.227 with SMTP id q3mr6875645ige.11.1446123629007;
        Thu, 29 Oct 2015 06:00:29 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id sm2si160027pab.0.2015.10.29.06.00.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 06:00:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id z6so40614753pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 06:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=sN8BtyJPjk7KIlW6cqCHIulRvyn6dW5DpCW5nysWWB8=;
        b=YozNSU3rbU3898p8y6bWE3wfqAa8lXhZhHulv+bi/BJNU43NjqBjozZV1HLLNTA1TF
         3CgjzX9HunRbMMPvjtQgfRf46aE6sZ1SDKVIeSdac88x211DIvgvAAs3D2ngK9+2nVlM
         DUMg0pLboPCjvqccwwcgrFk4nggGykxU4+TQefJV20+jnkO9yf8fP7G2Bs6cbLfBFP5J
         qaIdicBGsL4QOaqciFZkwmiv+1K+TbKVvy1eyDluLJxeTPEZmyztXJKahyGHe9Vw2if0
         aG/qThdXzRGe+PPkXKYfa7le+TfETbuPVDG45Xdlub9P7It3Vzf5t/CKOQ/ksLusLh/8
         nftA==
X-Received: by 10.66.102.97 with SMTP id fn1mr1771722pab.77.1446123628897;
        Thu, 29 Oct 2015 06:00:28 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id pj10sm2342164pbc.59.2015.10.29.06.00.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 06:00:28 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/6] staging: media: bcm2048: fix multiple checkpatch issues
Date: Thu, 29 Oct 2015 06:00:11 -0700
Message-Id: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5

This patchset fixes multiple checkpatch checks and warnings. 

Amarjargal Gundjalam (6):
  staging: media: bcm2048: fix code indent for conditional statements
  staging: media: bcm2048: add space around operators
  staging: media: bcm2048: match alignments with open parenthesis
  staging: media: bcm2048: remove unnecessary blank lines
  staging: media: bcm2048: remove unnecessary space after a cast
  staging: media: bcm2048: fix mispelling

 drivers/staging/media/bcm2048/radio-bcm2048.c |  397 ++++++++++++-------------
 1 file changed, 191 insertions(+), 206 deletions(-)

-- 
1.7.9.5


