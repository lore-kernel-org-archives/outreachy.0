X-GM-THRID: 4799843008512
X-Received: by 10.112.189.227 with SMTP id gl3mr2400582lbc.2.1425072422272;
        Fri, 27 Feb 2015 13:27:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.83.9 with SMTP id m9ls200361wiy.16.gmail; Fri, 27 Feb 2015
 13:27:01 -0800 (PST)
X-Received: by 10.180.89.194 with SMTP id bq2mr770069wib.4.1425072421951;
        Fri, 27 Feb 2015 13:27:01 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x233.google.com (mail-wg0-x233.google.com. [2a00:1450:400c:c00::233])
        by gmr-mx.google.com with ESMTPS id i7si200212wif.0.2015.02.27.13.27.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 13:27:01 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) client-ip=2a00:1450:400c:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x233.google.com with SMTP id y19so22772916wgg.13
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 13:27:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=nNmOWFJyYOtkvfPpp10VeZDzycx/zlyJlMQTbkQYLjs=;
        b=NyPyipB+BLVYjM+zX6s1S2/REtEtx8EN9sgn2bNijT8Ut9I43TYTtMTHbPO4/9uUjh
         URkC5rhr/I5sEs3RsDFHVRaP9qeDav8QivdWWBTkL6BwnaNqTdTSWJhwuBzlZSQ4b7gH
         7rstNMTuCb3SK5WlafSH6PnoBfdTUfBWTajTokdRuiM7CQyJbxc2f+VVImQnssKTuE4C
         ZV9ktLwWNV2azv6J27gRDwk9YcauOoztjMCTpJmbIVc14bPPWNRXm2pPiWPXeIk8YCP4
         R/IbrYJhhtYOrRO5DMhcuNPR95048SGznLfcFdj0q6hYbjG1EKb478mB9X5wjfFPjZOU
         SxWQ==
X-Received: by 10.180.88.41 with SMTP id bd9mr10362650wib.47.1425072421887;
        Fri, 27 Feb 2015 13:27:01 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([151.250.87.133])
        by mx.google.com with ESMTPSA id k6sm4484266wia.6.2015.02.27.13.27.00
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 13:27:01 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 0/3]
Date: Fri, 27 Feb 2015 23:25:53 +0200
Message-Id: <1425072356-1314-1-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patchset default used instead of break and delete space.

Melike Yurtoglu (3):
  Staging: lustre: default used instead of break
  Staging: lustre: Deleted space prohibited between function name and
    open parenthesis
  Staging: lustre: Remove spaces at the start of a line

 drivers/staging/lustre/lustre/ptlrpc/ptlrpc_internal.h | 6 +++---
 drivers/staging/lustre/lustre/ptlrpc/ptlrpc_module.c   | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

-- 
1.8.3.2


