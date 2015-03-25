X-GM-THRID: 9831070040064
X-Received: by 10.180.150.115 with SMTP id uh19mr4601264wib.7.1427307253799;
        Wed, 25 Mar 2015 11:14:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.105 with SMTP id db9ls125064lad.87.gmail; Wed, 25 Mar
 2015 11:14:12 -0700 (PDT)
X-Received: by 10.152.87.110 with SMTP id w14mr754505laz.3.1427307252804;
        Wed, 25 Mar 2015 11:14:12 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x236.google.com (mail-wg0-x236.google.com. [2a00:1450:400c:c00::236])
        by gmr-mx.google.com with ESMTPS id c8si998533wiw.1.2015.03.25.11.14.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 11:14:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) client-ip=2a00:1450:400c:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::236 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x236.google.com with SMTP id cc7so36719521wgb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2015 11:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=l7i90MWpBZPgZmVq/EoUuoDbws0X2O9u9WV0Goqw3GE=;
        b=ukWeOtobveHMspqL4dDfeRo0HXxih3pnM0ocVdyN2Yrd3eyz0XjtIw2Dl1PRiQF/la
         Kq4QVa6Xtq1pVq/AsnpVudfGB3uxA1YXKFkfbLNf/pyhFUAF1U+5OLe6XtH4ZgYKlwQ6
         RRcpgFVOQnAljhGIMae/U++cpE8bMjMKrKVGewdbyLavfxmt3TaKgIHRn8gjFHSWLirW
         wQhltcaY0/SPAlD1f1iDxZQvgvSLsPCi3bmaJQUQbN27vzLuBxNWXTBC7Vmzs13SmbVp
         sXG0K1d41pWGB9Qk1pS6/22RTIuUg3xV1hydNizlcn+n7OzGhxcDhH7ASy84BiukJVFp
         kLKw==
X-Received: by 10.194.239.65 with SMTP id vq1mr20003101wjc.98.1427307252670;
        Wed, 25 Mar 2015 11:14:12 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.49.71])
        by mx.google.com with ESMTPSA id n3sm4783147wja.36.2015.03.25.11.14.11
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Mar 2015 11:14:11 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id 4D900C1FFD; Wed, 25 Mar 2015 08:03:40 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 0/2] Staging: rtl8192u: fix space issues before '(' and after ')'
Date: Wed, 25 Mar 2015 08:03:39 +0300
Message-Id: <1427259819-1022-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1

Space is required before the open and after the close parenthesis.
This patch adds space after 'if' and before '{'.
    
This was done with the help of Coccinelle.

Haneen Mohammed (2):
  Staging: rtl8192u: Add space before open parenthesis
  Staging: rtl8192u: Fix space issues before '(' and afte ')'

 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c  |  68 +++++-----
 .../staging/rtl8192u/ieee80211/ieee80211_softmac.c | 138 ++++++++++-----------
 .../rtl8192u/ieee80211/ieee80211_softmac_wx.c      |  22 ++--
 .../staging/rtl8192u/ieee80211/rtl819x_BAProc.c    |  20 +--
 .../staging/rtl8192u/ieee80211/rtl819x_HTProc.c    |  18 +--
 5 files changed, 133 insertions(+), 133 deletions(-)

-- 
1.9.1


