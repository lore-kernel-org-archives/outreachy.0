X-GM-THRID: 6466360853693202432
X-Received: by 10.31.96.135 with SMTP id u129mr16330711vkb.50.1505566959603;
        Sat, 16 Sep 2017 06:02:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.84.140 with SMTP id t134ls2666270ita.14.gmail; Sat, 16 Sep
 2017 06:02:38 -0700 (PDT)
X-Received: by 10.36.7.79 with SMTP id f76mr3977255itf.4.1505566958723;
        Sat, 16 Sep 2017 06:02:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505566958; cv=none;
        d=google.com; s=arc-20160816;
        b=VvPOiCTM+kBkvR7F22kvLtzKzWCn7dELTlGKIFzrvdxAA3a64KsX4pzNbrWHQlyMBo
         d1zFh7fci/VVUUj8ULeLwCVIKdcGKPtWwKZBt2W1vcO4eKTf10NHXVlnT6/Fm46HiUg/
         NakpZ09cV5qFPHZM9HT5EVsy6bjYrPB/44nlPZbY2FLSWtsd5Q4YUAovgXGQ0btfmXS2
         RAVJYLxy2HRULyiJ8N1Q8b4c/PXcTu8DHRSAvTu8st0L2Tg56pCZtF4lmMJTDWBBPoSA
         KtK1QgMne1BCdgPt3fEp2hRn5QZgmTSsLwNrjvgfgnGk1jqWsbj0kH0byFxyz35WM3bB
         IRDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=QNFAmI77MY6egvnVUgPgCD6rA/FM3JmDTa9or3oXiss=;
        b=n3KDfBeMO1s7GJ398KhXnkC3LeB+/MxGIZ7utiAS9JuGGctIXBktvALAyXaTFqQAb8
         S4Okbw0hYquOcXGSHwwEAGOUNyClxVDHnTBAuj72h3urLWFIZF3WQ9aLGuf1OI48DLXR
         u5hn4TB0Y7/w8T/rRsthvMIoHSumWWgX9HOhHhsutE9BpNt6hhoR5nvQW0Jwkdc/RIfO
         Jzxq5q+z9s3IWgLdRVVFKTMXBddFuEYh4oA0Gac8GloFw5oy0JLBzOyPmba5PktTh47C
         t7+bl/GAelh5AuJpEyHfx4ZUEz6mDa3zCF4hUAR2uLnCgviK7MxtiRWttY8G2kc7tOWm
         /Paw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aL+9kyQ9;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id t77si297216pfi.13.2017.09.16.06.02.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 06:02:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aL+9kyQ9;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id j16so2738591pga.2
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 06:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=QNFAmI77MY6egvnVUgPgCD6rA/FM3JmDTa9or3oXiss=;
        b=aL+9kyQ9JeTxdtsik/DbZXUwgPbHN4M0bJ47qT+DGQTmfqFtIPh9K3G6zN3JnYD+TO
         K7UNlRRukM7VtZbrPQ2ZGkyeXzBiOwyIEtGGYUvO9kkX6mVLmFf4kETzdXcUekEdtzpq
         YLF5NGjdlxJ2rH54v/vvjz4rIHBsadfCAur6PxmzQQHN/S4PexCHBqJzcfgaz6+FJrF0
         E2vlGOFN5kt6hHild5pF6+BOAj+1IG2xVSZhYRC7EZPj5CemfTvMtohojHGWuPnaG7Yb
         OKc6lZ2WTudjI8e1TxI3wgyEmdcNNLZSrvqRL47s1oqIVUJuclD2jAwh9uic41Z/uZzg
         hI9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QNFAmI77MY6egvnVUgPgCD6rA/FM3JmDTa9or3oXiss=;
        b=bfHyiuRhgn2uzpb7YGFyHa0iSVzBKmxfVjkZ8qtHzVe6dzsIA7NsB/hdtd7hSH9GbB
         2CnCwft+GBzCri9BYcXujsV9+u2g2/lji4gh0E9XDild0jVAECRDSqg8yHk7/hG+T3g5
         RBl6/ZJGOFN9TlDGvxWFmCqR1YVZ0NV1ibUft/SvedDqIr9bDvYBUsHYP4Xu+jG37drg
         Pl5s6KHX94o4vfLYwCxqSH3KHLs9RLBnsd4WX3hOzTcOvn4prwpkhE41PC4zmC3PAiOh
         BQwnA/na/BK/pxdymU7uOCymDS6tSIa/SveA6on7XGmdxtVcUTMFAuIc+sJYq/zEC19Z
         aPLA==
X-Gm-Message-State: AHPjjUgrPjduhWZv5UrW6gEIz4QI5iS3h2odMFpqpQsZtRWesE1rxjPq
	1s5ibJHYJarA/wPXzBc=
X-Google-Smtp-Source: ADKCNb6h95Khztceh8Mtfun4Mxzyiw/YOWxfd175wyjPGeEoIiMXh3UJQ1JNnOHLNub2HGZTzkExYg==
X-Received: by 10.99.124.87 with SMTP id l23mr27101664pgn.351.1505566958439;
        Sat, 16 Sep 2017 06:02:38 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id 20sm7886158pft.109.2017.09.16.06.02.37
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 06:02:38 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Lidza Louina <lidza.louina@gmail.com>,
	Mark Hounschell <markh@compro.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2] staging: dgnc: remove unused variable
Date: Sat, 16 Sep 2017 18:32:32 +0530
Message-Id: <1505566952-15453-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch removes unused variable.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
changes in v2:
	- removed some changes which were not of this patch

 drivers/staging/dgnc/dgnc_driver.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index 764d6fe..d69d9c0 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -233,7 +233,6 @@ struct device;
  */
 struct un_t {
 	struct	channel_t *un_ch;
-	ulong	un_time;
 	uint	un_type;
 	uint	un_open_count;
 	struct tty_struct *un_tty;
-- 
2.7.4


