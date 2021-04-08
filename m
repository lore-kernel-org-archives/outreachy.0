X-GM-THRID: 6948900055812145152
X-Received: by 2002:aca:c401:: with SMTP id u1mr1761300oif.118.1617916872417;
        Thu, 08 Apr 2021 14:21:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:578a:: with SMTP id q10ls1698598oth.7.gmail; Thu, 08 Apr
 2021 14:21:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwXQYFWMNXj3UxkJAist2tYsSUE7pcMKAdTD5KOzyO9L6YYr4MR6V0FotDakaLHoDNyCbRW
X-Received: by 2002:a05:6830:1bf5:: with SMTP id k21mr9659054otb.129.1617916871710;
        Thu, 08 Apr 2021 14:21:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617916871; cv=none;
        d=google.com; s=arc-20160816;
        b=HZrGGGrEuuv/KlhI2PdrsFkvKJ7Lex5CIcb5wZ5iDDSn9aKBcnHr59itYiZ78ZXn72
         jJCWC3roEt0W90BybAZPYMEoRprOBpHyXpP9lHCK0plS2EdIvCI+EhMsiAmdPknb12AB
         Egpg3xp3jSpt/uVW7/QRQVb8sZZJHPhD7O690/5qVric+YNsxQXWsYqd6IK6Mezx/ZwC
         0LCiZxPadBBknads2vIRAUeCMyVI/za+depXzvDL/S1hCKdy1ziFwjrZGf5vRH9oEH13
         vil9r3OJyUtudq1emNSx3GO2DobDVNooCPvOV2OLtRzB3dqE4/Cew/PlbqOcxk71ON78
         zS2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=7KQ9dgyFpGmrno3NBnr3xvBzKME75uzvWjBYKMlTxeM=;
        b=N40j27veydyTxVwBY/sswImtfvs3qG2rHGCypOQbxw9N4yTc6NwFSGnlysu9VfilWU
         jU9eGfNUav1dukIgz3HAegQyybJTdc/fIkSXbTvisVTFetcRB3vjd3XPk1aebgk90UuF
         LqFD9eVNRFDq8nHk/kpdczY9NqZafwbNQBQXPMINC2ozBllxwmSYwVGsvvjV6RvMvR8v
         No5xta/apMf/DstKMkET1kVc/KeQzeQhNTmEPiISVd4ZYyJ9HcB6t08fmwztmEU5nvuy
         2xqxQpKJnhUHTWoAamcSwXbXPGhnCU39OxnFNTxA6AlHLpiZA2kwecgTtaZP245NBhOb
         6Sbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GDc+O5ah;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id a12si57959oid.0.2021.04.08.14.21.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 14:21:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GDc+O5ah;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52d.google.com with SMTP id d10so2282417pgf.12
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 14:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=7KQ9dgyFpGmrno3NBnr3xvBzKME75uzvWjBYKMlTxeM=;
        b=GDc+O5ahwo0oKQQ/6akBDra6B3nJJ/iUovHy/hU4srnxmdKW9FsIN3hOg2CleNfyvU
         PYJg4Ixki7oSoXUbVmJknOSp7P9gFwaxNXU3BFWRdZoVN90ZR9Olsm/VsWdshBFQ5Xy5
         sMf7Nyfjxwg8Q1cpjAYlkFqrXFkp3KF4SR4IvE0+QzqCaIfTT33cYElCjmEctXL06sI+
         yqQcrSzIo3/nKOdjrFmeUoIjQsvPnoFTEVbdTIqkOn080GC2+EtOefGfTGmIrVevihx5
         Snj0Arn3ka4V2OCqn0vwI+p4uz1mqNMKIj9GUZo4La+l+2JBQ7F+246Vr9hq/yS21HdZ
         zVsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=7KQ9dgyFpGmrno3NBnr3xvBzKME75uzvWjBYKMlTxeM=;
        b=GTodq8KcSSvMUyqXQItM/WYTkQLW/E/n91eVmwYvEwqlLBlL7TPD7eHq2VzN5xdMqV
         KYm3V+4XZUGTa9PAN0MIIK5C3sHeP7KB0R7WIbtxx8mw/ZyOKghn5SoOOX5scof5vl11
         u1fohrv0gkixBTTq774itwBlhtsG6tVmb5gKPo3Nu5GCBvpHP1S2OBUqR6fWzSuspezg
         IqL/VVxpOdrZH3803VgPv2Brrfe+OJvZD2EyEbr+8eJ9qnWac905cr6cAukduBxi9CpP
         TEuqcO4lHN8gPJ6D3+mzAwtm+T22yc2JHDo7Ng511/RbysgtqFqpam22D+ZZCosGXAbH
         jojA==
X-Gm-Message-State: AOAM531mdDKi+pZ3cIERl72MFtLABFQX5fgNd/MqTITcxgjag/vcKOku
	IhhBVgUO2LAzx8MP8eJ4OTk=
X-Received: by 2002:aa7:8389:0:b029:209:da1c:17b5 with SMTP id u9-20020aa783890000b0290209da1c17b5mr9439756pfm.29.1617916870938;
        Thu, 08 Apr 2021 14:21:10 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([152.57.243.224])
        by smtp.gmail.com with ESMTPSA id q2sm322538pfk.143.2021.04.08.14.21.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 14:21:10 -0700 (PDT)
Date: Fri, 9 Apr 2021 02:51:00 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in
Subject: [PATCH] staging: media: zoran: reduce length of a line
Message-ID: <YG9zvMnYlZVbJhQn@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Reduced length of a line which exceed the 100 columns limit by splitting
the line into two statements and commenting it with '*'
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/media/zoran/zr36060.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/zoran/zr36060.c b/drivers/staging/media/zoran/zr36060.c
index 4f9eb9ff2c42..035634fc1c6d 100644
--- a/drivers/staging/media/zoran/zr36060.c
+++ b/drivers/staging/media/zoran/zr36060.c
@@ -249,7 +249,9 @@ static const char zr36060_ta[8] = { 0, 1, 1, 0, 0, 0, 0, 0 };	//table idx's AC
 static const char zr36060_decimation_h[8] = { 2, 1, 1, 0, 0, 0, 0, 0 };
 static const char zr36060_decimation_v[8] = { 1, 1, 1, 0, 0, 0, 0, 0 };
 
-/* SOF (start of frame) segment depends on width, height and sampling ratio of each color component */
+/* SOF (start of frame) segment depends on width,
+ * height and sampling ratio of each color component
+ */
 static int zr36060_set_sof(struct zr36060 *ptr)
 {
 	char sof_data[34];	// max. size of register set
-- 
2.30.2


