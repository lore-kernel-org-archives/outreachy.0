X-GM-THRID: 6670105232964321280
X-Received: by 2002:a9d:64cb:: with SMTP id n11mr1046097otl.48.1553008957810;
        Tue, 19 Mar 2019 08:22:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:5c05:: with SMTP id o5ls3845992otk.6.gmail; Tue, 19 Mar
 2019 08:22:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzfCALcOaF78ZcCniCyxrlE+cSHGX8ZXU8PSjCvsFTuOuI3S0YPO0zTNLJd2tner/rhqoB1
X-Received: by 2002:a9d:2c61:: with SMTP id f88mr1032181otb.68.1553008956903;
        Tue, 19 Mar 2019 08:22:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553008956; cv=none;
        d=google.com; s=arc-20160816;
        b=Rx3zzebutH9gNfdKAn2gCLobPLWbVv3SkxoghATa287JmMOajIRVWjZCZlnH9EesS9
         yZq6PlxXzvwEDilOiuoT/tTrvrEdFjLrXQVVy0oUGxVr1FSp9QcYWED7BWJ7mUUTkW3S
         8xQ2rahKTYNPDkw52j0MlMTSocEZSMgVWDpbFAYpizO6WDoDQf+6ZE8AVK2AYA+bW2J7
         cQCe0yLsz3wvJ7EpYmpBcj6PKeKjo9XfpLtkUamrBTqhI60DvGQ6C09LmYUAiJHjXxzO
         oZ5KhSumiHn3/K7Slw+Q9XS6nvFJlVAGaZuJ2ty3CEdWQrIKxxm2hc0JuUKUIPuo/MOO
         eMGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=zRKrC/fcrduUJaXUtswb9W8H14C4PSX+0Bxhf5ZMs4s=;
        b=qj9xghWlGs0UhI/r/esIYCmmj1sWsFKfTKUd5J64grChFVer+i4dMlkrLG0OpdnnFA
         RZfd/CzVQfNSj919wXdjTlRfrsiBJiArfnCWlexGGofrKAkVgy0Cxb7oY39n6fYGKi7b
         NkJwy0nIJWN8Y4GOCzfTateU8i4xPg/pMiR8VvOvzgeRovuUQBKLQhzx/XMneS2o3OHV
         QFKqdbrhkBv07S+x7QV5m8W8DixKumDkY1RcKOyNyhYwCS45YRsvcszMzxjPjQQlnqJR
         GDxs0vj8RLjVEBeCs5e3jaZt5G2b/9xY3XTkzYnvl3v/5yY3XiTQGAHyAazQSuNYCB5I
         er/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CgCRVmah;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id l92si401661otc.4.2019.03.19.08.22.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 08:22:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CgCRVmah;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id l11so14062570pgq.10
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 08:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=zRKrC/fcrduUJaXUtswb9W8H14C4PSX+0Bxhf5ZMs4s=;
        b=CgCRVmahzEtoeP6cTTOcMyubq/D/Uabu1oAGSxN1X7wcFt+egKGoBSRiVi1+nFr9u0
         M2zNnmkyafot1EMO3zFBH3aqQo/4k3MwkMHszKp6iM14zE9KFslzxVSQBjoZEEUdSwl3
         RrM7nOhBCVes+ojgmLF7/9/PQCsI//s8Fx3MFuZT927ZadGxjUvgKnF/lJeV1X840DYN
         NJ+BWW8iRdiEb8C30dNYi9wADlPgVIoih80EMP+gQwTN+X8ChqwHXvU7fdYZ7Vr37kFz
         i4C8M1kTAXAR52I4GE/gIcZPOPCkbuz8+g7a3agDsMN6HrtM/FSQ6PI3XdynuJpQK3P7
         HJwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=zRKrC/fcrduUJaXUtswb9W8H14C4PSX+0Bxhf5ZMs4s=;
        b=duTBf+wm/BN+tcm9EufGavEWpipovL/BfRjlleuFThd+IFb4uFoiOr8LYvpPH/yZof
         fNKl8ZtRYJU5JmmlyNDDn2f7+GXXxjFNuQ61P+zgll15dENFRDyLQPGIID8EgtTzVuMu
         AFogf24A3XA9SBKQ+j4YlJ3zDLt10Mb+T/pksAJqGdxwtKiNSprJ0IIih9qHqlP0UT2W
         N4gST157KMZtgvjsyQNzuXraDGbcLAM1cMiAnCXyGD0VWPPN0jQW2OoUvDBAvsmGlhqS
         +T1dAvnkqMryQoYzJUzc5bkeYVE1FffcNorW/B5cxYb3ZVi+eUwRLt03alsny+AvGUGa
         dMMA==
X-Gm-Message-State: APjAAAUF40hkyNKzy/19e8yHHSe0xH63z75316Chbr0ODhkozBcalJZk
	D7ikS1jg5U9oacpjosPAdzY=
X-Received: by 2002:a63:ed0b:: with SMTP id d11mr2704996pgi.435.1553008955945;
        Tue, 19 Mar 2019 08:22:35 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6398:14e1:75f4:f821:faec:9887])
        by smtp.googlemail.com with ESMTPSA id f65sm23489669pff.21.2019.03.19.08.22.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 08:22:35 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 0/3] staging: rtl8192u: r8192U_dm: Fix various checks.
Date: Tue, 19 Mar 2019 20:52:21 +0530
Message-Id: <20190319152221.10318-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190319141439.8458-1-sanjana99reddy99@gmail.com>
References: <20190319141439.8458-1-sanjana99reddy99@gmail.com>

This series fix the following checks.
1. Remove unnecessary blank lines. 
2. Fix alignment issue. 
3. Add spaces around operators. 

Changes in v3:
Change in patch sequence number.
Change in subject line.
Remove multiple blanks lines from the correct file from [PATCH v2 1/3]
No changes from [PATCH v2 2/3]
No changes from [PATCH v2 3/3]

Changes in v2.
Correction of subject line from [PATCH 0/3] 
No changes from [PATCH 1/3]
No changes from [PATCH 2/3]
No changes from [PATCH 3/3]

Sanjana Sanikommu (3):
  staging: rtl8192u: r8192U_dm: Fix alignment issue.
  staging: rtl8192u: r8192U_dm: Fix space issue around operators.
  staging: rtl8192u: r8192U_dm: Remove unnecessary blank lines.

 drivers/staging/rtl8192u/r8192U_dm.c | 29 +++++++++++++---------------
 1 file changed, 13 insertions(+), 16 deletions(-)

-- 
2.17.1


