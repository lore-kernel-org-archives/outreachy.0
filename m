X-GM-THRID: 6391112880745349120
X-Received: by 10.157.8.246 with SMTP id 109mr3080034otf.48.1488046925206;
        Sat, 25 Feb 2017 10:22:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.69 with SMTP id 63ls9960378oty.0.gmail; Sat, 25 Feb 2017
 10:22:04 -0800 (PST)
X-Received: by 10.129.115.197 with SMTP id o188mr3315631ywc.114.1488046924394;
        Sat, 25 Feb 2017 10:22:04 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id h130si2238489pfe.1.2017.02.25.10.22.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 10:22:04 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id s67so7341087pgb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Feb 2017 10:22:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jGuwnSDi2SbPG+3ihNjRS35/QQLI/Iztir3vpcJaHv0=;
        b=ce6ayVQlSTzzz3dgm5w9TryFIKNXlpeLcZivONzdGHtuyobXk0DzMxhGtzo/aR10hI
         I7nlMScYNr7p9hzfw7u2OQwLz7Rtc4QyZIDLvhTG9Am0RDZBosSKsN6srehYgg4F3mpD
         qlTMx44qCKYFnav0XoAhIFkAMdPy5rmGe9qLc/mOvy+Rodd9Td6eMjblr34SJiJYMAlz
         ZRSpFyA3U8yIvsrpWXOyy3lYmefRQUdClzanFqqyEHxaWjMPrnQCJOYDEHvszfWf8B0G
         sV2d+P2Unbc7V95lXweuVX6JR6I0ARBeqpDeAGZXPviAONivwqkSuUAz6V7ikUGD1MUc
         npwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jGuwnSDi2SbPG+3ihNjRS35/QQLI/Iztir3vpcJaHv0=;
        b=Ap2sYJptvYyaJNwqtNDjjYbeE5F4LeR02aDlRTtKuA6gdbtTEtEi33D0a04BJMgISR
         1iCNYuVFs0MJpTEbWlCIm7+8vrJugkkca8S0gycTZwGTwtjwP+re8kFdKe233lsnySf1
         ReTOqli317IH9c5yFxssZaleca5cnvznHdoXoJnqh5IHEpE4+9Ncyz/pGYdSBFPxqgpK
         PNFuDLJZnnq7QWNUcrHeUvW8Ac1T5NLeC328bYWG4gx6EHn+QRGdTBULmWhurBb8Ywp3
         QW8sm4T4tI1w9IVhBUF59MwIh+uJnPUv4zICFlU28IJLwmJosUEzYR2q3M0dIVbHKHJR
         x/0w==
X-Gm-Message-State: AMke39kJ7o0UZFnL/4n+rnJwP6Y6zaUExM3cjO0uG7jbITKa3Tb6H4uIEpEY4c5YWjH3cQ==
X-Received: by 10.84.238.199 with SMTP id l7mr12632581pln.90.1488046924178;
        Sat, 25 Feb 2017 10:22:04 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.154.88])
        by smtp.gmail.com with ESMTPSA id y21sm21812445pgh.52.2017.02.25.10.22.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Feb 2017 10:22:03 -0800 (PST)
Message-ID: <58b1cb4b.15fa630a.89d24.ce28@mx.google.com>
X-Google-Original-Message-ID: <20170225182159.GA6995@<rvarsha016@gmail.com>>
Date: Sat, 25 Feb 2017 23:51:59 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/7] staging: sm750fb: Add braces around if statement.
References: <cover.1488045682.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488045682.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Added braces around if statement. This patch fixes the following
checkpatch issue:

CHECK: braces {} should be used on all arms of this statement

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index 10cf729..7948ca9 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -16,9 +16,9 @@ logical_chip_type_t sm750_get_chip_type(void)
 
 void sm750_set_chip_type(unsigned short devId, u8 revId)
 {
-	if (devId == 0x718)
+	if (devId == 0x718) {
 		chip = SM718;
-	else if (devId == 0x750) {
+	} else if (devId == 0x750) {
 		chip = SM750;
 		/* SM750 and SM750LE are different in their revision ID only. */
 		if (revId == SM750LE_REVISION_ID) {
-- 
2.9.3


