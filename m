X-GM-THRID: 6251161839379415040
X-Received: by 10.182.247.97 with SMTP id yd1mr12227126obc.9.1455471584701;
        Sun, 14 Feb 2016 09:39:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.245.202 with SMTP id xq10ls1185367obc.17.gmail; Sun, 14
 Feb 2016 09:39:44 -0800 (PST)
X-Received: by 10.182.135.169 with SMTP id pt9mr11446388obb.17.1455471584375;
        Sun, 14 Feb 2016 09:39:44 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id tn7si2465644pac.1.2016.02.14.09.39.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2016 09:39:44 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id e127so6488759pfe.3
        for <outreachy-kernel@googlegroups.com>; Sun, 14 Feb 2016 09:39:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=gYIx9UhuUBmEkugxyG8bMfXhjE2bGTdJq0j9/OPujRo=;
        b=u6SZDY0x5ihKYFq1xz94DaPzQNTV5FNZeVyCvoGn7Zh3HSVNjq7mf2SWdAzGJ/RNjU
         dt2oKc3cLbwVi4MXMBEPvDXWUYIyB8i/+qoDp+rcwXiMAXalWV6/uz+hUG11be+N7+PI
         POGTutLoy8YpD28o8230Et+tX90Mcno6QQecGeqLFi9WKn7IzMpAzBONQi1UnLt6ktP9
         DUXu9x8F5Fd2aKs0AqZFI4P2Sx6lMpq6knwJGPvxeSBBbNHsorUCwG9gPkYa/YpLjcre
         XK+F3G7Ht9UobcVTu30XwS2o6o0wWEeLZkwKnAuaqA/09azBLaDNLZZC5aiAQKg+Ssqv
         kG9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=gYIx9UhuUBmEkugxyG8bMfXhjE2bGTdJq0j9/OPujRo=;
        b=hqFoIAU3bBSnWpFryY1AUeABZiItwlt+xJx/LFC46ui1oj9dRNJRUfJUBAEUN5LaTG
         JLz5Nf/6e7E8YRx5LKWY04s8+8Ha1HPfc4XQ9YR3a5Bjp3twh+plCiGiADCyhG65Zvlk
         h4hspoQMiOEYCWA/moTysAqis3MwmbNtHD8M79SEl3sYx5ZhklQez2GzdJfWrBfIYdYx
         axfzk4WCEOsLS3Epm0s1ZWTntfHlGxF2RDKp/lzAfnBMLNBjBlXEKM4diAwd5gqlwBfe
         Q23xLh1NKY1edbVj8/lcTj27pOW/yQxYgaDp6UG9ad6uTKM4iA7qXlRdOE0Ue6Y8vG0n
         Olqg==
X-Gm-Message-State: AG10YOQsK6MfPh/0rUfeo23dMCgGRCSf4UMP9eVJDfKTwaFVpwAFkAVu1nOrs4G7tvFEmw==
X-Received: by 10.98.72.202 with SMTP id q71mr17721643pfi.69.1455471584213;
        Sun, 14 Feb 2016 09:39:44 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.150.222])
        by smtp.gmail.com with ESMTPSA id 79sm32774375pfq.65.2016.02.14.09.39.40
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 14 Feb 2016 09:39:43 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 14 Feb 2016 23:09:34 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2 0/2] Staging: rtl8188eu: core: Remove NULL test before vfree
Date: Sun, 14 Feb 2016 23:09:29 +0530
Message-Id: <cover.1455470452.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The function vfree tests whether the argument is NULL and returns
immediately. So NULL test is not needed before vfree. Also remove blank
line between function calls.

Changes since v1:
* Remove blank line between function calls in patch 2/2.
* Correct errors in commit messages in both the patches.
* Remove braces around if branch in 1/2.

Bhumika Goyal (2):
  Staging: rtl8188eu: core: Remove NULL test before vfree
  Staging: rtl8188eu: core: Remove NULL test before vfree

 drivers/staging/rtl8188eu/core/rtw_mlme.c | 6 ++----
 drivers/staging/rtl8188eu/core/rtw_xmit.c | 7 ++-----
 2 files changed, 4 insertions(+), 9 deletions(-)

-- 
1.9.1


