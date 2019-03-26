X-GM-THRID: 6672752996979310592
X-Received: by 2002:a17:902:8648:: with SMTP id y8mr291880plt.38.1553621375838;
        Tue, 26 Mar 2019 10:29:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:b60a:: with SMTP id j10ls5310131pff.6.gmail; Tue, 26 Mar
 2019 10:29:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxQmtGh9hgTouSLZwlEYjQCguFZjQ/n7FG+nE8LcSTOu2qlK6kfVc8xoN0UMpkyR5b5/5To
X-Received: by 2002:aa7:9358:: with SMTP id 24mr62001pfn.149.1553621375005;
        Tue, 26 Mar 2019 10:29:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553621375; cv=none;
        d=google.com; s=arc-20160816;
        b=nYs11yGZnqQsBiXJDUYszGqgLVYM4ndINxuZc/bw2JkcsBtxK+mc12t++iPRo8UedK
         KpprFACsGVXgVU6ay+gS/DgDwnCsb2OZZVUymK8awWg3H5eqTA1hUUd8iQgJwLaXO7jR
         lrz51G5yXuOKJg4quXAyMOvWDy48ZFooA2tXtPiUY0pXW5xG6ObP9737Kj5h5/xNRHCR
         uOhJJIe/rrYFbXZySCQ7lGYIt9KvrqiYYzuIgrp2DtMvnCS+wJU2xQCxAgJbmK3aZtde
         QXBe6kTF2HETzuf1HIsXO+2g6PL1kjYLyOmG3+IK/2ExaPuT2rdasmDcsV834ocshXP3
         A+EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=JVFREbtyUml/N1as7f0YcUd62p+Or2PFNlZaMIjlopY=;
        b=T+tuRzAc1NL5OXTtlEgVyQu5n8bteh2xXVWiUkNiRHGSpULziwwNPmjXqEjGeTNo3K
         u5UO6iKtYf1DakgjVnZ0UiMm2VjcVTDMr3dM6JneJRrKtF2hofXowH2WQATqbp882TSp
         PLudbuqhDmeiSgz7uyc7mZeqasjD6ViNoV4t3BPoXLsuO+rjsbeMO0BEMJ1yunx3RyYF
         t2Ov3KJtTGsnEiZXLZFE9O46Nc8pBuzjxk1ZHkZHuUkgTknxutemS57B8MUfp0tnBhFy
         ty6EP6+Qu4uV290PzcJ4GQLtFTXIlVJoExxhojYm1aoVDK6FxKO7h+eVry/xvP82dkRy
         TxVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pPX0gmZe;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com. [2607:f8b0:4864:20::d44])
        by gmr-mx.google.com with ESMTPS id b19si1082272pls.5.2019.03.26.10.29.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Mar 2019 10:29:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) client-ip=2607:f8b0:4864:20::d44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pPX0gmZe;
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d44 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd44.google.com with SMTP id p16so11555376iod.2
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Mar 2019 10:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=JVFREbtyUml/N1as7f0YcUd62p+Or2PFNlZaMIjlopY=;
        b=pPX0gmZe+xjBg8Cb+3tT/67lvucs3TlYmhjXr6Kw4Dp4G6vTWMKuZM1nDFBH70kCYz
         RDapvl6Wk5I6bhgrqD7xCY9AhYK9PQczuEICw6hr95jcqu/JJ1MUrDYuM0kLpXjdiLNq
         0iDHZkc5+Q4y82Li3m3rdpBJ0xZFakbn3bOGvdgvSuq94pg+w9E0n+VvRSKLkJSs+FKZ
         t2ltw3yeSENAYDHkF9YdjbspHlTaIFcU6UrOL4qWziSu1aDkx6lmnsnGVeVguZuW3kX0
         iHg+POu4duE39xLi/IdQlb9bDA9ubZGiHOpCzEn2upCFNdJBP3ElA9FDTly/KXTyXeSe
         EVVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=JVFREbtyUml/N1as7f0YcUd62p+Or2PFNlZaMIjlopY=;
        b=TTblmECfpTEOB4p70BRmHGBXSqcPaYLUw6JjzJa+RR0uvVaCAZzXUelnDJG12quIkc
         JeTAidBDkAAPXv77+6Chz4xToR6EtqAIdEj4dM/ntQv8D0/pKycwoxhUd48Xzi2WCCaA
         Xqqo2KZfIZ60AKAmzM3Rz2zoFnuslULt6U+Lns6NNcpJZGZCMz86NehBbQmmwGdBLjZL
         XCK9UG0qRVGicWWorgDfpY1+8M2dp4zF0VW2ulHtNIPFaYqwyu+l2PLJn/e808K8y/FK
         bkvqTKp5Fszc6wN6wQ+6CAvYb2AjSuao7tYussYPRWoYkIG556sAJGKp7XBUkZwpf/vl
         /ybg==
X-Gm-Message-State: APjAAAUSNHlY1jD7iu9VodBKt82dTCvVChrvjEXhKAuTv5+t4DoMZ1Fu
	d1qSJ3kLrSL9pSpiqhIrFwOMCjbaFw==
X-Received: by 2002:a6b:7417:: with SMTP id s23mr21242047iog.2.1553621374251;
        Tue, 26 Mar 2019 10:29:34 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from branx011-Vostro-430 ([2607:fea8:29a0:ff5:413e:2bc:a081:9d66])
        by smtp.gmail.com with ESMTPSA id h131sm7725534itb.6.2019.03.26.10.29.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 26 Mar 2019 10:29:33 -0700 (PDT)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Branden Bonaby <brandonbonaby94@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] staging: rtl8712: coding style issues
Date: Tue, 26 Mar 2019 13:29:27 -0400
Message-Id: <cover.1553619382.git.brandonbonaby94@gmail.com>
X-Mailer: git-send-email 2.17.1

This patchset removes parentheses around a member element
before the '&' symbol as it is not necessary. It also 
renames a variable from camelcase to underscore notation to 
align more with the Linux kernel coding style. Lastly the patchset
reworks an if statement to prevent it from comparing to an arbitrary
"true" value.

Branden Bonaby (3):
  staging: rtl8712: remove unnecessary parentheses
  staging: rtl8712: rename variable to avoid camelcase
  staging: rtl8712: Remove comparison to true

 drivers/staging/rtl8712/rtl8712_xmit.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

-- 
2.17.1


