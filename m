X-GM-THRID: 6674226221101875200
X-Received: by 2002:a05:660c:744:: with SMTP id a4mr3678859itl.19.1553964386411;
        Sat, 30 Mar 2019 09:46:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:a890:: with SMTP id l16ls406769jam.3.gmail; Sat, 30 Mar
 2019 09:46:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwrzbGklUe5BKIjmwSgynhiC0MkFw/Rl4Rr+MKOh8bLtsL9n9NwkkTBn7CF4TR+ocmKGqze
X-Received: by 2002:a02:7e5a:: with SMTP id h87mr7266136jac.1.1553964385451;
        Sat, 30 Mar 2019 09:46:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553964385; cv=none;
        d=google.com; s=arc-20160816;
        b=f4B4h2aJljkS7CQ+HInruPqfz5tSDuKk/ljfuYPabh3ug18Xw10cbk+RL4uhGlDbFE
         LXlz3oWj79Mfkwa7nGGxEVNjtK6Lq7SbmpOeKobTkVmlS4jfX5+QA8DmlYKDvD4A1jpj
         99t2toV+o/QqlMG+TAKqIr1PVvOb7EPzTVM4YSpWJhmJKBCyHZG91GY3flFecOa2zVOU
         EDMt+kEIxYtgBpWPLpqaZYp7gKQPoTZhcrN/75BDnq+vhG1QDWwKa0DJrvTCgh4AQcrd
         TVcDVKlDV3HviPY4iSRBmOsgVLS2ZDemzVfxvzo7KzFmmQ/om27WQQrSnoYeWXVywR7n
         hcPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=bAAflXuW9uJ6RvHYdkIBtRgUOBp7E5Wp/35Q2rsJze0=;
        b=S7by+pzUmOQ9AkZ4iCdO0ukcaTOAmI43BAYwR+JQfOWO/8yDvPJGHqS55FRJm2q4m0
         kG1pvA4GmHzaa3LJ9yvVzTIgWOXyzxm/lWN0T5J3AdpA5zkk2O5TsSgI48jVts2GGVlN
         I9HIMS4Wa1AkbKhUVPzdAW8xtli1CtCPwl5Qoz1Fdjpn/RiOCPXeYgxlTrr9usNfOJIN
         kB0tkDphlwI77kdul5hHzH6B/Kd3mMZ5UHcJoNMLiw+MMPbROVJO9hXTnqpStXVWncU2
         BoJ4XyoTYOnVWaDFnTyURWZ6mQX/YrbQ4VYHH+uhwunAuwokLNBN7CyymsO6EwQIsWP0
         f9UA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=pu4itnsX;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.38 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic303-21.consmr.mail.sg3.yahoo.com (sonic303-21.consmr.mail.sg3.yahoo.com. [106.10.242.38])
        by gmr-mx.google.com with ESMTPS id f13si247527iok.3.2019.03.30.09.46.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 09:46:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.38 as permitted sender) client-ip=106.10.242.38;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=pu4itnsX;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.242.38 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553964382; bh=bAAflXuW9uJ6RvHYdkIBtRgUOBp7E5Wp/35Q2rsJze0=; h=From:To:Cc:Subject:Date:From:Subject; b=pu4itnsXhjVQMpmIdO2mWd4oaulkshA473LzRI9XTk5C2aghTxjo5ROz4u20YO9TDl9z8v+xWqk9D1Aj3zve18kHTdtEDTFPWRKOnPq3TrFSbebaWuAocR0vSFqmoVMdwLbu/EC+u+4Mn06TldflvSvYIoaVukVrUIKS92wqyaj1KDrf3T+OForoDEBrJJAA/x/jybAIxBqOXarqLu2nfKSGJGz3+3faWRmQzVYe2bAq+3tLUlsU1xQekVYNPg/cHP1nQjnSO4xe9cp0mWoviCDZoUgpgfYWVLXtd2fmfVf5WwpWjRjw3uYul8ZAZ1nNoeY0FCdtFrYvQmekc2Schg==
