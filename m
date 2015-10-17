X-GM-THRID: 6205612297408217088
X-Received: by 10.112.150.229 with SMTP id ul5mr4713769lbb.2.1445068598199;
        Sat, 17 Oct 2015 00:56:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.39.162 with SMTP id q2ls290038wik.20.canary; Sat, 17 Oct
 2015 00:56:37 -0700 (PDT)
X-Received: by 10.194.94.66 with SMTP id da2mr4627736wjb.7.1445068597818;
        Sat, 17 Oct 2015 00:56:37 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id go9si137341wib.3.2015.10.17.00.56.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 00:56:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x231.google.com with SMTP id gb1so35354326wic.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 00:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=VbjbuYz7J2B/wPOVCPhG91qOSX/2jzt4qqfYI/Et3W0=;
        b=HI4FQwY630C4rKluFatr2sYGyZXIlsVWG1UXw1RaF0z8aiD+0ikcUbqhkZOICPBh5S
         Q+TU9g1j5ZGRKzCH+/61dT/61BbG6gRZhMxl3fCKS21YdBnNEthrvR/Pm6d6gcbQoS00
         svERzw2zHteXM1t4UOFYQTHKuaB74AXnKqClRCidW9yzAd6dwlBni4pS3Gksr8TYS+K5
         0UXUHl/FeLMhNWSrpZ/xQDThjf9aTMnuVfvW4/dm/UA0SDLn1plNbs1MfmDRC/w2YRj3
         7LYwqHiAIQ8r8n2LEu/AZlUBErf4t9wgkzH6osfClo+NrokwY0I1j9sGzkklEFzzf2B8
         8cGg==
X-Received: by 10.180.85.165 with SMTP id i5mr1212566wiz.79.1445068597717;
        Sat, 17 Oct 2015 00:56:37 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by smtp.gmail.com with ESMTPSA id fz2sm6168678wic.2.2015.10.17.00.56.36
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 17 Oct 2015 00:56:37 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH v2 0/4]Staging: lustre: Use static inline functions instead of macros
Date: Sat, 17 Oct 2015 09:56:24 +0200
Message-Id: <cover.1445067394.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Convert macros class_export_lock_get and class_export_lock_put into static inline
functions and also remove some unused macros.

Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com>

Changes in v2:
	- be more specific in commit message

Ksenija Stanojevic (4):
  Staging: lustre: include: Move function prototypes
  Staging: lustre: include: Convert macro class_export_lock_get into
    static inline function
  Staging: lustre: include: Convert macro class_export_lock_put into
    static inline function
  Staging: lustre: include : Remove unused macros

 drivers/staging/lustre/lustre/include/obd_class.h | 90 ++++++++++-------------
 1 file changed, 38 insertions(+), 52 deletions(-)

-- 
1.9.1


