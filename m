X-GM-THRID: 6252275562391273472
X-Received: by 10.66.141.36 with SMTP id rl4mr1870707pab.3.1455721343953;
        Wed, 17 Feb 2016 07:02:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.101.196 with SMTP id fi4ls1931191obb.32.gmail; Wed, 17 Feb
 2016 07:02:23 -0800 (PST)
X-Received: by 10.182.58.36 with SMTP id n4mr1753816obq.1.1455721343602;
        Wed, 17 Feb 2016 07:02:23 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id yd9si244831pab.1.2016.02.17.07.02.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 07:02:23 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id c10so13197881pfc.2
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 07:02:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=UEsTYACMtTcJrFmVBD5Sda/O1THomdMPQ6zSdyamqnY=;
        b=IoHhhCRUwRuldfGcXpvVdJBmm4z+H63mcYJUts8BBlxKQOnigflK43F8BV94SderbM
         5aEy3QOBFwvso8y+brjjNTVKyQryoT6/BNkdsOfTgZ2LWB4sTfiOLQJbOHfKaMW05R5g
         2eXyd6gbfxv+KDSz458OKJxd5XRE5K2of4YOmjMAIIAulwMqvPXM8cdrzKCYD1q/zu4p
         EXva/LKIANy8a6/tKwYjWVOeYaQw4X7uw+MeXLV8vWyTJhQRNn4hx9ZIelv05yp93wda
         YamWFEmPXssEg4JPto6rNJ6+Af2cmXMypBUsBBq639PQXlBcIYWDeWgMX5HOYhxoBS55
         3q2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=UEsTYACMtTcJrFmVBD5Sda/O1THomdMPQ6zSdyamqnY=;
        b=RdWJsV8RR7mOibJHKGJKRufU3nskXkTctSlfe/qcYq/amaVhaSyqKmKS+hd+bNrcV1
         aei5MdvdNEON02R1ZMYAukiL2IVwaOmzEjAww7CeTo9q03FimLGtn6zFmF0ImPDUq/d2
         Ws5EQrTSoUnm6a/Z054n2CP5r/YqJTwmYbL/UAhg4pU5Sc9hdjio5IUjKCWglXcf691h
         N4m+izJY3ctXwmSSeUOvPEfxxgnN/oOgCtO6vxNYzNQQaOd0DC7dcwKKOq0VcAsUhkOd
         u0fQWLa8MslTxntjpEnnBkJ6jdvm8q7HR4FqAO0PJRu4EbMDGMjYGuMM/cbke0uYvTwL
         oqFQ==
X-Gm-Message-State: AG10YOSlq1vKYRFw303khMVZwbiQzTF8FAHrsU5k5bAPyP/5mJNnTB3M5OmBpQQuyACkuQ==
X-Received: by 10.98.10.149 with SMTP id 21mr2746295pfk.75.1455721343373;
        Wed, 17 Feb 2016 07:02:23 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.168])
        by smtp.gmail.com with ESMTPSA id h65sm3430153pfh.43.2016.02.17.07.02.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 17 Feb 2016 07:02:22 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 0/5] staging: iio: tsl2x7x_core: fix multiple checkpatch issues
Date: Wed, 17 Feb 2016 23:02:12 +0800
Message-Id: <1455721337-31883-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Eliminate majority of checkpatch issues on tsl2x7x_core.c

Eva Rachel Retuya (5):
  staging: iio: tsl2x7x_core: adjust alignment to match open parenthesis
  staging: iio: tsl2x7x_core: use preferred comment style
  staging: iio: tsl2x7x_core: remove space after a cast
  staging: iio: tsl2x7x_core: add spaces around operators
  staging: iio: tsl2x7x_core: add blank line after struct declaration

 drivers/staging/iio/light/tsl2x7x_core.c | 211 ++++++++++++++++++-------------
 1 file changed, 122 insertions(+), 89 deletions(-)

-- 
1.9.1


