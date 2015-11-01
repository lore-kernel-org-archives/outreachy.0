X-GM-THRID: 6212059851141414912
X-Received: by 10.112.149.7 with SMTP id tw7mr3175905lbb.10.1446357893110;
        Sat, 31 Oct 2015 23:04:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.17.84 with SMTP id 81ls418082wmr.19.gmail; Sat, 31 Oct 2015
 23:04:52 -0700 (PDT)
X-Received: by 10.194.80.103 with SMTP id q7mr1428205wjx.1.1446357892561;
        Sat, 31 Oct 2015 23:04:52 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-wm0-x235.google.com (mail-wm0-x235.google.com. [2a00:1450:400c:c09::235])
        by gmr-mx.google.com with ESMTPS id s134si294675wmb.3.2015.10.31.23.04.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 23:04:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) client-ip=2a00:1450:400c:c09::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by wmec75 with SMTP id c75so37794196wme.1
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 23:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=tBsZNR0qC/XqlG3LGwb84Eq/6zGBcl7RQrDHVXLfBao=;
        b=L8Wk6S2mAHT+CssH2SxoR0BK/cMv2TmxEmIM8n+LFSbyg5kdDOz8nKGxv7koZWozQe
         4sKeYucyADaCzbtyZgyKL2xMYcWPko03vmuEnWvl/y+xv76ejXcTvPNsgcy1KD6H7ZPg
         aLZzHxvARb1OhdwRQKjohucsLij1utoLloScgkehf7iWBwvRphyfXDJiyzEu36q9ENU2
         oOpxI5GnxujkR+4c22XugdBWPBr1qtDUIbq6THL9oQEKSS4l+LSzihedGye76o8pTWjg
         0Pme2UZEFOLvFFZ1BtNrcQ+TzQMrgeGHxjg37uO37FZ8lU3XEkUM/oBhAZ7k0NCvaVj2
         IrCA==
X-Received: by 10.28.11.205 with SMTP id 196mr6214040wml.83.1446357892461;
        Sat, 31 Oct 2015 23:04:52 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id p2sm15447468wjb.21.2015.10.31.23.04.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 23:04:51 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/2] Staging: fwserial: Remove unused functions
Date: Sun,  1 Nov 2015 11:34:39 +0530
Message-Id: <1446357881-2672-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.5635AB83.0013,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches remove unused function and replace wrapper functions
by direct call.

Shraddha Barke (2):
  Staging: fwserial: Remove unused fwtty_bind_console from header
  Staging: fwserial: Remove wrapper function fwtty_port_put

 drivers/staging/fwserial/fwserial.c | 16 +++++-----------
 drivers/staging/fwserial/fwserial.h |  9 ---------
 2 files changed, 5 insertions(+), 20 deletions(-)

-- 
2.1.4


