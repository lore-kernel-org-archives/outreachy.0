X-GM-THRID: 6205781635135176704
X-Received: by 10.13.212.203 with SMTP id w194mr6543302ywd.44.1444897112890;
        Thu, 15 Oct 2015 01:18:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.101 with SMTP id v98ls439073ioi.35.gmail; Thu, 15 Oct
 2015 01:18:32 -0700 (PDT)
X-Received: by 10.107.157.82 with SMTP id g79mr7157990ioe.29.1444897112656;
        Thu, 15 Oct 2015 01:18:32 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id wl2si1313835pab.1.2015.10.15.01.18.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 01:18:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id ws5so17013439pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 01:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=YhfJcbbaNsFD1DNFWe8meAQ9ngkwa7p7XaMvarDwrqY=;
        b=ilImqsjFJiXq4N+D2sl+MezT31cnGj8deJcvLWJBGYtx3O1zBVwtsUmUS/OhBZ7kFF
         r4V4yWyRToNc2nSOux6sWWpRP7XAFYV9WCRe8E8dBECAirFUwrxPJ1nNBUFK0DkzCpd9
         mk/aemXC8Gh1GxkS4heIhWagikHxkqOzCD2HwG+8N6BPR8xBuMO9Uqa4JoTp8HOC3msW
         jXto2sAEkggAq8/+rRR8mEf2W0ty9VBh8QslShywQmteMLfUYsWRi2xoFNtSbnm6Avp+
         T67bAikqhxtp4BR0kKhERyf5Rg43Na6gmmMq8Pt3yEPzgoY3cKsxysrzvnrGROZtm6M4
         OPaw==
X-Received: by 10.68.139.100 with SMTP id qx4mr1382752pbb.149.1444897112448;
        Thu, 15 Oct 2015 01:18:32 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.84.71])
        by smtp.gmail.com with ESMTPSA id nv2sm13811426pbc.48.2015.10.15.01.18.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 15 Oct 2015 01:18:32 -0700 (PDT)
Date: Thu, 15 Oct 2015 13:48:29 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 11/18] staging: wilc1000: wilc_wfi_cfgoperations: Remove
 useless initialisation
Message-ID: <1f488ec2cde09705cf9d985043b82c9592a329d0.1444895819.git.amitoj1606@gmail.com>
References: <cover.1444895817.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444895817.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove intialisation of a variable that is immediately reassigned.

The semantic patch used to find this is:

// <smpl>
@@
type T;
identifier x;
constant C;
expression e;
@@

T x
- = C
 ;
x = e;
// </smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 6472777..153ada8 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -550,7 +550,7 @@ static void CfgConnectResult(tenuConnDisconnEvent enuConnDisconnEvent,
 
 	if (enuConnDisconnEvent == CONN_DISCONN_EVENT_CONN_RESP) {
 		/*Initialization*/
-		u16 u16ConnectStatus = WLAN_STATUS_SUCCESS;
+		u16 u16ConnectStatus;
 
 		u16ConnectStatus = pstrConnectInfo->u16ConnectStatus;
 
-- 
1.9.1


