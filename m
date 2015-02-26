X-GM-THRID: 3635562938368
X-Received: by 10.180.89.194 with SMTP id bq2mr1167247wib.4.1424943010639;
        Thu, 26 Feb 2015 01:30:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.221.41 with SMTP id qb9ls1166473wic.16.canary; Thu, 26 Feb
 2015 01:30:08 -0800 (PST)
X-Received: by 10.181.29.66 with SMTP id ju2mr3535320wid.1.1424943008850;
        Thu, 26 Feb 2015 01:30:08 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id i7si1320626wif.0.2015.02.26.01.30.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:30:08 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x231.google.com with SMTP id bs8so11003874wib.4
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=/l+gmsPEDdN8vmR7MmtzUKciU1N1WAgHHSY7+3Z6/HU=;
        b=QihPdtqqR+emZ8lPwiolPO9skrN5/joH+miBuFoMPBD6SQxaavLdl0SstE3tVPxSMS
         WZX6iI5RuQHuT6figYUHNnZtQCKtuAOyIJDxofPieJCGvfADKsvRHfg2kQkCy0WD1sU3
         ewqjLsitsQuPKEtyT3yi1UH4fEs4hYbZmVKVKUrRmlsRB1j4vRh5wkGZoeUjXbETGqvJ
         7nHQdOyhkSeNi/h8P/5NLnLuabbnrNuleEY6jdqv98aJKnTQzYrHapTFjB9MWQXE8UKS
         WjCNyQbOfC+46BWcjCdDMPCY4CogY61sThCDNLFfNoWj4JyfVcpqf/vEIs8N1c6l3REa
         2dcg==
X-Received: by 10.180.19.228 with SMTP id i4mr14756726wie.13.1424943007093;
        Thu, 26 Feb 2015 01:30:07 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id v7sm494963wju.22.2015.02.26.01.30.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:30:06 -0800 (PST)
Date: Thu, 26 Feb 2015 11:30:01 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 03/24] staging: rtl8723au: hal: rewrite the right hand side
 of an assignment
Message-ID: <5ac9b8add921ef536275f01119b41572eafab3b6.1424942339.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch rewrites the right hand side of an assignment for
expressions of the form:
a = (a <op> b);
to be:
a <op>= b;
where <op> = << | >>.

This issue was detected and resolved using the following
coccinelle script:

@@
identifier i;
expression e;
@@

-i = (i >> e);
+i >>= e;

@@
identifier i;
expression e;
@@

-i = (i << e);
+i <<= e;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/rtl8723au/hal/HalHWImg8723A_RF.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/HalHWImg8723A_RF.c b/drivers/staging/rtl8723au/hal/HalHWImg8723A_RF.c
index 00480f5..d63c852 100644
--- a/drivers/staging/rtl8723au/hal/HalHWImg8723A_RF.c
+++ b/drivers/staging/rtl8723au/hal/HalHWImg8723A_RF.c
@@ -30,12 +30,12 @@ static bool CheckCondition(const u32  Condition, const u32  Hex)
 		return false;
 
 	cond = Condition & 0x0000FF00;
-	cond = cond >> 8;
+	cond >>= 8;
 	if ((_interface & cond) == 0 && cond != 0x07)
 		return false;
 
 	cond = Condition & 0x00FF0000;
-	cond = cond >> 16;
+	cond >>= 16;
 	if ((_platform & cond) == 0 && cond != 0x0F)
 		return false;
 	return true;
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

