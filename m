X-GM-THRID: 6399599665816272896
X-Received: by 10.129.158.213 with SMTP id v204mr15684947ywg.70.1490022909078;
        Mon, 20 Mar 2017 08:15:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.195 with SMTP id 61ls13363544oto.31.gmail; Mon, 20 Mar
 2017 08:15:08 -0700 (PDT)
X-Received: by 10.157.6.76 with SMTP id 70mr14117590otn.5.1490022908674;
        Mon, 20 Mar 2017 08:15:08 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id g82si2728618pfb.5.2017.03.20.08.15.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 08:15:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id p189so12244599pfp.0
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 08:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=x9qZqAJ2t2qpvhnvYATh/PHZPuvW95lE8Pnk5SH2aaY=;
        b=WBwfm81kc4Wx4RsfrG4+RH4IMJvdBEgfeNXhMp7RLm91rTPglcEX9Q15u77qrCKSDZ
         sR9tt2zJoPp1vQvKbh8lNu1YGf5A876MsumlzH/7BfAawgWkMVBacZmV0GL6awWD+0Gk
         skL14RTQqKl8Qexj6H7sLVwU4dK0vpHAz3KBwZRszMZAlZK4ArkVSsoVZjkADYWteX2Z
         fmKhHY9tETh48FG+tMMXdGM8MksQRqYPQ5m3cP0CIHlIsEVeA4HFSZM7cvjOLNgAs01B
         /ML3FSaY/dZOzo1jDsvsFxX3ssKaiGI4K8fS56LKen3uay2LeyWLAGPVM7HOOcqOMbV3
         8aSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=x9qZqAJ2t2qpvhnvYATh/PHZPuvW95lE8Pnk5SH2aaY=;
        b=Hcj1dqu9a4WKEFLX5XqtqkUR1VNz8NkKHmtWwq/6jrNeeq2SW9Nqntsm7XIGwy1oEF
         YnjBqYIf4x8zylSALC5RHyqjCSRru00ylqcgFBQU1RQhTad4WgJM0XHZtEvs/VWKVzGV
         CiFboKaQwy/FPwuk7K0jvXh0vB8ve0qFlkbyI9z+Nr4RfLfpYLn6DDHfSFNKFSZMAGg1
         VpxrQHVz2SRRwvuSimc/REVpR+HHZLYkZAtHfH9Qjx+yaOwpz4KiVzR7068SZRCITQf5
         9pDNtx2eZofhZDdDUk2RmiG8VB/NNJi/5ITA7nkpIdrXD9zZAm2qf5h8KX1liCTOQ7E0
         WgKA==
X-Gm-Message-State: AFeK/H2onWFv3q+gya9mppceoQM+peIwEbmO1d1UywWxk64pgIsNVatuwqT1gUtdmACrZw==
X-Received: by 10.98.214.4 with SMTP id r4mr32664520pfg.185.1490022908463;
        Mon, 20 Mar 2017 08:15:08 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g64sm33988251pfc.57.2017.03.20.08.15.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 Mar 2017 08:15:07 -0700 (PDT)
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: iio: ade7754: Header file maintenance
Date: Mon, 20 Mar 2017 20:45:03 +0530
Message-Id: <1490022905-18422-1-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4

Collapse header file into source, and clean up includes in 
implementation.

simran singhal (2):
  staging: ade7754: Move header content to implementation file
  staging: ade7754: Clean up #includes

 drivers/staging/iio/meter/ade7754.c | 98 ++++++++++++++++++++++++++++++++++---
 drivers/staging/iio/meter/ade7754.h | 90 ----------------------------------
 2 files changed, 91 insertions(+), 97 deletions(-)
 delete mode 100644 drivers/staging/iio/meter/ade7754.h

-- 
2.7.4


