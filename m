X-GM-THRID: 6254601069561643008
X-Received: by 10.182.47.132 with SMTP id d4mr34231183obn.40.1456262792614;
        Tue, 23 Feb 2016 13:26:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.134 with SMTP id l128ls1232832ioe.73.gmail; Tue, 23
 Feb 2016 13:26:32 -0800 (PST)
X-Received: by 10.107.133.10 with SMTP id h10mr34724304iod.8.1456262792321;
        Tue, 23 Feb 2016 13:26:32 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id u66si4627929pfa.2.2016.02.23.13.26.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 13:26:32 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id c10so122641026pfc.2
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 13:26:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=I1wpT0p6K2Ow3EYgW6lduw4DMJyPpq3WH6oUh/zcGtg=;
        b=fPgslhMhYMYNd0MgYn8es02mluiVO0hSv4Rw6XKiXfeBsb3bJoOMEVNTYWy9RiCnMn
         ASHBblkF2uoVNI5KJ/g5QyTafYnXR+RUg8/WADkBqw6xn2DdXFsc8rlVnYTmBNAHrOVs
         7YZtX6gLGU8oC+o99rP7SdOoa8Y7X03gwM7ZvAWEhE7GMLSBH9qLHQDWisxhfqGLDye5
         2qrTOgnHdVz6vxqbWeVyZiK1au4vIP8pmGCki0G9AO4Dyg+dnJZC/sSi8CvkqMAQ1f51
         ld/yP+uPANt2VHHQZRLyka9pgHk2xIXcz/pb6rxi7Bi6Lgkx1iEHeg4+52TCYYGgNyq+
         g6/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=I1wpT0p6K2Ow3EYgW6lduw4DMJyPpq3WH6oUh/zcGtg=;
        b=aV0qBmdjWFi7P+Ghgb/hLnsFMDDWie41FTbYuNo2wl+llMUbZ7W1OoRNj6MMzdSkkE
         0GyUoXZLwAXwoQF6OjtpwZN/1jqoGSqt/wyiG/YKu1AMnc5cCFDJoOeD3RUSnx7Qp9pQ
         aDze+rlASbOPURXOH0WJvL0uMUFwxEuoNQlLclizxL8z6oxS4tX4Nvua5Wys3S3k4sKO
         E502g+KF/FMfDhjYi3XmMP4KjGuBtwzhiB4SM54nOnRcutbMTPAgaaaf0IqZvGjVeTiE
         0J11gGjuQXHDK/NFF5ee/k+vClpAs2s+mt4zBMPy0M74ZiXuxdsP311wvZAKwVKpVsQQ
         pXRA==
X-Gm-Message-State: AG10YOQ0qRXi2D4V1PMI9jJKavODbNDIdtdxzLEdZf0RJGsmJIQBLfvI/HfliPAg9v6ujg==
X-Received: by 10.98.74.202 with SMTP id c71mr49500094pfj.25.1456262792177;
        Tue, 23 Feb 2016 13:26:32 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c68sm29527390pfj.41.2016.02.23.13.26.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 13:26:31 -0800 (PST)
Date: Wed, 24 Feb 2016 02:57:06 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: rtl8188eu: hal: Drop Useless Initialization
Message-ID: <20160223212706.GA24420@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Removed initialisation of a varible if it is immediately reassigned.
Changes were made using Coccinelle.
@bad@
identifier i;
position p;
@@

i =@p <+...i...+>;

@@
type T;
constant C;
expression e;
identifier i;
position p != bad.p;
@@
T i
- = C
;
i =@p e;

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c b/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
index e04303c..c96d804 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188eu_xmit.c
@@ -415,7 +415,7 @@ static u32 xmitframe_need_length(struct xmit_frame *pxmitframe)
 {
 	struct pkt_attrib *pattrib = &pxmitframe->attrib;

-	u32 len = 0;
+	u32 len;

 	/*  no consider fragement */
 	len = pattrib->hdrlen + pattrib->iv_len +
@@ -614,7 +614,7 @@ s32 rtl8188eu_xmitframe_complete(struct adapter *adapt, struct xmit_priv *pxmitp

 static s32 xmitframe_direct(struct adapter *adapt, struct xmit_frame *pxmitframe)
 {
-	s32 res = _SUCCESS;
+	s32 res;

 	res = rtw_xmitframe_coalesce(adapt, pxmitframe->pkt, pxmitframe);
 	if (res == _SUCCESS)
--
2.1.4


