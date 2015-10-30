X-GM-THRID: 6211433707094409216
X-Received: by 10.107.9.36 with SMTP id j36mr7494580ioi.2.1446213794027;
        Fri, 30 Oct 2015 07:03:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.19.137 with SMTP id f9ls379173obe.55.gmail; Fri, 30 Oct
 2015 07:03:12 -0700 (PDT)
X-Received: by 10.182.65.134 with SMTP id x6mr6310747obs.14.1446213792292;
        Fri, 30 Oct 2015 07:03:12 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id sm2si683766pab.0.2015.10.30.07.03.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 07:03:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id fv9so78664147pac.3
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 07:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id;
        bh=oOfmva8zC/1Z66hko62AJgtVVxkbzlmmUAVbKJBybn8=;
        b=Ej9xG/YdiK9TLyEG8XJEFoVq5wHBOzuQTwvHokO2c3ws9Jscq1kT9dfWx4gzHEFbiy
         OWMSzs7fA4l5Au/j3XLJgcutQPRBr+J+IAJF3F25HfU+Ul7AWg3jpEtpAAclJG/Ohwug
         iuXThXnJCRA0mxKLeqQfhfRWby0Mxi2DSfXNd6wOems2N3oTd3Ika28FsdSTC4TqPhTN
         CXl9Lx7I11Xzrz1H1m5VMhMQBZjO8YMoQZQlfjohQTbNv9eQ4aD/SyW61mzLShNOrq7M
         MEMNcSLUpuQp2//FrdnQyO4Fl9Q8+3A/GVOt8UfDeQH8Zkf8i6kX9k1oK54yBnSEd21d
         YAAg==
X-Received: by 10.68.132.166 with SMTP id ov6mr9165690pbb.124.1446213792177;
        Fri, 30 Oct 2015 07:03:12 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id d2sm8483837pat.24.2015.10.30.07.03.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 07:03:11 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 0/2] Staging: Remove unused header files
Date: Fri, 30 Oct 2015 19:33:01 +0530
Message-Id: <1446213783-30267-1-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.5633789F.0077,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

These patches remove unused header files

Changes in v2-
 Made commit message clearer

Shraddha Barke (2):
  Staging: sm750fb: Remove unused modedb.h file
  Staging: dgnc: Remove unused #include header file

 drivers/staging/dgnc/dgnc_utils.c |   1 -
 drivers/staging/sm750fb/modedb.h  | 233 --------------------------------------
 drivers/staging/sm750fb/sm750.c   |   2 -
 3 files changed, 236 deletions(-)
 delete mode 100644 drivers/staging/sm750fb/modedb.h

-- 
2.1.4


