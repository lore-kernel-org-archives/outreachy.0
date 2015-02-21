X-GM-THRID: 1813248999424
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,84c8a607818ebc85,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.167.98 with SMTP id zn2mr303964lbb.6.1424527507653;
        Sat, 21 Feb 2015 06:05:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.4.5 with SMTP id ca5ls356618lad.96.gmail; Sat, 21 Feb 2015
 06:05:07 -0800 (PST)
X-Received: by 10.112.160.3 with SMTP id xg3mr301615lbb.5.1424527507192;
        Sat, 21 Feb 2015 06:05:07 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wg0-x22e.google.com (mail-wg0-x22e.google.com. [2a00:1450:400c:c00::22e])
        by gmr-mx.google.com with ESMTPS id i7si315471wif.0.2015.02.21.06.05.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 06:05:07 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) client-ip=2a00:1450:400c:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c00::22e as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22e.google.com with SMTP id a1so17940373wgh.5
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 06:05:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=+ogNPjImmRvgzVlVuI36rgTOAkMfVg1c97zUY2K+fJs=;
        b=uF0mM+pzAksFMggg3hjqIpynD5LOAaIZh7eiULGv5sVMwvkszpkujcS/62KAyhayrm
         kgg+QW1FdGSha9ZpENq1oC/GnESP8wk7F23nvQZ1E3M69Glp9NJ8L4grZ/MtdKPNcanG
         p7fBjSgMIk7/B96+9+Z0625Jl553/DcLkhxyzCYNduPuczXw1CS7anPwieSq0yxZhgQm
         gJ8f64O1qx+Wq/Z4WwyBvHv/5hvsjB3lPVu0fG/JObh8CEUqcbglsTnAa2I8V/epcMAk
         i9djPpn+YBijOpH3bxFiV3KQJicyuV4t+TsjdXAROpLFAZtQPD7JgvxNUVjypAgOP6NW
         PQ7A==
X-Received: by 10.180.95.97 with SMTP id dj1mr4222353wib.43.1424527507093;
        Sat, 21 Feb 2015 06:05:07 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id lg18sm7052048wic.23.2015.02.21.06.05.06
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 06:05:06 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 0/3] Fix coding style issues.
Date: Sat, 21 Feb 2015 15:04:59 +0100
Message-Id: <cover.1424527251.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset fixes following coding style issues foud by checkpatch.pl:
 Remove space before ','
 Convert comment from C99 to C89 style
 Split line over 80 characters


Ksenija Stanojevic (3):
  Staging: rtl8192u: Remove space before ','
  Staging: rtl8192u: Convert comment from C99 to C89 style
  Staging: rtl8192u: Split line over 80 characters

 drivers/staging/rtl8192u/r8190_rtl8256.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

-- 
1.9.1


