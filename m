X-GM-THRID: 7930535477248
X-Received: by 10.112.199.69 with SMTP id ji5mr6486070lbc.0.1426181563555;
        Thu, 12 Mar 2015 10:32:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.197.97 with SMTP id it1ls325692lac.1.gmail; Thu, 12 Mar
 2015 10:32:43 -0700 (PDT)
X-Received: by 10.152.4.229 with SMTP id n5mr6556605lan.1.1426181563039;
        Thu, 12 Mar 2015 10:32:43 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x22b.google.com (mail-we0-x22b.google.com. [2a00:1450:400c:c03::22b])
        by gmr-mx.google.com with ESMTPS id i8si592374wif.1.2015.03.12.10.32.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 10:32:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) client-ip=2a00:1450:400c:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesw55 with SMTP id w55so17994071wes.2
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2015 10:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=FNa4VdkvwtPLaiKuJr+SXRJeuB0EvhEOQR18iqVyBM4=;
        b=Flvj9m8W5yJPKaOx24dbi4GvGLBp92BO1ENXeFajVcfisTSrXoFtGh17ll+LkXcT71
         /Zaj9lWXLEXMR21/v9JhluGWsbdW0OCCS5E0eT6rad3txmer7O+s71LRdtbFe0ExcTj5
         0gIjorZMy+zDXh6cCVj4+V27Q1ldLzZS7Ut2cfGNLZeBFTCpVoeYdAsy/8WeuOZS3rUy
         O5aYssZsfWvzoaL7Dh+CAA31hj/08s5pNRY22YG61E8zMWQ8t1Cm3w8p8F3adwDY0fjE
         uO11k2kS5bC9cOGQO1+KKt4+GxoDc5K701ceJuU1WhX3huOVthUquPgjCJedhaK5faRj
         iEag==
X-Received: by 10.194.63.206 with SMTP id i14mr90952570wjs.107.1426181562928;
        Thu, 12 Mar 2015 10:32:42 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id nb4sm11000517wjc.20.2015.03.12.10.32.41
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 12 Mar 2015 10:32:42 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>,
	ksenija.stanojevic@gmail.co
Subject: [PATCH v2 0/2] Staging: rtl8192u: Remove typdefs
Date: Thu, 12 Mar 2015 18:32:35 +0100
Message-Id: <cover.1426181256.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset removes typedefs in drivers/staging/rtl8192u/r819xU_cmdpkt.h and
replaces their corresponding types with struct definitions in
drivers/staging/rtl8192u/r819xU_cmdpkt.c.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>

v2: change commit message.

Ksenija Stanojevic (2):
  Staging: rtl8192u: Remove typedefs
  Staging: rtl8192u: Replace types

 drivers/staging/rtl8192u/r819xU_cmdpkt.c | 35 +++++++++++----------
 drivers/staging/rtl8192u/r819xU_cmdpkt.h | 53 +++++++++++++++-----------------
 2 files changed, 43 insertions(+), 45 deletions(-)

-- 
1.9.1


