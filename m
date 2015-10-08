X-GM-THRID: 6202887067130658816
X-Received: by 10.112.138.170 with SMTP id qr10mr1821414lbb.4.1444332333489;
        Thu, 08 Oct 2015 12:25:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.81.148 with SMTP id f142ls210970lfb.68.gmail; Thu, 08 Oct
 2015 12:25:31 -0700 (PDT)
X-Received: by 10.112.136.99 with SMTP id pz3mr1790896lbb.11.1444332331271;
        Thu, 08 Oct 2015 12:25:31 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id bn1si385107wib.0.2015.10.08.12.25.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 12:25:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id fx3so42221463wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 12:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=0giXGObB7N+vGjkrtTF8hqBKHsnuKF+HI7ZYMwQwnOg=;
        b=sOgrCBAEODL13gvHPL7ADaz+un5w1LSxB9J84qN8ACSQF3KT1yhrZ5/xLxCWJuU1hG
         1KOcXwWox+PYcGiWEL4aE5AD/uieDWX7kG2Bd4WRPrlXJYyBWwaJr2EkugweFOR0ducs
         56vUWTtJuEyeBksEYMon7TOjR/T35bjNwE6LNtraZXAHteZRayZAeLJw3LOHZyIIm7GJ
         WSNA29ooKNSCnQ59Q27wiWeGzMlJK2rVaWRGPOX43Kr7boXn0f/r7L7jQkc/gR9hq+Qp
         /jkKfKfTijMI5Ek/hs2OdIqf4V32vOsKWecIfxfosf5OeqtTzIPsZll9dl+0AIodUOui
         +j/g==
X-Received: by 10.180.99.66 with SMTP id eo2mr6266529wib.88.1444332331028;
        Thu, 08 Oct 2015 12:25:31 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id fv5sm75362wic.7.2015.10.08.12.25.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 08 Oct 2015 12:25:30 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/3] Use ARRAY_SIZE macro
Date: Fri,  9 Oct 2015 00:55:16 +0530
Message-Id: <1444332319-654-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.5616C329.006E,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Use ARRAY_SIZE macro.
Coccinelle is used to make the changes-

@@
type T;
T[] E;
@@

- (sizeof(E)/sizeof(T))
+ ARRAY_SIZE(E)


Shraddha Barke (3):
  Staging: sm750fb: Use ARRAY_SIZE macro
  Staging: rtl8712: Use ARRAY_SIZE macro
  Staging: rtl8188eu: core: Use ARRAY_SIZE macro

 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 2 +-
 drivers/staging/rtl8188eu/core/rtw_rf.c       | 2 +-
 drivers/staging/rtl8712/usb_intf.c            | 3 +--
 drivers/staging/sm750fb/ddk750_chip.c         | 4 ++--
 4 files changed, 5 insertions(+), 6 deletions(-)

-- 
2.1.4


