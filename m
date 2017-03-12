X-GM-THRID: 6395629856318554112
X-Received: by 10.46.87.27 with SMTP id l27mr4808416ljb.28.1489353331228;
        Sun, 12 Mar 2017 14:15:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.92.129 with SMTP id q123ls1330253ljb.23.gmail; Sun, 12 Mar
 2017 14:15:30 -0700 (PDT)
X-Received: by 10.25.33.67 with SMTP id h64mr3663090lfh.22.1489353330737;
        Sun, 12 Mar 2017 14:15:30 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id f7si555163wmg.3.2017.03.12.14.15.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 14:15:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id z63so7120801wmg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 14:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=+jHXts56jddOY4S7zxJMcUvcVLgjvBoNavNnteja8Y4=;
        b=BdoAtZncWoIzCzD7itf4dBOF3wu6hPDYaC9KCN2j+8O33Sl3v0BHJ+Gxs+n5IJIuB/
         IbTVtlgvZbY4znjySP5cyw/HLHhRPfmId9veYFi9e/XPQks8GCJtXJxCPePMCNkv2kHC
         VWbu/TWKpG6U+LEuZ2hE3VE9SXoX+Kkv4JW1KdvF5QSyClx0IeLL8wPdziNGHEMZbChx
         T1apo4bblrBPvzsiutnHkif3pky3vlZvN9LWX62sF/lBgqVnur5n+htRBh/yGO2A43KQ
         oT3LUySBDexsDJfeYzdcxpElyeazP+UdDK71dSvgIDsbMCMzMxvk19+2lB7znLrT8zDt
         d3vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+jHXts56jddOY4S7zxJMcUvcVLgjvBoNavNnteja8Y4=;
        b=lL8JS8Y/aaoMsU01uZ8xlln6bVwyysKfB8esusJPZYNLu9Xy9CLE3OBJTqux/UOMXB
         aE03rqMWPoWsfWXi/XD4Uo3GYRr5mmf06oewt/VkWbhex+ecwvdwjeHqc3BkjdYhrsKY
         k2PeohtWq4svuSl0xnsF6d+NYd+N/2fT0eofduue2dMOaqXDeveesgIhQLJZujvuwmYX
         9oTSjwUyd+CNKa2dfFQ5Ci0EY7gALP0e7KYfZE/xJTadclzL9a04JvOjxa8JTA5L4UTP
         o5W396Y7679zmEdtEYxhPdKsAG5VlHJ6ZlTrCBC3leAhttTCC4YctuTM9Lcl9RqE6gru
         56nw==
X-Gm-Message-State: AFeK/H0Ti/cCpgltjwn1wop22v50RvVMQUpEddHkjXAGQ9iqY6u0zeOZU7SkDTcBGG/t/Q==
X-Received: by 10.28.218.80 with SMTP id r77mr7257126wmg.0.1489353330555;
        Sun, 12 Mar 2017 14:15:30 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:402c:8cdb:1897:4e7d])
        by smtp.gmail.com with ESMTPSA id e16sm22501123wra.36.2017.03.12.14.15.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 14:15:28 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2 0/3] staging: wilc1000: Improve code readability
Date: Sun, 12 Mar 2017 23:15:15 +0200
Message-Id: <20170312211518.3172-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Improve code readability in wilc_spi_read_int dunction in wilc_spi.c

Tamara Diaconita (3):
  staging: wilc1000: Declare variables at top of function
  staging: wilc1000: Correct name of variables
  staging: wilc1000: Remove unnecessary brackets

 drivers/staging/wilc1000/wilc_spi.c | 52 ++++++++++++++++---------------------
 1 file changed, 22 insertions(+), 30 deletions(-)

-- 
I am going to wait to see these patches in the staging tree, then resend additional patches for this driver.

Changes since v1:
*Change the patches order.
2.9.3


