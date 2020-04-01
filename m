X-GM-THRID: 6810632543470092288
X-Received: by 2002:a62:1894:: with SMTP id 142mr22582221pfy.27.1585723958813;
        Tue, 31 Mar 2020 23:52:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:982:: with SMTP id 2ls4011628pjo.1.gmail; Tue, 31
 Mar 2020 23:52:37 -0700 (PDT)
X-Google-Smtp-Source: APiQypKbb1HGAcFU1eOdL1xHcKFuL8XTub7DbOE6Ko21n9p7JuQTsWK7MZ/L4rbAe5+4BtaqosRm
X-Received: by 2002:a17:90a:ad45:: with SMTP id w5mr3066819pjv.179.1585723957628;
        Tue, 31 Mar 2020 23:52:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585723957; cv=none;
        d=google.com; s=arc-20160816;
        b=ZI9dMAfoENhiuMTMGFK1FfnhsWh4B1B9ELa62dd2N3FUos9DuZ+b9OVF5ZGdWG5eiA
         rsM3RVNPTRK+vKO149qOWMJaQSzK86MoDqw9KNf6wB8YZQXJ3nTVSfUVUlKfOCCvCoyg
         eOr7Ztfu6NoqPii2PuZ0KexD318BsmoXyyUR+xxBi5zN/+H5AYM+gnAEQstA4gdKdTkp
         PE4VxNC+hxTgCYkEvwU0qXO2UPXylRs8XBzSSmkKCl790nYMC5kVQjdeRNCi47bMRWuZ
         MHSfkphNsWxQBBaFA1C7Fc65H4R0mCk4JylNtlEaOvPjILp+yQJ5vpU2gjHO6b4VpmrF
         m1fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ruqnsqo2GKINMPomcd5Tp3Zr42cqG+aT0Kmo0+O4bZw=;
        b=k75KFGe/N4OFLJmdcxRFgoWYgblziNeqrZMtWsbHciP+GlgIfIHL1hYdlc1gEcnjwV
         INfeHOJmj+SI5pUEW4WWf/z/bMOAQpE6tGXnbLQapgAvtQAjHxeze7w4Zxrv052yjN4L
         yY8XZpaDMIZ7F5muTS2yq0ox55yZBuUY8w2Zd18W6UJO8EfwyTIW5m+/E5TpGJ3rweXG
         RiQcg3+m8ijRAijbzLX5eNzz+fCm60WJ91C/miOzE3UGxTF8ObRXoRUvMq8xzwjaFPTZ
         Ucpn27zvlMSZY8KGkWQtJW9twg492jttAgO2c7OzisWuqToxsV+6P8JJ5MnpZB+E5ckr
         mLsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oGYz5mBv;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id np5si50705pjb.2.2020.03.31.23.52.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 23:52:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oGYz5mBv;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id a24so4818901pfc.8
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 23:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Ruqnsqo2GKINMPomcd5Tp3Zr42cqG+aT0Kmo0+O4bZw=;
        b=oGYz5mBvzAs80qL3BZrnvIYQm/JSJJqMKxQ0zw+m6Ct4N91Jzy+lUUhf1eeifZOt4M
         19CBFebmqSa8w4qeCGgantUCgSqYmX4FWlUjsPxDLEXGr/HknOAqakbXo2kK6kNgioaV
         FGp+CaZAqdcw75oKfHDyUMnlIMQWlmnaHhygpKwXNFjtdZw3ocI2zDE7mMeZpnJ7mQ3g
         7xm2cX7WE4K3ILmOo9JickMKTGRA4yPUly+DFqHUY9dxV/wkSGzGYbfErM/2Dbei5sTb
         7ROyc7V80GJQceIE7wqWFLVvmgv1i+Sw/l5op6I+YWT/iTEj15pRZzQN3IGkrl/PkJFd
         E/XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Ruqnsqo2GKINMPomcd5Tp3Zr42cqG+aT0Kmo0+O4bZw=;
        b=lBwrYrcqS8BAC3/E1m++y48TPTrsabhnUaqi9JTjgjVJLsjuxVP1ub/gINyA3DchHD
         gZJsK7PW1flRXbtBqpRrNbMgrbW9VesGrew8vXDLgjFZNkuEsZ7ZXVOubZ1hGLvg6lEi
         fu9LtabxAQvSTeorBDKQvyymk2ioIOIr79xa/aE/hP2cPal8D6MbQ0i5gWlWznv0H0Yz
         CwKLkt+PXD3eYrZ+hEm6i+FOMOp6oZVvoIqSwr4l2XUHe64RMgn8iN1ibfYDQoZCGxIx
         S580h/y6G0fjaDMzDvLWa03fO3hCxG9OwdWVkKHyyVV+W8YmJC3njAb3Dx4JiD1a0yu9
         dTBQ==
X-Gm-Message-State: ANhLgQ0uEoZX7RVSYyeddSB/v7pNQ3mSiRnBI0M0Ps1tjf/vPEE9nZ3E
	X3COnvgYNIk3Q2bZkpjQyZw=
X-Received: by 2002:a63:2b54:: with SMTP id r81mr22170382pgr.453.1585723957248;
        Tue, 31 Mar 2020 23:52:37 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([157.42.224.231])
        by smtp.googlemail.com with ESMTPSA id m68sm4635849pjb.0.2020.03.31.23.52.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2020 23:52:36 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	manishc@marvell.com,
	sbrivio@redhat.com,
	GR-Linux-NIC-Dev@marvell.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [Outreachy] [PATCH 0/2] staging: qlge: Resolve various warnings reported by checkpatch.pl
Date: Wed,  1 Apr 2020 12:21:18 +0530
Message-Id: <20200401065120.17459-1-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset resolves coding style and indentation issues reported by
checkpatch.pl
This patchset removes unnecessary blank lines and properly indents the
multiline comments by shifting the end of multiline comments "*/" to the
next line to improve code readability and adhere to the uniform coding
style, all for the same file qlge_mpi.c present under
drivers/staging/qlge directory.

Soumyajit Deb (2):
  staging: qlge: Remove extra blank lines
  staging: qlge: Properly indent the multiline comments

 drivers/staging/qlge/qlge_mpi.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

-- 
2.17.1


