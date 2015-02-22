X-GM-THRID: 2273030701056
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1bc0e2b2eb529af1
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.161.194 with SMTP id xu2mr528442wjb.1.1424574498265;
        Sat, 21 Feb 2015 19:08:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.73.103 with SMTP id k7ls336516wiv.5.gmail; Sat, 21 Feb
 2015 19:08:17 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr529517wjb.6.1424574497942;
        Sat, 21 Feb 2015 19:08:17 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id el6si409404wib.2.2015.02.21.19.08.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 19:08:17 -0800 (PST)
Received-SPF: pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mail=gulsah.1004@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f169.google.com with SMTP id em10so13211636wid.0
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 19:08:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=T+L4AI95ZoFdscZHtKZYuyNAxBV6XJxB1FXbw6/Wd1c=;
        b=Ijw11rBpk9Gaz+U324HK6Bdu/ACbRNMaRb9HswUoLHZILNQcgG3vlKl2V4k9z2MW5a
         P5YE+TnKupTc/Mz6Wu5AXQ5iaqB16JYu/TnyYjYuvtCY2cf9QaljBdV2q0MiQ4LH74Ts
         pKsxINmh9dG7nbouRIT3kctsReMmP8yWjH3S6qdGbRv9Sxgl9vX0ErLFeiFE+m6qpV3n
         V3F6p+i5kcYI85pam+4mdS5WWsPZsUNEU4iN7S6VdZQMgjEDkbQ7sKp7Hr7EDFI6z4hH
         D3amy69DR4dJINqsNNbr7fMlUd9r3AI3LM3J8KeQN7QQyFfodUp77z6TsEPs6BUaiujS
         IreA==
X-Received: by 10.194.237.34 with SMTP id uz2mr9149138wjc.157.1424574497838;
        Sat, 21 Feb 2015 19:08:17 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from diyorki.kykwifi.com ([81.213.40.143])
        by mx.google.com with ESMTPSA id gm2sm9446449wib.5.2015.02.21.19.08.16
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 19:08:16 -0800 (PST)
From: Gulsah Kose <gulsah.1004@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gulsah Kose <gulsah.1004@gmail.com>
Subject: [PATCH 0/4] Removed some checkpatch.pl warnings.
Date: Sun, 22 Feb 2015 05:08:03 +0200
Message-Id: <cover.1424574336.git.gulsah.1004@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch set removes following checkpatch.pl warnings from o2iblnd.c
WARNING: space prohibited between function name and open parenthesis '('
WARNING: void function return statements are not generally useful
WARNING: braces {} are not necessary for single statement blocks
WARNING: Missing a blank line after declarations

Gulsah Kose (4):
  staging: lustre: lnet: klnds: o2iblnd: Removed unnecessary spaces.
  staging: lustre: lnet: klnds: o2iblnd: Removed useless return
    keywords.
  staging: lustre: lnet: klnds: o2iblnd: Deleted unnecessary brackets.
  staging: lustre: lnet: klnds: o2iblnd: Added missing blank line.

 .../staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c    | 217 ++++++++++-----------
 1 file changed, 107 insertions(+), 110 deletions(-)

-- 
1.9.1


