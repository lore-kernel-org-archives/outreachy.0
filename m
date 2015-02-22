X-GM-THRID: 2431942393856
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7307b9f550c82542
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.178.234 with SMTP id db10mr754131wjc.2.1424618896620;
        Sun, 22 Feb 2015 07:28:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.27.71 with SMTP id r7ls372436lag.42.gmail; Sun, 22 Feb
 2015 07:28:15 -0800 (PST)
X-Received: by 10.152.43.166 with SMTP id x6mr751180lal.3.1424618894999;
        Sun, 22 Feb 2015 07:28:14 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id ew5si505197wid.1.2015.02.22.07.28.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 07:28:14 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x233.google.com with SMTP id hi2so11837453wib.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 07:28:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=TsDar0buR7o/QrOlFK4+rRYtJyZd/v8+5EoetqWllQ0=;
        b=hBm+d1l3Uc/hr/nqsrj0meLxWkYOD5Dh2FryEtYWY2JMUBwIGR2LUZm5vhoLKK7H/F
         EhmTmD46L61QYb3DRtPJ7ToJRVr5G5dSjHGknATTALAioNJ1C8OzntkJd+IF3xS4MqRf
         ZyHRTAsoD3DFtRBr/8h7KAEJs+YByGKKBiL3HjjQURNzDHKoGnC1qB9nojHiAfY54K9N
         1ekHyB+zMWIgIuFYqRRC0B4p/qqRsv6gFLwzgxwmapi3j9mIk3MeNbJuICliebhnB2Db
         /GmRoKNJgLyBdXRuJE7M+FevzKtsgFKfknf9kfGXoL2FV6WRplcHBGZTUBh1kkEZ+NAD
         qbbg==
X-Received: by 10.181.8.99 with SMTP id dj3mr1057857wid.83.1424618894904;
        Sun, 22 Feb 2015 07:28:14 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id k6sm11858495wia.6.2015.02.22.07.28.13
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Feb 2015 07:28:14 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2 0/2] Staging: rtl8192u: Fix coding style issues. 
Date: Sun, 22 Feb 2015 16:28:07 +0100
Message-Id: <cover.1424618545.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset fixes following issues:
        Convert comments from C99 to C89 style.
        Staging: rtl8192u: Fix grammar in a sentence.

Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com> 

Ksenija Stanojevic (2):
  Staging: rtl8192u: Convert comments from C99 to C89 style
  Staging: rtl8192u: Fix grammar in a sentence.

 .../staging/rtl8192u/ieee80211/ieee80211_module.c  | 52 +++++++++++-----------
 1 file changed, 26 insertions(+), 26 deletions(-)

-- 
1.9.1


