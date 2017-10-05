X-GM-THRID: 6473412482924806144
X-Received: by 10.101.86.13 with SMTP id l13mr2278700pgs.103.1507208822070;
        Thu, 05 Oct 2017 06:07:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.212.80 with SMTP id u16ls5824992pfl.10.gmail; Thu, 05 Oct
 2017 06:07:01 -0700 (PDT)
X-Received: by 10.99.37.69 with SMTP id l66mr1229476pgl.51.1507208821287;
        Thu, 05 Oct 2017 06:07:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507208821; cv=none;
        d=google.com; s=arc-20160816;
        b=OUI4AFqQPLf0JWUZ/y+LSRiVH3CwFUibbFTfVmM7jN8Vt/n5qsscfWGhzxJ8bAK86b
         ilYuAYqUU/acRwXKvqaSl1cOepgubmSOVkI4qCcOUrIDZ3FNtyA/zTSXaqgqxw42TBQL
         +Q+3wWrQvJdKXHjiH40o59Lg9RA3H1K61uVFLlLgkNR+zehvDGhgZaiDH3ONF6wvN2lI
         5I8PJel6GJyvNlGGHE5RjByWFnfU4vM9epl1dK/bc3KCtKucANrOI3+rxQUHHXmxB7xj
         iVHMZUjjdsBWFXALL11pgdRFvjzd3Htjvog0JSPQuHyM4AntejtFGBt/2YRjjUX9VUd9
         QalQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=6v0wxpPTPp0R286C30z5tNTXun4nGle/dNZE4GN8MfY=;
        b=SFk9HFmSXDxY3iGTnf5dGRhHQnJ5S/M+rpdJ4TYSEbXNikkPXQfmjxPGw1X3ezx7F6
         m3PK3Besn1OqtppPk4xryT8Y4q1S+reKpQFws+dZ7c2/qiemcprvJxV5WDKNlfIsUTXo
         AzBpFtKLfJVcbN8Arf3Ceq/qfRrwtOvCykL/C/ulp8PQ+2/NavQaARrogxUMar0Yxi9Y
         BdJCzXLUZIeSNCIDGCghgNVne5+xuQYOv/tc2EK0AEJmkFe+T6Qh2a5RoBJHAZHx0VqD
         jeHEHNU18ze007PzYtgZDXHot13RUV/62sHfYcZwphZj3Y+M6XGv4M5sHcMvp+BTmI8a
         bq+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kjzZLAG+;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id z74si2002068pfj.21.2017.10.05.06.07.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 06:07:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kjzZLAG+;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id j3so55420pga.5
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 06:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=6v0wxpPTPp0R286C30z5tNTXun4nGle/dNZE4GN8MfY=;
        b=kjzZLAG+lsH7MC+qfZzvTC4GaIfHKAZ9Qsz2P/Tt1ln8br5/ieIojmd9mYDLVq9tL8
         xy9xpx/9vOgQJScPWwlb7+pqb5RIO+hv0dtcWf2w12vvnvV0MUWcd2xgbAlRRMXOpXI2
         c+18KlIYrNxywnzY5kOmQQy28KHqAYgudAdLclly/qfL/2t9CPs/oOv5V117xu85Moty
         85NqkXxDJjflnTl0N10IkfFUyQIuMvTMuwbOFUYwhWHzaFSgTZKW4X7g5X5ieroryziG
         pH5jQ1CyHTw7dHuBC3K7TYKZeX1WX3wvwtGp2dVQi/pUuwX8g7YYyM2c9YIMXkKgS3Zn
         Qjdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=6v0wxpPTPp0R286C30z5tNTXun4nGle/dNZE4GN8MfY=;
        b=sETJYbTxJRMWKNt3pA0wpPhQr9vv1vfgiisRBKLLOdO96ERFLnHv1Ac+wiP3TRUuob
         /KIMhSpib7zuif/F0XnsyMFLGw4cxU/BMbxo1x5PVm3S8a3ccESGszezlHdAfARv0PqD
         01vNtuJvIYiyPnDsQv4lJGBX6XkeiC+T7OkyRLYWZewRijhKv0ym3qxFYHewFdXmOk5W
         6Th3T2L/93GaQIZ6QQolMuvygr+cAeUswf7Q50DodZSLOL6Lihx2qp7d+KC/Sk35a0FT
         Kh55eWdr1k4dgOMoFGjDsmGxXWeLVCJbzCwH6qxAlheeYVUfhRLUlxYOpolHMDagZvwn
         vSFg==
X-Gm-Message-State: AHPjjUhQhJZwPtJnBcjbs4qsH2i9cWsYayMbHKUOB/l9aeLH8tRDE7rr
	KFfJ1xmTB0fmd20fexhWuk8=
X-Google-Smtp-Source: AOwi7QAPbRhrn8wM8KET02jjKbYarC5rqf/2zspjuio+4Rw6MHh6rkIeXrKKE9Aa7rDj7ceenDt58w==
X-Received: by 10.101.66.70 with SMTP id d6mr21165499pgq.169.1507208820994;
        Thu, 05 Oct 2017 06:07:00 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.229])
        by smtp.gmail.com with ESMTPSA id q13sm36833298pfi.110.2017.10.05.06.06.59
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Oct 2017 06:07:00 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 7/7] staging: rtl8188eu: add spaces around '|'
Date: Thu,  5 Oct 2017 18:36:27 +0530
Message-Id: <1507208787-18008-8-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507208787-18008-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507208787-18008-1-git-send-email-aastha.gupta4104@gmail.com>

Fixes 'use spaces around '|' ' as reported by checkpatch.pl

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8188eu/include/ieee80211.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/ieee80211.h b/drivers/staging/rtl8188eu/include/ieee80211.h
index 5a78c1e..aa9cdc9 100644
--- a/drivers/staging/rtl8188eu/include/ieee80211.h
+++ b/drivers/staging/rtl8188eu/include/ieee80211.h
@@ -202,9 +202,9 @@ enum NETWORK_TYPE {
 #define IsSupportedTxCCK(NetType)				\
 	((NetType) & (WIRELESS_11B) ? true : false)
 #define IsSupportedTxOFDM(NetType)				\
-	((NetType) & (WIRELESS_11G|WIRELESS_11A) ? true : false)
+	((NetType) & (WIRELESS_11G | WIRELESS_11A) ? true : false)
 #define IsSupportedTxMCS(NetType)				\
-	((NetType) & (WIRELESS_11_24N|WIRELESS_11_5N) ? true : false)
+	((NetType) & (WIRELESS_11_24N | WIRELESS_11_5N) ? true : false)
 
 
 struct ieee_param {
@@ -542,7 +542,7 @@ static inline int is_broadcast_mac_addr(const u8 *addr)
 #define IEEE_A	    BIT(0)
 #define IEEE_B	    BIT(1)
 #define IEEE_G	    BIT(2)
-#define IEEE_MODE_MASK    (IEEE_A|IEEE_B|IEEE_G)
+#define IEEE_MODE_MASK    (IEEE_A | IEEE_B | IEEE_G)
 
 /* Action category code */
 enum rtw_ieee80211_category {
-- 
2.7.4


