X-GM-THRID: 6251650339458514944
X-Received: by 10.112.157.164 with SMTP id wn4mr47273lbb.5.1455698764885;
        Wed, 17 Feb 2016 00:46:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.154.73 with SMTP id c70ls934406lfe.79.gmail; Wed, 17 Feb
 2016 00:46:04 -0800 (PST)
X-Received: by 10.112.162.101 with SMTP id xz5mr50577lbb.20.1455698764163;
        Wed, 17 Feb 2016 00:46:04 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x232.google.com (mail-wm0-x232.google.com. [2a00:1450:400c:c09::232])
        by gmr-mx.google.com with ESMTPS id 141si90171wmy.2.2016.02.17.00.46.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 00:46:04 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) client-ip=2a00:1450:400c:c09::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x232.google.com with SMTP id a4so16980140wme.1
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 00:46:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ySXXgT1Sh4XiiVE4npDhYO192GYxd3OLUqFU91Nhj0U=;
        b=HfqYTgdxr5wUCYHWDi+7Qpzm+qEljDJdk0dwy5yuuSWMpchlwnkgUbwqxpCCmAcNnI
         scsWUyHTlNL7MBfNYPaK8XlCm3B3ggrZji+LX4Cm3XeuPF83gqHEuI8KewnzE+0UXLr6
         4H8zlPcfCjFPyhW70wFoPjyz1IGLwdlqgtJ0nUgFfrjKqND88/ZwrgbzaanI1nHTM6gZ
         c2kqmO5t/gx7+McBF2d7ewwSVYYFmB0XjTcvPttQkTFwZYwQMpBjzor3CgViDRVJcDxw
         qFmQJVASay0UVxnr/Qpujwpn3yHoixtUFalRgPLDQD9Sa2eSK7uNiNSspaUA4Ar0FfjY
         iQYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=ySXXgT1Sh4XiiVE4npDhYO192GYxd3OLUqFU91Nhj0U=;
        b=W/4+KSXB6REAeNhYwawa3MRyOFVmcCTmK+MoWM4/PLgQPTBXWNg7zJO+f5MhafaglQ
         Xte9CxuWuBjQws+YuyTWxo3pa1erkXwxjxvly5fkAnUhYsWg5k2hw7RQNQnAbBcKahWW
         vBHNNNTMPn4Wc+CwLaPogKeHQmTQLotmpudTgKYuYsQQszJ19tXu2tKCyLqsSaBYNEWR
         jMgXva1Zj1DKKHPaMe9sAeHiIu1ltIerWjx1EFvKITMNdCGStVLqkeFdLpxfUEjnHfSj
         RwJWQlCNl0IZoHzteXhkuNwm1EkNObc6NxwAnL3dW+gD/hAbfLccZVvvPTPEfKiPuRtp
         EfJQ==
X-Gm-Message-State: AG10YOS5Uw0Y7RSIo3CC59wC3lLpA1B7Tt5NLcib/iCn4UsSe1uZZtt8723ImQabK65mRQ==
X-Received: by 10.194.92.147 with SMTP id cm19mr545905wjb.32.1455698764045;
        Wed, 17 Feb 2016 00:46:04 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv ([195.235.183.164])
        by smtp.gmail.com with ESMTPSA id b5sm24291894wmh.15.2016.02.17.00.46.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 00:46:03 -0800 (PST)
Date: Wed, 17 Feb 2016 09:46:00 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/7] staging: netlogic: Fix several checkpatch issues
Message-ID: <cover.1455698124.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset updates the netlogic driver in order to clean up completely the driver source code.

Laura Garcia Liebana (7):
  staging: netlogic: Fix several parentheses alignments
  staging: netlogic: Remove blank spaces after a cast
  staging: netlogic: Fix multiple assignments
  staging: netlogic: Fix CamelCase for constants
  staging: netlogic: Fix comparison to NULL
  staging: netlogic: Insert spaces around operator
  staging: netlogic: Fix indent for conditional statement

Changes in v2:
        - Patch 2/7 Include parentheses for pointers
        - Patch 5/7 Avoid to change comparison for devm_ioremap_resource value
Changes in v3:
	- Patch 2/7 Change parenthesis position

 drivers/staging/netlogic/platform_net.c |   6 +-
 drivers/staging/netlogic/xlr_net.c      | 174 +++---
 drivers/staging/netlogic/xlr_net.h      | 978 ++++++++++++++++----------------
 3 files changed, 581 insertions(+), 577 deletions(-)

-- 
2.7.0


