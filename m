X-GM-THRID: 6615276278302900224
X-Received: by 2002:a19:4c46:: with SMTP id z67-v6mr696446lfa.10.1540239033305;
        Mon, 22 Oct 2018 13:10:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:88c1:: with SMTP id a1-v6ls110544ljk.26.gmail; Mon, 22
 Oct 2018 13:10:31 -0700 (PDT)
X-Google-Smtp-Source: ACcGV618qlEaVEH6yka2JiPmgZyo9OqL7YuxwFwafBQaHmpu2F2g+AxSxKD+2fcm8PiO1IB66zcB
X-Received: by 2002:a2e:3c08:: with SMTP id j8-v6mr1626831lja.10.1540239031122;
        Mon, 22 Oct 2018 13:10:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540239031; cv=none;
        d=google.com; s=arc-20160816;
        b=ho5sMr63J8c3nS575ez5iFuX7RNNcMbjY8uayKZ+MyseyKdTXSQiqw8FeycK9GPJT6
         hC9PIVr8crLW3Db+py/gaktuacjUNFDrJwUc8MNtqEzb5q9UYcv4X8f+PMDRs4izHjoE
         +uSPCUxORkNvKn2PdWkW53DYP591EXcGaU/xe2pELbWKF2OX7XiSfM8z28McGwz2uWFu
         ShSACUqs4d7k+O+kbsmGem2QSwJzjukPBPDtY3EiQHBCzwGZVPxIP4tteNqr1kL6Gyao
         xiVvenc7d/on8UHSrs+9f7ZIUgdWQh4e3/ZTlqrY5jUKpfYmSz+tILYNa82rNVcw48/J
         uLOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=AiSo/pSOdbcJUYPiye2mMAr0TBgmepwJnrU8q3jhk88=;
        b=nxSHpZovkbrNs0KPbeoTPKFmEUFDtPLaDvBX1MkFD8hLZSGJmR9ZDKS9er7noGsdFl
         NveoHAN/DNxbEk5zCbESUrzh3gIHUxU3IEfSDuAbe1k4z28oLUvhdLiCBtT1JbuPBMrC
         0P3fID7d1P6zEjExASH25UUZR00OVKx2hfyTnCBUh+BpSSmsXa8tVzVYCZR0ZWT9f5vf
         skyPu603iIDJMOKn6ix3kIyJdcDCV5adWEqR5gZfxQrv7BDtPogqN+oyqrW/nUq6wbo6
         sp2Z0ZFqmM8zcOoVvMfn6NM/GUMfoJ7iqRFLb4SaE8dUV9R10L7ZNaDyDIGw1iaXV92h
         jKCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q9DWoZSk;
       spf=pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=kim.jamie.bradley@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kim.jamie.bradley@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id z13-v6si1046181ljb.4.2018.10.22.13.10.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 13:10:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q9DWoZSk;
       spf=pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=kim.jamie.bradley@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id d2-v6so46339313wro.7
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Oct 2018 13:10:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=AiSo/pSOdbcJUYPiye2mMAr0TBgmepwJnrU8q3jhk88=;
        b=q9DWoZSku1kYfk+L8d9p0unjF5ZzKxpU0vRTzlBghNCTyExPDVELTALPjLdVVLnwbt
         tcgMpS4J3RbtnARLMLuWjF4LlJEEp6TMzW9hXP9AAiM5SrovXVkaDD4TplwU8HJTDpKp
         c13gMggVhuBE/l52tBiHJZMARnFPszT6Vo2AfEg7JqAh2hUKleSUqOw5rOGlOnjZBYUU
         Opy2LgocDw3plvDp3I152zBcM3mD4T/lpzikp3nbIF3c6MsYvYs1Mok2XpwDOKI3UpHM
         RLlRATVl2m8i9tT4O188Bm1haLcNkAUbzRxYbBJRhQ+H5t55g8R78rDjvKR/VsA7cRpY
         Z6Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=AiSo/pSOdbcJUYPiye2mMAr0TBgmepwJnrU8q3jhk88=;
        b=ENTfHy4pROMDD205hc2YRt6Gcs0Fz6tbIWmIYsW+hVgtRXmOmWa+4frc7qzPk0z+Y/
         1JFqMHALyXFR7x0OYP9Zt5KqLyVXgC/7VQAfDdp2oTNyaKGEnJWHbwPEacnnsFsLl0nH
         XLXJsOOazcCdyXhXtfTwLZxg1Eylsc+6F9oTNF7/B07kySMdoipCUEho95Eunvz89XmN
         GL3+AN5/nvTF1w1eOWzgLxLbc1qh8oIOa6fsY+nbAjG+gH1UsoRHNH9pGfQpZQePFund
         +e0HVCa9ENJku2d3zw7NbnpjhaNvv2DH60Rfpr8r35Pxen1eFNUXUThEMBPd8JA/eaY/
         3aAg==
