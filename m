X-GM-THRID: 6398121697082343424
X-Received: by 10.46.80.18 with SMTP id e18mr465715ljb.10.1489678792334;
        Thu, 16 Mar 2017 08:39:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.19.10 with SMTP id 10ls412406ljt.24.gmail; Thu, 16 Mar 2017
 08:39:51 -0700 (PDT)
X-Received: by 10.25.203.151 with SMTP id b145mr1369491lfg.17.1489678791285;
        Thu, 16 Mar 2017 08:39:51 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id 82si331167wmg.3.2017.03.16.08.39.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Mar 2017 08:39:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id x124so4747106wmf.3
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Mar 2017 08:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Emnerq2EAiKVzaN2Usvt4p4KrDCRjOIpeAcOyAqL3wg=;
        b=GrdMn8dsymumhyp5OQpkADJwyb9Rwtz+q/wZlgiCSpWQuMsJNnSVHmOU8QP066Iez9
         AjqEzV1cYPE9b9LperYT7uKqGE9+14LYfrHcEBSKDhnZEaxyKI3/G8q/Ra0hp++vcwZg
         HfMqn27ICYM2jQXN/BArX+VCXbAA/ZBgtu54hzRxvFf+KJ6i5SJpxWF8KWojYYW6Ot9Y
         KohwhFKEvNRjG3DcmhPMAfhRNEMzFIeMueDyI/BXrhwKWQxttP0sNLP/v71+wBnkBxf/
         TMmVKn/BP9FJfwTkvbx4l1f73PiNwsO4vb/TTM/fQr5fRO46A8lcJ/V5fMv64Ny6Ejor
         BvSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Emnerq2EAiKVzaN2Usvt4p4KrDCRjOIpeAcOyAqL3wg=;
        b=l2esXDq61CEenscYLPASUcGuKc0MVN/XQkvVwweavmEgkXAdtUjqmHfr67UucB9nok
         B5FZ5rLuDI9UnBKKWF4B824O8WTGW4Y16mPz2xLhKgXbs5xhhfK13OwXXU11Y+hVnVBd
         UjuSexM/jp01oOxh58SZK1s7I/pJPzayL05F0eKsMAzrJ1t/guCUs7QUMZlUKxuRIWf6
         j9tSJbPL8Q9go37rv0MmeZlscrsVPCP8Spw2sKZMcsmrn5YroLGQAkeqE+dGvNlQKulQ
         7JY5vlKg13k9NnYeIFRe+xJP/Aq8PUbe+PV7eXKFpDao+19bXpGfkB4VRETnR3VisBUl
         NomQ==
X-Gm-Message-State: AFeK/H0RxBAFjM6tyMion7O9oaRcKVQxBTlszzuIHIcOKOEf5X1nMgqGOq47wxhgiGVdGQ==
X-Received: by 10.28.111.136 with SMTP id c8mr9672860wmi.128.1489678791039;
        Thu, 16 Mar 2017 08:39:51 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.225.204])
        by smtp.gmail.com with ESMTPSA id c58sm6581635wrc.9.2017.03.16.08.39.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 16 Mar 2017 08:39:49 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: corbet@lwn.net,
	outreachy-kernel@googlegroups.com,
	linux-doc@vger.kernel.org
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2] Documentation: sync_file.txt: Fix typos
Date: Thu, 16 Mar 2017 17:39:46 +0200
Message-Id: <20170316153946.18643-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fix spelling mistakes in sync_file.txt to make documentation clear. 

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
Changes since v1:
*Add the file name to the subject of the patch.
*Change the description of the patch.

 Documentation/sync_file.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/sync_file.txt b/Documentation/sync_file.txt
index 269681a..c3d033a 100644
--- a/Documentation/sync_file.txt
+++ b/Documentation/sync_file.txt
@@ -37,7 +37,7 @@ dma_fence_signal(), when it has finished using (or processing) that buffer.
 Out-fences are fences that the driver creates.
 
 On the other hand if the driver receives fence(s) through a sync_file from
-userspace we call these fence(s) 'in-fences'. Receiveing in-fences means that
+userspace we call these fence(s) 'in-fences'. Receiving in-fences means that
 we need to wait for the fence(s) to signal before using any buffer related to
 the in-fences.
 
-- 
2.9.3


