X-GM-THRID: 6393297121591689216
X-Received: by 10.99.137.193 with SMTP id v184mr1337342pgd.69.1488555483980;
        Fri, 03 Mar 2017 07:38:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.3.54 with SMTP id 51ls8197363otv.20.gmail; Fri, 03 Mar
 2017 07:38:03 -0800 (PST)
X-Received: by 10.129.172.96 with SMTP id z32mr1416575ywj.39.1488555483529;
        Fri, 03 Mar 2017 07:38:03 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id g82si95510pfb.5.2017.03.03.07.38.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 07:38:03 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c05::244 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c05::244 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pg0-x244.google.com with SMTP id 1so12997447pgz.2
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 07:38:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hagSjHZhKeYaWWR5vOvKcyWGWZS8XCsDBSTKqs4n+a0=;
        b=XcjWwd8nBpaz3Go76UKju4jpQwVX7yb+MIw9rpS9V4GEi+Fr2/bAvR29JewfcYNIr1
         JH5qqVPJn9KZnwogRhCyx6l2VJkPusCn5JGRJnKpxwN5+Qr9pkmO0tk0byHFzs4+sHcM
         2PZm++cyM8nCd0QEFbMWc+0AgSg2jnJ1rGTKbpEp9QypZv88+g+KQY+QPSMRMjsb4Nb/
         b6kuGH07ikb46NPEGKre+UdJPagl/tZ8enShOatD5YTXTHNGhMpzKFe1hafqIrAQZnBs
         reFnAivssMJoArmpCgvBOlEiovgqvpX3LwobH3caUUkvqt85ohGRNxWRUQXDJ19IWOlg
         l4YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hagSjHZhKeYaWWR5vOvKcyWGWZS8XCsDBSTKqs4n+a0=;
        b=Zk41gvHQ0r5ugi+7lDrtMltdbumQZo0kR8iiiUS6WVWmgACxRGFHFcrAcc6bXKXquO
         RfrNbjrbylAobPl+ISrDK+gWJ+hTIUSd1V6jS8h/70qulg7G8/rEKnsidg1BYEHlwXJR
         LuWU2Inxmh5BjXh46HTsyxgKwIjK6TKli1y3ADGJHg81V0/p71nL5dOTt1fH8LOIhLFf
         cPXT9LUk3ky4E1dDqO+wRiZKEwPtFIQ9B1SJPWZAd0M2PFczmGenLa7eFMNVAjl0Bp/3
         3ufuMCGTt+EYPCCLiH2aFYOOMh466DjZJBwxjCG9daGouQDO1P0s1D5xx1K9VQsTs6B6
         4gdQ==
X-Gm-Message-State: AMke39k7KEnYD51F593fFcOFWLCPABv7UwqKoiS9LC1JaHFgUjTd1kwZrvUsLXbz/203BpFg
X-Received: by 10.98.92.4 with SMTP id q4mr4121569pfb.151.1488555483158;
        Fri, 03 Mar 2017 07:38:03 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 (c-67-188-119-183.hsd1.ca.comcast.net. [67.188.119.183])
        by smtp.gmail.com with ESMTPSA id a16sm23604877pgd.62.2017.03.03.07.38.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 07:38:02 -0800 (PST)
Date: Fri, 3 Mar 2017 07:35:52 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Cc: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org, linux-iio@vger.kernel.org
Subject: [PATCH v2 1/2] staging: iio: meter: ade7753: Move header content to
 implementation file
Message-ID: <20170303153551.GB29234@katie-Inspiron-5748>
References: <cover.1488553341.git.kdunne@mail.ccsf.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488553341.git.kdunne@mail.ccsf.edu>
User-Agent: Mutt/1.5.24 (2015-08-30)

The contents of ade7753.h are only used in ade7753.c. Move the header
contents to the implementation file and delete the header file.

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/iio/meter/ade7753.c | 69 ++++++++++++++++++++++++++++++++++-
 drivers/staging/iio/meter/ade7753.h | 72 -------------------------------------
 2 files changed, 68 insertions(+), 73 deletions(-)
 delete mode 100644 drivers/staging/iio/meter/ade7753.h

diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
index 671dc99..063ff27 100644
--- a/drivers/staging/iio/meter/ade7753.c
+++ b/drivers/staging/iio/meter/ade7753.c
@@ -21,7 +21,74 @@
 #include <linux/iio/iio.h>
 #include <linux/iio/sysfs.h>
 #include "meter.h"
