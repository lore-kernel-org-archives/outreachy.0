X-GM-THRID: 6205781635135176704
X-Received: by 10.13.204.132 with SMTP id o126mr6161270ywd.50.1444896132904;
        Thu, 15 Oct 2015 01:02:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.105 with SMTP id j102ls440339iod.85.gmail; Thu, 15 Oct
 2015 01:02:12 -0700 (PDT)
X-Received: by 10.107.149.4 with SMTP id x4mr4124366iod.20.1444896132445;
        Thu, 15 Oct 2015 01:02:12 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id zg1si1364867pbb.2.2015.10.15.01.02.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 01:02:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id p3so32495635pay.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 01:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=o7i1LvtQu7Pu6PVt8H1IbEuYOIdX5jHNxrysZJNfMWM=;
        b=xG6p1tJDHTvVpPjI+/LxSc4VNH2IKjPveCi3ewtsNuhcLUsDvQEYqb80OQHNEXBPEe
         QepsKzmaV6Xv6749EBV6cKN+MN4P1rvwCXBmjxATQL7W6BH7iPNmcV6Olpv4H7SxB0mB
         j/ie1QxTb4PLJXzpViznuqF2/TFXANXbY21N0SbkcRHe+AzvXGJTDaYam0DTirVeOFwG
         D3mQtUoPd3c+Kj7lq6Y6eIR7ZGmu4mAgnnaq0vB1bRzM7QbPFq8BghzPYVMpAa4ozc9k
         pdiIUTUNLYXMwV7RzFd2i+wGERJPndGmDOf0OcAZo/U4w8L3qEuRqJUVAaIb4i79nelG
         sT/w==
X-Received: by 10.68.110.165 with SMTP id ib5mr8634072pbb.58.1444896132255;
        Thu, 15 Oct 2015 01:02:12 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.84.71])
        by smtp.gmail.com with ESMTPSA id gj10sm13700144pbc.68.2015.10.15.01.02.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 15 Oct 2015 01:02:11 -0700 (PDT)
Date: Thu, 15 Oct 2015 13:32:07 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 00/18] staging: Remove useless initialisation
Message-ID: <cover.1444895817.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset removes multiple useless intialisations of variables
which are immediately reassigned.

The semantic patch used to find this is:

// <smpl>
@@
type T;
identifier x;
constant C;
expression e;
@@

T x
- = C
 ;
x = e;
// </smpl>


Amitoj Kaur Chawla (18):
  staging: rtl8723au: hal: Remove useless intialisation
  staging: rtl8723au: core: rtw_wlan_util: Remove useless intialisation
  staging: rtl8723au: core: rtw_recv: Remove useless initialisation
  staging: rtl8723au: core: rtw_ap: Remove useless intialisation
  staging: media: lirc: Remove useless initialisation
  staging: media: davinci_vpfe: Remove useless intialisation
  staging: lustre: ptlrpc: Remove useless initialisation
  staging: skein: Remove useless initialisation
  staging: vt6655: Remove useless initialisation
  staging: vt6656: Remove useless initialisation
  staging: wilc1000: wilc_wfi_cfgoperations: Remove useless
    initialisation
  staging: wilc1000: coreconfigurator: Remove useless initialisation
  staging: rdma: ipath: ipath_eeprom: Remove useless intialisation
  staging: rdma: ipath: ipath_init_chip: Remove useless initialisation
  staging: rdma: hfi1: diag: Remove useless initialisation
  staging: rdma: hfi1: sysfs: Remove useless initialisation
  staging: dgnc: dgnc_tty: Remove useless initialisation
  staging: dgnc: dgnc_driver: Remove useless initialisation

 drivers/staging/dgnc/dgnc_driver.c                   |  2 +-
 drivers/staging/dgnc/dgnc_tty.c                      |  2 +-
 drivers/staging/lustre/lustre/ptlrpc/client.c        |  2 +-
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c |  2 +-
 drivers/staging/media/lirc/lirc_sasem.c              |  2 +-
 drivers/staging/rdma/hfi1/diag.c                     |  4 ++--
 drivers/staging/rdma/hfi1/sysfs.c                    |  2 +-
 drivers/staging/rdma/ipath/ipath_eeprom.c            |  2 +-
 drivers/staging/rdma/ipath/ipath_init_chip.c         |  2 +-
 drivers/staging/rtl8723au/core/rtw_ap.c              |  4 ++--
 drivers/staging/rtl8723au/core/rtw_recv.c            |  6 +++---
 drivers/staging/rtl8723au/core/rtw_wlan_util.c       |  2 +-
 drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c  |  8 ++++----
 drivers/staging/skein/skein_api.c                    |  2 +-
 drivers/staging/vt6655/card.c                        |  2 +-
 drivers/staging/vt6656/card.c                        |  2 +-
 drivers/staging/wilc1000/coreconfigurator.c          | 10 +++++-----
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c    |  2 +-
 18 files changed, 29 insertions(+), 29 deletions(-)

-- 
1.9.1


