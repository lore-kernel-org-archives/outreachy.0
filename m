X-GM-THRID: 6406607470592
X-Received: by 10.152.29.97 with SMTP id j1mr334696lah.3.1425446974564;
        Tue, 03 Mar 2015 21:29:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.18.163 with SMTP id x3ls46521lad.56.gmail; Tue, 03 Mar
 2015 21:29:34 -0800 (PST)
X-Received: by 10.112.145.133 with SMTP id su5mr322527lbb.17.1425446973975;
        Tue, 03 Mar 2015 21:29:33 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x234.google.com (mail-wg0-x234.google.com. [2a00:1450:400c:c00::234])
        by gmr-mx.google.com with ESMTPS id el6si239052wib.2.2015.03.03.21.29.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 21:29:33 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) client-ip=2a00:1450:400c:c00::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::234 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wggz12 with SMTP id z12so44359444wgg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 21:29:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=RgA/g1IEMWQGgx0kAGw73i0JC+HRRN+ECkGSk57kMPs=;
        b=GTiMJ9nXZgsZsWMwGteflaQ/Rlfn92v2Qezt5MJkoKGmCqpwGP6+mw04J9Hgtg99PP
         9n7YghyZse1+QbeZYdGPzZGPyyKGJKhb0iTbFQbWzW7pPjVjer0D+OegoVpKotpkYL83
         llMa9AMUIVkRa5UAGzUccFPN3qZ18uKtEucix4PYLXNUjnvqTj9FrSp3YVt+ylWADf7f
         ywet5/eQuKy1HD3g0LKowOQxGpbEBJPlU+07WCTQ+8IKmLH1xNDaZDPJM1lHzXRNZIWg
         JCTY9KwyuZ8S1rEvJS31x54Sq0Uz/ZWTivGVWt/99oNr8wma9Pv6lY/zKjpvEj2mvcOW
         +DHg==
X-Received: by 10.194.192.167 with SMTP id hh7mr3882928wjc.151.1425446973870;
        Tue, 03 Mar 2015 21:29:33 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id bx3sm4253300wjc.21.2015.03.03.21.29.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 21:29:33 -0800 (PST)
Date: Wed, 4 Mar 2015 07:29:28 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 02/13] staging: lustre: lclient: remove extra parentheses
 around right bit shift operation
Message-ID: <460f21c5bb77254b7efcc586bd07dd0dc60fd090.1425446659.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around bitwise right shift operations.
The cases handled here are when the resultant value is assigned
to a variable. The issue was detected and resolved using the
following coccinelle script:

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

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/lustre/lustre/lclient/lcommon_cl.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lclient/lcommon_cl.c b/drivers/staging/lustre/lustre/lclient/lcommon_cl.c
index 23095bb..ab6cb41 100644
--- a/drivers/staging/lustre/lustre/lclient/lcommon_cl.c
+++ b/drivers/staging/lustre/lustre/lclient/lcommon_cl.c
@@ -828,7 +828,8 @@ int ccc_prep_size(const struct lu_env *env, struct cl_object *obj,
 				 * --bug 17336 */
 				loff_t size = cl_isize_read(inode);
 				loff_t cur_index = start >> PAGE_CACHE_SHIFT;
-				loff_t size_index = ((size - 1) >> PAGE_CACHE_SHIFT);
+				loff_t size_index = (size - 1) >>
+						    PAGE_CACHE_SHIFT;
 
 				if ((size == 0 && cur_index != 0) ||
 				    size_index < cur_index)
@@ -1263,7 +1264,7 @@ __u32 cl_fid_build_gen(const struct lu_fid *fid)
 		return gen;
 	}
 
-	gen = (fid_flatten(fid) >> 32);
+	gen = fid_flatten(fid) >> 32;
 	return gen;
 }
 
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

