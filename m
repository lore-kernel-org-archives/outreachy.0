X-GM-THRID: 6211753081535725568
X-Received: by 10.107.12.88 with SMTP id w85mr11020939ioi.32.1446286773447;
        Sat, 31 Oct 2015 03:19:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.219 with SMTP id 88ls321986iop.100.gmail; Sat, 31 Oct
 2015 03:19:33 -0700 (PDT)
X-Received: by 10.68.192.99 with SMTP id hf3mr9978142pbc.6.1446286773178;
        Sat, 31 Oct 2015 03:19:33 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id pe1si1126559pac.2.2015.10.31.03.19.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 03:19:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id hy1so92005504pad.0
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 03:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=i/ZvoN+4Zi05NI9klH5lyritMXgMMoWSxsQv+i3QP0E=;
        b=LI48XL0ac+z7lMxtHV5vpKbYR7fUqvkHsx9ihlG2/YAp6g4/PJJvF9tK9dn3b8fjmI
         DqkMt9B9n8fC2LTykuN6GzyFuxAPpAWai6//Mlc1dcKuQ/On5DviQwKV38tebo7wRhbL
         G+oHP7mkIKA80WdP3aeTUhmBUXddug1uN4AR95rZBIZEhmCW/sSTINZ1QxpKFpnrVwyH
         0WHgelcGnycqUDkjm8pdFWCp1WY+a6HQr9ubN4eQe+eWWdf5a89gRzW94yw7MKK8iIRu
         Krwo41St45wbqiaffhR3mePAfX0YuKClpykhteSBQDeZq1nj6ycOlcWpN1CPMP4NqXPE
         JunQ==
X-Received: by 10.68.131.202 with SMTP id oo10mr14222916pbb.40.1446286773007;
        Sat, 31 Oct 2015 03:19:33 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.162.170.60])
        by smtp.gmail.com with ESMTPSA id k5sm12996925pbq.74.2015.10.31.03.19.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 03:19:32 -0700 (PDT)
Date: Sat, 31 Oct 2015 15:49:29 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: wlan-ng: prism2mib: Remove unnecessary variable
Message-ID: <88f7ec821b0b007d66638f815827d4e821e90276.1446286290.git.amitoj1606@gmail.com>
References: <cover.1446286289.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446286289.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Drop unnecessary variable that can be replaced by a single line of
code.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/wlan-ng/prism2mib.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/wlan-ng/prism2mib.c b/drivers/staging/wlan-ng/prism2mib.c
index b4a15ef..cdda07d 100644
--- a/drivers/staging/wlan-ng/prism2mib.c
+++ b/drivers/staging/wlan-ng/prism2mib.c
@@ -660,7 +660,6 @@ static int prism2mib_fragmentationthreshold(struct mibrec *mib,
 					    struct p80211msg_dot11req_mibset *msg,
 					    void *data)
 {
-	int result;
 	u32 *uint32 = (u32 *) data;
 
 	if (!isget)
@@ -672,9 +671,7 @@ static int prism2mib_fragmentationthreshold(struct mibrec *mib,
 			return 0;
 		}
 
-	result = prism2mib_uint32(mib, isget, wlandev, hw, msg, data);
-
-	return result;
+	return prism2mib_uint32(mib, isget, wlandev, hw, msg, data);
 }
 
 /*----------------------------------------------------------------
-- 
1.9.1


