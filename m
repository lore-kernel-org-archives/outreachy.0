X-GM-THRID: 6391488728330665984
X-Received: by 10.129.179.136 with SMTP id r130mr32746ywh.162.1488251933395;
        Mon, 27 Feb 2017 19:18:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.111.205 with SMTP id x196ls103436itb.8.gmail; Mon, 27 Feb
 2017 19:18:52 -0800 (PST)
X-Received: by 10.99.55.4 with SMTP id e4mr37925pga.156.1488251932719;
        Mon, 27 Feb 2017 19:18:52 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id s64si84081pfk.0.2017.02.27.19.18.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 19:18:52 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c00::242 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c00::242 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pf0-x242.google.com with SMTP id o64so5567901pfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 19:18:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/mDsC3m+cCWHD9aDCTcG+l6VRFuml7l2CNtP9mZRqJQ=;
        b=PlnNIrKqSXHp3+A/n3THz7q9ZQ0zraMk+ZQICzh8Kw5rG+s7MfVvOHFgqc87FPVbgY
         vua625/BdHgoIU3uETQcjU1C7uVvSvA0T3NBf9jdCjWuX4DG/k3sZYT4dNsDpvD6hvAx
         0jg12FB+xDnVYE8UhCBGMyQPC14MIP9cjWi+IYOeUsOKHghr6a1QR5qXyF8Lmq/dfn9V
         zv/n7DPDFgSq4bljVFGmzxUAA93wMIioHWAy45nJvZ2C+VcLUjYtbCAWYfn+ZR4Ioy5B
         S5IbefEQ4BVgtreIOtI1d6kiy0zVOKE2/r+pLZ3qRlvFmFvyCogCzqTgj7Vyr2FDzBSe
         bnzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/mDsC3m+cCWHD9aDCTcG+l6VRFuml7l2CNtP9mZRqJQ=;
        b=M1v1y3lzCrhTLVcTN5GeBHRaH5LWqS2NEAWbImNn7hDr7CGohe8nmJWpeIkCBYRzcD
         oyQ+7uFamzCt/vbPAf5MdGjihqZWX2Pu39ELs0fsY82A5QpaltForh4vhC/h9ookhVzr
         xRJ3/WewlrDwQ37VInXQ8vzdL07LK6mBiPUuCyVEPvi82ByFDfoaexKV07E+GlSGkulE
         9R2w89q1YDCADhuAg0zNuTzGrRWL4KRH+6Ow87a5e4XkNHcYX7yMurLyMiLtFUNh/6uw
         bdvB51otNGoJD6NTNokXq2Tzwbc8bTac4l0Qfu6Xb5qNxw5Zf/hST3Y0vjtEJ0uzOSUp
         yaSQ==
X-Gm-Message-State: AMke39lQ+8FOyUPiu1fZGAKpUIxpN9feI3KBCbprzg6nDLLJOGy6h6eUDG+J2ubP/vHJRMfQ
X-Received: by 10.98.9.140 with SMTP id 12mr71814pfj.159.1488251932472;
        Mon, 27 Feb 2017 19:18:52 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 (c-67-188-119-183.hsd1.ca.comcast.net. [67.188.119.183])
        by smtp.gmail.com with ESMTPSA id e68sm410610pfa.85.2017.02.27.19.18.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 19:18:51 -0800 (PST)
Date: Mon, 27 Feb 2017 19:16:40 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Cc: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org, linux-iio@vger.kernel.org
Subject: [PATCH 1/3] staging: iio: meter: Remove unused definitions
Message-ID: <972438f1c7bc46153df933c5861fac91f6793e92.1488250885.git.kdunne@mail.ccsf.edu>
References: <cover.1488250884.git.kdunne@mail.ccsf.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488250884.git.kdunne@mail.ccsf.edu>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove definitions not used in kernel code.

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/iio/meter/ade7753.h | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/staging/iio/meter/ade7753.h b/drivers/staging/iio/meter/ade7753.h
index bfe7491..ea9284a 100644
--- a/drivers/staging/iio/meter/ade7753.h
+++ b/drivers/staging/iio/meter/ade7753.h
@@ -1,18 +1,12 @@
 #ifndef _ADE7753_H
 #define _ADE7753_H
 
-#define ADE7753_WAVEFORM   0x01
 #define ADE7753_AENERGY    0x02
-#define ADE7753_RAENERGY   0x03
 #define ADE7753_LAENERGY   0x04
 #define ADE7753_VAENERGY   0x05
-#define ADE7753_RVAENERGY  0x06
 #define ADE7753_LVAENERGY  0x07
-#define ADE7753_LVARENERGY 0x08
 #define ADE7753_MODE       0x09
 #define ADE7753_IRQEN      0x0A
-#define ADE7753_STATUS     0x0B
-#define ADE7753_RSTSTATUS  0x0C
 #define ADE7753_CH1OS      0x0D
 #define ADE7753_CH2OS      0x0E
 #define ADE7753_GAIN       0x0F
@@ -27,22 +21,15 @@
 #define ADE7753_IRMSOS     0x18
 #define ADE7753_VRMSOS     0x19
 #define ADE7753_VAGAIN     0x1A
-#define ADE7753_VADIV      0x1B
 #define ADE7753_LINECYC    0x1C
-#define ADE7753_ZXTOUT     0x1D
 #define ADE7753_SAGCYC     0x1E
 #define ADE7753_SAGLVL     0x1F
 #define ADE7753_IPKLVL     0x20
 #define ADE7753_VPKLVL     0x21
 #define ADE7753_IPEAK      0x22
-#define ADE7753_RSTIPEAK   0x23
 #define ADE7753_VPEAK      0x24
-#define ADE7753_RSTVPEAK   0x25
-#define ADE7753_TEMP       0x26
 #define ADE7753_PERIOD     0x27
-#define ADE7753_TMODE      0x3D
 #define ADE7753_CHKSUM     0x3E
-#define ADE7753_DIEREV     0x3F
 
 #define ADE7753_READ_REG(a)    a
 #define ADE7753_WRITE_REG(a) ((a) | 0x80)
@@ -52,7 +39,6 @@
 #define ADE7753_STARTUP_DELAY 1000
 
 #define ADE7753_SPI_SLOW	(u32)(300 * 1000)
-#define ADE7753_SPI_BURST	(u32)(1000 * 1000)
 #define ADE7753_SPI_FAST	(u32)(2000 * 1000)
 
 /**
-- 
2.7.4


