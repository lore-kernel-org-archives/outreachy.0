X-GM-THRID: 6673458738250121216
X-Received: by 2002:ac8:48c4:: with SMTP id l4mr1653945qtr.19.1553785693141;
        Thu, 28 Mar 2019 08:08:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3c50:: with SMTP id u16ls2253934qte.0.gmail; Thu, 28 Mar
 2019 08:08:12 -0700 (PDT)
X-Google-Smtp-Source: APXvYqygWpCgH+SLBr6jzbCrfr5WZl0La9wUaWRM7pYYOLh88Z7ZNJDwWz0sIej9dBtRm8ACjM92
X-Received: by 2002:aed:3b09:: with SMTP id p9mr2782657qte.55.1553785692236;
        Thu, 28 Mar 2019 08:08:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553785692; cv=none;
        d=google.com; s=arc-20160816;
        b=BJIvpGQ1U4kdTFx89nmSf2Mj42cTeR3Tzqqpgh48gIsOqo2Ewn/DNxB6hEH77r9SRT
         lYGx+Jqsr82aGi8VnRAP7hNCuo3ZoMwgtwIbiFjf2ek2OIOzbLE9Ttjd6S4IBpKQ2ORM
         IQswqZY28lI+tWpYdcv0M0g1TJ60WqcEzJiZLV6ZYO+nKI1eTTuIWIJKIgc1kCp63VdP
         jHWrp2wPWqVLUfYGwI8u+c2TpNdQ3Q6igI4K5T7ARmo5n9kRdG7k2u0w/gpwa8CXPZuT
         /IfYc12Ta8uEJ+kbfHo7HrkkKdCWmoKYPx53NnSIq5BTuKbFW5NuxJKKAD9qBRufhRk9
         NdkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=C4WW3rbyUh3vXPaQL+Oriuo/XG0UF0+C0D1t1gOrfUU=;
        b=Og1d9i/po77y+pAfyhvXPym8L7XPIE3/N7wIzxWdKHiqbUqPuxT6NlAgSTCRW/YL8D
         +xxsAWJ4Uvo/u5bEz0+nKhD/mQt2xqzTSk5sF3SMN8H3SADpXbe4/4WPEef2tHp9WxZX
         K1o8cl9IxB9vGmsVFRpB5EC3xCTXt5ZsSMtBfov7wfQaKykOr+fFi6Gw1V4XQBtLGd5D
         WTH+t88PQz+0AMDIRqVEGXwUxq1B6XQfls2lLetD2lZNY7smnoStfXZGGzgxf3woj9Bk
         gsFjx06GjBDbd+VQlfeRmFXIkjeTYZsoXoUDQZ8621Qsch6ggfxwPcgt7kZlhcbqlcRS
         2QsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FG7xQbQb;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id h186si1965358qkc.1.2019.03.28.08.08.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 08:08:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FG7xQbQb;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x533.google.com with SMTP id q206so11744475pgq.4
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Mar 2019 08:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=C4WW3rbyUh3vXPaQL+Oriuo/XG0UF0+C0D1t1gOrfUU=;
        b=FG7xQbQbWSJHD0NR/6xE9I1LVvRTH645TTWu7q5uaWPJmMvmMK+GiUl26QawOuIWOH
         ssMiLL9QTzURPfJh5nbGYqzwy3VUH/nTJkyK2m0866Fn9VuDKPDtfC2UGrC4/zCbMokP
         SaZb4e4X2ky/cJRcGuifdKh/X9SzWo4qxF5bohEI69sNdF6z6DCqD6IiiM9553jXEfLF
         /oO560xIk6hCfkZuzXSolP6Dufl/TdzK4SMJMoPLw+YR6wWTngKqQ6awOIhZ1rJkHZYh
         a2r9bw6/HhuD88CYpydtivhkINEuCTJZDY7ym+KfFGYNgZTRLsRRf/fuDEpL5Tg/nGeF
         Y5hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=C4WW3rbyUh3vXPaQL+Oriuo/XG0UF0+C0D1t1gOrfUU=;
        b=aMc/Sh4c0ezbLvjSRAF9c/rT3tRiky2eSUP0F2k/KdVIyJzxFlkcpUVgSe/d8iNftB
         CFxdpUm0k3WE9oJGmLJYyCFgn7OXlCyR+9DUlXX4fxawLRQw4zar+/5VBSRplGQWcEDB
         pWhu9ozbu7MzgzU0tBgfIV/84Y8g6n3SY5GFS59PyjPv4kTRcGz5GSbxMYuNao5r3AQa
         p2GtSJJdb6QSQ3Je5LECLX3KeGWWQFxPwFR3cvjvDMccT0tz6PQ9mBKPmE7a3uo68w6b
         yBKx+Dyw853Qfv1M4MIOc3amfdbSWm8PneqckOmk6o3qc3Sy8tz9EmveN1BnfHlUPakA
         e8aw==
X-Gm-Message-State: APjAAAUQ7qHcAbo0Jd+/zuTmnkbHA3YzmgmXWpMWLDoXcqjMOqxuXI1I
	H3SOJV1+AYDN10GZsDkOwArXE+xQ9Vw=
X-Received: by 2002:a63:cf11:: with SMTP id j17mr40553753pgg.252.1553785691439;
        Thu, 28 Mar 2019 08:08:11 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.77.58])
        by smtp.googlemail.com with ESMTPSA id k72sm71447889pfb.122.2019.03.28.08.08.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 08:08:10 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] staging: rtlwifi: Remove return variable.
Date: Thu, 28 Mar 2019 20:37:59 +0530
Message-Id: <20190328150759.10539-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

This patch series does the following in phy.c.
1. Remove return variable using ret.cocci
2. Remove unnecessary variable

Sanjana Sanikommu (2):
  staging: rtlwifi: Remove return variable
  staging: rtlwifi: Remove unused variable.

 drivers/staging/rtlwifi/rtl8822be/phy.c | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

-- 
2.17.1


