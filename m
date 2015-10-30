X-GM-THRID: 6211053698454388736
X-Received: by 10.13.236.135 with SMTP id v129mr8502437ywe.9.1446236478903;
        Fri, 30 Oct 2015 13:21:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.110.33 with SMTP id hx1ls259212igb.27.gmail; Fri, 30 Oct
 2015 13:21:18 -0700 (PDT)
X-Received: by 10.68.225.193 with SMTP id rm1mr7789052pbc.2.1446236478439;
        Fri, 30 Oct 2015 13:21:18 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id pe1si909014pac.2.2015.10.30.13.21.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 13:21:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amarjargal.gundjalam@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amarjargal.gundjalam@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id hy1so77554551pad.0
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 13:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=7FGSkhVeMrx9dSmjrst8Iuj8KK8QL3ZlMgxsN/VOhkk=;
        b=RPM1P5tkJMqYcGZg2qKWP4ZWzZ5SYSsVqxTdtuKU+IwJ+mHDQK63m4JwjdYA7b/iIc
         S4oUctLoi06OpuEAieIkaNJ8ifcO36Ph9tuBlmcR9VvjA6GVq8hADs/CR3hgXtudV6KJ
         qk+zcV8KAazUo1FAkJ4y/94Pmg6uWW8Bd+wJK2NHeL50hMytgH+4IClEqI2pGJsfCHZW
         AYy/DaPh2OxuvvSrXMMk/AWRwdLgs2nfyCQ4Geht68Iou9e3ht7yIzjVe9ksMIo6Zmt3
         evAuRf0dx38/nBRS1br2XiuTVVj8ydBjqXjXy9t/ICmCVB2Atp6S6sPDod3Wha9bFIGT
         kqkA==
X-Received: by 10.66.66.140 with SMTP id f12mr10867902pat.90.1446236478361;
        Fri, 30 Oct 2015 13:21:18 -0700 (PDT)
Return-Path: <amarjargal.gundjalam@gmail.com>
Received: from localhost.localdomain ([103.26.195.49])
        by smtp.googlemail.com with ESMTPSA id pn8sm9812012pbb.16.2015.10.30.13.21.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 13:21:18 -0700 (PDT)
From: Amarjargal Gundjalam <amarjargal.gundjalam@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/5] staging: media: bcm2048: fix multiple checkpatch issues
Date: Fri, 30 Oct 2015 13:21:02 -0700
Message-Id: <cover.1446235582.git.amarjargal.gundjalam@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>
References: <cover.1446123178.git.amarjargal.gundjalam@gmail.com>

This patchset fixes multiple checkpatch checks and warnings. 

Changes in v2:

Conditional statements code indent and open parenthesis alignment fixes are combined into a single patch [1/5]. Rest of the patchset are reordered.

Amarjargal Gundjalam (5):
  staging: media: bcm2048: match alignments with open parenthesis
  staging: media: bcm2048: add space around operators
  staging: media: bcm2048: remove unnecessary blank lines
  staging: media: bcm2048: remove unnecessary space after a cast
  staging: media: bcm2048: fix mispelling

 drivers/staging/media/bcm2048/radio-bcm2048.c |  393 ++++++++++++-------------
 1 file changed, 189 insertions(+), 204 deletions(-)

-- 
1.7.9.5


