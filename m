X-GM-THRID: 6669200248940789760
X-Received: by 2002:a2e:447:: with SMTP id 68mr676361lje.0.1552822278548;
        Sun, 17 Mar 2019 04:31:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:82c9:: with SMTP id n9ls668475ljh.1.gmail; Sun, 17 Mar
 2019 04:31:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwP/AmI8xmmpdbt+qggP2HwxxHaATB1ddH7/WMERf+NZ+cd4R7DKiscKuaydJ5roTiNGYs6
X-Received: by 2002:a2e:290:: with SMTP id y16mr663920lje.20.1552822277763;
        Sun, 17 Mar 2019 04:31:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552822277; cv=none;
        d=google.com; s=arc-20160816;
        b=cqeN+T20m2e/jEafsvPSXtKxfo52+l/jFkJJdBlOW/wEd9HUV6ZbBJmrKa+QLSMzHX
         NqeHPPoujjb8qDeh2sgXdz8LHYRCyjpt2Zh0wjKg1XjdiTCi/W/OtLd66F0gGO9aOHy+
         ZLCH022nLxa9/4hsgIOlvZmj6urMQ5QsqPIn1UvMbUSD18C5Ll7uB4RVMBCtjpG6mOG3
         x051yWDWX1/jcxFdPNPAnWeKLSddWPAQKkP2gzx0fgBqZmz1PeYpteB6YsWhjAwEEU6e
         zonET3dJqzA8lotJNzaIwFcR0XDU1qA1cdwbNFDqB2MCsI0IwASF/XD9djsiZXIpoWFO
         SV7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jSgwT9h3fcmD8f5ubM5OYJsETyWTNxj8fMnpfsukIzc=;
        b=lUKEx9xMvy3bDQ/DVuqgu1QrfSiVu1vU613zpMg0T8NTg/YFtEJYyS2+XY1fA855Oq
         CzZmjEnOyFL1AZQ+YiGe3JobfORVZA5RdICcSC20cSfczf7TzN52O6BUWWekg3zwVcrq
         QkWwOn3gFCHFGdWL2R0oZK1oyYNkOeydC9t8gmwetyrMNrevKK0ErVmehR5p4UnZs8iB
         i/CP3KrHKY5/2xIL7R9iimMZdglUYtAaVMrQLhvTwq3V6iTzFClbY5njOluqPXJgbTrs
         +At27UaLHC1eLx62G73foNIhnwLnjfzheahD5FwL4pkwEH54eZNGpOD1Wmr5uv+j6qRl
         edEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K4acgcIp;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com. [2a00:1450:4864:20::334])
        by gmr-mx.google.com with ESMTPS id i21si300706ljj.0.2019.03.17.04.31.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 04:31:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) client-ip=2a00:1450:4864:20::334;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K4acgcIp;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x334.google.com with SMTP id f65so10330799wma.2
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 04:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jSgwT9h3fcmD8f5ubM5OYJsETyWTNxj8fMnpfsukIzc=;
        b=K4acgcIpgLXgCRFkFLAB6purA1UlcINxeIkLcVgmiO+VtcE0S1bVHbpAXjm/rDUXDP
         Mhdj8RI+fgYMsi/iXaFhjoJvAGknWSIL1qmI3ETqD8M0momKTl7xeTh6ccHs5nxrsnjN
         SWiBqOn6tTcfTYC2eftRaEq2po6JpnSxaayUSF+Czz4J1YbNAYv8GGM3if7msqhUwSJj
         VvKHMBiji38E6sxVS+7/vh8XE4ASnJqMZU/SW80Crdta944GGoZ4Ymnm4eMU8zpFTTzE
         ndxY8APvkcjyLvEOFBdz77kQeec3s78gAI4tO2UoxaGZUaXRBAVac/rr4UsM/kq6p8zx
         fRgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jSgwT9h3fcmD8f5ubM5OYJsETyWTNxj8fMnpfsukIzc=;
        b=lCtHNG178g+JpA4atAMN5tTuimMwmCT75CDAB3oIJNSzKOqp8x0/cMKpEOuVwSTXVG
         mw69BuV+lFTn9qWw1fShjCKmBCqYsqSJ6GZbk6G2fiE54d8ZsmsXuasQqbUO/CoiD+uE
         UiWo+4qgXKmecq1P4/u29HgV1iLI1FR+CJY6EkMUbIEja60rHRgkZVqNeAXAcNNXsY4z
         aeCFIqlIH8Mo/zDvjW7dc7yNIysHwaaCYTJS0e33Y1ZIvfdRYWk5rnvB+X+e8ii0yFD+
         V7Ff3fNVQ6qj7uv0ZkrZ7MmTNj7sBTBLvUAc4gel980Js+u3rXdDIlWYl/WTzWclzbYM
         u3BA==
X-Gm-Message-State: APjAAAXtIegTMxvcnpaMPtdyoAhPhYgFC64WchIfSvoXKEWAWwm8neXd
	sBucln61lOIUrCJrXgw5FA==
X-Received: by 2002:a7b:cf03:: with SMTP id l3mr7694230wmg.14.1552822277400;
        Sun, 17 Mar 2019 04:31:17 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id z10sm5073162wml.39.2019.03.17.04.31.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 17 Mar 2019 04:31:16 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: speakup: fix line over 80 characters.
Date: Sun, 17 Mar 2019 11:28:57 +0000
Message-Id: <20190317112857.18220-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190317112857.18220-1-jbi.octave@gmail.com>
References: <20190317112857.18220-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix coding style issues which solves checkpatch.pl warning:
    "WARNING: line over 80 characters".

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 53c8793c382f..1c3b0a257fe5 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -788,7 +788,7 @@ static ssize_t message_store_helper(const char *buf, size_t count,
 			continue;
 		}
 
-		/* Do not replace with kstrtoul: here we need temp to be updated */
+		/* Do not replace with kstrtoul: temp need to be updated */
 		index = simple_strtoul(cp, &temp, 10);
 
 		while ((temp < linefeed) && (*temp == ' ' || *temp == '\t'))
-- 
2.20.1


