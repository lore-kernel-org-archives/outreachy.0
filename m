X-GM-THRID: 6331640360325873664
X-Received: by 10.13.236.209 with SMTP id v200mr13358783ywe.49.1474199900971;
        Sun, 18 Sep 2016 04:58:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.117 with SMTP id p108ls8810799ota.42.gmail; Sun, 18 Sep
 2016 04:58:20 -0700 (PDT)
X-Received: by 10.157.41.182 with SMTP id n51mr2867768otb.69.1474199900636;
        Sun, 18 Sep 2016 04:58:20 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id z4si3935428pam.0.2016.09.18.04.58.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 04:58:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 21so4417838pfy.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Sep 2016 04:58:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=x+xchGVQLWDPUXo8wr9ZAAnr54Z+FR0ap6oUZJV7FvQ=;
        b=VmRQZx26oZA70FCM/pweCWrIsbovYPyq4uVynaZ6AJkQJkgXv/UEOSjmjTI7releQT
         20K5v07P0pcdAIIXRnbm2k3Yfisj2RMEUIO1X1xjcpiD2uu4I6k0a/ADb4mBSVdny+yz
         ff2RUEqnpGwJc0MizxzjRlvgZzn1Zz81Fz++/y7dWSHA/xUGyNsB81GmIucoBbk9LVDV
         IW/gV0vMcM6E98YqaHItKh1Bs9fHTr/6XLWXsOEy9uqrDNNQVzs5Ux4++tM7PCrFBsrT
         oU0ZrkM+G/UoqOr53cixhqpmnynqKvPqVkSumiwDKEc3l6lcAg9lB8nlH9mrzpAHy17E
         aMxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=x+xchGVQLWDPUXo8wr9ZAAnr54Z+FR0ap6oUZJV7FvQ=;
        b=K9cF4EiWk/yUdSpnU4wq+LAcfRY0SdcMbkvkv/8eSvd1SdCcycM0+tx5zNvOZ6Hj7S
         UdFypCS1p9z4LGm9Pl/8RHhv1f9EJJSlh61oJKeAI92dg2BjP5T88TBOc8owETZNYa3r
         Cq3HGxPzEevVUkrOEwVUNHwiBBpa93bI5r0nmwdsc1HrrsfVIy2F4nqM7/LNWdSNW3Sh
         ck1F9mc2i/KFfNmoLA8MvQBJ5veDB6wQwrBalXpaHE1CwOuU0jQo39PA4eLeYo2GvJim
         ir1gqNtZXRthbu68dU9lORxa8R8zBUSUQDKEH1MqA+lQlu3HY+s4ws41Fj63fwA+IVTY
         y2vg==
X-Gm-Message-State: AE9vXwPjdQayonjfBYm/sA/DEr+6e39FJn2Zz4rDR+S5pmHvjmcrAkJO1I1f2L0QCsPUhg==
X-Received: by 10.98.53.65 with SMTP id c62mr38288799pfa.66.1474199900453;
        Sun, 18 Sep 2016 04:58:20 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.173.54])
        by smtp.gmail.com with ESMTPSA id r66sm7441831pfb.54.2016.09.18.04.58.17
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Sep 2016 04:58:19 -0700 (PDT)
Date: Sun, 18 Sep 2016 06:27:18 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Subject: [PATCH v2 0/2] Staging: Remove exceptional & on function name.
Message-ID: <cover.1474159150.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

A function name is already a pointer, and does not need &.
This changes are made by below coccinelle script:

// <smpl>
@r@
identifier f;
@@
f(...) { ... }
@@
identifier r.f;
@@
- &f
+ f
// </smpl>

Changes in v2:
* Correcting the commit message.
* Correcting the file permission issue.

Sandhya Bankar (2):
  Staging: lustre: file: Remove exceptional & on function name.
  Staging: lustre: namei: Remove exceptional & on function name.

 drivers/staging/lustre/lustre/llite/file.c  |    2 +-
 drivers/staging/lustre/lustre/llite/namei.c |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)


