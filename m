X-GM-THRID: 8039524466688
X-Received: by 10.50.92.10 with SMTP id ci10mr70201646igb.8.1426233537549;
        Fri, 13 Mar 2015 00:58:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.243.234 with SMTP id xb10ls577108obc.19.gmail; Fri, 13 Mar
 2015 00:58:57 -0700 (PDT)
X-Received: by 10.182.135.230 with SMTP id pv6mr44501074obb.17.1426233537340;
        Fri, 13 Mar 2015 00:58:57 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id ri9si240945pdb.1.2015.03.13.00.58.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 00:58:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of iskaranth@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mail=iskaranth@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id fa1so27526838pad.9
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 00:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=U5625RvZxsxdsAENeeOUSZYzDEF+1pvv+UxODZB60kI=;
        b=Vij8HcBpq8szj/ZrAU+dU5NRJ+qAorKlEr5GnLbVa3/9rU0caMHtM4T2GN9o/mZqqu
         nkhsnvrp0dN1sasj34LYITf3OdA6vP3C4gjEDLIS0GO9WS/g5+A/H4b528JQyT7Eaq+m
         DTDegUPGv2DsfWrxNLOf/6McYngwIkyQRUkemC6+dSoLxGiLH9gcJ7D58i3V31OWfdFh
         Q4+Q8eCZi5cJal1vIsDhhONUxu9HnFttjg1vNPZQLAxFUPsq2amD4vwzcs7TX+M5F2hF
         41Qo9L7gysmeVMvYKG3rpXjDSZkTNDdh7d0LKs3lOlRK4xmnNDuz9p7CFiYEJBUT7wlp
         viuw==
X-Received: by 10.70.33.3 with SMTP id n3mr65795556pdi.132.1426233537170;
        Fri, 13 Mar 2015 00:58:57 -0700 (PDT)
Return-Path: <iskaranth@gmail.com>
Received: from localhost.localdomain ([222.117.133.143])
        by mx.google.com with ESMTPSA id z4sm2017947pdi.90.2015.03.13.00.58.54
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 13 Mar 2015 00:58:56 -0700 (PDT)
From: Supriya Karanth <iskaranth@gmail.com>
To: iskaranth@gmail.com,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] staging: remove break after return
Date: Fri, 13 Mar 2015 16:58:39 +0900
Message-Id: <cover.1426233142.git.iskaranth@gmail.com>
X-Mailer: git-send-email 2.1.0

This patchset removes the "break" statement after a "return"
statement as it will not get executed.

Found by checkpatch.pl - break is not useful after a goto
or return

Supriya Karanth (3):
  staging: rtl8188eu: remove break after return
  staging: rtl8192e: remove break after return
  staging: rtl8192u: remove break after return

 drivers/staging/rtl8188eu/hal/pwrseqcmd.c              | 1 -
 drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c         | 1 -
 drivers/staging/rtl8192e/rtllib_softmac.c              | 1 -
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 1 -
 4 files changed, 4 deletions(-)

-- 
2.1.0


