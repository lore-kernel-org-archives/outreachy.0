X-GM-THRID: 6202772083227754496
X-Received: by 10.66.146.131 with SMTP id tc3mr35190193pab.20.1444195702206;
        Tue, 06 Oct 2015 22:28:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.152.208 with SMTP id a199ls120611ioe.32.gmail; Tue, 06 Oct
 2015 22:28:21 -0700 (PDT)
X-Received: by 10.66.249.100 with SMTP id yt4mr34532811pac.42.1444195701881;
        Tue, 06 Oct 2015 22:28:21 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id zg1si4924371pbb.2.2015.10.06.22.28.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 22:28:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacex6 with SMTP id ex6so9984511pac.0
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 22:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=6PYOCn1SEq/RhjSg7Hk4464Bz70nkfLpOV3ujcawsBM=;
        b=wogwIOve6Ugb/TELQsSHLmqqq4tAv5a5yVtwff18UR5F9ejSYfoKrNWyY8rcP0aHUt
         Cc8WDNtOKAniNju4G+n/azCZ2Zh48R2GZi3XzIo6XSpvzSVhtMAImWTSZWE+jNgvSfSZ
         i6xabHBSQQvMltF4vGnfp6x/U5HI9M1G1Fpax47ZyJw+iqYEdjYuR0sBDRKSoxjYY7q3
         YqDnhx9p+95/OcFDDQmgLDh03msoMNC8eCVK43HSzzx9PHNIUg6DwkfeHalPbM/l47A0
         /p6TWOTkdgrAAb+6WyfcTgd+UXXzc05oA2x6meFvVTMzBpK7daNeGWMAKZskSCKwbk2V
         9IxQ==
X-Received: by 10.66.221.104 with SMTP id qd8mr52543650pac.155.1444195701731;
        Tue, 06 Oct 2015 22:28:21 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.197.85])
        by smtp.gmail.com with ESMTPSA id rx8sm36775683pbb.90.2015.10.06.22.28.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 06 Oct 2015 22:28:21 -0700 (PDT)
Date: Wed, 7 Oct 2015 10:58:18 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: rtl8712: Remove NULL comparison
Message-ID: <e9962700480ca8590bb9386ab0217b449fc4b8db.1444194896.git.amitoj1606@gmail.com>
References: <cover.1444194896.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444194896.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove NULL comparison by using '!' operator. Problem found using
checkpatch.pl
CHECK: Comparison to NULL could be written "!padapter->halpriv.hal_bus_init"

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 957f033..081f361 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -382,7 +382,7 @@ uint rtl8712_hal_deinit(struct _adapter *padapter)
 uint rtl871x_hal_init(struct _adapter *padapter)
 {
 	padapter->hw_init_completed = false;
-	if (padapter->halpriv.hal_bus_init == NULL)
+	if (!padapter->halpriv.hal_bus_init)
 		return _FAIL;
 	if (padapter->halpriv.hal_bus_init(padapter) != _SUCCESS)
 		return _FAIL;
-- 
1.9.1


