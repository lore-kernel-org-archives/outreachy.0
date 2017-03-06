X-GM-THRID: 6394452359735410688
X-Received: by 10.223.165.69 with SMTP id j5mr621800wrb.4.1488824458228;
        Mon, 06 Mar 2017 10:20:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.207 with SMTP id u198ls1538368lja.18.gmail; Mon, 06 Mar
 2017 10:20:57 -0800 (PST)
X-Received: by 10.46.21.91 with SMTP id 27mr2622907ljv.0.1488824457593;
        Mon, 06 Mar 2017 10:20:57 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id e72si89922wma.0.2017.03.06.10.20.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 10:20:57 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id u132so7092633wmg.1
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 10:20:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=eknOXTJYCW6Q6gy1h1zdBgZD4npqtKAv/bvlozpDWxk=;
        b=oHaLRIP2+stvhwCVuQFssTo6uDOMwWmwed0ECIqpieOUKjdDUlUmHGZi/KRZCIqSMs
         /RG6WX96/jWup7fq5OwrVOFkIQnQf1HXR/xaVuQp2Ghkgb3l++rRBRt8gbR6Rx5Eg4NE
         BpY06785Wv58ZIHBMSTB0RXlURHIfW6GxNAJ1rOikgTF1amLdhuw1SotKXLvgENjNHls
         /O6bg2caZiXK/OU7U6PLdzjJws/F1DLX/SQmUtGS/KWX1de4rDhgFTSpgVQIUGBaQglM
         LfigqdagNrqzwCc4NL9GQHWfIvjxNJ6tbX2HfCM7Xno5+eJKaobnG0B404EK3drqNLy7
         eKxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eknOXTJYCW6Q6gy1h1zdBgZD4npqtKAv/bvlozpDWxk=;
        b=OWuh10HhVTDIYJnmX/SCuVVr4ggQgiBVG+5cPcKBuVuAL18oRFjHH/zxPkpTujYSsA
         Z9aH8fM0D8TqXo5lRosmWX0RHvZgOke+MrODlJ7lkW7Gjb340SVHO2Gjrj+l+FkQX3LK
         Ro8u/aTj4mqMKmSee146RVOVJT1RxBcnipepRdAPEmZR+sYu4eSg+wR2sqWTq9teF76C
         lyzloV31U/EpOAUV4Iwptjga/CB9rVqCxSQ8+erhtsAlFSvLc8dmP8UUACB8y/8vr4+b
         98a+S+3gpJ9NT/VJNmJBLO1tbSQ8rRSymbS9YI38T0LEhsZ0quZOHeKyxunYtcfS00XW
         VN+g==
X-Gm-Message-State: AMke39kGxp9C/WZitnrvDfodk4SRSo7gTNJHT+I38Llc8jZH0xWQLF1ShJgknSN1GfbfNg==
X-Received: by 10.28.138.136 with SMTP id m130mr14597393wmd.72.1488824457396;
        Mon, 06 Mar 2017 10:20:57 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.69])
        by smtp.gmail.com with ESMTPSA id j184sm15797807wmd.31.2017.03.06.10.20.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 06 Mar 2017 10:20:56 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2 0/2] 
Date: Mon,  6 Mar 2017 20:20:52 +0200
Message-Id: <20170306182052.2989-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Tamara Diaconita (2):
  staging: speakup: keyhelp: Add spaces to align
  staging: speakup: keyhelp: Fix 'if' continuation

Changes since v1:
*Deleted the patch: 'staging:speakup:keyhelp.c: Remove unnecessary else' from the set and remake the original file.
*Deleted the '.c' in the subject of the patches.
*Added a space after ':' in the subject of the patches.

 drivers/staging/speakup/keyhelp.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

-- 
2.9.3


