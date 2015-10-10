X-GM-THRID: 6204103069755506688
X-Received: by 10.112.209.73 with SMTP id mk9mr3878409lbc.14.1444505311357;
        Sat, 10 Oct 2015 12:28:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.169.198 with SMTP id s189ls369776lfe.87.gmail; Sat, 10 Oct
 2015 12:28:29 -0700 (PDT)
X-Received: by 10.112.181.10 with SMTP id ds10mr3842975lbc.3.1444505309853;
        Sat, 10 Oct 2015 12:28:29 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id c1si177483wiv.3.2015.10.10.12.28.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 12:28:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id gb1so106364569wic.1
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 12:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=TiMz1/CVAovsJ178fo2PxEUkmwlOi8hHu/yFOkG4fjE=;
        b=T2WuNYMTOJleU8Slag9wMG54xpNa7OSbDcf4OT3rUAZBdeOiMuKDSWvDu7uD5+60hG
         AFpyV9O53SXdYGu5sWLmHk6W57QbVKpeZsDYI32J8gJRwNulwtBmwhvtC+0zjqbjAI1h
         P7jaFoC/LSdVV/7t886kCZvEbU10b3xVK44EhQ4TYMCo3OaRDnXeRPIUBJc6adY4TRqW
         pvpRawOA+c2jIuw2UcVqBYI3v9Yln2VyK8UJ/pWxZV1rw5KDabxi7OmEbC13zZzoOQfh
         OJvqSv5/S95O/lHea7fN5UAzNstEpBiLlvLZnXo76mRQ4rUWQP8Zx5PvzsqqMc5+vn8h
         Ylgw==
X-Received: by 10.180.230.197 with SMTP id ta5mr5684459wic.26.1444505309750;
        Sat, 10 Oct 2015 12:28:29 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.101.153])
        by smtp.gmail.com with ESMTPSA id h7sm9673447wjz.7.2015.10.10.12.28.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Oct 2015 12:28:29 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 0/6] staging: rtl8192: Fix coding style problems
Date: Sat, 10 Oct 2015 22:27:42 +0300
Message-Id: <cover.1444500823.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix several coding style errors and warnings found with checkpatch

Cristina Moraru (6):
  staging: rtl8192u: Fix spacing errors
  staging: rtl8192u: Move open brace to previous line
  staging: rtl8192u: Move else to previous line
  staging: rtl8192u: Remove unnecessary braces
  staging: rtl8192u: Add blank line after declarations
  staging: rtl8192u: Add paranthesis to complex macro

 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 603 +++++++++-------------
 1 file changed, 251 insertions(+), 352 deletions(-)

-- 
1.9.1


