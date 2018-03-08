X-GM-THRID: 6530656197776769024
X-Received: by 10.107.10.39 with SMTP id u39mr19498400ioi.115.1520538563841;
        Thu, 08 Mar 2018 11:49:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.79 with SMTP id p76ls928950iod.8.gmail; Thu, 08 Mar
 2018 11:49:22 -0800 (PST)
X-Google-Smtp-Source: AG47ELsf+qvmfap9nFcEppfMgc20y41cxr/1B3W1sep2oCZk8amaeGypEM0NDeiEUMd2jws0gYZ0
X-Received: by 10.107.199.195 with SMTP id x186mr18504316iof.98.1520538562450;
        Thu, 08 Mar 2018 11:49:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520538562; cv=none;
        d=google.com; s=arc-20160816;
        b=drGspLBIzOcR/+MnmrpwU51+egVQDAMi0/QOCyQ4LRIthwXRmVhAxMmAqix879cXkl
         1ZSDNJGB0E2795L7G24OESTuuJX97QZ9xTi2jPuMwjRB131U1kXFnuzMiiC7cyc+TAZz
         iq6+Lt7fijkSvrDizrsqZPWTqBnrZojIzIZqyx3aMk4Sw7b803bxV19h8/16pF0lz8Op
         nbQVJgFU7ZPAg9wX3GJktDweIJZzPTmqTrq3Krt8cWAAkKRZXlhu0RoYBtQzW/Zh6uGl
         SsQTBbQrA3wtWse7H+lxlN68EylYGoxz90/4eXhhf7PH3gT7L6qx6bb48aQ6j7W9qiik
         9Gjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=brxK225oUu2ssiEKRpLeKgydulAr5RAGOjnlxOpOQKk=;
        b=Uuc/d4xhsFqm9Pru9RBTeEFJtsjlZQKhDYth7SpcOUONfFirbaO1SoVlnk/oznD7da
         CaUOKrg51Sxxx0R5nAqine4C9tm8Tqk+DNImyFJYqgZA51MCYW9bMUvNSJajMUr48KFG
         gkApPQqj0II0hFmywO38wwNVAInFNt13TckDJoo7IKpOefRakJC+aOGRnXWJrsmb5EkJ
         /sG5gJMJrf8r6b96uGAESI5ErpLyxWiDnM5KuqT0TQwDA99zfOODqh07an5xQpwQpPHE
         HjbxAT9YvlEtO5D6MdyW1h5m/dtw7djUeXEju4viIvrl3yCHMCD+q8nDcn7Uze5LRqbg
         VPiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=CS4IIhCR;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x244.google.com (mail-pl0-x244.google.com. [2607:f8b0:400e:c01::244])
        by gmr-mx.google.com with ESMTPS id o185si883514ite.2.2018.03.08.11.49.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Mar 2018 11:49:21 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) client-ip=2607:f8b0:400e:c01::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=CS4IIhCR;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x244.google.com with SMTP id 9-v6so3895763ple.11
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Mar 2018 11:49:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=brxK225oUu2ssiEKRpLeKgydulAr5RAGOjnlxOpOQKk=;
        b=CS4IIhCRpMCY8YiPaxCh2c4m1OwGVTTwih553H35PcWAnvJ5mr500xOuU8Rj5TC+I/
         vm1/t0Q0trnmM+S6B2/ewYxfkqgBylh0cksfFt9Qt7BDAgLVSc1XHfwPdqH9oDsB5Fxs
         sh/xjv3uGHI1BTMud5d8tkaWg4dQ7CF04uZZU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=brxK225oUu2ssiEKRpLeKgydulAr5RAGOjnlxOpOQKk=;
        b=VHHA16cw6mqOtxZpBs/onquznfoTib+5RJ/WZVli+Z4S1unlPP/rgddNvt/Y8dA0uR
         td1OOdsmIph+h6goBCdcfwM9hfH96z+CZ+qt6xQOCyhriqDDe3TTBt4oPm0FWhre3zZy
         KegJNp1APxSgHgE9+7tBlUZTX8b9gn30PhZ68JqZ5E9pW6KtCaXvnuHGYf6BUrz7RH3s
         w55ExrwOfhVe1mUc4UeeaP95luRGX5tptJsXiY2iEEmWhtCgOG5NRHPBIVJHlES+YCb0
         vdkAnKV4xW7F3uQKvDnGGP5IKCjce5WzbGHOxiSPbV3qqa09SFg7APDSp6wuk0Crpq7f
         MH4g==
X-Gm-Message-State: APf1xPD8zoUC6codM1gVVd8yeZji9nFsGPqCmQ9iRVJv+kAiEHWfIcjm
	Y+P9Gj5SmoVqKATiat6wppE5Qg==
X-Received: by 2002:a17:902:6909:: with SMTP id j9-v6mr24492382plk.447.1520538560946;
        Thu, 08 Mar 2018 11:49:20 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([125.22.40.140])
        by smtp.gmail.com with ESMTPSA id x4sm37193473pfb.46.2018.03.08.11.49.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 08 Mar 2018 11:49:20 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging: speakup: Replace simple_strtoul with kstrtoul
Date: Fri,  9 Mar 2018 01:19:12 +0530
Message-Id: <1520538552-16322-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1

Replace simple_strtoul with kstrtoul. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/speakup/varhandlers.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/varhandlers.c b/drivers/staging/speakup/varhandlers.c
index 3214055..e27bd5c 100644
--- a/drivers/staging/speakup/varhandlers.c
+++ b/drivers/staging/speakup/varhandlers.c
@@ -327,8 +327,9 @@ char *spk_strlwr(char *s)
 char *spk_s2uchar(char *start, char *dest)
 {
 	int val;
+	unsigned long v = 0;
 
-	val = simple_strtoul(skip_spaces(start), &start, 10);
+	val = kstrtoul(skip_spaces(start), 10, &v);
 	if (*start == ',')
 		start++;
 	*dest = (u_char)val;
-- 
1.9.1


