X-GM-THRID: 6398158236087746560
X-Received: by 10.46.76.17 with SMTP id z17mr2880112lja.13.1489856111533;
        Sat, 18 Mar 2017 09:55:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.67.14 with SMTP id q14ls336875lfa.15.gmail; Sat, 18 Mar
 2017 09:55:10 -0700 (PDT)
X-Received: by 10.46.8.90 with SMTP id g26mr2895804ljd.16.1489856110072;
        Sat, 18 Mar 2017 09:55:10 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id n128si360154wmf.2.2017.03.18.09.55.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Mar 2017 09:55:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id u48so13027152wrc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Mar 2017 09:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=jj5sKKJZUPkN/ZspyceBO8WLChYrgnJZ/40+m9QDmZ0=;
        b=d4SlddT4H/P5Mexpsye0iCwker3+SnYD3nboQIScIqx76hRBIsHqQy7X6iL2rZc8Yw
         0sACleAV9Y9kahRj6HqLOCUwri4vLdDkjNKd1WWa2ZtiBNeMtMrPstOuqIgNEZgiqjcM
         U62gT7sL85jL3xavgPFtKefOtBgmu14OzzKGZI6A2vNLOmXZF4/N6ZZ4v5Sue1Uxo1vH
         e95QkESWPE5BEBgxifs0uuYMuWpmETxvrp3Vi01SlYPbFpnlyTGC2qtwALne0rwb/LNP
         1UTGwkiFWHC3FfNaRfKbFEYpY413JDhQ/3cz3N61RAQn9xklLFgb3S3Y/KtQ673Ob3S3
         UZuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=jj5sKKJZUPkN/ZspyceBO8WLChYrgnJZ/40+m9QDmZ0=;
        b=tu+nCOENz44dNvEZz6ulcgSXODVPeIhZKJv6kPdwcKcZeX035IcH6jcabol61NIMQc
         iwnQVtpL+udJweJqtdDHT4sNWkIyn2Pe+JgjGqvub1qkV59Ehdsk/YYKRGJ/1DgXKTpf
         JySrSKsQFmbs4bNw++uRo9P0qxK/nCmi3eG35ZjJmGUmKI1b4oJyV3fkRmxRf/98O06n
         aaAApQyEu/oJjv8MsdNKFHxStvIU5HNaiGa5uEXAlDfV9H3QxWIwLLUueulkvqXdqHQM
         3oc6Qh6RafTIVAknVTr2OQ/xywzFQbYGHHJG+yEzusfn92QQVgHO3IKVbuLeFyuZ2IFQ
         02/Q==
X-Gm-Message-State: AFeK/H3KoCsMTvZTgqCESsDnVCS3WEtW9l5H+/KaTdbHFEIBY6k8BnmO9kxSFBKdWyqb9Q==
X-Received: by 10.223.151.138 with SMTP id s10mr19555912wrb.35.1489856109844;
        Sat, 18 Mar 2017 09:55:09 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id u184sm6792863wmb.29.2017.03.18.09.55.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Mar 2017 09:55:09 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v2 0/2] staging: lustre: libcfs: Replace printk() with pr_*() and define pr_fmt()
Date: Sat, 18 Mar 2017 18:54:41 +0200
Message-Id: <cover.1489855248.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489686964.git.narcisaanamaria12@gmail.com>
References: <cover.1489686964.git.narcisaanamaria12@gmail.com>

Convert the printk() calls to corresponding pr_*() calls
and define pr_fmt() to easily introduce the name of the module.
Remove redundant prefixes 'Lustre:' from pr_*() calls, since now
the pr_fmt() define will provide it.

---
Changes in v2:
  - Add the subsystem name to the cover letter as well
  - Remove whitespace change that was not covered by the log message
  - Keep the original 'LustreError' prefix for making searching through the logs
    faster

Narcisa Ana Maria Vasile (2):
  staging: lustre: libcfs: Replace printk() with pr_*()
  staging: lustre: libcfs: Define pr_fmt() to include relevant name

 drivers/staging/lustre/lnet/libcfs/tracefile.c | 51 ++++++++++++--------------
 1 file changed, 23 insertions(+), 28 deletions(-)

-- 
1.9.1