-#include "ade7753.h"
+
+#define ADE7753_WAVEFORM   0x01
+#define ADE7753_AENERGY    0x02
+#define ADE7753_RAENERGY   0x03
+#define ADE7753_LAENERGY   0x04
+#define ADE7753_VAENERGY   0x05
+#define ADE7753_RVAENERGY  0x06
+#define ADE7753_LVAENERGY  0x07
+#define ADE7753_LVARENERGY 0x08
+#define ADE7753_MODE       0x09
+#define ADE7753_IRQEN      0x0A
+#define ADE7753_STATUS     0x0B
+#define ADE7753_RSTSTATUS  0x0C
+#define ADE7753_CH1OS      0x0D
+#define ADE7753_CH2OS      0x0E
+#define ADE7753_GAIN       0x0F
+#define ADE7753_PHCAL      0x10
+#define ADE7753_APOS       0x11
+#define ADE7753_WGAIN      0x12
+#define ADE7753_WDIV       0x13
+#define ADE7753_CFNUM      0x14
+#define ADE7753_CFDEN      0x15
+#define ADE7753_IRMS       0x16
+#define ADE7753_VRMS       0x17
+#define ADE7753_IRMSOS     0x18
+#define ADE7753_VRMSOS     0x19
+#define ADE7753_VAGAIN     0x1A
+#define ADE7753_VADIV      0x1B
+#define ADE7753_LINECYC    0x1C
+#define ADE7753_ZXTOUT     0x1D
+#define ADE7753_SAGCYC     0x1E
+#define ADE7753_SAGLVL     0x1F
+#define ADE7753_IPKLVL     0x20
+#define ADE7753_VPKLVL     0x21
+#define ADE7753_IPEAK      0x22
+#define ADE7753_RSTIPEAK   0x23
+#define ADE7753_VPEAK      0x24
+#define ADE7753_RSTVPEAK   0x25
+#define ADE7753_TEMP       0x26
+#define ADE7753_PERIOD     0x27
+#define ADE7753_TMODE      0x3D
+#define ADE7753_CHKSUM     0x3E
+#define ADE7753_DIEREV     0x3F
+
+#define ADE7753_READ_REG(a)    a
+#define ADE7753_WRITE_REG(a) ((a) | 0x80)
+
+#define ADE7753_MAX_TX    4
+#define ADE7753_MAX_RX    4
+#define ADE7753_STARTUP_DELAY 1000
+
+#define ADE7753_SPI_SLOW    (u32)(300 * 1000)
+#define ADE7753_SPI_BURST   (u32)(1000 * 1000)
+#define ADE7753_SPI_FAST    (u32)(2000 * 1000)
+
+/**
+ * struct ade7753_state - device instance specific data
+ * @us:         actual spi_device
+ * @tx:         transmit buffer
+ * @rx:         receive buffer
+ * @buf_lock:       mutex to protect tx and rx
+ **/
+struct ade7753_state {
+	    struct spi_device   *us;
+		    struct mutex        buf_lock;
+			    u8          tx[ADE7753_MAX_TX] ____cacheline_aligned;
+				    u8          rx[ADE7753_MAX_RX];
+};
 
 static int ade7753_spi_write_reg_8(struct device *dev,
 				   u8 reg_address,
diff --git a/drivers/staging/iio/meter/ade7753.h b/drivers/staging/iio/meter/ade7753.h
deleted file mode 100644
index bfe7491..0000000
--- a/drivers/staging/iio/meter/ade7753.h
+++ /dev/null
@@ -1,72 +0,0 @@
-#ifndef _ADE7753_H
-#define _ADE7753_H
-
-#define ADE7753_WAVEFORM   0x01
-#define ADE7753_AENERGY    0x02
-#define ADE7753_RAENERGY   0x03
-#define ADE7753_LAENERGY   0x04
-#define ADE7753_VAENERGY   0x05
-#define ADE7753_RVAENERGY  0x06
-#define ADE7753_LVAENERGY  0x07
-#define ADE7753_LVARENERGY 0x08
-#define ADE7753_MODE       0x09
-#define ADE7753_IRQEN      0x0A
-#define ADE7753_STATUS     0x0B
-#define ADE7753_RSTSTATUS  0x0C
-#define ADE7753_CH1OS      0x0D
-#define ADE7753_CH2OS      0x0E
-#define ADE7753_GAIN       0x0F
-#define ADE7753_PHCAL      0x10
-#define ADE7753_APOS       0x11
-#define ADE7753_WGAIN      0x12
-#define ADE7753_WDIV       0x13
-#define ADE7753_CFNUM      0x14
-#define ADE7753_CFDEN      0x15
-#define ADE7753_IRMS       0x16
-#define ADE7753_VRMS       0x17
-#define ADE7753_IRMSOS     0x18
-#define ADE7753_VRMSOS     0x19
-#define ADE7753_VAGAIN     0x1A
-#define ADE7753_VADIV      0x1B
-#define ADE7753_LINECYC    0x1C
-#define ADE7753_ZXTOUT     0x1D
-#define ADE7753_SAGCYC     0x1E
-#define ADE7753_SAGLVL     0x1F
-#define ADE7753_IPKLVL     0x20
-#define ADE7753_VPKLVL     0x21
-#define ADE7753_IPEAK      0x22
-#define ADE7753_RSTIPEAK   0x23
-#define ADE7753_VPEAK      0x24
-#define ADE7753_RSTVPEAK   0x25
-#define ADE7753_TEMP       0x26
-#define ADE7753_PERIOD     0x27
-#define ADE7753_TMODE      0x3D
-#define ADE7753_CHKSUM     0x3E
-#define ADE7753_DIEREV     0x3F
-
-#define ADE7753_READ_REG(a)    a
-#define ADE7753_WRITE_REG(a) ((a) | 0x80)
-
-#define ADE7753_MAX_TX    4
-#define ADE7753_MAX_RX    4
-#define ADE7753_STARTUP_DELAY 1000
-
-#define ADE7753_SPI_SLOW	(u32)(300 * 1000)
-#define ADE7753_SPI_BURST	(u32)(1000 * 1000)
-#define ADE7753_SPI_FAST	(u32)(2000 * 1000)
-
-/**
- * struct ade7753_state - device instance specific data
- * @us:			actual spi_device
- * @tx:			transmit buffer
- * @rx:			receive buffer
- * @buf_lock:		mutex to protect tx and rx
- **/
-struct ade7753_state {
-	struct spi_device	*us;
-	struct mutex		buf_lock;
-	u8			tx[ADE7753_MAX_TX] ____cacheline_aligned;
-	u8			rx[ADE7753_MAX_RX];
-};
-
-#endif
-- 
2.7.4


