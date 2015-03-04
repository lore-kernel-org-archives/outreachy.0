X-GM-THRID: 6406607470592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f04d7bc1ed043b39
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.41.131 with SMTP id f3mr353419lbl.20.1425447304424;
        Tue, 03 Mar 2015 21:35:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.9 with SMTP id l9ls42800wic.11.canary; Tue, 03 Mar 2015
 21:35:04 -0800 (PST)
X-Received: by 10.180.39.164 with SMTP id q4mr791162wik.5.1425447304114;
        Tue, 03 Mar 2015 21:35:04 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id r6si243728wix.0.2015.03.03.21.35.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 21:35:04 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x231.google.com with SMTP id z2so8399183wiv.4
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 21:35:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=TkF2NS6av/8Nmb/FZaBH4GUIZnHRWyQtPly4a8mZUcg=;
        b=cwi3p4/bo2jfmrXFKnWWYIyj0JMZG+LKAzcJ48MjlvvB38s32HuR+B1WFIhHCK5F41
         m/IOKF1b7MYkCG23LisFN8qDDFfBmlKBoWO+kkeBkFc8TlWbjHSzsIL7mZnqf0TcW6I6
         Nl7X5Qj82A8d9gU2IIttC3jwLb0FmH9DbEg54uReBH5Vn7JWrZ5I5WyDhzLNa0Nwg+1x
         QALWumI1K88kUMMw96laEzhMkLfETrmu4VWey5wYO57chg+7HwyVoz6r0Ad8fBfph5zX
         4c/tSBwrzXK10wXb+DIZTs1JLeB5nPOcJ+VH4p37cH4u48TML8u0MR3aZl8yycOeK8vH
         LM6w==
X-Received: by 10.180.9.111 with SMTP id y15mr9239666wia.86.1425447304051;
        Tue, 03 Mar 2015 21:35:04 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id q10sm2715592wjr.41.2015.03.03.21.35.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 21:35:03 -0800 (PST)
Date: Wed, 4 Mar 2015 07:34:52 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 11/13] staging: slicoss: remove extra parentheses around
 right bit shift operations
Message-ID: <7e40d76391ac2e565f024b04b374102b4d4638d2.1425446659.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around bitwise right shift operations.
The cases handled here are when resultant values are assigned to
variables. The issue was detected and resolved using the following
coccinelle script:

@@
expression e, e1;
constant c;
@@

e =
-(e1
+e1
>>
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
>>
-c);
+c;

@@
expression e, e1;
identifier f;
constant c;
@@

e1 = f(...,
-(e
+e
>>
-c)
+c
,...);

Some coding style issues were handled manually to avoid
checkpatch warnings and errors.

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/slicoss/slicoss.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/slicoss/slicoss.c b/drivers/staging/slicoss/slicoss.c
index 45f6a5f..c84dd60 100644
--- a/drivers/staging/slicoss/slicoss.c
+++ b/drivers/staging/slicoss/slicoss.c
@@ -164,7 +164,7 @@ static void slic_mcast_set_bit(struct adapter *adapter, char *address)
 	/* Get the CRC polynomial for the mac address */
 	/* we use bits 1-8 (lsb), bitwise reversed,
 	 * msb (= lsb bit 0 before bitrev) is automatically discarded */
-	crcpoly = (ether_crc(ETH_ALEN, address)>>23);
+	crcpoly = ether_crc(ETH_ALEN, address)>>23;
 
 	/* We only have space on the SLIC for 64 entries.  Lop
 	 * off the top two bits. (2^6 = 64)
@@ -1862,8 +1862,8 @@ static void slic_xmit_build_request(struct adapter *adapter,
 	hcmd->cmdsize = (u32) ((((u64)&ihcmd->u.slic_buffers.bufs[1] -
 				     (u64) hcmd) + 31) >> 5);
 #else
-	hcmd->cmdsize = ((((u32) &ihcmd->u.slic_buffers.bufs[1] -
-			   (u32) hcmd) + 31) >> 5);
+	hcmd->cmdsize = (((u32)&ihcmd->u.slic_buffers.bufs[1] -
+				       (u32)hcmd) + 31) >> 5;
 #endif
 }
 
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

