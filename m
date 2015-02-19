X-GM-THRID: 1008142909440
X-Received: by 10.182.113.228 with SMTP id jb4mr6491342obb.31.1424381524159;
        Thu, 19 Feb 2015 13:32:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.87.119 with SMTP id q110ls895013qgd.15.gmail; Thu, 19 Feb
 2015 13:32:03 -0800 (PST)
X-Received: by 10.236.23.226 with SMTP id v62mr6238179yhv.25.1424381523907;
        Thu, 19 Feb 2015 13:32:03 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com. [209.85.220.42])
        by gmr-mx.google.com with ESMTPS id ks4si3055703pbc.1.2015.02.19.13.32.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 13:32:03 -0800 (PST)
Received-SPF: none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) client-ip=209.85.220.42;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) smtp.mail=kdunne@mail.ccsf.edu
Received: by pablf10 with SMTP id lf10so2598770pab.12
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 13:32:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=VcI1hU8OMXE8x67aPMoIA4GR5Wcg23Aa9LTL64LyTU4=;
        b=ateAhv9Z14V1vjckbr6+A1iCePvvK7TuoOmzYpX04MsFljzPfI8nIn3RrzkqXR5pw2
         gmznX5CXh07d9kgjQeugKuyEW9OeVUQ84hmf3lJaRYy4IB3JqzfD68nj89S2zMgZE7Ip
         5gkx7Ee3+rcp3LK759UVQ7sjVgSjwOXnPIUtMeByyBnTRayPbLbz1V0uwoTGwdUhx8Ha
         T907EsDkNt4uovZKYA5EgJTIS+xo1ACHTob+27GxueKqzzCc6OeWlreXDA/4PeZlcfKm
         FycmXpG14D00zj7XUaJJMX5savQMbx7gMCtZ/bRDl8HG3KNb9mGIdnV+jxF8FPpAIgz0
         JBGw==
X-Gm-Message-State: ALoCoQmaaEaJ98R4W/03h/Qqya/u4fYspS97YekZ0i3Ps9JnEgeLuMLolKkmhtMVLidszq0Y8iMy
X-Received: by 10.66.159.67 with SMTP id xa3mr4257347pab.13.1424381523626;
        Thu, 19 Feb 2015 13:32:03 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2601:9:8340:b6:4de2:180e:ccf2:60e5])
        by mx.google.com with ESMTPSA id jp10sm24707877pbb.2.2015.02.19.13.32.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 13:32:02 -0800 (PST)
Date: Thu, 19 Feb 2015 13:31:58 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: vt6655: Replace C99 comments with C89
Message-ID: <20150219213158.GA4844@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch addresses the checkpatch.pl error:
ERROR: Do not use C99 // comments

An existing C89 comment is edited by removing an extra blank line
C99 comments are replaced with C89 comments
Needlessly multiple comment lines are reduced to one line
2 Comments over 80 characters are shortened by removing blank space

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/vt6655/srom.h | 47 ++++++++++++++++++-------------------------
 1 file changed, 20 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/vt6655/srom.h b/drivers/staging/vt6655/srom.h
index 7d3e3ef..fc4b179 100644
--- a/drivers/staging/vt6655/srom.h
+++ b/drivers/staging/vt6655/srom.h
@@ -24,7 +24,6 @@
  * Author: Jerry Chen
  *
  * Date: Jan 29, 2003
- *
  */
 
 #ifndef __SROM_H__
@@ -34,56 +33,50 @@
 
 #define EEP_MAX_CONTEXT_SIZE    256
 
-#define CB_EEPROM_READBYTE_WAIT 900     //us
+#define CB_EEPROM_READBYTE_WAIT 900     /* us */
 
 #define W_MAX_I2CRETRY          0x0fff
 
-//
-// Contents in the EEPROM
-//
-#define EEP_OFS_PAR         0x00        // physical address
+/* Contents in the EEPROM */
+#define EEP_OFS_PAR         0x00        /* physical address */
 #define EEP_OFS_ANTENNA     0x16
 #define EEP_OFS_RADIOCTL    0x17