X-YMail-OSG: vWbp4XwVM1nsZY0l5cwD7BpWTixXMmgK9jl93Lb_rydK1lRhQ7hxfJ8MCPoC66Z
 qim2bfXaoZExjEPEJPZ5gXHgKbjtIfi0P6TaI5Ta3W7R2QtbPca2zrt9gudD3SPmSwXp7J.xWf6m
 wUudy3YF5aXcEzdAb50_4LZ02I0zRP28CR.FL4bUfTfmhzYeU7wBwJD1yon79rb6R926sDthbr_D
 AbbNorsVr6B6fJ3U.aoSbqbI3f8Awt3hwhWLuwhYAM7WeB12P60nSjSm6Onr4qrrcdfyQOIr7Yq8
 ejXDih3Jhh8gs4ma1O00AuJHfNBKjjDvtvlUR6ohLv.lju6JY30JibK4DT1q0nGcvo_OhgLuzI3p
 b29_6ZESF8vN.BvoDpcqjL5ps3DiSxpgN7ztHMGkq.qPvZ0G7suiEzT8AvGXWJJWXGULs11vW_yx
 JZWINLu_xLiVHiZt7d0gTfWha21M_wvcpvEwCwt8LKbcPnCuIYWd41NJZKIoLr_8EcNow44J57R0
 P82os6m2DZOdDALwQAdMXCNKt39U5oEp_AyA9har3cu39eH5nW7Z.hMu.x0xdxXkBSVYBdS4ZS4B
 ztKKCIAt_PHhzrunQEGnt_i4LzTXpPh.re.CKQz7qpLZ48UxwCxdgjto9gawlzYyy8zoahhh2QtY
 DsBFuGMEA7X3MqbJouECPG5gdC8tUM_waLMcPQl.G0XvHxQSvNw3MnhY3LtRGTM.ruD5q3f9ji96
 DMtn5J1V0GBSnIfqYxejxFoUW7YFZ0Zy.H1krw53hcqz_VI920VumeRtWfrDVMR0AYrEJ3IFcycT
 VgdYhMaXYojyv0HFZlDQqMVdLNAkBnowi5EOl7FbyixS9j3XrAHozPRCfANLzcGfmvgHe_Ui04cX
 x43D9Zf0SUiqSaSd.oj6M2N3.28uyK5jMYRbNTEqPGTdmdZRceYVi5JdxDPUuAWlUU0Ndtg47vnJ
 rz5wbtZKcqgsvIxsTCdCOJtnJ.5d0vOIN5KitprBvlatETyFZ.Go4zpKFEUH0AZHUiX374_bizhN
 CwXdredQBYfU.xOZCLHIiOW.lD_jBh._GdJsAY9b92vrSPopdjUFilGyYDBpzWhXpMlIgocdje7t
 DyFiN
Received: from sonic.gate.mail.ne1.yahoo.com by sonic303.consmr.mail.sg3.yahoo.com with HTTP; Sat, 30 Mar 2019 16:46:22 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp401.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID 266be56d59f3e40a0126d3a0f386759f;
          Sat, 30 Mar 2019 16:46:18 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 0/2 v5] Simplify expressions in phydm_debug.c
Date: Sat, 30 Mar 2019 22:16:06 +0530
Message-Id: <cover.1553964092.git.nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patchset removes parentheses from the right-hand side of
expressions in phydm_debug.c and also moves an operator to the right
hand side to make the code more readable. 

Nishka Dasgupta (2):
  staging: rtlwifi: phydm: Remove parentheses
  staging: rtlwifi: phydm: Simplify `status = status & <expression>`

 drivers/staging/rtlwifi/phydm/phydm_debug.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

-- 
Changes in v5:
- Make the two patches a patchset.
2.19.1


