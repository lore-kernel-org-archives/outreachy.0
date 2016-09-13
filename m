X-GM-THRID: 6329773259113889792
X-Received: by 10.107.152.132 with SMTP id a126mr194563ioe.28.1473765182439;
        Tue, 13 Sep 2016 04:13:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.125.16 with SMTP id b16ls458961itc.21.gmail; Tue, 13 Sep
 2016 04:13:01 -0700 (PDT)
X-Received: by 10.107.174.135 with SMTP id n7mr195909ioo.20.1473765181108;
        Tue, 13 Sep 2016 04:13:01 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id um12si3153986pab.2.2016.09.13.04.13.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 04:13:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id h5so9116079pao.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 04:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=cPSccxAsrd4YVvNm/AJjJbsBdlTZZh0iZ43KxyJQNPw=;
        b=mqi6x4L4jySz+SYZAc/cTe2PlVzUaddrEllOVTlSJTN4SSJu98qWKWXyU8ES57/uwt
         cTEp9YJduPAektNxyx0+eLnxZY+2qHIuF8CawrR2msYfNcMV9s12ko+eTqchU4TBbw1U
         YNMKhlqw/4VAdEyTJjocbOXs6XIlFJ5NRhp4aB09gGsNkNm9fh8D0rnuTEXuTvnjZ14s
         rJBqnDHpmI+xJoAc4u2deJE+vueDdEqPqyutWDmS9dEuIjAOmNScSHKXSR7c6q+47utp
         i2AjlpZocS5u6L1XlM62+VOO8cg929TODnqB25Y0/fK+W6j5rektCrOf74DEXrsY/3TO
         aAZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=cPSccxAsrd4YVvNm/AJjJbsBdlTZZh0iZ43KxyJQNPw=;
        b=N9kmpSVP3oroHbVQSNZs4uapTq9ZK+05ICNieiaThi3aZru4UH+9Qm6qHmqb6TSIDJ
         ulzUC7oSn2FzEC1pVY/YhIdiUvUfKKDtAAOtzn7p3uqu/zkEYpxiAF27/6k6O4fZe3Ha
         S9D1QIU2vfjIMC60ahtd9mCIKBWlmdjX+SYQ93pGebA9ofFFSZlhXw51aKpRsHo9CsEW
         nH9Tb10bHOjL8oEwbfv7jhPRZxZQ5yCvnrhreDF7s5zOc9AuvZl9UgQghRTGSYhtuunp
         tCpJIlNg1vTc+MYMr+T0aFpZTZmwf76W6nAuH56Y95HTdzAEWxYnuN6uLafHncS14ODr
         2Ihw==
X-Gm-Message-State: AE9vXwP7kXQJtjskf6NxkG0/7AYpmUw6M+4U7/ac6EDXqiX+3cNGDzdHz62XQYTlofJsdw==
X-Received: by 10.66.222.37 with SMTP id qj5mr208804pac.145.1473765180885;
        Tue, 13 Sep 2016 04:13:00 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.22])
        by smtp.gmail.com with ESMTPSA id y3sm30534055pfy.36.2016.09.13.04.12.58
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 04:13:00 -0700 (PDT)
Date: Tue, 13 Sep 2016 16:42:51 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: mchehab@kernel.org
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 3/6] staging: media: lirc: lirc_imon: Remove unnecessary
 blank line
Message-ID: <20160913111241.GA10700@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

CHECK: Remove a blank lines before a closed parenthesis '}'

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
	change in v2:
		-add cc of other maintainers
 drivers/staging/media/lirc/lirc_imon.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/lirc/lirc_imon.c b/drivers/staging/media/lirc/lirc_imon.c
index 1da5cc0..c12053d 100644
--- a/drivers/staging/media/lirc/lirc_imon.c
+++ b/drivers/staging/media/lirc/lirc_imon.c
@@ -211,7 +211,6 @@ static void deregister_from_lirc(struct imon_context *context)
 	else
 		dev_info(&context->usbdev->dev,
 			 "Deregistered iMON driver (minor:%d)\n", minor);
-
 }
 
 /**
-- 
1.9.1