-#define EEP_OFS_RFTYPE      0x1B        // for select RF
-#define EEP_OFS_MINCHANNEL  0x1C        // Min Channel #
-#define EEP_OFS_MAXCHANNEL  0x1D        // Max Channel #
-#define EEP_OFS_SIGNATURE   0x1E        //
-#define EEP_OFS_ZONETYPE    0x1F        //
-#define EEP_OFS_RFTABLE     0x20        // RF POWER TABLE
+#define EEP_OFS_RFTYPE      0x1B        /* for select RF */
+#define EEP_OFS_MINCHANNEL  0x1C        /* Min Channel # */
+#define EEP_OFS_MAXCHANNEL  0x1D        /* Max Channel # */
+#define EEP_OFS_SIGNATURE   0x1E
+#define EEP_OFS_ZONETYPE    0x1F
+#define EEP_OFS_RFTABLE     0x20        /* RF POWER TABLE */
 #define EEP_OFS_PWR_CCK     0x20
 #define EEP_OFS_SETPT_CCK   0x21
 #define EEP_OFS_PWR_OFDMG   0x23
 #define EEP_OFS_SETPT_OFDMG 0x24
-#define EEP_OFS_PWR_FORMULA_OST  0x26   //
+#define EEP_OFS_PWR_FORMULA_OST  0x26
 #define EEP_OFS_MAJOR_VER 0x2E
 #define EEP_OFS_MINOR_VER 0x2F
 #define EEP_OFS_CCK_PWR_TBL     0x30
 #define EEP_OFS_CCK_PWR_dBm     0x3F
 #define EEP_OFS_OFDM_PWR_TBL    0x40
 #define EEP_OFS_OFDM_PWR_dBm    0x4F
-//{{ RobertYu: 20041124
+/*{{ RobertYu: 20041124 */
 #define EEP_OFS_SETPT_OFDMA         0x4E
 #define EEP_OFS_OFDMA_PWR_TBL       0x50
-//}}
+/*}}*/
 #define EEP_OFS_OFDMA_PWR_dBm       0xD2
 
-//----------need to remove --------------------
-#define EEP_OFS_BBTAB_LEN   0x70        // BB Table Length
-#define EEP_OFS_BBTAB_ADR   0x71        // BB Table Offset
-#define EEP_OFS_CHECKSUM    0xFF        // reserved area for baseband 28h ~ 78h
+/*----------need to remove --------------------*/
+#define EEP_OFS_BBTAB_LEN   0x70        /* BB Table Length */
+#define EEP_OFS_BBTAB_ADR   0x71        /* BB Table Offset */
+#define EEP_OFS_CHECKSUM    0xFF        /* reserved area for baseband 28h~78h */
 
-#define EEP_I2C_DEV_ID      0x50        // EEPROM device address on the I2C bus
+#define EEP_I2C_DEV_ID      0x50        /* EEPROM device address on I2C bus */
 
-//
-// Bits in EEP_OFS_ANTENNA
-//
+/* Bits in EEP_OFS_ANTENNA */
 #define EEP_ANTENNA_MAIN    0x01
 #define EEP_ANTENNA_AUX     0x02
 #define EEP_ANTINV          0x04
 
-//
-// Bits in EEP_OFS_RADIOCTL
-//
+/* Bits in EEP_OFS_RADIOCTL */
 #define EEP_RADIOCTL_ENABLE 0x80
 #define EEP_RADIOCTL_INV    0x01
 
@@ -103,4 +96,4 @@ void SROMvReadAllContents(void __iomem *dwIoBase, unsigned char *pbyEepromRegs);
 
 void SROMvReadEtherAddress(void __iomem *dwIoBase, unsigned char *pbyEtherAddress);
 
-#endif // __EEPROM_H__
+#endif /* __EEPROM_H__*/
-- 
1.9.1


