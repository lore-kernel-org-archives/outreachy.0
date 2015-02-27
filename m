X-GM-THRID: 4764572057600
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b88877f00e047cd1,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.43.146 with SMTP id l18mr13570447yhb.23.1425060725963;
        Fri, 27 Feb 2015 10:12:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.134.162 with SMTP id pl2ls301159obb.41.gmail; Fri, 27 Feb
 2015 10:12:05 -0800 (PST)
X-Received: by 10.182.246.73 with SMTP id xu9mr13052778obc.17.1425060725753;
        Fri, 27 Feb 2015 10:12:05 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id nt14si557586pab.2.2015.02.27.10.12.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 10:12:05 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id li10so8448091pab.0
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 10:12:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=F+xvqvwyNIKxED2rvG07d+3l1ODRBNVIj9/DAlII3G8=;
        b=vOPQ+W+nAARTYVzGvUWje/dSaP/a4ETi20UBTOJBgpcC9844Z2iV2yCq466HkEDqbx
         nmocgpF/hyDhaMDwIae5D313nRIt9nwqeTWMt5NLbpe38VT4waHnx3ykDgDEi3RxG09W
         Jb0COaw3RCCYznTNFeNOd8qNLRflzRDC3v+jSd35VTdpgugWKBz/6f/sVGoMZKUgqsdO
         +otftcWCy+PkCzZgpfKCn4Bk1N/vMqsbyh3u3QbfbsH4GIRPsVUdHX5Hb2y0b2NMEaRp
         RRdGRZNHtVD9SSG3EBcHpUpFDKu6/Ad94v6G/fVfDVENjSdpP90NfQ0drQZ7s4YZpmc4
         PwdQ==
X-Received: by 10.68.203.136 with SMTP id kq8mr25857094pbc.103.1425060725641;
        Fri, 27 Feb 2015 10:12:05 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from batra ([14.139.82.6])
        by mx.google.com with ESMTPSA id jw8sm4555577pbc.73.2015.02.27.10.12.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 10:12:04 -0800 (PST)
Date: Fri, 27 Feb 2015 23:41:43 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8188eu: Remove redundant if condition clause
Message-ID: <20150227181143.GA25321@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Clause removed as !sim_bitmap is always true.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8188eu/hal/phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index 05379be..fa13139 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -1050,7 +1050,7 @@ static bool simularity_compare(struct adapter *adapt, s32 resulta[][8],
 		diff = (tmp1 > tmp2) ? (tmp1 - tmp2) : (tmp2 - tmp1);
 
 		if (diff > MAX_TOLERANCE) {
-			if ((i == 2 || i == 6) && !sim_bitmap) {
+			if (i == 2 || i == 6) {
 				if (resulta[c1][i] + resulta[c1][i+1] == 0)
 					final_candidate[(i/4)] = c2;
 				else if (resulta[c2][i] + resulta[c2][i+1] == 0)
-- 
1.9.1


