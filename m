X-GM-THRID: 6257131864000036864
X-Received: by 10.98.0.132 with SMTP id 126mr17744490pfa.2.1456852203946;
        Tue, 01 Mar 2016 09:10:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.85.135 with SMTP id n7ls3924617qgd.10.gmail; Tue, 01 Mar
 2016 09:10:03 -0800 (PST)
X-Received: by 10.13.203.210 with SMTP id n201mr17378565ywd.27.1456852203368;
        Tue, 01 Mar 2016 09:10:03 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id yd9si4481392pab.1.2016.03.01.09.10.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 09:10:03 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id w128so11227150pfb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 09:10:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=yR9vjXQXvSx4heb7ifGMVVAdyGXMLGOQfKpjzV2z6Sk=;
        b=NDGMQz8rIh3Xz/PNMDGhinK4+bUOakhF3H8Wku3tAE8i2L2Ub0jpO/W4YgLQw5yXjP
         mv6bDL8XpH3RMB9biHJWYBJ+Xh2CChM2Kb+FbCQdG/RYRoad/CoNQ45mVLns6H5XCxlO
         crqWG8a9tHwev8T0QO39g3QujgtUfac816++HnRqIcg0vQDGhqldFcmt4WwXhaJCW8BF
         teNBRIqP3ODxQb0+5LvTBb2bYtAc4no3my9nO/FPjKbJjqIxv58+/vatr12yZYBPHFws
         YB8cc52h93sm2Jt+B2wwLJfJSGABEpkuuB2AWxB/ofkYxfqyM/0G0wyWZvaX3FkCpqfe
         70MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=yR9vjXQXvSx4heb7ifGMVVAdyGXMLGOQfKpjzV2z6Sk=;
        b=VgwbzgPpxOFZza4SfYXtW5MgZyvqkmXjYsvrsSPeuGiaOHPZZ0r/5pR9vnTZCfs1nb
         xRXM9cGm9+ztL33PhPYliWlaTD9ELmd05GGYo7PcoZDGl9fp67F+yntfQRfJxjsemxMN
         RJpU1B0KDVGm/fz98/gXinUh5wzeUpPjo+EK4ul8wmtCHrtJ25aNrcUz0W8tfMUXhDem
         TlMtKjknoym2Jx0XJi7SMopNINaWl4re0E4gzfdJVuqAE0o06fTUJrcJH+JHecA0hr1Q
         aBePrbjhMy38oC6xbVaafgQZhP3cm9kcB4oCOYWtHOEsckVeoRsY5Dz8XTm1mSLR3bmQ
         YYkA==
X-Gm-Message-State: AD7BkJLQyr1Y+J6H0HaK7zcl/7nMDPWwFvnTknHPvegyh1It5qIlp8mEOhtzGW1gc5Te4w==
X-Received: by 10.98.65.203 with SMTP id g72mr31082078pfd.138.1456852203187;
        Tue, 01 Mar 2016 09:10:03 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.66])
        by smtp.gmail.com with ESMTPSA id z67sm46840705pfa.71.2016.03.01.09.10.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 09:10:02 -0800 (PST)
Date: Tue, 1 Mar 2016 14:39:14 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/4] Staging: lustre: Do not print message if kzalloc()
 failed.
Message-ID: <a9225769650e278d513f73c69521c9a52d20808f.1456822984.git.bankarsandhya512@gmail.com>
References: <cover.1456822984.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456822984.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Do not print message if kzalloc() failed.
kzalloc() has its own messages. So no need to add extra one.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/lustre/lustre/llite/llite_lib.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index 1f3e8e8..c7b0729 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -1938,10 +1938,6 @@ void ll_open_cleanup(struct super_block *sb, struct ptlrpc_request *open_req)
 	body = req_capsule_server_get(&open_req->rq_pill, &RMF_MDT_BODY);
 	op_data = kzalloc(sizeof(*op_data), GFP_NOFS);
 	if (!op_data) {
-		CWARN("%s: cannot allocate op_data to release open handle for "
-		      DFID "\n",
-		      ll_get_fsname(sb, NULL, 0), PFID(&body->fid1));
-
 		return;
 	}
 
-- 
1.8.3.4


