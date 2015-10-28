X-GM-THRID: 6210777532431597568
X-Received: by 10.13.223.72 with SMTP id i69mr39341728ywe.28.1446059330473;
        Wed, 28 Oct 2015 12:08:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.159.130 with SMTP id i124ls21826ioe.41.gmail; Wed, 28 Oct
 2015 12:08:49 -0700 (PDT)
X-Received: by 10.50.79.201 with SMTP id l9mr3600659igx.13.1446059329968;
        Wed, 28 Oct 2015 12:08:49 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id vy6si4969933pbc.1.2015.10.28.12.08.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 12:08:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacfv9 with SMTP id fv9so15617507pac.3
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 12:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=tuUVcagFWdcQOVKUSq9oBvGL5dcZvXMwLd8vXAA/POE=;
        b=zb/NO19WjSiXER9XwmwAYRBMdrMPJncuvmJs/7DTm7pbqlYRa6/WH4fC8x23sGTspq
         qze7WZAay0cr2idT9SEqamQvfA4ovm0DygL0DS4lpEuysG9Alhe1KJMRaIfa01fn98M3
         yP6afYiahgykgfnhvyNTu5RV8/iQu3clyAheXlI7LWN+7IVbfEU8NNwXJ7jn1eYuuKlQ
         J4muVhc2N+2DiyRtek5bgxfM3++eKkMmvx9l6LuzoEq7rzFNKIKTuQgcf4FqbI7MLCFQ
         rJuggY7bVAtO/TFybUj58PNzpYFMc2oU+ksgtaa5Zz0obB/F4hBQVffo4qTMU0zkXoVJ
         ry7A==
X-Received: by 10.66.254.7 with SMTP id ae7mr35369925pad.129.1446059329779;
        Wed, 28 Oct 2015 12:08:49 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.198.148])
        by smtp.gmail.com with ESMTPSA id tn2sm46962286pac.0.2015.10.28.12.08.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 28 Oct 2015 12:08:49 -0700 (PDT)
Date: Thu, 29 Oct 2015 00:38:44 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: rtl871x_io: Remove unused function
Message-ID: <20151028190844.GA22829@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Drop function that is declared but not called anywhere.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_io.h | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_io.h b/drivers/staging/rtl8712/rtl871x_io.h
index 070cc03..26dd24c 100644
--- a/drivers/staging/rtl8712/rtl871x_io.h
+++ b/drivers/staging/rtl8712/rtl871x_io.h
@@ -232,14 +232,6 @@ struct io_queue {
 	struct	intf_hdl intf;
 };
 
-static inline u32 _RND4(u32 sz)
-{
-	u32	val;
-
-	val = ((sz >> 2) + ((sz & 3) ? 1 : 0)) << 2;
-	return val;
-}
-
 u8 r8712_read8(struct _adapter *adapter, u32 addr);
 u16 r8712_read16(struct _adapter *adapter, u32 addr);
 u32 r8712_read32(struct _adapter *adapter, u32 addr);
-- 
1.9.1


