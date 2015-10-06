X-GM-THRID: 6202440506735067136
X-Received: by 10.182.65.134 with SMTP id x6mr30335356obs.14.1444118215126;
        Tue, 06 Oct 2015 00:56:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.110.36 with SMTP id hx4ls1068458igb.22.canary; Tue, 06 Oct
 2015 00:56:54 -0700 (PDT)
X-Received: by 10.68.69.102 with SMTP id d6mr29722366pbu.10.1444118214800;
        Tue, 06 Oct 2015 00:56:54 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id pe1si3833447pac.2.2015.10.06.00.56.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 00:56:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id fv12so206780659pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 00:56:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=XLDqu/MQomcGpNpZIZeRVLn2bbztgb/xzX8jZU3+XcY=;
        b=Xb9b/Pbp4kHOcApI52ZNGACBDDHLhKJEj6fHo8X6msW4csmWwyOowRXTEK812wQL1V
         zmCQ5gIUtYPDhBMP0ywGz+3qm3xCMesy4lJETTVGr5VPpxvK53eYKkEu8sGCKaHX5WlJ
         pafwBP7wEr3KtEQZ5s57/Cwqgwgjp1yYK6CYSIPbk1fqyy9s9QIjq31mRnxtltoTXQ4x
         6k6I4dCewce0GsXejD2RD7ertjOoLJQt49ScGaIKtYmXRZLedOiWFZ6HIDJLdxVKyJWp
         8B+f4mfEoZQvhzbmgd+UCz+Q3EcW4r6nt3t76LO+flbCsdI/643+32gDE/6Nok1W/7zs
         kbpw==
X-Received: by 10.68.93.227 with SMTP id cx3mr4878842pbb.155.1444118214671;
        Tue, 06 Oct 2015 00:56:54 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.64.85.185])
        by smtp.gmail.com with ESMTPSA id dg2sm20562533pbb.9.2015.10.06.00.56.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 06 Oct 2015 00:56:53 -0700 (PDT)
Date: Tue, 6 Oct 2015 13:26:50 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vt6656: Remove space after opening brace
Message-ID: <20151006075650.GA25183@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove space after opening brace '{'. Problem found using
checkpatch.pl
CHECK: Blank lines aren't necessary after an open brace '{'

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/vt6656/baseband.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index 26b1677..3bdbae8 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -527,7 +527,6 @@ void vnt_set_short_slot_time(struct vnt_private *priv)
 
 void vnt_set_vga_gain_offset(struct vnt_private *priv, u8 data)
 {
-
 	vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0xE7, data);
 
 	/* patch for 3253B0 Baseband with Cardbus module */
-- 
1.9.1


