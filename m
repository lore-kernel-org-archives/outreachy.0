X-GM-THRID: 6670105232964321280
X-Received: by 2002:a24:c546:: with SMTP id f67mr2250885itg.28.1553005998927;
        Tue, 19 Mar 2019 07:33:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:4203:: with SMTP id i3ls972027itb.1.canary-gmail; Tue,
 19 Mar 2019 07:33:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzpDqvzWVQCj16JkAK0PwoVlGZNVOJhV/H81YwY42ePBDQ67JYVMZvm6TDlTxbzWPn/v6J2
X-Received: by 2002:a24:334a:: with SMTP id k71mr2208648itk.14.1553005998004;
        Tue, 19 Mar 2019 07:33:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553005998; cv=none;
        d=google.com; s=arc-20160816;
        b=XSJs8tEn15SO13ROZ82xG7M4MT7msHGyfB+Y+GZGApGtASg+KDTpl3FHJA3RhkG85A
         /chFbzdp/2tos5NYdjmwD5Vi1ZipBSK7lOPm/vMRRVeSytG5I89xCU09c2WPsLpRjSJ/
         1WYbG+v1LXUgZV6WkgpBiXf99HzHLJU9rv4JWfNcGpIncnuGkaP0+PBm4DCHbVv6rgVN
         i/UHJbV9X1fadoITb03T8QozQ0x3OSk8JZIOQx4WXIovqz4UUjt/bzm5pSGNkSrfDGpr
         EOTmyR5qeZDtKVlBOHNB/kkdV0dtWsZLz5lwwK2fHQOKbZit+vsKVEEA2TjsfifiN0sQ
         eAEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=v1J9LpQOxPNrM+cTCjwuZDqHmyhTLzyIbEbLcknY/vw=;
        b=RYa5orATMFajKVhiOV0cgGqqFj3nk2RvOk6VHQ0fy6fEcwck6zsUslwZatdKRDPj5P
         YygGES5vA6RvcUePeaZjRXOT8L9CyzjB12W3ckkqn5DTIIICo9sFjZGPlGLgMNR6h7ja
         AAyLqqp4arIYDKIQ5SDPHBzoXLkI/8LZW9OShkuP6gpfxTK7H0wJj5HDt9deBdYLYnKa
         eoKXBxUoK1O4aSNqR5OFnFzZpxljzaw7VNJHwHmMzRfAqDRyj7z5BsgojjxUzKAegCHD
         rEQl7OIUg2AYgGk+ubKys+enK3Gfpuut9MoHhu5Cw9qaomcTQKXw4X48LjnNXDvJYXYk
         XIRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rk5NTivz;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id j6si108877itb.0.2019.03.19.07.33.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 07:33:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rk5NTivz;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id c8so7176581pfd.10
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 07:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=v1J9LpQOxPNrM+cTCjwuZDqHmyhTLzyIbEbLcknY/vw=;
        b=rk5NTivzkHV6XnubT6kef4cdpuPW4Zs3Qe6AupjZWI7pvJLo+qRzxTN4g7lUYDtw3g
         D0VTIrBTbTvz+4GJGJ3lOKbYQmX5Z1YTpYk6gOKpON1uQdoPIKQGLTpLK1HC9klzO3Ag
         oQMeDRm1MrCC/IXnDRxngAqjEXwSPiw9T8Lrg0YsynNBTysuu44f9h07cuOR/rlsWAUB
         k2l558eRW6iyMTAAZ2WWu9CxA6esBBVze3cafoMWF2ioLdt4jaU9hQ6f9tn0dVeBw8Fe
         A9d4l6vcIDStvU3oS63RzPr6h+Z2yPMAhEz5t1EVICnZPoeJaf4JsWMk8iQSZk4x8gcI
         +gWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=v1J9LpQOxPNrM+cTCjwuZDqHmyhTLzyIbEbLcknY/vw=;
        b=rkwxeX1JRw8nUV+Mi10neqSmd4JPXc15Y2h04tXkhPvnD/RX70IIUGFqvPntV4A8v4
         2ovPglv198aW7lcOdXte/3EmJljD9s29cBSCT3Ggrq3lpNL3fkCY50+uEbGJhuMtagUB
         i75ePKkfc4Nvyt9B4XmT+8b4mnwJfPVpL2vg3wFrVc+tobUnoujo4e1jNf/uds60RTNN
         sY75KJhnoGaKJCoCngw4I/95yyijsMIi6pV611ENMn11uMRtixA1tp3j1SgLE7oP4r3t
         8TssZpv97g/yPshE0igwR0pQI105mOzdk2i+5BouPrkq20vZCecI8xw4yYUhE7WTdQEE
         6Mng==
X-Gm-Message-State: APjAAAUeozmbCDEmrYhiujNR9vWKrw+dTe869J+AwkTo8Sx8aAT+pLf8
	c7fx+pzAy6/AjHMZfhCrJ4s/A55H
X-Received: by 2002:a63:368f:: with SMTP id d137mr2136051pga.385.1553005997426;
        Tue, 19 Mar 2019 07:33:17 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from localhost.localdomain ([2405:204:6398:14e1:75f4:f821:faec:9887])
        by smtp.googlemail.com with ESMTPSA id d3sm16636019pfc.125.2019.03.19.07.33.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 07:33:16 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/3] staging: rtl8192u: r8192U: Fix space issue around operators.
Date: Tue, 19 Mar 2019 20:03:03 +0530
Message-Id: <20190319143303.9232-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190319141439.8458-1-sanjana99reddy99@gmail.com>
References: <20190319141439.8458-1-sanjana99reddy99@gmail.com>

Add spaces around the operators.
Issue found by checkpatch.pl

CHECK: spaces preferred around that '+'
CHECK: spaces preferred around that '*'

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v2:
No changes from [PATCH 3/3]
 drivers/staging/rtl8192u/r8192U_dm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_dm.c b/drivers/staging/rtl8192u/r8192U_dm.c
index 8279fa721c74..546bf5428848 100644
--- a/drivers/staging/rtl8192u/r8192U_dm.c
+++ b/drivers/staging/rtl8192u/r8192U_dm.c
@@ -2933,17 +2933,17 @@ void dm_shadow_init(struct net_device *dev)
 
 	for (page = 0; page < 5; page++)
 		for (offset = 0; offset < 256; offset++) {
-			read_nic_byte(dev, offset+page*256, &dm_shadow[page][offset]);
+			read_nic_byte(dev, offset + page * 256, &dm_shadow[page][offset]);
 			/*DbgPrint("P-%d/O-%02x=%02x\r\n", page, offset, DM_Shadow[page][offset]);*/
 		}
 
 	for (page = 8; page < 11; page++)
 		for (offset = 0; offset < 256; offset++)
-			read_nic_byte(dev, offset+page*256, &dm_shadow[page][offset]);
+			read_nic_byte(dev, offset + page * 256, &dm_shadow[page][offset]);
 
 	for (page = 12; page < 15; page++)
 		for (offset = 0; offset < 256; offset++)
-			read_nic_byte(dev, offset+page*256, &dm_shadow[page][offset]);
+			read_nic_byte(dev, offset + page * 256, &dm_shadow[page][offset]);
 
 }   /* dm_shadow_init */
 
-- 
2.17.1


