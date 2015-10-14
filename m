X-GM-THRID: 6205612297408217088
X-Received: by 10.112.159.4 with SMTP id wy4mr1251250lbb.15.1444856705388;
        Wed, 14 Oct 2015 14:05:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.83.82 with SMTP id h79ls78166lfb.76.gmail; Wed, 14 Oct 2015
 14:05:04 -0700 (PDT)
X-Received: by 10.112.150.229 with SMTP id ul5mr1285214lbb.2.1444856704541;
        Wed, 14 Oct 2015 14:05:04 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id h2si984902wiy.0.2015.10.14.14.05.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 14:05:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id gb1so1615872wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 14:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=oWEBGxeZXF8hj6YJ0yEHB5K/Fk3SDeOegJGuyPuSFkk=;
        b=riqDn+rHWWvOA85efKpUv8LEzRxsd+NboWo4yJlWT7F1C/qL0KQKa42xFHuwgWXxFC
         DgoH+/xW4eFnJOyncmTAQ/f4PXqFOCBTXH0UPGpxWTeciaCkNeAqjlJAf/gGdvmxS/hV
         iPsU594i6ftD2NMr/aZKoZCW1M8LE1nQZgQIYsd6iEEssE16PAGgiySW3iB+Jg5ZNbuz
         E4qfqEkhWIBMsk1dTFYUe0dyd5OjlsjQ1n44ZBqeNBm7Ncd/yOTsovlUwmwgPWVY8F04
         CmmhJXOdb5MfBo2feelJlVLC1M2QKVDfNOG818zYI9b0kcNtzfbdfKfTodRyxpqRmqF9
         ixww==
X-Received: by 10.180.74.47 with SMTP id q15mr7006762wiv.73.1444856704070;
        Wed, 14 Oct 2015 14:05:04 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id ub7sm8601588wib.17.2015.10.14.14.05.02
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 14:05:03 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 0/4]Staging: lustre: Use static inline functions instead of macros
Date: Wed, 14 Oct 2015 23:04:56 +0200
Message-Id: <cover.1444856328.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Convert macros class_export_lock_get and class_export_lock_put into static inline
functions and also remove some unused macros.

Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com>

Ksenija Stanojevic (4):
  Staging: lustre: include: Move function prototypes
  Staging: lustre: include: Convert macro class_export_lock_get into
    static inline function
  Staging: lustre: include: Convert macro class_export_lock_put into
    static inline function
  Staging: lustre: include : Remove unused macros

 drivers/staging/lustre/lustre/include/obd_class.h | 90 ++++++++++-------------
 1 file changed, 38 insertions(+), 52 deletions(-)

-- 
1.9.1


