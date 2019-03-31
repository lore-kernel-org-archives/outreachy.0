X-GM-THRID: 6674267883353145344
X-Received: by 2002:a9d:20e4:: with SMTP id x91mr5226189ota.19.1554006436460;
        Sat, 30 Mar 2019 21:27:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:5f1a:: with SMTP id f26ls1697882oti.2.gmail; Sat, 30 Mar
 2019 21:27:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzbp7wzNYE9+fJFexIxu5ZqPRtm2AKuoZIPkxHsyvNfaj+miGUh36Pv8+MvuIzM99bvVJSh
X-Received: by 2002:a05:6830:1381:: with SMTP id d1mr4973082otq.4.1554006435763;
        Sat, 30 Mar 2019 21:27:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554006435; cv=none;
        d=google.com; s=arc-20160816;
        b=ia+tNtEEu1NDgbNCxYfyoQGvLn7pCbuydiqSRRJVHM9Ov1iIy/oF8S9Uqe3bBUgcmq
         8Zw/N2ym3iHpkZ3Fxw9Jpt3k9W7wG55Zy5a1Kuhsj80gJUVwG9+NbP3SW73cz9PtLbok
         O3hYV6KcjjmXHznwE/p+E+EtEFNIODpghuo+XhoJBKBg2F70oz9YrCmSGQZG8MrhqVyi
         AWTlIdg4EzU+1Q9Yafgg4cG6MaaHjoYaeZeizQZsMnfzl8Rlrybfv1+xvEGetKSrk6bm
         Exg3ACb3KYztIwtHxJ2Xpl7Ga9xR98JYsMkJs9KDiQ085nVyESH4x0XDFbRf27Ar7Ru3
         JNWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=8WgLxgVd37hvx8rs85BFc5u6r2yy591OhBZ8Y+NZKjI=;
        b=WU+Hr6hKfbxv1TWSHFAiQ5+8xBUGyI1q0s/ctuhrlRDD3osJsJle2hCkwPKptasupt
         +h7iBpsb1gfGG+wDV9xI7Ew5pTguhH4TltMT2I11zneGLSqyHZZ5L1SNWXNWBJA3zzZ0
         Ino/pP34PJYU0h8JZBAaZN+vKMW3b3qpfipg6xH908PXitMMgIotKiJopTgdCaH6OCeQ
         UK5Wq1GTKNXolbd0qjYlFPyuxc0pMU69Z3Rz08FLr17n49ZKLMe1g+unKREWkIKK5+Iq
         rOYewaca936XS0ghftJjaZQf7hdPViJILuKLTgAdKf+HM3gwYmG7WxiicIFWwrc0PbNi
         WcnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qZc+S9mk;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id d12si318006oib.0.2019.03.30.21.27.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 21:27:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qZc+S9mk;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id y6so2847811pll.13
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 21:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8WgLxgVd37hvx8rs85BFc5u6r2yy591OhBZ8Y+NZKjI=;
        b=qZc+S9mk4LkC+LddGMg5R9Lqbok/B3nGbl+GElhwWgGdVzJLGghYpO/FzsMdSalukm
         d9GErUsYw/2SxqfK9cBReBDrcCU4+mo/tohDY9Bj3+jsl2K8iRLgWm92wiEeT+EEsua/
         i6WwqTp7ojqG3V3vJx1ydZMhGDo6lnVjBL0+I8dZfCk6b4ZwDdGsnJRzU8VnKB2uP4op
         WCOnwbzmYCldhgTPFTO9gSQrfSv6SkvRfWqsl5VgFbLIq5jw6Rf51IEpIqmhEXNzLlN5
         FUihsKB/SYOlqQ4ZC2uYq29ejXc4fe9gGdjnK8XP1vt/OM0Zi6ouTnReo0UyZd2V8H8l
         LWjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8WgLxgVd37hvx8rs85BFc5u6r2yy591OhBZ8Y+NZKjI=;
        b=NIivKOiRtWRvHL543WQsgJziXmhZg3mAFjEVW8yynqj9TXBGVkVs7yK8DcjNHxXIi9
         4SvJSuPcVys0teCLW8ElymAvqfxrSAYiEKu54IoKtioPoWrm29imqDmFeZkvZBwihGjo
         7jwOzcoLrDgFyd4uPl1TFRRC9798ptnB05HRN7vx6tK4GwKp8KHPFL8P0UjnR3FsDxCd
         V/TeHWzYejBmPlnTOhQw4l4R+H78x5qLXsctZ92+0j+0eCDV6duf03L0tPkLBW2vpgva
         2bFaSFgltwX66oRI5ulPkdxc7xzn84XnAh9gWf3uJSihY8Z0XYOsF5aWuVup12LQP8wr
         X0lA==
X-Gm-Message-State: APjAAAWVQJsaiZdb3EBXDEvRHNRHPeODghx80/pi6ueuhpvuADJ1Tvkc
	Xl1/0g49VJVmKFkFOLuyU1k=
X-Received: by 2002:a17:902:848d:: with SMTP id c13mr42818071plo.279.1554006434939;
        Sat, 30 Mar 2019 21:27:14 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id j6sm8232657pfe.107.2019.03.30.21.27.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 21:27:14 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v3 0/7] staging: rtl8712: use list macros
Date: Sun, 31 Mar 2019 09:56:45 +0530
Message-Id: <20190331042652.69809-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190331022155.68569-1-himadri18.07@gmail.com>
References: <20190331022155.68569-1-himadri18.07@gmail.com>

This patchset
-  Replaces usage of container_of with list_entry
-  Replaces a while loop with list_for_each
-  Removes an unnecessary NULL check 

V2:
- Include new patches for using list_for_each and removing unnecessary
  NULL check

V3:
- Include explanations for the changes in log messages

Himadri Pandya (7):
  staging: rtl8712: use list_entry in function _r8712_find_network
  staging: rtl8712: use list_for_each in function _r8712_find_network
  staging: rtl8712: use list_entry in function _free_network_queue
  staging: rtl8712: use list_entry in function
    r8712_get_oldest_wlan_network
  staging: rtl8712: use list_entry in function update_scanned_network
  staging: rtl8712: remove unnecessary NULL check
  staging: rtl8712: use list_entry in function
    r8712_select_and_join_from_scan

 drivers/staging/rtl8712/rtl871x_mlme.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

-- 
2.17.1


