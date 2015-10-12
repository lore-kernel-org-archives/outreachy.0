X-GM-THRID: 6204879927318151168
X-Received: by 10.129.85.149 with SMTP id j143mr26600334ywb.31.1444686187506;
        Mon, 12 Oct 2015 14:43:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.7.13 with SMTP id 13ls498222ioh.91.gmail; Mon, 12 Oct 2015
 14:43:07 -0700 (PDT)
X-Received: by 10.107.156.129 with SMTP id f123mr9016787ioe.4.1444686187216;
        Mon, 12 Oct 2015 14:43:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id zg1si1923450pbb.2.2015.10.12.14.43.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 14:43:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id hy16so163697395pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 14:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=LH7HcnaMqFUGFibbh2SqWCxqrQx6ueO+dXU2oUhZbng=;
        b=MdtIex+ekHUdjf2zsfNJ8y2Zoz5nI0KYB//2rtgZ6jt1/35u42t6MPb6zFmsdjADhk
         BPFx8y4rCCUEILyIQrJyqC6k9rLCXcTtHb63cAQIj4J/IV80CwXtUM/J9dR8M9pcDwUA
         uYbGJKpJNVWeFquL84Ha+ypzzOUF8lztvB3iWuIg7q/75ADGOkN3FFx5oEFZl2j7s+Mj
         m1GmGUdMfDpE8PUDxtQzb8fNYvjL4hpHfAOmd19ZmaLjNemQY8RXBtjyX6k+yYXkF4Hu
         ycWUkvLhm3Nyc6brCxJbpjT77w+h9pMpaUmhwDiA4AFw6B1ikpBWHLMJlSqKFnztHRaY
         CPbQ==
X-Received: by 10.68.184.5 with SMTP id eq5mr36902344pbc.130.1444686187028;
        Mon, 12 Oct 2015 14:43:07 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.205.254])
        by smtp.gmail.com with ESMTPSA id x6sm20146065pbt.3.2015.10.12.14.43.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 12 Oct 2015 14:43:06 -0700 (PDT)
Date: Tue, 13 Oct 2015 03:13:02 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: llite: Remove useless cast on void pointer
Message-ID: <20151012214302.GA18071@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The semantic patch used to find this is:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T *)x)->f
|
- (T *)
  e
)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/llite/statahead.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/statahead.c b/drivers/staging/lustre/lustre/llite/statahead.c
index c860281..18f5f2b 100644
--- a/drivers/staging/lustre/lustre/llite/statahead.c
+++ b/drivers/staging/lustre/lustre/llite/statahead.c
@@ -947,7 +947,7 @@ static void ll_statahead_one(struct dentry *parent, const char *entry_name,
 
 static int ll_agl_thread(void *arg)
 {
-	struct dentry	    *parent = (struct dentry *)arg;
+	struct dentry	    *parent = arg;
 	struct inode	     *dir    = d_inode(parent);
 	struct ll_inode_info     *plli   = ll_i2info(dir);
 	struct ll_inode_info     *clli;
@@ -1038,7 +1038,7 @@ static void ll_start_agl(struct dentry *parent, struct ll_statahead_info *sai)
 
 static int ll_statahead_thread(void *arg)
 {
-	struct dentry	    *parent = (struct dentry *)arg;
+	struct dentry	    *parent = arg;
 	struct inode	     *dir    = d_inode(parent);
 	struct ll_inode_info     *plli   = ll_i2info(dir);
 	struct ll_inode_info     *clli;
-- 
1.9.1


