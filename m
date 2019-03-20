X-GM-THRID: 6670328284538994688
X-Received: by 2002:a17:902:f83:: with SMTP id 3mr7484935plz.92.1553065750732;
        Wed, 20 Mar 2019 00:09:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:68c7:: with SMTP id d190ls640956pgc.3.gmail; Wed, 20 Mar
 2019 00:09:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzyNAxpdVM0omkL0eJl7pmdCdwFllP9PBkS+JXG5fVU6rMUY+iZCnjEvPQkYCQQVrpURLXu
X-Received: by 2002:a63:27c7:: with SMTP id n190mr1209060pgn.44.1553065750108;
        Wed, 20 Mar 2019 00:09:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553065750; cv=none;
        d=google.com; s=arc-20160816;
        b=NgJC8WnrmmbWoGGErxuIjtIRKxtbg/7qD53A9ODd49x19aqIGKoDkBQPC9hOd0ZYjO
         AhRT75YNMbIHthMZuVPWpslTX8jxl6c2DOj+TyFs712ctcACNZuEB9fx1ZHipveVsPe6
         TUpojsdpiLA/zoNP5fNMd5YobowwAzRotb9PeKaosDGcG+psLurhtPYNhavl4FvQYtBl
         w5883Otmy/KlRpEj9cYpahAJRA3S6kx1Ysf6dAuy+u9YQrho6UXPl8Gt2hXufz3KdJ6r
         0/SexRVuz648H1dHjTgJ6ILa0qzFo0gs47DrcxdY+lYKJ5AglXQ78ufHtRsTNJQKrUvf
         kIHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=wVk2Se66mwnW/HEHpDHK65RF5e31/WpYqAY3NnRJkwQ=;
        b=y9FodEbgBNCkEj+ya33udJfyqtwSvhC4Xu7TXT4KEQ71c5bqU01ffxdMXlOd1Gzc1o
         C4RVmP6F9e6TGzi9NpY5gkZxWq5gn+W7JsJiC3OcylFZN7cy4r0pEZyBle3tCxXL0CRl
         TYHJds+KpxFoVNrNEDodNlq2osWRY5AgCPM7h2E9Zs/L7ryFpda5MjxZyU0ef3+p/tSi
         PwQpkyjMDhhKJGDumW5wp264MUK1Kg1POKbp4mNd6d3ogNna5hHASZbHrUUxTkdxthHW
         9S9e5uJ0vdoo8Tq56N+FTPU4EMmE0stLnEncKnr08WhfrDr8AG5DPLQfhCfHnQBmtjS+
         D39g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hXG5Kwvq;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id t63si3672pfb.5.2019.03.20.00.09.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 00:09:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hXG5Kwvq;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id r15so1227431pfn.9
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 00:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=wVk2Se66mwnW/HEHpDHK65RF5e31/WpYqAY3NnRJkwQ=;
        b=hXG5KwvqmxrfErrxi/GtCjB469uKR4aeVBl5ZH7oG4mNzJjrE8u/HdINoXHnmV5QBA
         rnWjGpf6a6UafANF1RC+j7c0q1a1vOHlve2D0DGuWSbkUVxQsnbcwPnLuviIqENH6HOF
         A7FXez+LjdKZB7u4uAn+zfp1yKMhNe7y8bebEUW2PN1i5nWlEHOqLJGIXGs5C5TCe8JO
         Udg1JriXFkRB0CEyMIQCRw4bf4l5Ebloymb1yazAltv7UADpk6CbosCQdR/uoLwCaoNK
         +z2Z711SQkUwWO6EVf7WuvOqze8LsE9GQ4l/MHr50b7yNSRKTf9Z5Ru2ox1JnKTOielF
         OPUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=wVk2Se66mwnW/HEHpDHK65RF5e31/WpYqAY3NnRJkwQ=;
        b=aiR5VEqEJC/nlsMzA5iWS99MWEbSiv6BN0wUoTNZ4r06fMi7c8+sHaEQMOdpW2tavX
         xuKXulGd4IysFaDPkH/VZQzpVxFHuLXuH6h5zouG/ojTEFEPzwz2zHXLQgKobzts5YB3
         tf778T67dTfgXuQ0O3Za3atjeSYhdW0Pb8waI6TNjqcF8wxA/OwwuaegvYGhVDB3b3u0
         O9BWmPXoMzKER0zznrYPR2F6U/aos8b2U/pazUSR/kF35QbPlEXJk5L/0D76rex8jRxO
         FEiipWeyxCwiVHabu5ESLh2npjvRRr5NfRLDXGZyA3/+vLtJdg7rg3AjXvL739ps5Fez
         qzGw==
X-Gm-Message-State: APjAAAUb9fILxD/z3E+2ehdi9HJ7/BXAUOs+SK67d3yPt9hYNFLAcH8+
	ucvmIlIE8+1o22Taoq80Fyo=
X-Received: by 2002:a62:1882:: with SMTP id 124mr6165572pfy.101.1553065749789;
        Wed, 20 Mar 2019 00:09:09 -0700 (PDT)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id x19sm1342019pfm.108.2019.03.20.00.09.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 20 Mar 2019 00:09:09 -0700 (PDT)
From: Wentao Cai <etsai042@gmail.com>
To: David Kershner <david.kershner@unisys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH v2] Staging: unisys: Correct malformed SPDX-License-Identifier
Date: Wed, 20 Mar 2019 00:09:01 -0700
Message-Id: <20190320070901.2372-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0

Correct SPDX-License-Identifier comment characters to silence
checkpatch.pl warning:
WARNING: Missing or malformed SPDX-License-Identifier tag in line 1

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/unisys/include/iochannel.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/unisys/include/iochannel.h b/drivers/staging/unisys/include/iochannel.h
index 45c785d80ce4..9ef812c0bc42 100644
--- a/drivers/staging/unisys/include/iochannel.h
+++ b/drivers/staging/unisys/include/iochannel.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (C) 2010 - 2016 UNISYS CORPORATION
  * All rights reserved.
-- 
2.11.0


