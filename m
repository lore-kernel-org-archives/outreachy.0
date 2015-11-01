X-GM-THRID: 6212189958377046016
X-Received: by 10.28.55.209 with SMTP id e200mr2120833wma.1.1446388186219;
        Sun, 01 Nov 2015 06:29:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.51.16 with SMTP id z16ls445806wmz.46.gmail; Sun, 01 Nov
 2015 06:29:45 -0800 (PST)
X-Received: by 10.194.248.131 with SMTP id ym3mr3485672wjc.7.1446388185817;
        Sun, 01 Nov 2015 06:29:45 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-wm0-x22e.google.com (mail-wm0-x22e.google.com. [2a00:1450:400c:c09::22e])
        by gmr-mx.google.com with ESMTPS id g18si369184wmd.1.2015.11.01.06.29.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 06:29:45 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) client-ip=2a00:1450:400c:c09::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x22e.google.com with SMTP id f134so41021735wmf.1
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 06:29:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=v4OggmSG16jwZKrmfhZgjijAaISZ/uETCB3BBU7+RY0=;
        b=Z6VF+HXn9zSprlNPpRJqRJJ6gwkL4Nnwi01PI0eLf+JLaTGXiacwwt5mZ5vQXH3MeP
         sUeo4Jca6cFP6RQQYBqtMSeRcryqR3VSZlv+ceIjEptG3bQx0OA6M/WKJ6Goxs2taYSl
         y+3/brXNNHG3zpJJDJlOM7f9XpcJj6S6oSD4TuDUdKsKSAdDNlTi46w7hKTG5wYO2Nan
         fp7ASeuh5zyMP5TR3RMI+rfRFcva58Ag8J/8DLtFvrY/IcYxeSDKelgiWF9ZJ1RK76W0
         YoNAs5LDfecKLdAhULJQLapa5y2PtyiNdA3rIPaoF/zbPyufMQdq7WQqpLrdGWRphXHT
         E2QA==
X-Received: by 10.28.144.10 with SMTP id s10mr8619623wmd.23.1446388185708;
        Sun, 01 Nov 2015 06:29:45 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from anchal-VirtualBox ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id v191sm13052758wmd.24.2015.11.01.06.29.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 06:29:45 -0800 (PST)
Date: Sun, 1 Nov 2015 19:59:32 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lnet: Remove an else after an if-return
Message-ID: <20151101142932.GA12081@anchal-VirtualBox>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The original motivation of the patch was to remove an 
else after an if branch that ends in a return. This 
removal required the removal of a list of other things. 
That are needed to make the code either correct or 
acceptable to checkpatch, for example:removing a blank 
line, removing braces, etc.

Remove unnecessary use of else that required the
removal of corresponding braces. And then the
declaration of hash was movedup to the beginning of the
function is required, but the initialization was left
where it was. And it also required remove the blank
line and add some new lines before the if and below the
declaration of hash.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>

---
 drivers/staging/lustre/lnet/lnet/lib-ptl.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/lustre/lnet/lnet/lib-ptl.c b/drivers/staging/lustre/lnet/lnet/lib-ptl.c
index b4f573a..aec06f9 100644
--- a/drivers/staging/lustre/lnet/lnet/lib-ptl.c
+++ b/drivers/staging/lustre/lnet/lnet/lib-ptl.c
@@ -357,16 +357,14 @@ lnet_mt_match_head(struct lnet_match_table *mtable,
 		   lnet_process_id_t id, __u64 mbits)
 {
 	struct lnet_portal *ptl = the_lnet.ln_portals[mtable->mt_portal];
-
-	if (lnet_ptl_is_wildcard(ptl)) {
+	 unsigned long hash;
+	if (lnet_ptl_is_wildcard(ptl))
 		return &mtable->mt_mhash[mbits & LNET_MT_HASH_MASK];
-	} else {
-		unsigned long hash = mbits + id.nid + id.pid;
-
-		LASSERT(lnet_ptl_is_unique(ptl));
-		hash = hash_long(hash, LNET_MT_HASH_BITS);
-		return &mtable->mt_mhash[hash];
-	}
+	hash = mbits + id.nid + id.pid;
+		
+	LASSERT(lnet_ptl_is_unique(ptl));
+	hash = hash_long(hash, LNET_MT_HASH_BITS);
+	return &mtable->mt_mhash[hash];
 }
 
 int
-- 
1.9.1


