X-GM-THRID: 6806835007878856704
X-Received: by 2002:ac2:4307:: with SMTP id l7mr9090354lfh.37.1584839776640;
        Sat, 21 Mar 2020 18:16:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:964b:: with SMTP id z11ls337212ljh.11.gmail; Sat, 21 Mar
 2020 18:16:15 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsYbQBXEVfyk59BrSR7oOwKIl9qCTxAbTJWNVtgoB7EVfdD8hHAiGLCAvb3aEcXM6mDIfdW
X-Received: by 2002:a2e:994d:: with SMTP id r13mr1277246ljj.238.1584839775340;
        Sat, 21 Mar 2020 18:16:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584839775; cv=none;
        d=google.com; s=arc-20160816;
        b=ze2egdlvmXxxS9ZB2ahxOyMXfDHpeIdzSqA0SuuMqd8ynMPkESmvyMKDHs+tPoOSdu
         yNB7s0gcfrHM+GsSVhl8bAllOJe38LJsUuL69K9kDmQ1Pg1A1RyeCkBv9ygLpUMZWKBw
         Z8tsyaHDgV6zUkbU410bGWMWLTys2/TrfhBWr8U3WwPt6MvW2LQBw/ps7yutWJSB6K4d
         MjKk6GxIHfAlKrReUcDeyQ4Gqf4VWNHmvFvD0X/azqM1bAygseeEDeanw4nDvm1/xkWO
         2nd8DxBYN7hhA88pwFzKO8GH7tfGhYTUmGq3hZYqVUOZ+CozaydSeqlCuqEwYaIPVJ59
         /z/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=hUdUaI5hOaLgeY/lI73FWJP9GxLn7do/P/Gga6WdQLg=;
        b=w0FjuqlDm6PSh6hTQ11HrdpOj9GholvmJVb7cHUMl4mY/PkI9urEvOKzTa1FxAzVnq
         c253FI9zbIiCagog1YX8ZGCEyiVc6yy69NrM2q8AJmok7PL/8TSfUSg8W610u0OLME8c
         5Va4aLIjkxPo2X8ePnc8nq0ID/OxidKw2QM5DkHAuvt8mNIZXMcfMPXQ1/HxXZwNTvZN
         KBvEE0g8tj70I69bhS9ZE1CWY2ZtFNc+t0SvOLkiSjViuO/xBX7CP390LBbobWVl89MB
         n8mzxLBvy1mJMcwyfWBnsugKyOnQ3devTDg4qAbMUoCSg25Mez6zss0kDYt7V1QhLXbp
         9hVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UbMuc3E+;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id a21si739436lff.3.2020.03.21.18.16.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 18:16:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UbMuc3E+;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x242.google.com with SMTP id s13so10691180ljm.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 18:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hUdUaI5hOaLgeY/lI73FWJP9GxLn7do/P/Gga6WdQLg=;
        b=UbMuc3E+HWww8+Ce2sRkio2MS79oEq8/YP4gZJ990F/tEckITaIBYRtos2GZNHP+gy
         RPzC9XOkjEKEN9L/7LlrbeENaTWys+25XUKRCLBNdU79Yb3JW0lfdO9kiyDr5jPZmWug
         7hgub70J2MT3H5uKetYmSjkNxPvO6pim6COgrdtotjmv67OnDFs44k2+91AT86RYi33b
         ps8dbX7JILv+B8fQvBioo6WvKRLJiM9NTFfbHNN3ePOssE+I5XLfOfi6A+95pJYxug91
         R0YRPH64MkOtoPuGKFteTjT6T7LhnZfjNFXRV619izMXZoF7T1d36R+XHE6q47qOGVJR
         sQEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hUdUaI5hOaLgeY/lI73FWJP9GxLn7do/P/Gga6WdQLg=;
        b=NRFsSbGU0+2JyBCoBmYErwtDaPchnFXQJw4JTGO/z9w/PIQLv0cweNvOPKxeI4XJmi
         iJT0otnwNA18fCwDwZIbfuD7uwknxJjCA1MN4XAx7ATCz3C7cHkc+jNAbzCBJBTHGNhQ
         Z2zgOWvfqGFylCe72VoGCYVnHLUMg/RhJ1ZDdUyFhB694okuioBNQlKzuzoSYNdcIu40
         kQV4AllGtYioDWzWUZosEMIlmXPHMF0vzv+5jFzn1L3aKMxzzBuz+GD0tjO+tafRCceh
         Kc/chBp8qaE/2EHjIYub6GSU+NpKVKecfVlVwwugUTz0Rm6OLVWRHO7JZzBZGCmPIBiF
         IMMg==
X-Gm-Message-State: ANhLgQ1wWwEi7x7PNds8gF3TSPf7uau+kCj4qEn44MqEuP2I63zPb6Y3
	8OPvB4v2ndD2s9pkj603e/r/91kt+Sc=
X-Received: by 2002:a2e:240d:: with SMTP id k13mr10050617ljk.33.1584839775143;
        Sat, 21 Mar 2020 18:16:15 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.50])
        by smtp.gmail.com with ESMTPSA id s23sm6459080ljg.94.2020.03.21.18.16.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Mar 2020 18:16:14 -0700 (PDT)
Date: Sun, 22 Mar 2020 04:16:12 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: hp100: rearrange line exceeding 80 characters
Message-ID: <20200322011612.GA4357@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

moved to the bottom line after && operator for it exceeds 80 character

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/hp/hp100.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 61b891d..8aadb5b 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -1407,7 +1407,8 @@ static void hp100_BM_shutdown(struct net_device *dev)
 			for (time = 0; time < 10000; time++) {
 				/* RX_PDL: PDLs not executed. */
 				/* RX_PKT_CNT: RX'd packets on card. */
-				if ((hp100_inb(RX_PDL) == 0) && (hp100_inb(RX_PKT_CNT) == 0))
+				if ((hp100_inb(RX_PDL) == 0) &&
+			       	    (hp100_inb(RX_PKT_CNT) == 0))
 					break;
 			}
 
-- 
2.7.4