X-Gm-Message-State: ABuFfohDdl38iAhXyVkKB8/6ngm4Cokw5wAwq9oYZivlN2Jhv9KZHP2E
	X34Racy+s1tq2ObsZtj/9RT+b7H5BhA=
X-Received: by 2002:a5d:548e:: with SMTP id h14-v6mr47443211wrv.316.1540239030010;
        Mon, 22 Oct 2018 13:10:30 -0700 (PDT)
Return-Path: <kim.jamie.bradley@gmail.com>
Received: from ascii (host86-167-247-131.range86-167.btcentralplus.com. [86.167.247.131])
        by smtp.gmail.com with ESMTPSA id j203-v6sm16902865wmd.46.2018.10.22.13.10.28
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 22 Oct 2018 13:10:29 -0700 (PDT)
Date: Mon, 22 Oct 2018 21:10:26 +0100
From: Kim Bradley <kim.jamie.bradley@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: rts5208: Add SPDX license tags
Message-ID: <20181022201022.GA3133@ascii>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Add SPDX license tags to remove checkpatch SPDX warnings.

Signed-off-by: Kim Bradley <kim.jamie.bradley@gmail.com>
---
 drivers/staging/rts5208/general.c        | 17 +++--------------
 drivers/staging/rts5208/general.h        | 18 +++---------------
 drivers/staging/rts5208/ms.c             | 17 +++--------------
 drivers/staging/rts5208/ms.h             | 18 +++---------------
 drivers/staging/rts5208/rtsx.c           | 17 +++--------------
 drivers/staging/rts5208/rtsx.h           | 18 +++---------------
 drivers/staging/rts5208/rtsx_card.c      | 17 +++--------------
 drivers/staging/rts5208/rtsx_card.h      | 18 +++---------------
 drivers/staging/rts5208/rtsx_chip.c      | 17 +++--------------
 drivers/staging/rts5208/rtsx_chip.h      | 18 +++---------------
 drivers/staging/rts5208/rtsx_scsi.c      | 17 +++--------------
 drivers/staging/rts5208/rtsx_scsi.h      | 18 +++---------------
 drivers/staging/rts5208/rtsx_sys.h       | 18 +++---------------
 drivers/staging/rts5208/rtsx_transport.c | 14 +-------------
 drivers/staging/rts5208/rtsx_transport.h | 18 +++---------------
 drivers/staging/rts5208/sd.c             | 17 +++--------------
 drivers/staging/rts5208/sd.h             | 18 +++---------------
 drivers/staging/rts5208/spi.c            | 17 +++--------------
 drivers/staging/rts5208/spi.h            | 18 +++---------------
 drivers/staging/rts5208/xd.c             | 17 +++--------------
 drivers/staging/rts5208/xd.h             | 18 +++---------------
 21 files changed, 61 insertions(+), 304 deletions(-)

