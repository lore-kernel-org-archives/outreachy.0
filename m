X-GM-THRID: 6331261772589170688
X-Received: by 10.98.16.86 with SMTP id y83mr997400pfi.12.1474116828165;
        Sat, 17 Sep 2016 05:53:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.200 with SMTP id x66ls7753724ota.23.gmail; Sat, 17 Sep
 2016 05:53:47 -0700 (PDT)
X-Received: by 10.200.54.228 with SMTP id b33mr10210185qtc.28.1474116827777;
        Sat, 17 Sep 2016 05:53:47 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id um12si3525354pab.2.2016.09.17.05.53.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 05:53:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 6so1879142pfl.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 05:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Pwww8e1ToeCjFJogsYZc3pfkldMhDsTjfl0aXhj/JYI=;
        b=zS1mZ1m66EmWBM3a318H7hEQRKGrbCLNLTi9dDxKCvJOD4SJddN//y2aS7MxNtmYhi
         47GH2vkg2vJXFUqQbEFakL8lFtp0kVbxqKtmRQDH8NrFflj13unuKRmsz9PCmJDJzkX+
         AkI1vWPez+RT07tvSCSh7t34pzH9C/ZnegxgrelKEhK9hyJtIUHHc47UjbIJyPB+XkOG
         UCidU7YRbLOA4zrlxrBC7BdUruD2wplBNPAnVTv4XGf8Xd74/Ry00IWWDz3eswS21V1G
         RJk6LLqngcohtUgBeLgpk8iru7i0rkFXUsSUXdSGEugTBdkn9jLGv60Yk2h671aAFroz
         923g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Pwww8e1ToeCjFJogsYZc3pfkldMhDsTjfl0aXhj/JYI=;
        b=DxDUvZjJw92kvj5oNY9zAmNytpN/tV2nSkySRWQn2ggPEL5WA69vupmBtmX8q8IWql
         wG2PVFScn3crR8AHc9e3Wg3rSpeR7eSc1kwEd4fqDGR79jBUAfFNmI3TQrviNl2VSYVX
         7E0GgcnmxzmAQSapz0lryfTyMThlpfyUpRAnyeUj6RrcF+gpYetscf85cb+Lk0kK72Z+
         wqL+fy2poAX/OBbdS6MkCUyI3KProE7vHfkOIKhvLyXTcKBeGsCD0c5E8IlbATPFP2tN
         puKzotB1l/ctRFne0Z2XMRW0HqQKXYpfqRJdiVBxVIwMEAfcGQm5ndWtO6Ku66Oozagf
         yAKA==
X-Gm-Message-State: AE9vXwMkdbZk5XEmXUDNAEj07GOW/8ktweGEjzPBCMMQY3eMkj8SOs5BLWx/Ty2HyOGWsg==
X-Received: by 10.98.105.135 with SMTP id e129mr31067686pfc.59.1474116827395;
        Sat, 17 Sep 2016 05:53:47 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.172.239])
        by smtp.gmail.com with ESMTPSA id xw10sm19145398pab.0.2016.09.17.05.53.45
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 05:53:46 -0700 (PDT)
Date: Sat, 17 Sep 2016 07:23:30 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v2] Staging: i4l: Remove NULL comparison.
Message-ID: <20160917015330.GA14957@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

This patch removes the explicit NULL comparison.This issue was found by 
checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* Correcting commit message.
 drivers/staging/i4l/act2000/act2000_isa.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/i4l/act2000/act2000_isa.c b/drivers/staging/i4l/act2000/act2000_isa.c
index c800da8..808bb3b 100755
--- a/drivers/staging/i4l/act2000/act2000_isa.c
+++ b/drivers/staging/i4l/act2000/act2000_isa.c
@@ -166,7 +166,7 @@ act2000_isa_config_port(act2000_card *card, unsigned short portbase)
 		release_region(card->port, ISA_REGION);
 		card->flags &= ~ACT2000_FLAGS_PVALID;
 	}
-	if (request_region(portbase, ACT2000_PORTLEN, card->regname) == NULL)
+	if (!request_region(portbase, ACT2000_PORTLEN, card->regname))
 		return -EBUSY;
 	else {
 		card->port = portbase;
@@ -244,7 +244,7 @@ act2000_isa_receive(act2000_card *card)
 				if (valid) {
 					card->idat.isa.rcvlen = ((actcapi_msghdr *)&card->idat.isa.rcvhdr)->len;
 					card->idat.isa.rcvskb = dev_alloc_skb(card->idat.isa.rcvlen);
-					if (card->idat.isa.rcvskb == NULL) {
+					if (!card->idat.isa.rcvskb) {
 						card->idat.isa.rcvignore = 1;
 						printk(KERN_WARNING
 						       "act2000_isa_receive: no memory\n");
-- 
1.7.1


