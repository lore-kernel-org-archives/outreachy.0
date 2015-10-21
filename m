X-GM-THRID: 6208147011756097536
X-Received: by 10.112.132.10 with SMTP id oq10mr2434612lbb.1.1445446864523;
        Wed, 21 Oct 2015 10:01:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.87.139 with SMTP id l133ls217111lfb.34.gmail; Wed, 21 Oct
 2015 10:01:03 -0700 (PDT)
X-Received: by 10.112.151.9 with SMTP id um9mr2449232lbb.19.1445446863932;
        Wed, 21 Oct 2015 10:01:03 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id cm6si1048097wib.1.2015.10.21.10.01.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 10:01:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id p11so104660216wij.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 10:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=NI2uPr0vWBqQF/URn3kkg4Bq3SKov9/Oq8feZ85JirM=;
        b=S30SnDGMT9Vk4Y1pfEGkLOuorMtpxGWpnzERjozY6jZXD3mrMUkm2a2WrdJnxgg2b/
         hnBSwRKXSiDgeLQ+9PwY8a+OCoCggWCG8KMh59aQg3pKGbD7IavLWRk9DNyRzDFJ+T+l
         YIgIFG6mWh4mW/cTM8mGzEV6Rrp/PaccF6bIugZjHH0d4LliNO5GNwi6Jyx/+6vs9Iqr
         84+ieyUOKr6ag6paCM+wTJXtKMGmt3L9bMj6l8hhZsn+eofb/zOYgxeqDq09OoHQ+zol
         ZunLXw5FAtzXNGm7LSwRHtzkDs3QGXSL9P1CJN4j7LF6s1Qt/t0l2nsxSx+ruM88YhZw
         fyxw==
X-Received: by 10.194.133.105 with SMTP id pb9mr13417548wjb.158.1445446863817;
        Wed, 21 Oct 2015 10:01:03 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([141.85.225.204])
        by smtp.gmail.com with ESMTPSA id x7sm24456745wia.10.2015.10.21.10.01.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Oct 2015 10:01:03 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 0/3] Replace kmalloc with kmalloc_array
Date: Wed, 21 Oct 2015 20:00:48 +0300
Message-Id: <cover.1445379358.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Replace kmalloc with specialized function kmalloc_array
when the size is a multiplication of:
        number_of_elements * size_of_element

Done with coccinelle:
@replace@
identifier a, b;
expression e, f;
@@
(
- a = kmalloc(e * f, b);
+ a = kmalloc_array(e, f, b);
)



Cristina Moraru (3):
  staging: rtl8712: Replace kmalloc with kmalloc_array
  staging: octeon-usb: Replace kmalloc with kmalloc_array
  staging: rdma: Replace kmalloc with kmalloc_array

 drivers/staging/octeon-usb/octeon-hcd.c     | 6 +++---
 drivers/staging/rdma/amso1100/c2_provider.c | 2 +-
 drivers/staging/rdma/ipath/ipath_verbs.c    | 4 ++--
 drivers/staging/rtl8712/rtl871x_mlme.c      | 4 ++--
 4 files changed, 8 insertions(+), 8 deletions(-)

-- 
1.9.1


