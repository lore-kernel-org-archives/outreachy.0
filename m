X-GM-THRID: 6254106980545200128
X-Received: by 10.50.23.113 with SMTP id l17mr7190491igf.13.1456147753726;
        Mon, 22 Feb 2016 05:29:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.35.229 with SMTP id n92ls1291265qgn.58.gmail; Mon, 22 Feb
 2016 05:29:12 -0800 (PST)
X-Received: by 10.140.240.129 with SMTP id l123mr115837qhc.8.1456147752975;
        Mon, 22 Feb 2016 05:29:12 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id u66si3474115pfa.2.2016.02.22.05.29.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 05:29:12 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id x65so92901874pfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 05:29:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=p88EsT6+UvQrf1HWDLt+8cpFYifqeLP2HhVyL0idqsc=;
        b=ukcwhkscZs+7Vv5EK6ZEuKhptM6pRHITA2QeGTVPjsalWQokZ0BBTBxdlJH8hvmoQL
         EZGG4vzCoguQJ4EoyAkqWeTvWv66vPlRPL6yuUZaVX7kKzMgt1tG5+gez75HiSwi/OuE
         Ev2o0WMhG+DwmPS3Jt1QyvOqsokxNc1MK8eUimGSim4R2COIjmi9cBBBJEsKjIrhrFWW
         zZQ+rMncObQY4cGbYauk5KDJ8R90Wad3pR2BjE9XioE9tIK42OyqxnCmnTFHmHi41iUV
         ECdmqLRWuIqlz5leXXQ6iABpdwIE4v1Nzntzk2RpNVklC/bSt2Zp4VA9p/OZ+lNWV2ke
         tiVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=p88EsT6+UvQrf1HWDLt+8cpFYifqeLP2HhVyL0idqsc=;
        b=PM6JMcFrbtRqKPPZuNIVD5YPdGXLmmaWwHaJbcvDMbmZqcrU0z7e7/7xyGoeKjJae5
         RokWHH+4xDdUSHR5VuIx3QrDMJT5R1gBCvV4S9YvMsELVuFreGtnIs0v+DoCofpEYgH9
         6WTbNP4F2f0vnoa7dCKA7ka1efkHt8SufMZQnocIAgTMVmtTsuTMHkkp7qz/GZiBN4z5
         IfM5de+dqu+6wtnmtYMT9eSKsYHuzoxBO/2NkqLB037tkF0cXf19NKKI4pLFDHCai8pQ
         QgR47KmjVl0VAkaoduVKxU4t2vW6pLldghNlTbDP0s7X75z65FwjQQO21yMoUKnimGx7
         uHDg==
X-Gm-Message-State: AG10YORIfbrjGlSHTe2IW104VKxcObORaIG4LSjlOk415nRgtjcYg79PpnBGKSn0hZkl8g==
X-Received: by 10.98.71.15 with SMTP id u15mr38204968pfa.161.1456147752831;
        Mon, 22 Feb 2016 05:29:12 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id tb10sm37253120pab.22.2016.02.22.05.29.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 05:29:12 -0800 (PST)
Date: Mon, 22 Feb 2016 18:59:45 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8712: Simplify return
Message-ID: <20160222132944.GA18018@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Simplified the multiline check to a single return statement.

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v2:
	- Removed if-else and replaced it with a single return statement
 drivers/staging/rtl8712/xmit_linux.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/xmit_linux.c b/drivers/staging/rtl8712/xmit_linux.c
index f8866d7..f708d95 100644
--- a/drivers/staging/rtl8712/xmit_linux.c
+++ b/drivers/staging/rtl8712/xmit_linux.c
@@ -70,10 +70,7 @@ uint _r8712_pktfile_read(struct pkt_file *pfile, u8 *rmem, uint rlen)

 sint r8712_endofpktfile(struct pkt_file *pfile)
 {
-	if (pfile->pkt_len == 0)
-		return true;
-	else
-		return false;
+	return (pfile->pkt_len == 0);
 }


--
2.1.4