diff --git a/drivers/staging/rts5208/general.c b/drivers/staging/rts5208/general.c
index 79d245877264..0f912b011064 100644
--- a/drivers/staging/rts5208/general.c
+++ b/drivers/staging/rts5208/general.c
@@ -1,20 +1,9 @@
-/* Driver for Realtek PCI-Express card reader
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Driver for Realtek PCI-Express card reader
  *
  * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2, or (at your option) any
- * later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Author:
  *   Wei WANG (wei_wang@realsil.com.cn)
  *   Micky Ching (micky_ching@realsil.com.cn)
diff --git a/drivers/staging/rts5208/general.h b/drivers/staging/rts5208/general.h
index 90a1f9297f5e..53e2dbabf04b 100644
--- a/drivers/staging/rts5208/general.h
+++ b/drivers/staging/rts5208/general.h
@@ -1,21 +1,9 @@
-/* Driver for Realtek PCI-Express card reader
- * Header file
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Driver for Realtek PCI-Express card reader
  *
  * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2, or (at your option) any
- * later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Author:
  *   Wei WANG (wei_wang@realsil.com.cn)
  *   Micky Ching (micky_ching@realsil.com.cn)
diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index f53adf15c685..e43f92080c20 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -1,20 +1,9 @@
-/* Driver for Realtek PCI-Express card reader
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Driver for Realtek PCI-Express card reader
  *
  * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2, or (at your option) any
- * later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Author:
  *   Wei WANG (wei_wang@realsil.com.cn)
  *   Micky Ching (micky_ching@realsil.com.cn)
diff --git a/drivers/staging/rts5208/ms.h b/drivers/staging/rts5208/ms.h
index 71f98cc03eed..952cc14dd079 100644
--- a/drivers/staging/rts5208/ms.h
+++ b/drivers/staging/rts5208/ms.h
@@ -1,21 +1,9 @@
-/* Driver for Realtek PCI-Express card reader
- * Header file
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Driver for Realtek PCI-Express card reader
  *
  * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2, or (at your option) any
- * later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Author:
  *   Wei WANG (wei_wang@realsil.com.cn)
  *   Micky Ching (micky_ching@realsil.com.cn)
diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index 69e6abe14abf..e27687719d1d 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -1,20 +1,9 @@
-/* Driver for Realtek PCI-Express card reader
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Driver for Realtek PCI-Express card reader
  *
  * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2, or (at your option) any
- * later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Author:
  *   Wei WANG (wei_wang@realsil.com.cn)
  *   Micky Ching (micky_ching@realsil.com.cn)
diff --git a/drivers/staging/rts5208/rtsx.h b/drivers/staging/rts5208/rtsx.h
index 514536a6f92b..2e101da83220 100644
--- a/drivers/staging/rts5208/rtsx.h
+++ b/drivers/staging/rts5208/rtsx.h
@@ -1,21 +1,9 @@
-/* Driver for Realtek PCI-Express card reader
- * Header file
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Driver for Realtek PCI-Express card reader
  *
  * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2, or (at your option) any
- * later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Author:
  *   Wei WANG (wei_wang@realsil.com.cn)
  *   Micky Ching (micky_ching@realsil.com.cn)
diff --git a/drivers/staging/rts5208/rtsx_card.c b/drivers/staging/rts5208/rtsx_card.c
index 6dc541e06fb9..294f381518fa 100644
--- a/drivers/staging/rts5208/rtsx_card.c
+++ b/drivers/staging/rts5208/rtsx_card.c
@@ -1,20 +1,9 @@
-/* Driver for Realtek PCI-Express card reader
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Driver for Realtek PCI-Express card reader
  *
  * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2, or (at your option) any
- * later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Author:
  *   Wei WANG (wei_wang@realsil.com.cn)
  *   Micky Ching (micky_ching@realsil.com.cn)
diff --git a/drivers/staging/rts5208/rtsx_card.h b/drivers/staging/rts5208/rtsx_card.h
index 820b1113ea89..39727371cd7a 100644
--- a/drivers/staging/rts5208/rtsx_card.h
+++ b/drivers/staging/rts5208/rtsx_card.h
@@ -1,21 +1,9 @@
-/* Driver for Realtek PCI-Express card reader
- * Header file
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Driver for Realtek PCI-Express card reader
  *
  * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2, or (at your option) any
- * later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Author:
  *   Wei WANG (wei_wang@realsil.com.cn)
  *   Micky Ching (micky_ching@realsil.com.cn)
diff --git a/drivers/staging/rts5208/rtsx_chip.c b/drivers/staging/rts5208/rtsx_chip.c
index 94fb35429bf1..76c35f3c0208 100644
--- a/drivers/staging/rts5208/rtsx_chip.c
+++ b/drivers/staging/rts5208/rtsx_chip.c
@@ -1,20 +1,9 @@
-/* Driver for Realtek PCI-Express card reader
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Driver for Realtek PCI-Express card reader
  *
  * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2, or (at your option) any
- * later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Author:
  *   Wei WANG (wei_wang@realsil.com.cn)
  *   Micky Ching (micky_ching@realsil.com.cn)
diff --git a/drivers/staging/rts5208/rtsx_chip.h b/drivers/staging/rts5208/rtsx_chip.h
index ec1c3d96d31a..7325362f835f 100644
--- a/drivers/staging/rts5208/rtsx_chip.h
+++ b/drivers/staging/rts5208/rtsx_chip.h
@@ -1,21 +1,9 @@
-/* Driver for Realtek PCI-Express card reader
- * Header file
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Driver for Realtek PCI-Express card reader
  *
  * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2, or (at your option) any
- * later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Author:
  *   Wei WANG (wei_wang@realsil.com.cn)
  *   Micky Ching (micky_ching@realsil.com.cn)
diff --git a/drivers/staging/rts5208/rtsx_scsi.c b/drivers/staging/rts5208/rtsx_scsi.c
index 9c594a778425..1deb74112ad4 100644
--- a/drivers/staging/rts5208/rtsx_scsi.c
+++ b/drivers/staging/rts5208/rtsx_scsi.c
@@ -1,20 +1,9 @@
-/* Driver for Realtek PCI-Express card reader
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Driver for Realtek PCI-Express card reader
  *
  * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2, or (at your option) any
- * later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Author:
  *   Wei WANG (wei_wang@realsil.com.cn)
  *   Micky Ching (micky_ching@realsil.com.cn)
diff --git a/drivers/staging/rts5208/rtsx_scsi.h b/drivers/staging/rts5208/rtsx_scsi.h
index 30f3724848fe..df6138c97aaa 100644
--- a/drivers/staging/rts5208/rtsx_scsi.h
+++ b/drivers/staging/rts5208/rtsx_scsi.h
@@ -1,21 +1,9 @@
-/* Driver for Realtek PCI-Express card reader
- * Header file
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Driver for Realtek PCI-Express card reader
  *
  * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2, or (at your option) any
- * later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Author:
  *   Wei WANG (wei_wang@realsil.com.cn)
  *   Micky Ching (micky_ching@realsil.com.cn)
diff --git a/drivers/staging/rts5208/rtsx_sys.h b/drivers/staging/rts5208/rtsx_sys.h
index 817700c0d794..77094809c814 100644
--- a/drivers/staging/rts5208/rtsx_sys.h
+++ b/drivers/staging/rts5208/rtsx_sys.h
@@ -1,21 +1,9 @@
-/* Driver for Realtek PCI-Express card reader
- * Header file
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Driver for Realtek PCI-Express card reader
  *
  * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2, or (at your option) any
- * later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Author:
  *   Wei WANG (wei_wang@realsil.com.cn)
  *   Micky Ching (micky_ching@realsil.com.cn)
diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index b4a796c570c2..8277d7895608 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -1,21 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0+
 /*
  * Driver for Realtek PCI-Express card reader
  *
  * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2, or (at your option) any
- * later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Author:
  *   Wei WANG (wei_wang@realsil.com.cn)
  *   Micky Ching (micky_ching@realsil.com.cn)
diff --git a/drivers/staging/rts5208/rtsx_transport.h b/drivers/staging/rts5208/rtsx_transport.h
index 99740c33f2fb..097efed24b79 100644
--- a/drivers/staging/rts5208/rtsx_transport.h
+++ b/drivers/staging/rts5208/rtsx_transport.h
@@ -1,21 +1,9 @@
-/* Driver for Realtek PCI-Express card reader
- * Header file
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Driver for Realtek PCI-Express card reader
  *
  * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2, or (at your option) any
- * later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Author:
  *   Wei WANG (wei_wang@realsil.com.cn)
  *   Micky Ching (micky_ching@realsil.com.cn)
diff --git a/drivers/staging/rts5208/sd.c b/drivers/staging/rts5208/sd.c
index ff1a9aa152ce..2c47ae613ea1 100644
--- a/drivers/staging/rts5208/sd.c
+++ b/drivers/staging/rts5208/sd.c
@@ -1,20 +1,9 @@
-/* Driver for Realtek PCI-Express card reader
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Driver for Realtek PCI-Express card reader
  *
  * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2, or (at your option) any
- * later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Author:
  *   Wei WANG (wei_wang@realsil.com.cn)
  *   Micky Ching (micky_ching@realsil.com.cn)
diff --git a/drivers/staging/rts5208/sd.h b/drivers/staging/rts5208/sd.h
index 900be444acf9..e124526360b2 100644
--- a/drivers/staging/rts5208/sd.h
+++ b/drivers/staging/rts5208/sd.h
@@ -1,21 +1,9 @@
-/* Driver for Realtek PCI-Express card reader
- * Header file
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Driver for Realtek PCI-Express card reader
  *
  * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2, or (at your option) any
- * later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Author:
  *   Wei WANG (wei_wang@realsil.com.cn)
  *   Micky Ching (micky_ching@realsil.com.cn)
diff --git a/drivers/staging/rts5208/spi.c b/drivers/staging/rts5208/spi.c
index 110cb9093f30..f1e9e80044ed 100644
--- a/drivers/staging/rts5208/spi.c
+++ b/drivers/staging/rts5208/spi.c
@@ -1,20 +1,9 @@
-/* Driver for Realtek PCI-Express card reader
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Driver for Realtek PCI-Express card reader
  *
  * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2, or (at your option) any
- * later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Author:
  *   Wei WANG (wei_wang@realsil.com.cn)
  *   Micky Ching (micky_ching@realsil.com.cn)
diff --git a/drivers/staging/rts5208/spi.h b/drivers/staging/rts5208/spi.h
index c8d2beacd9e5..dcf93c80b2d5 100644
--- a/drivers/staging/rts5208/spi.h
+++ b/drivers/staging/rts5208/spi.h
@@ -1,21 +1,9 @@
-/* Driver for Realtek PCI-Express card reader
- * Header file
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Driver for Realtek PCI-Express card reader
  *
  * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2, or (at your option) any
- * later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Author:
  *   Wei WANG (wei_wang@realsil.com.cn)
  *   Micky Ching (micky_ching@realsil.com.cn)
diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
index d71f19ceb6fa..c5ee04ecd1c9 100644
--- a/drivers/staging/rts5208/xd.c
+++ b/drivers/staging/rts5208/xd.c
@@ -1,20 +1,9 @@
-/* Driver for Realtek PCI-Express card reader
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Driver for Realtek PCI-Express card reader
  *
  * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2, or (at your option) any
- * later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Author:
  *   Wei WANG (wei_wang@realsil.com.cn)
  *   Micky Ching (micky_ching@realsil.com.cn)
diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h
index d5f10880efb7..bf21bf0d1616 100644
--- a/drivers/staging/rts5208/xd.h
+++ b/drivers/staging/rts5208/xd.h
@@ -1,21 +1,9 @@
-/* Driver for Realtek PCI-Express card reader
- * Header file
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Driver for Realtek PCI-Express card reader
  *
  * Copyright(c) 2009-2013 Realtek Semiconductor Corp. All rights reserved.
  *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms of the GNU General Public License as published by the
- * Free Software Foundation; either version 2, or (at your option) any
- * later version.
- *
- * This program is distributed in the hope that it will be useful, but
- * WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
- * General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License along
- * with this program; if not, see <http://www.gnu.org/licenses/>.
- *
  * Author:
  *   Wei WANG (wei_wang@realsil.com.cn)
  *   Micky Ching (micky_ching@realsil.com.cn)
-- 
2.19.1



