X-GM-THRID: 6666918096348905472
X-Received: by 2002:a2e:944f:: with SMTP id o15mr1496430ljh.28.1552262832659;
        Sun, 10 Mar 2019 17:07:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:6547:: with SMTP id z68ls1730486ljb.5.gmail; Sun, 10 Mar
 2019 17:07:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx1hNgGyaL06Pe3TtF/b3xSfZwK9V4WXarwYCYfD/RagmacDjpv2Ij3vnObECPjE/LI86Vo
X-Received: by 2002:a2e:5d5a:: with SMTP id r87mr1458723ljb.3.1552262831816;
        Sun, 10 Mar 2019 17:07:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552262831; cv=none;
        d=google.com; s=arc-20160816;
        b=CCyXvNbik/iemXJuNNpubi8UC8mlOdVyd8ETQ+0ySwE5wUYsuDfK6CDdKmc/q/Vv4n
         ukib87b7QETqdSKT7AfSRXlHL7uJJfbzCy2Kr2BVUsaXDonmUCja6NREmvFBexBYtf6g
         z9CPQAO9WmgpoftLfpttxFeN9SV53jKdDgV+NeYFG2YvhoLULOUGiJHp9qspDb1Yt+Nd
         H0NknoPVQPLOSN3W/Mn6M/WW72G/ti0WRCl0f9xv+CvN2Wvn4uONhWDOpcEBjimY+Ogr
         qxXrvh5C2Xh6K2GJ6YupN0CBKb38D5ithIDEPRMGtEFimRDKBAsmuRme+or2jcvHSs88
         GTng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=y/w3SyViQnVdsgI20njlaCoBq8eH0xe+AfkNeZ+TzDQ=;
        b=bK3UnqezJ/0rhlevgEwlCJ+3kgyspumA7QjKuSpbNmkv7LE6s3O3kzQElC1PVl8xhx
         TpGHV3qHQdFGbm+KsGc7wbrrhufJpFOpAZpF2t4PIEdz0tQ1IWrMlE/FFZN2cn4q3x52
         RvBhHXXZ1+AkzhXNiJl7a39rl5np1SHgPxqScSBpuhlvpxc6mxJrofBtLZ5Ea3vAB78h
         qjvQCUApwa3/y1lLnbRxenpb0BG1msEAMpL8CSEBq8bJTfj0M9jT14EIMF1mPnHVIChA
         YyAWJPPd/Hf8BUMuGxvzEUdJi8/n9XCoxdiZgA3HRyh0dz6ZeC1IR+tlvfcqTCEIVpy1
         heFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uQZwBNgS;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com. [2a00:1450:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id m16si201978lfl.0.2019.03.10.17.07.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 17:07:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) client-ip=2a00:1450:4864:20::42f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uQZwBNgS;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42f.google.com with SMTP id t18so3148302wrx.2
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 17:07:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y/w3SyViQnVdsgI20njlaCoBq8eH0xe+AfkNeZ+TzDQ=;
        b=uQZwBNgS2Q6kEuIEjpVfkOuRYLcD5yFHyfQTnoIQuIHjGTwHqAbbbq10bW9hu8/yx7
         YwS2ZpDLZgudYmBJ1CjaYJEIJPTrcG1/hG6TzXGlgwoeJZW2F6k4Rfn9n4myqCgAochY
         53myA2o9w4pi+1cij0tvn1V2yJohPAWt+EaIt1lvg4uuqRqmE65BdaecrouRmSLV+6Vr
         MPa7GZygpdjyELqIH+QCUBvEjm1W/4b6Dn6W5veVvKcHqRdsavTz6DPNRk1IQKSGAzbF
         QH7DKf9I+SXgg9oEHfZx68YnEvQZl+ybfLQcnDWIuWmQk8BtVd789FJwWhXLhiCMRJlI
         JFZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y/w3SyViQnVdsgI20njlaCoBq8eH0xe+AfkNeZ+TzDQ=;
        b=OhloUNeYf2fgPcii3Df4K9KPvYI+3GlgmDc6AyBwNh+SLcWqEnVLYirYQxMGiOcXb3
         /nzD29k8R5qo5QZmCV/I1jX4eidfbjQL68mcTXxoE0I/xicFXOfeH7G12095HWSMAphs
         uA7dAkrm7sHHiLJB/KT6M3G15QncPWI1Wk2JEmBcsvYxrs/HT71ulomnwylslzZkCc/a
         7J53zizD8Fb7RlnW0lw3euxMTfXPkD3zaN7CdNdmUY8jcTwzL1JTFcL5l2H9Ztb8wuVq
         HCNh2eUOtK1PbJb8f+P6bvsb+B/fEDfpiFGNadkIIyKrLTg3c3yknsXbgg7NuAmcr/Uh
         /q3A==
X-Gm-Message-State: APjAAAW78Zo0ZprOC79qyWhyNCj1MLs+rew3ulDVU3ynjuZGSJttZULf
	ddbn1Lg3anP4JPt0kJSoFtKxnBY=
X-Received: by 2002:a5d:63c5:: with SMTP id c5mr4296391wrw.161.1552262831319;
        Sun, 10 Mar 2019 17:07:11 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (host86-151-41-196.range86-151.btcentralplus.com. [86.151.41.196])
        by smtp.gmail.com with ESMTPSA id x17sm16313142wrd.95.2019.03.10.17.07.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 10 Mar 2019 17:07:10 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v1 2/3] staging: rtl8192e: remove license boilerplate text
Date: Mon, 11 Mar 2019 00:07:01 +0000
Message-Id: <20190311000702.12740-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190311000702.12740-1-jbi.octave@gmail.com>
References: <20190311000702.12740-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove license boilerplate text.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/rtl8192e/dot11d.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/rtl8192e/dot11d.c b/drivers/staging/rtl8192e/dot11d.c
index 74adb45efe73..721892cef3a7 100644
--- a/drivers/staging/rtl8192e/dot11d.c
+++ b/drivers/staging/rtl8192e/dot11d.c
@@ -2,14 +2,6 @@
 /******************************************************************************
  * Copyright(c) 2008 - 2010 Realtek Corporation. All rights reserved.
  *
- * This program is distributed in the hope that it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * The full GNU General Public License is included in this distribution in the
- * file called LICENSE.
- *
  * Contact Information:
  * wlanfae <wlanfae@realtek.com>
  ******************************************************************************/
-- 
2.20.1


