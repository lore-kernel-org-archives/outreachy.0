X-GM-THRID: 6670105232964321280
X-Received: by 2002:a24:6b55:: with SMTP id v82mr2194497itc.37.1553005729198;
        Tue, 19 Mar 2019 07:28:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b69:: with SMTP id i41ls6771452jaf.3.gmail; Tue, 19 Mar
 2019 07:28:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxRE6arXo/wY/VbsmkyaVPSI+HBYy+u5l+MNYWcaBK22Q+pB0SqW4YUlKGo/Gq2mcjcfciI
X-Received: by 2002:a02:2501:: with SMTP id g1mr13255067jag.25.1553005728215;
        Tue, 19 Mar 2019 07:28:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553005728; cv=none;
        d=google.com; s=arc-20160816;
        b=JDsBGhgOogj48IS0+q5OG0ECBPgriBfnQlspnpGqcDjDDQPFz/d+btv2h96/1A8Qms
         FIV46JpRUVOhJwojJfNUe6tzQ0zy/dBLCm89qdxEh5TuxT8GnJPa9oMM9XXkyVDQQKvx
         wtr3Ff6vIUjgpjCjiDPmTK9UywzFa2LcBRviXj/lpKNIjWfItq3Y5n0RBvx7yPLKElf/
         kb5Z/TJx5TY6RBZTEwhTsQ8X3efbDeWiiBPz3uYtpequtH/2KVmTQcjuVsGQP0i1hmQ+
         Mvm7vQA82N3ZbKSs7s01uliR70SqjugkRQFRXTXPUUXlfMXC2aAdRGXK9qVJoE/K0OaR
         PaqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=17lvtfzEe7ZcCoVSod9nPyl1TQ0cPoj2Q3QfVjbyaS4=;
        b=OdYy/TSo/koX4NZe0g73nk4OfRK/NV1/gk8rUMtBBKaM3bJ3y7vGXz6MRgzPuuPEKL
         Mo6LSOa3yA0r0nCUKqRn8KEN/0Za8ulNGhUV3fGcPFHQfxC5NOtbXB7qCUVzZCE15YIw
         1BpkaEVupGd2P/9mqSHQSDkpBQhXrP1D4tQhVQixKESjLIpHAV1zUNYXkGZodL8ggO/3
         xRpQB50XOEefYeBe1lXO8nQTSdJmQR/+WBV1uswFb9XCwrytm0HR/diXFfUeLYRTWUxC
         BnBKF4ehwzHfiAPaNAYgBjz+Pz+E/IXnrX/keJlzUeCym0/p0c+ysjCytjVV4W94SNRw
         7LRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aIzn5Rxj;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id 71si81999ita.0.2019.03.19.07.28.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 07:28:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aIzn5Rxj;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42c.google.com with SMTP id c207so4825699pfc.7
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 07:28:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=17lvtfzEe7ZcCoVSod9nPyl1TQ0cPoj2Q3QfVjbyaS4=;
        b=aIzn5Rxje0YotY3+V0IA4pasiD8w8XDKA6kYyD5wHL8sRBpK3fa2VFbfSoMD15pD8W
         YCpG9u3Sh6wgbyj/MS/fgs1VM6qlJCFFD1bcVJZ5LiG2JrSpwxbecMR5C+ORmLB4/Xxb
         dQm9bYvXdSgEuld72v/26LnNCWKHbg5w/+A74ThQQ+5TGX27E+d3vBILcc6BKbu8EQvQ
         la7p6gtgt0VMZCm7IMCGQvjuh7S9hNIUrnjFudFh7QYbOgY6wZ0F0wnD9GUUr8HOkBco
         v/D+mwlNogqEO3vRFMQjtGgZLLHXrkR7eMTy4T9mxJQ19qcrQryMPw1jw6h5Xt8/ny9u
         cx8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=17lvtfzEe7ZcCoVSod9nPyl1TQ0cPoj2Q3QfVjbyaS4=;
        b=mXaYpu/1M2PVG7XptDtByBqPkJGds+4T5Pr7bgSb4hnt2YyMn+2HnVZ59lgW0Oa5KG
         8SlTuT2iisLrLI1MxtWGr5rX5Tbn7hl7LMM0738jT5vQQpo3XRhbMQpfVKzezgxmRDy6
         JzcZpgnAn0CW59EIIueFcEZlrokWUb6iSSjsS2rgr5gB2WzNEkYA26PTaGIA9MAhIuNA
         HJU5N5kNLzbz3n9kAObw7/LrWvBApPSPam7l23/zyMWESda9o0UFJ0eFHq7IuJRhqJK7
         GZ7T2YuMRf5jQY3ZMyR2j4u3qbyrzQ68mxaQLzBx1N4e9tfcNcd7+bxvGl+0Q/r/x3rt
         Jz7A==
X-Gm-Message-State: APjAAAVIlXNT+lS6fl+ZLsrCRGsRjyXCiJJHqQ2JP1b5xWfIatrNK+9b
	ajuZ2ioJOq6pMvMjdKUeIJSmBL9g
X-Received: by 2002:a63:c118:: with SMTP id w24mr2101321pgf.67.1553005728006;
        Tue, 19 Mar 2019 07:28:48 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6398:14e1:75f4:f821:faec:9887])
        by smtp.googlemail.com with ESMTPSA id i72sm28737450pfj.147.2019.03.19.07.28.45
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 07:28:47 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/3] staging: rtl8192u: r8192U_dm: Fix various warnings and checks.
Date: Tue, 19 Mar 2019 19:58:36 +0530
Message-Id: <20190319142836.9030-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190319141439.8458-1-sanjana99reddy99@gmail.com>
References: <20190319141439.8458-1-sanjana99reddy99@gmail.com>

This series fix the following checks and warnings.
1. Remove unnecessary blank lines.
2. Fix alignment issue.
3. Add spaces around operators.

Changes in v2:
Correction of subject line from [PATCH 0/3]

Sanjana Sanikommu (3):
  staging: rtl8192u: r8192U_dm: Remove unnecessary blank lines.
  staging: rtl8192u: r8192U_dm: Fix alignment issue.
  staging: rtl8192u: r8192U: Fix space issue around operators.

 drivers/staging/rtl8192u/r8190_rtl8256.c |  1 +
 drivers/staging/rtl8192u/r8192U_dm.c     | 29 +++++++++++-------------
 2 files changed, 14 insertions(+), 16 deletions(-)

-- 
2.17.1


