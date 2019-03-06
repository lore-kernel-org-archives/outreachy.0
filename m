X-GM-THRID: 6665132923205713920
X-Received: by 2002:a9d:560d:: with SMTP id e13mr2840438oti.45.1551847216968;
        Tue, 05 Mar 2019 20:40:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3de5:: with SMTP id l92ls153664otc.0.gmail; Tue, 05 Mar
 2019 20:40:16 -0800 (PST)
X-Google-Smtp-Source: APXvYqxO9H/GNiGJyznDE+1yDX2vwNYNaHSfHH171zg+D1bV+CXUcGagCg9jsowgIyPYT307vTIK
X-Received: by 2002:a9d:64cb:: with SMTP id n11mr2924192otl.48.1551847216518;
        Tue, 05 Mar 2019 20:40:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551847216; cv=none;
        d=google.com; s=arc-20160816;
        b=arr999LXmBgH8oUh9v367i91On+cU9xbkqYVcvHniuZB6wiurx81qKOz05HcUe2yGd
         Pvjl+ke3+6VNnw/1lymTnVSyZMb10SkKHVA4sCIB1o/cDb8ZAp0lZgAG1AH3yhcQPy7W
         yMWn8VoWALDKVD6BUMK4Q33oxArfb9hCaxjvBCxXvNks+rl45zHr4UGuJ+Uy0d5vI9ZM
         vRNZLX3YaIPKBamKZcZ/1oTwqZwEC2Y6P74nz62meM9w7DPTjA4tB7ZCrN84nr52JBz6
         z0pqb77dXNKgdEyyZEM5T/4jyvU53RjrwlI7NDgjv3wGlpdWyEST80eg64qw44Hmvq1S
         fNVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=0BBTZE8RjY0LlaliGzsb8UDeCrECLvFVUvj4OxFEreY=;
        b=J7tbNkYpcPehFa+UD5476ZLCZLZw6a2EZcdc1XAZvMM/UXmVWkLnwv/myIKTNusIKU
         4IPKljgC1SVcsyLqYD8KgNYlDGEE1/YYf3INQCYARhCRwt01YBz1KszPaKIC9OMo+4df
         GJHkVN4P/JSkLCRpHE4i41+PZCaTpdNUGyYNJAh1VItrgu92IC/klGn0uVdkqa0Y7wj9
         G8hLoqRdNtXZms5BbnwEFsBb28a9zDXIBmu5nAGAkQJ9q7eyiGOMSEfkWF3C0yrgX0gq
         WkAT/zstZp6VeDwDtgn3bW2+sVo1CpLChCUbLXtIzthmnqF8Nu0hHhIEN2FLxcKgAfmw
         QyxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HKFacETE;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id a188si24656oih.4.2019.03.05.20.40.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 20:40:16 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HKFacETE;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x431.google.com with SMTP id i19so7497843pfd.0
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 20:40:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=0BBTZE8RjY0LlaliGzsb8UDeCrECLvFVUvj4OxFEreY=;
        b=HKFacETEofY55Em0mPUBkXo+TQX8ysklyorHE2jsyy9OteOXCGEOUOZ+78P5pxNi4T
         LoAbdsBmC4fSSpAz/FdgzdTv/aXcLRd0QwGZeJTcnrjX1aoVgj64wuGBQ5bxl8pgk3wm
         PqOFV/t6mBBo5/2+8vpXpMhEUeW3Z4V+i5RvfuxOBmjW6rwiWv3AyZhMxLjjf+FUdyNP
         816Wd7n3se00EWVBVpDjyEmZn34B6TSw4Q5SXs6KOEeO6KmBI4ma0BQi7OVRxapNq1wu
         EoK4jzqg2dBdkeFSVg6G0NFc0MGoYjA1KvSUEzi4YJd5LdrRexu2IQo7kpofq3zDDVsH
         ez9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=0BBTZE8RjY0LlaliGzsb8UDeCrECLvFVUvj4OxFEreY=;
        b=fs+mTLFc9idKu80iNGvMHjCPRVMGnoROPBoVqeQIcXV6vkdIVyMEs0R3JojcUtZcF0
         DJU+zkrwWCJW8QIX7+SffnIpadOGddVNq4ZczcQgAeMibr+hHqottezapFgqPqJTaxWA
         o3C5KMMD/j42Cwm9U1q4Zm2JX4CwFU8iwyWU0ueoOG8OwJsw2qKIeTkky2fVHFATEHqu
         g631tbhAtpb/0K4rufPLsLRe0VCL3jUVAhEKPTOnwKYBGfw+UajK8+EeUzRnLuraSOnx
         hAhFrS/hQ+UGdiybthDoOqlCbnYeXAyV3jSPEPfzS10JUnHfqyyJkMhFjfwzSuGFWY3B
         QPZA==
X-Gm-Message-State: APjAAAVbnYLrk22zE2r13gaWgWu08AGymbSmA+Qt5wQ1kXJiXjymv3nu
	4JX6DHOi7Tgo5MdygOcbB1aA8BQiTcZX7g==
X-Received: by 2002:a62:ea08:: with SMTP id t8mr5364990pfh.60.1551847216226;
        Tue, 05 Mar 2019 20:40:16 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from debian ([2001:da8:d800:199:7e1:7347:f861:5837])
        by smtp.gmail.com with ESMTPSA id n75sm1162177pfb.39.2019.03.05.20.40.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 20:40:15 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH 4/4] Staging: most: dim2: Fix malformed SPDX-License-Identifier
Date: Tue,  5 Mar 2019 20:39:41 -0800
Message-Id: <20190306043941.6141-4-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190306043941.6141-1-etsai042@gmail.com>
References: <20190306043941.6141-1-etsai042@gmail.com>

This patch fixes the checkpatch.pl warning:
WARNING: Missing or malformed SPDX-License-Identifier tag in line 1

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/most/dim2/sysfs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/dim2/sysfs.h b/drivers/staging/most/dim2/sysfs.h
index 33756a3bffe2..24277a17cff3 100644
--- a/drivers/staging/most/dim2/sysfs.h
+++ b/drivers/staging/most/dim2/sysfs.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * sysfs.h - MediaLB sysfs information
  *
-- 
2.11.0


