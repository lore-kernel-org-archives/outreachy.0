X-GM-THRID: 7443231801344
X-Received: by 10.236.28.230 with SMTP id g66mr32369142yha.2.1425991651565;
        Tue, 10 Mar 2015 05:47:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.102.101 with SMTP id fn5ls18015obb.85.gmail; Tue, 10 Mar
 2015 05:47:31 -0700 (PDT)
X-Received: by 10.182.210.227 with SMTP id mx3mr33258058obc.27.1425991651327;
        Tue, 10 Mar 2015 05:47:31 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id gb13si67588pac.2.2015.03.10.05.47.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 05:47:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by padet14 with SMTP id et14so1627470pad.0
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 05:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=h/CQF8CpZYXYzv2o20IEPSMgFTDBQ+uWvlEY9tgOq6o=;
        b=JcJCJlb/U0LCDhDLvQ6cU0jLoU641ru4upKjK5HfQbprgd97TBwB6pHlYJMcRipl9+
         FXI+tjyb1Icv3UNxiuK6WmSH9m67TNHaiAkp9fNHAp8Rz19xOZ2H+aPx7oX/gfQOVDwi
         ElGqhODHqmdVpQG8t6+hnbHfWKDulaVO+mUNcjR6KaFI4HtAejIbpqmrsPbkfM/3sIUj
         oCFHPdP+61w6/tb/Y0w9Pc4Y2S2C21tOW5WGjoBG6cUxM8BF+ITlTW3IAmDVd4KoV4hB
         HKi6KDg04Py9VJl2ayWv0/QAMGRtoHrnUqAGLlYS6hq29ThBWpyw8Yp0unx1TDsxpNOE
         Rnuw==
X-Received: by 10.66.66.196 with SMTP id h4mr64992285pat.127.1425991651174;
        Tue, 10 Mar 2015 05:47:31 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id hk6sm822594pdb.83.2015.03.10.05.47.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 05:47:28 -0700 (PDT)
Date: Tue, 10 Mar 2015 18:15:43 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: Add newline after variable declarations.
Message-ID: <20150310124543.GA3241@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Added newline after variable declarations to 
follow kernel code conventions.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/lustre/lustre/llite/llite_nfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/lustre/lustre/llite/llite_nfs.c b/drivers/staging/lustre/lustre/llite/llite_nfs.c
index 243a784..06a1212 100644
--- a/drivers/staging/lustre/lustre/llite/llite_nfs.c
+++ b/drivers/staging/lustre/lustre/llite/llite_nfs.c
@@ -49,6 +49,7 @@
 __u32 get_uuid2int(const char *name, int len)
 {
 	__u32 key0 = 0x12a3fe2d, key1 = 0x37abe8f9;
+	
 	while (len--) {
 		__u32 key = key1 + (key0 ^ (*name++ * 7152373));
 
-- 
1.9.1


