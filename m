X-GM-THRID: 6205587481887244288
X-Received: by 10.68.176.132 with SMTP id ci4mr4056538pbc.13.1444850927785;
        Wed, 14 Oct 2015 12:28:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.238 with SMTP id u101ls408224qge.61.gmail; Wed, 14 Oct
 2015 12:28:47 -0700 (PDT)
X-Received: by 10.13.202.148 with SMTP id m142mr4321081ywd.55.1444850926977;
        Wed, 14 Oct 2015 12:28:46 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id el2si1075158pbb.0.2015.10.14.12.28.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 12:28:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id cn9so31307218pad.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 12:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=bmfj/VwNCoeIADki+awaHDGZCflx23hg9uSB5lXtBSU=;
        b=nCl12QUC+bQmusZ4mv/2q/RUNe3tQi27Y2A1egFNExy5JvdbgS8DOAORzYGMwY88jk
         Pj1wZF2IvoxHQ8vLdEwMrsJEplK6xDxfARlP7xS3NbtmTLPat9o7Mj82/HT7OaXtCtC4
         OmlKvxVYv2XLDmL+AHJQfxaM7AKZukq6cimUvkrW8uPjd62qHhi8LaYmOWW1hrgIroxZ
         xS4m0463251KbB+R9jzM9RFlPN5Ytg1SJDBszPz178OSB49Kidax1T2rgbf8IBBq93MB
         NZCOYTD/jaxoGO27e1DYIvRBpg8ZcuSA8ewJ7Kvi6n+teQfHw2KGTHvs+IY/Xujm+8ef
         DPaw==
X-Received: by 10.68.253.42 with SMTP id zx10mr2585312pbc.99.1444850926825;
        Wed, 14 Oct 2015 12:28:46 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id aw5sm11106380pbc.13.2015.10.14.12.28.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 12:28:46 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 00/12] Remove unnecessary cast on void pointer
Date: Thu, 15 Oct 2015 00:58:18 +0530
Message-Id: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.561EACED.0069,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches remove unnecessary cast on void pointers. 
Change is made using the Coccinelle script-

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T *)x)->f
|
- (T *)
  e
)

Shraddha Barke (12):
  Staging: most: Remove unnecessary cast on void pointer
  Staging: gdm724x: Remove unnecessary cast on void pointer
  Staging: lustre: obdclass: Remove unnecessary cast on void pointer
  Staging: lustre: lnet: Remove unnecessary cast on void pointer
  Staging: unisys: Remove unnecessary cast on void pointer
  Staging: slicoss: Remove unnecessary cast on void pointer
  Staging: gdm72xx: Remove unnecessary cast on void pointer
  Staging: comedi: Remove unnecessary cast on void pointer
  Staging: rdma: amso1100: Remove unnecessary cast on void pointer
  Staging: lustre: ptlrpc: Remove unnecessary cast on void pointer
  Staging: rdma: hfi1: Remove unnecessary cast on void pointer
  Staging: media: Remove unnecessary cast on void pointer

 drivers/staging/comedi/drivers/amplc_pci230.c      |  2 +-
 drivers/staging/comedi/drivers/cb_pcidas.c         |  2 +-
 drivers/staging/gdm724x/gdm_lte.c                  | 14 ++---
 drivers/staging/gdm724x/gdm_mux.c                  |  4 +-
 drivers/staging/gdm724x/gdm_tty.c                  |  2 +-
 drivers/staging/gdm724x/gdm_usb.c                  |  6 +--
 drivers/staging/gdm72xx/gdm_qos.c                  |  2 +-
 drivers/staging/gdm72xx/gdm_wimax.c                | 14 ++---
 .../staging/lustre/lnet/klnds/o2iblnd/o2iblnd_cb.c |  2 +-
 .../lustre/lustre/obdclass/lprocfs_status.c        |  6 +--
 .../staging/lustre/lustre/obdclass/obd_config.c    |  4 +-
 drivers/staging/lustre/lustre/obdclass/obd_mount.c |  2 +-
 drivers/staging/lustre/lustre/ptlrpc/connection.c  |  2 +-
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c   | 60 +++++++++++-----------
 drivers/staging/most/hdm-dim2/dim2_hdm.c           |  4 +-
 drivers/staging/rdma/amso1100/c2.c                 |  2 +-
 drivers/staging/rdma/amso1100/c2_ae.c              |  6 +--
 drivers/staging/rdma/amso1100/c2_intr.c            |  2 +-
 drivers/staging/rdma/hfi1/chip.c                   | 30 +++++------
 drivers/staging/rdma/hfi1/mad.c                    |  8 +--
 drivers/staging/rdma/hfi1/verbs.c                  |  2 +-
 drivers/staging/slicoss/slicoss.c                  |  9 ++--
 drivers/staging/unisys/visorbus/visorchipset.c     |  2 +-
 drivers/staging/unisys/visorhba/visorhba_main.c    |  6 +--
 24 files changed, 96 insertions(+), 97 deletions(-)

-- 
2.1.4


