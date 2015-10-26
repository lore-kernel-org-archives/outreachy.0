X-GM-THRID: 6210016168421359616
X-Received: by 10.129.78.205 with SMTP id c196mr30300923ywb.21.1445882248790;
        Mon, 26 Oct 2015 10:57:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.158.200 with SMTP id h191ls1555359ioe.104.gmail; Mon, 26
 Oct 2015 10:57:28 -0700 (PDT)
X-Received: by 10.50.13.37 with SMTP id e5mr3173780igc.6.1445882248537;
        Mon, 26 Oct 2015 10:57:28 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id pe1si3661434pac.2.2015.10.26.10.57.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 10:57:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id z6so194656584pas.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 10:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=5ikSRQMJ3eOluO0GXsfp0hZGYzv8GPUF1qdqSxFPpys=;
        b=G2LsFfzxwmsMFHSUDtDMEwLViLJ8AXZ4MVhF/kMYJRQqc4kMzWJPR2USvZEbt3CrgN
         iIrhGfvLKhalqsmUrLeklLLEwJjPuMI0NSMtaJ0gbaSGwD65AanKJGfy79094ahYWe+P
         mbSDUDUlpg6dOaYDO+QBc/4LTozama/AhMysdrxEMGZ6W5B9m6o0lpWwdm8tY1a5HiwZ
         IxWF9xsNDzCNBrXeQ3B1XAVsgUw/wpGNLUi5AuQafiLiiqQDvKFB6I8WmPytgtOrvciV
         vds9CV7T9vDw/fYFyfxD4RCpzO7+f/vx4c4jGWu4pCdUtGlbBYX14bTK1vShXwqQRu8P
         4jUA==
X-Received: by 10.68.191.194 with SMTP id ha2mr23508217pbc.3.1445882248371;
        Mon, 26 Oct 2015 10:57:28 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.252.119])
        by smtp.gmail.com with ESMTPSA id st5sm35281002pab.42.2015.10.26.10.57.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 10:57:28 -0700 (PDT)
Date: Mon, 26 Oct 2015 23:27:20 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: rtl8188eu: Remove unnecessary variables
Message-ID: <ec8c9db6f47ab576239c9cab8dd4bd9a4e82e6fd.1445881808.git.amitoj1606@gmail.com>
References: <cover.1445881808.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445881808.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove unnecessary variable that can be replaced with a single line
of code.

The semantic patch used to find this is:

// <smpl>
@@
expression ret;
@@
- if (ret) return ret;
- return 0;
+ return ret;

@@
local idexpression ret;
expression e;
@@
- ret = e;
- return ret;
+ return e;

@@
type T;
identifier i;
expression E;
@@
- T i = E;
 ... when != i

@@
type T;
identifier i;
@@
- T i;
 ... when != i
// </smpl>


Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8188eu/hal/fw.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/fw.c b/drivers/staging/rtl8188eu/hal/fw.c
index a71c542..23aa6d3 100644
--- a/drivers/staging/rtl8188eu/hal/fw.c
+++ b/drivers/staging/rtl8188eu/hal/fw.c
@@ -190,7 +190,6 @@ int rtl88eu_download_fw(struct adapter *adapt)
 	struct rtl92c_firmware_header *pfwheader = NULL;
 	u8 *pfwdata;
 	u32 fwsize;
-	int err;
 
 	if (request_firmware(&fw, fw_name, device)) {
 		dev_err(device, "Firmware %s not available\n", fw_name);
@@ -229,7 +228,5 @@ int rtl88eu_download_fw(struct adapter *adapt)
 	_rtl88e_write_fw(adapt, pfwdata, fwsize);
 	_rtl88e_enable_fw_download(adapt, false);
 
-	err = _rtl88e_fw_free_to_go(adapt);
-
-	return err;
+	return _rtl88e_fw_free_to_go(adapt);
 }
-- 
1.9.1


