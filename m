X-GM-THRID: 6204471677993091072
X-Received: by 10.50.30.37 with SMTP id p5mr2147370igh.11.1444591134137;
        Sun, 11 Oct 2015 12:18:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.166 with SMTP id g6ls27099igt.38.gmail; Sun, 11 Oct 2015
 12:18:53 -0700 (PDT)
X-Received: by 10.50.65.97 with SMTP id w1mr450804igs.10.1444591133684;
        Sun, 11 Oct 2015 12:18:53 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id vy6si244596pbc.1.2015.10.11.12.18.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2015 12:18:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id ex6so5831730pac.0
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Oct 2015 12:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=O0PVv7LVi+Xt2U//Hud8xtAyBf+QfxNIDJMuJd2YR8Y=;
        b=TNZyp52wGSDQq2lxNkBwp/NCWzYG7o6+bC3kvpecm5ahsbKuCzm8h8slPYB+8NlhWN
         NbdEp4w00vyjfBDEfAKIjIAh0hLIXcAHWopnbZwziW9Cd/KV0daIZgRIuE89Yq/rg6zz
         05e07+Oq4x4+XCVe1lRy4G5brdzSFXYFdNUuFtmlgLC0decvlxBWOoR4+axdxZ4OtRuE
         ZfBm481045Wfq+SWWP10DfSkjqFUnFDdAqBp3kqeHeHyup9vE0fKAg01GgRuKjfes/hW
         gXYPzx1mlt4IQ1F9E7OUI0vBzP2S3xOYLTxC+V69+q471Px9wAW+yTgXgiBRimwLHHS+
         7Jgw==
X-Received: by 10.66.254.101 with SMTP id ah5mr29905100pad.10.1444591133570;
        Sun, 11 Oct 2015 12:18:53 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id ey17sm14081680pac.26.2015.10.11.12.18.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2015 12:18:52 -0700 (PDT)
Date: Mon, 12 Oct 2015 00:48:41 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/2] Remove checkpatch warnings
Message-ID: <cover.1444590771.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes/adds extra/missing characters respectively.
After applying this patch, the file has less warnings.

Shivani Bhardwaj (2):
  Staging: vt6655: rxtx: Remove extra space character
  Staging: vt6655: rxtx: Remove extra parentheses

 drivers/staging/vt6655/rxtx.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

-- 
2.1.0


