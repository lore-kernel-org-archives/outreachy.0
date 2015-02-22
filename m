X-GM-THRID: 2431942393856
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7307b9f550c82542,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.36.132 with SMTP id q4mr740467laj.6.1424616025070;
        Sun, 22 Feb 2015 06:40:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.21.130 with SMTP id v2ls367367lae.98.gmail; Sun, 22 Feb
 2015 06:40:24 -0800 (PST)
X-Received: by 10.112.144.130 with SMTP id sm2mr765754lbb.9.1424616024579;
        Sun, 22 Feb 2015 06:40:24 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-we0-x22e.google.com (mail-we0-x22e.google.com. [2a00:1450:400c:c03::22e])
        by gmr-mx.google.com with ESMTPS id l8si681500wia.0.2015.02.22.06.40.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 06:40:24 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) client-ip=2a00:1450:400c:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22e.google.com with SMTP id w62so13534812wes.12
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 06:40:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=0PWYaGD9pJ91F/8mpORwsJgbbXe3xXjhnvP3g9UsfAg=;
        b=Lay8olpYy+UVQyXNn2XgoTe40f4BcOHEkiZTz3JUcb1yUpES0FWHx2GfLsV5nS5Fko
         mFyUFyU21hY0nmoYJV0Rlw3XGCz6kyge2aGH/HaFhL9HHmhMOlF1GZaBSPt8uzLjmmAT
         Qrue6synYIVbDo9FzleBGpmk/b7rw/iEB3C7q8u2NjVhFCkl44/yy8JhdjN8fl23u+0P
         aekN5N/bB0o954166gyiX05wWfuIqnxudTKzKwwTB0X4DofVzhD6eYooH+LV6e6xvLWd
         6O+MG+FPthGjVTyevlVI3uRY73gs/uzgl/wUncGQVDadxz3r04jtquwUJEbo4EArsGWY
         P+Lg==
X-Received: by 10.180.87.169 with SMTP id az9mr12371331wib.72.1424616024472;
        Sun, 22 Feb 2015 06:40:24 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id hi6sm51378062wjc.34.2015.02.22.06.40.23
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Feb 2015 06:40:23 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 0/2] Staging: rtl8192u: Fix coding style issues.
Date: Sun, 22 Feb 2015 15:40:15 +0100
Message-Id: <cover.1424615713.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset fixes following issues:
	Convert comments from C99 to C89 style.
	Staging: rtl8192u: Fix grammar in a sentence.

Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com>

Ksenija Stanojevic (2):
  Staging: rtl8192u: Convert comments from C99 to C89 style.
  Staging: rtl8192u: Fix grammar in a sentence.

 .../staging/rtl8192u/ieee80211/ieee80211_module.c  | 53 +++++++++++-----------
 1 file changed, 27 insertions(+), 26 deletions(-)

-- 
1.9.1


