X-GM-THRID: 6467884154880
X-Received: by 10.112.9.65 with SMTP id x1mr374060lba.16.1425449933432;
        Tue, 03 Mar 2015 22:18:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.207.101 with SMTP id lv5ls141548lac.22.gmail; Tue, 03 Mar
 2015 22:18:52 -0800 (PST)
X-Received: by 10.152.1.5 with SMTP id 5mr362969lai.4.1425449932882;
        Tue, 03 Mar 2015 22:18:52 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x232.google.com (mail-wg0-x232.google.com. [2a00:1450:400c:c00::232])
        by gmr-mx.google.com with ESMTPS id l8si1021543wia.0.2015.03.03.22.18.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 22:18:52 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) client-ip=2a00:1450:400c:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wgha1 with SMTP id a1so44433217wgh.5
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 22:18:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=EG6eCzc/J7h5iVYII7DChRMApoBIsvMvIxB/Kv7J1PE=;
        b=j7YurvdllWm2mW/wyJQS/LPPSspKeSOTjFCN6PqNAIvXsRIifR/5WbeH9s0kCFfpDk
         zAaXPGhNSceFSFJIzJi6ciJPjse6VuQdfqGhG+JYNzOjF749mdLfHreHXZ6Sxm1LYJfF
         a1W3VBgb7q2nvJzY9pTDa+DK7qV40cCp6Usogjk+YWLKZjso+m++Ikp23vCwfBOQe+Cq
         0HrlspaPQKqmh1DvvB2Cl+nkOxR0Tvp91peRj39OCwd2x+EOscoqiQVtLZlHCsxKwCJh
         OAMzREKf1V0Wqxv1Tf3kUANK+HZOSA0wzLEh+KF7GiskFWunJ1e5nuquqp4w9a1FeJND
         wegA==
X-Received: by 10.181.5.43 with SMTP id cj11mr51471962wid.61.1425449932802;
        Tue, 03 Mar 2015 22:18:52 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id w8sm4425460wja.4.2015.03.03.22.18.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 22:18:52 -0800 (PST)
Date: Wed, 4 Mar 2015 08:18:47 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/5] staging: ozwpan: remove extra parentheses around left
 bit shift operations
Message-ID: <af1c13ba19740d98809b3e3b23ac756ade41e355.1425449681.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425449681.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425449681.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around bitwise left shift operations.
The case handled is when resultant value is assigned to a variable.
The issue was detected and resolved using the following
coccinelle script:

@@
expression e, e1;
constant c;
@@

e =
-(e1
+e1
<<
-c);
+c;

@@
identifier i;
constant c;
type t;
expression e;
@@

t i =
-(e
+e
<<
-c);
+c;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/ozwpan/ozproto.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ozwpan/ozproto.c b/drivers/staging/ozwpan/ozproto.c
index 3d3a3a8..1ba24a2 100644
--- a/drivers/staging/ozwpan/ozproto.c
+++ b/drivers/staging/ozwpan/ozproto.c
@@ -98,7 +98,7 @@ static void oz_send_conn_rsp(struct oz_pd *pd, u8 status)
 		kfree_skb(skb);
 		return;
 	}
-	oz_hdr->control = (OZ_PROTOCOL_VERSION<<OZ_VERSION_SHIFT);
+	oz_hdr->control = OZ_PROTOCOL_VERSION<<OZ_VERSION_SHIFT;
 	oz_hdr->last_pkt_num = 0;
 	put_unaligned(0, &oz_hdr->pkt_num);
 	elt->type = OZ_ELT_CONNECT_RSP;
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

