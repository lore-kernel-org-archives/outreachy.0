X-GM-THRID: 6255472984804294656
X-Received: by 10.182.65.106 with SMTP id w10mr43751498obs.6.1456465801484;
        Thu, 25 Feb 2016 21:50:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.86.102 with SMTP id o93ls871035qgd.16.gmail; Thu, 25 Feb
 2016 21:50:00 -0800 (PST)
X-Received: by 10.13.204.145 with SMTP id o139mr9884740ywd.51.1456465800741;
        Thu, 25 Feb 2016 21:50:00 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id ff2si1853669pad.2.2016.02.25.21.50.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 21:50:00 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id y7so3967774paa.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 21:50:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=3gbGdfcrFKkPucsbE0odqeJodFHEi0pD4yraO/15NB8=;
        b=FzP62Qi+bnJJ5Z7eNVcKc/rS0/GaNhiI9KHjT2xiIPelRoFLylNIgGsPpQ7xtHr50+
         gNFTSfEHsxmJVhHSuPdyc37czYKPImgAQCCRSQ4i1WYf31FcJ90HLcvbWHfDmSsRiAcz
         boDcudv82pFXshghkve3mBChuZ6drB6J/PY1fXHLRBHrjsV8tAgg7QwlgfBHG6WGqjwm
         Eqj+pPDzdGDH6kRBTxO7gsbBYoeXTITGvkIfnQyYgMIByMh283y3WtShxl9WLbPysZZk
         sx2PLsA2H+R6aytwnOU6irXH0U+dS2U/Jy6CRmNgSXRhy+V3f/ZCeGq3dnw+zG/rYWo/
         Zo4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=3gbGdfcrFKkPucsbE0odqeJodFHEi0pD4yraO/15NB8=;
        b=dEN4FxgqA7vS3ZJP9WdkgyO6YFxDrMXTzRbCqvrp3KGi/ab/ZInyIWR37V2TPkZxkx
         54S4kXXwi8EefrWieEYhOG8djHJkt50zw8ew45ISq9XmIiLHIGEAtCpmKcoUthosnU+5
         oyISQdajIAuunkdMGf9HmrujkPZLCYHP81x/4Q7M07OYoLLvs7rfBLMkQVtSZ3Mhi4sv
         EoMzVKpsHH4Wuw2TR91Nqmono+6lEFnF6Pq9wCQo9LJWZ8buLR5uf6H+mJnOml9/sVrl
         Oquywbh4Z5OE37/Mp+Pl1B52HeUzLbdwlnZJIWIt5AA8CjeixLP9Fc1WYqnhSaXaEFod
         SC0Q==
X-Gm-Message-State: AG10YORikuhgbPlBWiFdMJsDIF0pO65BQjv8/gD0IZUHvywk4JL30NZIvf8MzX5DLax3PQ==
X-Received: by 10.67.14.138 with SMTP id fg10mr69008852pad.145.1456465800568;
        Thu, 25 Feb 2016 21:50:00 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-71-177.dhcp.embarqhsd.net. [67.232.71.177])
        by smtp.gmail.com with ESMTPSA id ll7sm16100862pab.6.2016.02.25.21.49.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 21:50:00 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/6] staging: wilc1000: remove code for unused HOST_IF_MSG's
Date: Thu, 25 Feb 2016 21:49:54 -0800
Message-Id: <cover.1456464955.git.amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4

The functions that sent these messages were previously removed.
Finish the cleanup by removing the calls to the message handlers,
the message handlers, the #define's, and unused variables.


Alison Schofield (6):
  staging: wilc1000: remove code for HOST_IF_MSG_DEL_ALL_RX_BA_SESSIONS
  staging: wilc1000: remove code for HOST_IF_MSG_SET_MAC_ADDRESS
  staging: wilc1000: remove code for HOST_IF_MSG_GET_CHNL
  staging: wilc1000: remove code for HOST_IF_GET_LINKSPEED
  staging: wilc1000: remove code for HOST_IF_MSG_FLUSH_CONNECT
  staging: wilc1000: remove code for HOST_IF_MSG_Q_IDLE

 drivers/staging/wilc1000/host_interface.c | 182 ------------------------------
 1 file changed, 182 deletions(-)

-- 
2.1.4


