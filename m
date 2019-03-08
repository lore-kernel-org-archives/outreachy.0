X-GM-THRID: 6665843056733847552
X-Received: by 2002:a6b:b545:: with SMTP id e66mr9511898iof.13.1552012529553;
        Thu, 07 Mar 2019 18:35:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:7d8e:: with SMTP id b136ls2374462itc.5.canary-gmail;
 Thu, 07 Mar 2019 18:35:28 -0800 (PST)
X-Google-Smtp-Source: APXvYqx8DfKviGqOms88S1iqMceyiWFWksKAnSCCmpVTIWG1sbBoAKddsn0S79UYQGJksw7EjvXo
X-Received: by 2002:a24:1452:: with SMTP id 79mr11450840itg.17.1552012528704;
        Thu, 07 Mar 2019 18:35:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552012528; cv=none;
        d=google.com; s=arc-20160816;
        b=n5awuqef+TM+5jT4oOREqFWPt5tiLWR5FyTXIwXsWfonH3SsywOGzh9umcoSFIBiIl
         PrKePckg/c0RHvH3NE0QvUmS3t4jd2zE5J4FS7u/HnW2a8TGe9hWj6xcGZqqAJMZwWE7
         VB77UdbcUFhfId1MjZpkQ2/JYrdkaWB8637te6j8C+LgSI+XxXmRY9XfKfSphXblqSwQ
         s0TAQzcnAv7AIuvjIGrqocKy9L3n3AoIQOj7Kyh8OzOIJgl8M7ESasAgp30/Mb6/WLxk
         mJwIpMGLWHEGZFFrDA6ysg0preVwVQ9gvRvAIqyV2kdtFAqIAUcou7jda6bnPVdAVnLs
         Docg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=5FwK5ovpTlzYz12tEgsIUqhLKfmjM5RltMcjGL95gTM=;
        b=gAtGFKmDGwWM8CaHtBRkQ4RYNmf7UOo1P7W2Yeh3xzucs5rHmeTszUTa72pJGMJNAI
         1GhDkAi0JapDCsHPmuCV96Srang2MBNawnz9kOzX2YRP6bG7+vJf2XDRxsNn5M6KGQis
         oy4w/l5nTmY0P1z6RWRmoXx0vlqXUY/5BOJAD69DEYDfFFeW2FHMWhGPn0ioa/5+4wzQ
         E9NonFi12jov47OkEmm1esRSKZjG9v8JHbZHTLV1qEVDoC7xoL3URALqqw7DacvIf2gU
         NcbEux8k5cCtWdgUC6DcixE7UW+F+jg9keDsJ2IMhWmSQ02NrNhm7SnseAnBGwSMGxAU
         pq1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IQeYroD/";
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id e74si396116ite.1.2019.03.07.18.35.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 18:35:28 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IQeYroD/";
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x530.google.com with SMTP id h11so12870201pgl.0
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 18:35:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=5FwK5ovpTlzYz12tEgsIUqhLKfmjM5RltMcjGL95gTM=;
        b=IQeYroD/lD5giXEB920W7J6lhC/4C0FRuKAxRHQ/YQdHyqX9BSa0fhYqX6O8c92IaS
         K1VgaCd/g+NQ/CHMXGehHQvOuDZFiH0dyx4ayIEfu8pn74dSB/5NBv7vXXuLhSQGRq+S
         yKVtS6uV/vykJ8jzUUpvYXrPsotzCI14f7lCxyOhthy4egO+xq36DfsByCCAyHqDenhk
         PDMZzr7AmU/JRJcUqlcEboDiDfoshv5wz7De4hiT8qrYYHp5zB3Edd5xZ0eVJwNwbR3E
         O0DYTGA2XBlxxwZegugHmLvI4bfFWHgIpwL1yC4D6i3hDqU2j2qZf4fwTQDgAm9TdnS6
         pLaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5FwK5ovpTlzYz12tEgsIUqhLKfmjM5RltMcjGL95gTM=;
        b=RRz8FW5uXXiahaRkSQ/lgar41bO6+MKMVRDQTBo8rW2y36HxvtPVr3Qy35PsQoq+mj
         wpvl4YiVrxsq5PRFyb4rgD/b80RZXlynyE+nmyGseGQ7itHbDrV20AbwzEWAeVRCRyjB
         lAaIMYUB4F3x4/6+kDQ0EA7xc9hpd7sfJR0cpxK/BkcpCcNaCIP+GogdIV9xq/o1JX/f
         02z67ThANYL/QcXvX/Oju0IwPh8tdyQddkjRMWfMj4RFXlzTtzLIfFKHu38eNLtGdMoj
         +GzRnvy0h3sTSDTTH7fIHQNoA7c6rDjqqglIeMxQxH9rk3FvqDM/aiasR6uQ+036LYNA
         sC6Q==
X-Gm-Message-State: APjAAAXTSeaDP8VL+7zVObsKz1ya55Lf1VkTowHrfsbuhGLU82i7WfIg
	Js5fRq9WknlOOBfV74f3N4+kWHpnP3mR7Q==
X-Received: by 2002:a65:620f:: with SMTP id d15mr14447219pgv.112.1552012528224;
        Thu, 07 Mar 2019 18:35:28 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from debian ([2001:da8:d800:199:7e1:7347:f861:5837])
        by smtp.gmail.com with ESMTPSA id z67sm17968353pfi.152.2019.03.07.18.35.27
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 07 Mar 2019 18:35:27 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: etsai042@gmail.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/4] Fix malformed SPDX-License-Identifier
Date: Thu,  7 Mar 2019 18:35:22 -0800
Message-Id: <20190308023522.5342-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0

Fix SPDX-License-Identifier in /drivers/staging/most/dim2

Wentao Cai (4):
  Staging: most: dim2: Fix malformed SPDX-License-Identifier
  Staging: most: dim2: Fix malformed SPDX-License-Identifier
  Staging: most: dim2: Fix malformed SPDX-License-Identifier
  Staging: most: dim2: Fix malformed SPDX-License-Identifier

 drivers/staging/most/dim2/errors.h | 2 +-
 drivers/staging/most/dim2/hal.h    | 2 +-
 drivers/staging/most/dim2/reg.h    | 2 +-
 drivers/staging/most/dim2/sysfs.h  | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

-- 
2.11.0


