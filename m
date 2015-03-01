X-GM-THRID: 5447739244544
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3803f49973626918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.68.104.5 with SMTP id ga5mr22252424pbb.2.1425224159835;
        Sun, 01 Mar 2015 07:35:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.68 with SMTP id h62ls1348590qge.92.gmail; Sun, 01 Mar
 2015 07:35:59 -0800 (PST)
X-Received: by 10.236.26.17 with SMTP id b17mr22157815yha.15.1425224159620;
        Sun, 01 Mar 2015 07:35:59 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x22d.google.com (mail-pd0-x22d.google.com. [2607:f8b0:400e:c02::22d])
        by gmr-mx.google.com with ESMTPS id bo1si1201776pbc.0.2015.03.01.07.35.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Mar 2015 07:35:59 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22d as permitted sender) client-ip=2607:f8b0:400e:c02::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::22d as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdbnh10 with SMTP id nh10so9550128pdb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Mar 2015 07:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=EjY9caKEFRHmBUpRMGHacOF97TESXMyjCRSFVlvskwU=;
        b=RJU5Xidki6vRVW1TCQLLcS8qmLaVAl9dr/m1nTSM7Z/1C92BQ9ucCyqmjGhNyzlEAD
         4ot1PgqPzFp74QARb93hrRqHRWAe0J4oDsE4uNxvEktssrxdr7BZj9pRUXQktAlwTwfF
         V3C3Tkn2Rpfd9BZ9d3BXRiZE5OTK03fsIVNS9FcES10FHeOfluIf9UXG3sTADx6l02LN
         91arYWvS2z5vBiwUS23LOqGSOnSijTIfQluFDSwulKVUBq2cIH7KJkUoYz5heD4Gw8mI
         CWDoPXEWidDQQaXUQpuRMJPkScExPEa/8ykai5/GmraQX+K90NlfgNkjMzeYx67ArPO4
         tnIQ==
X-Received: by 10.66.199.2 with SMTP id jg2mr39080496pac.55.1425224159492;
        Sun, 01 Mar 2015 07:35:59 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id hx2sm9366737pbc.68.2015.03.01.07.35.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 01 Mar 2015 07:35:58 -0800 (PST)
Date: Sun, 1 Mar 2015 21:04:33 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] Staging: wlan-ng: Remove unused variable
Message-ID: <9fdbd7148c5a2bc0cd514136697f1700dfb76291.1425223729.git.vatikaharlalka@gmail.com>
References: <cover.1425223729.git.vatikaharlalka@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425223729.git.vatikaharlalka@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index c85b1b5..dd05e5f 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -1025,9 +1025,7 @@ int hfa384x_cmd_disable(hfa384x_t *hw, u16 macport)
 	cmd.parm1 = 0;
 	cmd.parm2 = 0;
 
-	result = hfa384x_docmd_wait(hw, &cmd);
-
-	return result;
+	return hfa384x_docmd_wait(hw, &cmd);
 }
 
 /*----------------------------------------------------------------
@@ -1061,9 +1059,7 @@ int hfa384x_cmd_enable(hfa384x_t *hw, u16 macport)
 	cmd.parm1 = 0;
 	cmd.parm2 = 0;
 
-	result = hfa384x_docmd_wait(hw, &cmd);
-
-	return result;
+	return hfa384x_docmd_wait(hw, &cmd);
 }
 
 /*----------------------------------------------------------------
@@ -1106,9 +1102,7 @@ int hfa384x_cmd_monitor(hfa384x_t *hw, u16 enable)
 	cmd.parm1 = 0;
 	cmd.parm2 = 0;
 
-	result = hfa384x_docmd_wait(hw, &cmd);
-
-	return result;
+	return hfa384x_docmd_wait(hw, &cmd);
 }
 
 /*----------------------------------------------------------------
@@ -1165,9 +1159,7 @@ int hfa384x_cmd_download(hfa384x_t *hw, u16 mode, u16 lowaddr,
 	cmd.parm1 = highaddr;
 	cmd.parm2 = codelen;
 
-	result = hfa384x_docmd_wait(hw, &cmd);
-
-	return result;
+	return hfa384x_docmd_wait(hw, &cmd);
 }
 
 /*----------------------------------------------------------------
-- 
1.9.1


