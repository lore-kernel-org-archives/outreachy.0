X-GM-THRID: 6406607470592
X-Received: by 10.180.80.35 with SMTP id o3mr3546311wix.0.1425447334309;
        Tue, 03 Mar 2015 21:35:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.149.168 with SMTP id ub8ls39215wib.50.gmail; Tue, 03 Mar
 2015 21:35:33 -0800 (PST)
X-Received: by 10.180.101.101 with SMTP id ff5mr3508757wib.5.1425447333932;
        Tue, 03 Mar 2015 21:35:33 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x235.google.com (mail-we0-x235.google.com. [2a00:1450:400c:c03::235])
        by gmr-mx.google.com with ESMTPS id by11si1054963wib.1.2015.03.03.21.35.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 21:35:33 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) client-ip=2a00:1450:400c:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::235 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x235.google.com with SMTP id w55so44017046wes.4
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 21:35:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=tVcbtWPX4lA9KoKOetGc2HOegebtptgH+E4wzyvjZW8=;
        b=0NHN8PF0GsklBwaxm7UkV7s4F21ATv/KNLHKrOSNp/oUM9r57QnKIkBswo7H9uuTyn
         r01oUFfXOAV/EN1kRwE/OyuRRWkGbStoDqERK1vi5TBBpvsRw4sppFuUZMsnj59oO1nB
         Sg0Rck4XTspBusSvF8vCUdFEmZgkxRmZU3rR1127dtlcYVvCh1YWkq1IyyZXVskryM06
         T7zDyvRrpLTO4mVz4eOIAg9pAPhiOTihpSP7ghnMshPkmJvFXQDPzQZtC3vtoEKRLqYQ
         jmsX1cWjCnMBCPpK/KwuJeKZ2jpW2k67jQBd68MRU4NYBCFcXWY7cWVDD8Q2dQU7VEpU
         oDJg==
X-Received: by 10.180.87.165 with SMTP id az5mr52230498wib.29.1425447333873;
        Tue, 03 Mar 2015 21:35:33 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id cf12sm4286700wjb.10.2015.03.03.21.35.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 21:35:33 -0800 (PST)
Date: Wed, 4 Mar 2015 07:35:28 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 12/13] staging: speakup: remove extra parentheses around
 right bit shift operation
Message-ID: <c19382d04086f1c8be1c5615b07a923dbbce68d5.1425446659.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around bitwise right shift operation.
The case handled is  when the resultant value is assigned to
a variable. The issue was detected and resolved using the following
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

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/speakup/main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/main.c b/drivers/staging/speakup/main.c
index e9f0c15..1249f91 100644
--- a/drivers/staging/speakup/main.c
+++ b/drivers/staging/speakup/main.c
@@ -1527,7 +1527,7 @@ static void update_color_buffer(struct vc_data *vc, const char *ic, int len)
 	int i, bi, hi;
 	int vc_num = vc->vc_num;
 
-	bi = ((vc->vc_attr & 0x70) >> 4);
+	bi = (vc->vc_attr & 0x70) >> 4;
 	hi = speakup_console[vc_num]->ht.highsize[bi];
 
 	i = 0;
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

