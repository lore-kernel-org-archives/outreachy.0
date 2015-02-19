X-GM-THRID: 1008142909440
X-Received: by 10.66.190.104 with SMTP id gp8mr6990083pac.26.1424389395439;
        Thu, 19 Feb 2015 15:43:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.47.47 with SMTP id a15ls2323616ign.20.canary; Thu, 19 Feb
 2015 15:43:15 -0800 (PST)
X-Received: by 10.66.171.9 with SMTP id aq9mr7074162pac.20.1424389395049;
        Thu, 19 Feb 2015 15:43:15 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pd0-f181.google.com (mail-pd0-f181.google.com. [209.85.192.181])
        by gmr-mx.google.com with ESMTPS id ki8si3086388pdb.1.2015.02.19.15.43.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 15:43:15 -0800 (PST)
Received-SPF: none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) client-ip=209.85.192.181;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) smtp.mail=kdunne@mail.ccsf.edu
Received: by pdjz10 with SMTP id z10so3309197pdj.12
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 15:43:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=sBuxMvypUcilYsRjNeXMRq5ESXQ6DPrKqbMhkdJau8U=;
        b=h96aKvsEk7IVKSKIhl8aKQO6RpoSTeYEjRkoQEDYkwK6LgRg/jOdCdX/drQ96aA5FK
         PlJw6zF5f/l6g1Ln1hkTbFdYwxBMBADEUVzIPXnYYTVuQ0QIgMB/7kcJHi/YF39IIU5p
         woe/NMsjIqDzgw5EftZnjL9rYk6psXO3LvwPVpploVtYfAPNtXHu8R4hXV2JE9THWVXi
         mucvrp7JSvuXi1ImgTvwq3MBlCcZARnuJELmV2EA92qHYorCqwsPgc23EPrTy8jGwSJq
         qQKHwUjsijrdwVO6PmldoS2BbUaf1CnkouUuAXRSZHV9KKDhFz6lw50wD5B7XAeamWnS
         GoVg==
X-Gm-Message-State: ALoCoQlMiflJtBhakxq7QuCr+WKezr+MaxixMuNHdcHM6IVkOKjv5PtYpAMWSpZ0LzMsJgUdOnlK
X-Received: by 10.70.45.199 with SMTP id p7mr12128968pdm.32.1424389394845;
        Thu, 19 Feb 2015 15:43:14 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2601:9:8340:b6:4de2:180e:ccf2:60e5])
        by mx.google.com with ESMTPSA id ii3sm6806851pac.22.2015.02.19.15.43.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 15:43:14 -0800 (PST)
Date: Thu, 19 Feb 2015 15:43:12 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: vt6655: Replace C99 comments with C89
Message-ID: <20150219234312.GA6364@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Addresses the checkpatch.pl error:
ERROR: Do not use C99 // comments

Remove an unneeded comment line
Replace C99 comments with C89
Reduce multiple line comments to one line
Shorten comments over 80 line by removing blank space

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
Changes in v2:
 -Make commit message more concise
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


