X-GM-THRID: 6255233978034290688
X-Received: by 10.98.93.217 with SMTP id n86mr41273093pfj.11.1456410153776;
        Thu, 25 Feb 2016 06:22:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.142.232 with SMTP id rz8ls224789obb.62.gmail; Thu, 25 Feb
 2016 06:22:33 -0800 (PST)
X-Received: by 10.182.47.132 with SMTP id d4mr41856242obn.40.1456410153497;
        Thu, 25 Feb 2016 06:22:33 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id u66si1308655pfa.2.2016.02.25.06.22.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:22:33 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x232.google.com with SMTP id ho8so33867352pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 06:22:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=S3S6omqLMzSH52pDoImR2AfbvCJDehnJupGQ6SsS0ac=;
        b=B8OWwxp9cYZWc9Ve3x6sf031fHIufqURsLq4BKAy4UKToOVNHIDy3phfJndx8b5TZL
         pKEUhNLWb/tQuU82e6bz9bNmLBb5bU3rC842GPgUmCFT6xZ8pCTt+1JUXRsIB6WyGni9
         O5/xFx5eChvwke4uLUfR+NH0ze00Ck7Y+1gRZZw5U7N6unv8v6Rs8NyoU3ClNur6wVtt
         Z7HZYV4nbjHO5ylcxRMkA36VutSqeeAdH6HPBUFeN4NIelWKrs+IM78yKoXKLi2R8cVe
         1NZuoUFpibR5mWPrFBafEz9nTZk5tzpsQkP33K3T8tMJc75I5wLPfDxEjru4oMbTggtp
         LXZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=S3S6omqLMzSH52pDoImR2AfbvCJDehnJupGQ6SsS0ac=;
        b=M3P+YmgJl+mfBGI9EqrOfaiSNUa/Zl0zEnO07nimwVfflF+a8iOnlrMbcI2UtiYdAk
         dfIqfZ1oGbubJjt9NV7UWOkL80YenLtZMUdRcA3v88fIoDq8hyIzWZaXwI3c8gqJf88u
         7yB5requN3a8qgyJ5/j7EcWzxSsAUbnoOxmqO89mo/IW3kjqgGTn8TG81LTr6GLo295F
         qBM3yh3YhCCwNia8AA1kp2/5JwP+2UR/ucNr6NcGYnNPxsQIf/s2MFW+cmtpbltFiLqw
         wRmeJPzBunPq01l0I8TEZwBYedoMIi4Ty0HDpO4IkiIIG1lb4HcE8rHwO0CboIpezT9A
         Gbrg==
X-Gm-Message-State: AG10YOSndUB6ZH+u/7rt4hyljzRdHFgYmZshYJxBHBFEoyPrqdvonpwtoGgns6w1y9s3dQ==
X-Received: by 10.66.246.234 with SMTP id xz10mr63290713pac.49.1456410153289;
        Thu, 25 Feb 2016 06:22:33 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.179.114])
        by smtp.gmail.com with ESMTPSA id n78sm12752013pfb.53.2016.02.25.06.22.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 06:22:32 -0800 (PST)
Date: Thu, 25 Feb 2016 19:52:27 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: android: ion: tegra: Replace IS_ERR_OR_NULL with
 IS_ERR
Message-ID: <20160225142227.GA28072@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace IS_ERR_OR_NULL test with an IS_ERR test since
ion_device_create() function returns a valid device or a -PTR_ERR
only as evidenced by the comment on the function prototype. 

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/android/ion/tegra/tegra_ion.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/android/ion/tegra/tegra_ion.c b/drivers/staging/android/ion/tegra/tegra_ion.c
index 8828524..49e55e5 100644
--- a/drivers/staging/android/ion/tegra/tegra_ion.c
+++ b/drivers/staging/android/ion/tegra/tegra_ion.c
@@ -37,7 +37,7 @@ static int tegra_ion_probe(struct platform_device *pdev)
 			     sizeof(struct ion_heap *), GFP_KERNEL);
 
 	idev = ion_device_create(NULL);
-	if (IS_ERR_OR_NULL(idev))
+	if (IS_ERR(idev))
 		return PTR_ERR(idev);
 
 	/* create the heaps as specified in the board file */
-- 
1.9.1


