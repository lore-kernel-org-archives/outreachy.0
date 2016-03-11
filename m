X-GM-THRID: 6260738819949068288
X-Received: by 10.182.245.131 with SMTP id xo3mr6682590obc.49.1457691849653;
        Fri, 11 Mar 2016 02:24:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.148.10 with SMTP id to10ls661958obb.44.gmail; Fri, 11 Mar
 2016 02:24:09 -0800 (PST)
X-Received: by 10.182.33.42 with SMTP id o10mr6269176obi.12.1457691849101;
        Fri, 11 Mar 2016 02:24:09 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id y20si1146899pfa.2.2016.03.11.02.24.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 02:24:09 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id hj7so7873718pac.1
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Mar 2016 02:24:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=d/GtB/8WiwAjo6Al7Pm5mNnvtAmvcR7x+VW3ccM/IAs=;
        b=gaWSHVfiePPNr45dor0Fc8NJThOVYuYEBnz42V3QbBIpe3lt2VUhVVjGKh6n2O0fWi
         2rDaBIDosfSM/bqVYPbbvu0Sg06ZFb2xIIt//u0jQMAT9LNj52UH/cZ5kX3ZnFI4ua5s
         J3KYLXS8Yf+KDAa4zmyWVbMBJ+z3wly9+oHkBjJO5Eo/KcAyzpDu6l56OIn2UCRzMIaa
         qIa5BN/qoo6RlpgGF9wXlN24X+DL2EamRGcW4qU3gVTfOf+mhVL6p4fikUfrzO6+y5ag
         cnqaRKU++DFJLwSp+H1O3CWzbDjwj4yQ9HCO/7+M/rE5HQn+qfeyqFoSOJQg/0tyhUXj
         AM+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=d/GtB/8WiwAjo6Al7Pm5mNnvtAmvcR7x+VW3ccM/IAs=;
        b=W5Yqf4fHJDRtNK35HkpimgEmvXamTPrJo7r833cYFbBjG9NKp18C1WijUjZK1GHhIP
         eNg2vGKYLl4hP3UGlZf1aUVzKuOAdFmhaKOPpD7iQncf7tehTqQ+vdxqn6vvVWACOMSg
         JeQB3ayVuXXycZuzbJUjkLNJOMJj0phleEh3ib9xMY0yWk/XlyTjggYEza0zXpY/8//a
         W08kYBAAln7y4AlKjr21CIl19MCRVjsYamMLXqTxhzDy+fyn5PhWSO4/61aye3+Oxyma
         OvydykXFORjsI+4qoGc6pj47waZqFXdxjN21kD2SuA/QVftuQMarg97SIwmePS7afxav
         dsCQ==
X-Gm-Message-State: AD7BkJINvotPjRTSxqvm6G07fl290BOzEOfnCarS43pNbNC9f4q7xHKtdeWEurXty1lXYA==
X-Received: by 10.66.142.132 with SMTP id rw4mr13356954pab.26.1457691848903;
        Fri, 11 Mar 2016 02:24:08 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.156.82])
        by smtp.gmail.com with ESMTPSA id b4sm11795694pas.19.2016.03.11.02.24.04
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 11 Mar 2016 02:24:07 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 11 Mar 2016 15:53:58 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 0/3] Staging: Remove unused functions
Date: Fri, 11 Mar 2016 15:53:54 +0530
Message-Id: <cover.1457691345.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

This patchset removes some unused functions and their prototypes since
they are not being called anywhere in the kernel.
Grepped to find the occurences.

Bhumika Goyal (3):
  Staging: rtl8712: Remove function r8712_SetTxAGCOffset and
    mp_start_joinbss
  Staging: rtl8188eu: Remove function rtw_freq2ch
  Staging: rtl8712: Remove function r8712_setptm_cmd and
    r8712_gettssi_cmd

 drivers/staging/rtl8188eu/core/rtw_rf.c    | 17 -----------
 drivers/staging/rtl8188eu/include/rtw_rf.h |  1 -
 drivers/staging/rtl8712/rtl871x_cmd.c      | 47 ------------------------------
 drivers/staging/rtl8712/rtl871x_cmd.h      |  2 --
 drivers/staging/rtl8712/rtl871x_mp.c       | 12 --------
 drivers/staging/rtl8712/rtl871x_mp.h       |  1 -
 drivers/staging/rtl8712/rtl871x_mp_ioctl.c | 16 ----------
 drivers/staging/rtl8712/rtl871x_mp_ioctl.h |  2 --
 8 files changed, 98 deletions(-)

-- 
1.9.1


