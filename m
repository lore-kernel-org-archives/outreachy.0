X-GM-THRID: 6391488728330665984
X-Received: by 10.157.56.118 with SMTP id r51mr4683301otd.94.1488134698940;
        Sun, 26 Feb 2017 10:44:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.180.129 with SMTP id d123ls718773iof.16.gmail; Sun, 26 Feb
 2017 10:44:58 -0800 (PST)
X-Received: by 10.99.109.14 with SMTP id i14mr4742121pgc.152.1488134698329;
        Sun, 26 Feb 2017 10:44:58 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id h79si3510pfh.2.2017.02.26.10.44.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 10:44:58 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:400e:c05::241 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mail-ccsf-edu.20150623.gappssmtp.com;
       spf=neutral (google.com: 2607:f8b0:400e:c05::241 is neither permitted nor denied by best guess record for domain of kdunne@mail.ccsf.edu) smtp.mailfrom=kdunne@mail.ccsf.edu
Received: by mail-pg0-x241.google.com with SMTP id 5so10146166pgj.0
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 10:44:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mail-ccsf-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/mDsC3m+cCWHD9aDCTcG+l6VRFuml7l2CNtP9mZRqJQ=;
        b=AkwdPd5WLBYAxLDdeHT13kJQJu+cLt9qLHfxmWRAHiFj6Dx1fYMhEc8ELQUPo5B2iv
         xnZH61RI3Cwc2BHA0jc7Q2Zr/WLP6UOZHHgIKn4pSTVKLE4Zu77FZSLWTRiwNb5HvsZG
         yNj/CqYNW8SiY41rWDeBeKL3k3DnWGigLDPsnXjT/92cD76JBOU4bxZMlcMjTlupWZGA
         HGT2b5c1YMebZ+wxsIo/JKO1CIE7kIZ/1dlkSLpvwFWWpV4Q9ToimqOinsEGu07rX1Cw
         iX2mSagagt4dN8gELpxwqOJA4c1tqv1dUZ0ir+Je+ZSZJBYLjDZ5BdK2RDC5zDckhvR1
         e3pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/mDsC3m+cCWHD9aDCTcG+l6VRFuml7l2CNtP9mZRqJQ=;
        b=XbXYUsmU4SbxWdSOqfolg9kjVUvDnKVF7EBRhZ10eeXt7NOJzZh+ATIzYHSr5kFXNv
         RaYuEUhSHtVMrdRIsBk3d7hSdxQC0WFYPGjNMHA4hU/ha2LhLI9xeoGGkUONe6IPTsPs
         3MA04XA66jLjNg0k1oxoXw1lj15aRB3pKJCElnoSR5tIProO/bNwMqNrvtwxc/ah/+oU
         1+TQQwb6tC++zf5iHEax2V6qRzGOLUC3JEo8reV9tuZbhNsnQyZakUR7Q1XmkLJyv/TW
         gABadnpBCZ1B9EXVxe/32KQfy8LBmCYjit2gmWvL3dr4p0i4WL3LOIF5nkjnB4LT7Amx
         iryw==
X-Gm-Message-State: AMke39nyAye2xSYDzIIo52K9BjeTDth3VvFPeG5QovbWMGdGtj/E3nN4M2+ckBGiyYeunJ3L
X-Received: by 10.99.7.13 with SMTP id 13mr7884043pgh.121.1488134698151;
        Sun, 26 Feb 2017 10:44:58 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 (c-67-188-119-183.hsd1.ca.comcast.net. [67.188.119.183])
        by smtp.gmail.com with ESMTPSA id z74sm25868433pfd.70.2017.02.26.10.44.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 10:44:57 -0800 (PST)
Date: Sun, 26 Feb 2017 10:42:45 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Cc: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org, linux-iio@vger.kernel.org
Subject: [RFC 1/3] staging: iio: meter: Remove unused definitions
Message-ID: <972438f1c7bc46153df933c5861fac91f6793e92.1488133199.git.kdunne@mail.ccsf.edu>
References: <cover.1488133199.git.kdunne@mail.ccsf.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488133199.git.kdunne@mail.ccsf.edu>
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


