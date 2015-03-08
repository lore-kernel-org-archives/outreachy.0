X-GM-THRID: 7122168315904
X-Received: by 10.182.34.133 with SMTP id z5mr24903377obi.3.1425834447500;
        Sun, 08 Mar 2015 10:07:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.233.168 with SMTP id tx8ls367081obc.30.gmail; Sun, 08 Mar
 2015 10:07:27 -0700 (PDT)
X-Received: by 10.182.18.102 with SMTP id v6mr24326392obd.11.1425834447299;
        Sun, 08 Mar 2015 10:07:27 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id m1si2151892pdc.0.2015.03.08.10.07.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2015 10:07:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of darshanapadmadas@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mail=darshanapadmadas@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padfa1 with SMTP id fa1so60334128pad.3
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2015 10:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:content-type
         :content-transfer-encoding;
        bh=XNsdXU7uoXLKVYX3U8Ui/DHXoXOcrUMxadBGOeLtN6s=;
        b=wM8RGJmB59iAf2QVXmMyBYw0Uo9i0ZTIGtH6ikl2CggDS/cxeFeECfTbs+nPPzfBkN
         bpL3mZowfMQIm0wpfrkxDkEo60NTxbEi3YIysFNspAMOziDKgFMbSI9br/VRnDKLEy5i
         oBTWxBhDk+7aHCVfsSElZLXoKRimcPPBntEfgFRY0UDSfXNtadKuq1A4yKV5Tcb84ssD
         uhbcSPhiuczaZOrWky1Jxu9i5o1EhEClOi7xzCiIwAhPOsJhQWyAfrmiq+18WMVgXSDu
         DEJSpOtejpdPvHqe+vrfPSD5ispg7zEfw2DigVYtKwXQNGTV3ZAW8s3spCMpPb0aznxS
         /kdA==
X-Received: by 10.67.1.164 with SMTP id bh4mr42984452pad.129.1425834447153;
        Sun, 08 Mar 2015 10:07:27 -0700 (PDT)
Return-Path: <darshanapadmadas@gmail.com>
Received: from localhost ([122.174.223.151])
        by mx.google.com with ESMTPSA id 7sm7613722pdj.16.2015.03.08.10.07.16
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 08 Mar 2015 10:07:25 -0700 (PDT)
From: Darshana Padmadas <darshanapadmadas@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Darshana Padmadas <darshanapadmadas@gmail.com>
Subject: [PATCH 0/3] Replace min with min_t found by checkpatch.pl
Date: Sun,  8 Mar 2015 22:36:29 +0530
Message-Id: <cover.1425833758.git.darshanapadmadas@gmail.com>
X-Mailer: git-send-email 1.9.1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch set replaces min with min_t as suggested by checkpatch.pl

Darshana Padmadas (3):
  drivers: staging: dgnc: Replace min with min_t
  staging: rtl8192e: Replace min with min_t
  Staging: rtl8192e: replace min with min_t

 drivers/staging/dgnc/dgnc_neo.c      |  2 +-
 drivers/staging/rtl8192e/rtllib_rx.c | 10 +++++-----
 drivers/staging/rtl8192e/rtllib_wx.c |  4 ++--
 3 files changed, 8 insertions(+), 8 deletions(-)

-- 
1.9.1


