X-GM-THRID: 6202765946513260544
X-Received: by 10.50.36.104 with SMTP id p8mr15150213igj.0.1444193987803;
        Tue, 06 Oct 2015 21:59:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.199.73 with SMTP id ji9ls42391obc.45.gmail; Tue, 06 Oct
 2015 21:59:47 -0700 (PDT)
X-Received: by 10.182.126.228 with SMTP id nb4mr34195114obb.19.1444193987429;
        Tue, 06 Oct 2015 21:59:47 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id zg1si4910189pbb.2.2015.10.06.21.59.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 21:59:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id hy16so8979782pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 21:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=EVMk8uzRJzNN7w86Dkkk1vbKKG/Akyi8+shmNn2gQ60=;
        b=fT4LY8TW6Pv5d1Dq4lnI3CQySJyYEXFQpuGEKiIlRQSg+G1623rudpvch5+uBbX8g4
         Do7rIyZT04tVMubkmEVRYXvilzkDtHx0P2CRfYmxbGa4liBGkWvfita31SCQoj6qsKtR
         eI6SpYB05h8pNmpS/Aa8WyDsdR5cDn7r/gOhohfTl2jEFHv7zHvZ/fDTnhKKCeIlgIX+
         aNvYFb+F/8etEjRF9Il6q97BSi8FA4yJBjqpgnlvksZX6JOJwZRXS2/UdU/JJ1RaSnYR
         DDCkrli0JphlDd83ToGRc7DPVATBtCXpvZw3P0cs3YNAcswaz0Z7Ov7v5QsS79I4I0TU
         vfTg==
X-Received: by 10.68.129.198 with SMTP id ny6mr51459965pbb.42.1444193987238;
        Tue, 06 Oct 2015 21:59:47 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.52.112])
        by smtp.gmail.com with ESMTPSA id qn5sm36603121pbc.74.2015.10.06.21.59.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 06 Oct 2015 21:59:46 -0700 (PDT)
Date: Wed, 7 Oct 2015 10:29:43 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vt6656: Remove space before closing brace
Message-ID: <20151007045942.GA32659@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove space before closing brace '}'. Problem found using
checkpatch.pl
CHECK: Blank lines aren't necessary before a close brace '}'

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/vt6656/baseband.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index 3bdbae8..e5be261 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -810,7 +810,6 @@ void vnt_update_pre_ed_threshold(struct vnt_private *priv, int scanning)
 			cr_206 = 0x38;
 		}
 		break;
-
 	}
 
 	if (ed_inx == priv->bb_pre_ed_index && !scanning)
-- 
1.9.1


