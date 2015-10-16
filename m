X-GM-THRID: 6206285490616795136
X-Received: by 10.50.79.201 with SMTP id l9mr4949244igx.13.1445013701381;
        Fri, 16 Oct 2015 09:41:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.138 with SMTP id d10ls1311067qge.27.gmail; Fri, 16 Oct
 2015 09:41:40 -0700 (PDT)
X-Received: by 10.129.108.133 with SMTP id h127mr13196051ywc.8.1445013700853;
        Fri, 16 Oct 2015 09:41:40 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id pe1si2043261pac.2.2015.10.16.09.41.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 09:41:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id ez2so9223317pac.1
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 09:41:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ijjj3TGEX8XgwdEKw+6pmghtKDGzZ0arH2wDNKFV5Os=;
        b=xpu1DQW79RzwOcszTv5UDCrjIB9oVbwV0vcdfKJqDeik9PheMmEEGMx+wY64TLplDK
         NbtXkasYTOA3jjUxKMvNn1Y/zqR6yzP99MgluVvBGKvNCL/VzzjK1wmuZnoJX8zzZOTw
         XHwTEy+GrjCogiOdotoUgw5y3P+X3VRIAbLf+ur3gCKkPNa7oGumBoZGwcQie50f7uHn
         fGjiW6vKU35nfhD+CFKnaTu83bVmMBGRgngEQq1vxu++jzDzRpWcXTDHSkppSWpJEaWR
         EKC8JvBAzqY04/d5X598Bxuu72az38s5RyBwAI0zZFhF9u5fe6MyetlYZCngd8N/hm6L
         O63w==
X-Received: by 10.68.211.68 with SMTP id na4mr17757292pbc.94.1445013700707;
        Fri, 16 Oct 2015 09:41:40 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.222.108])
        by smtp.gmail.com with ESMTPSA id yz3sm22137758pbb.37.2015.10.16.09.41.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 16 Oct 2015 09:41:40 -0700 (PDT)
Date: Fri, 16 Oct 2015 22:11:36 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/5] staging: panel: Prefer using BIT Macro
Message-ID: <c7576b638bee7db49d7017741ed63dc0259cc322.1445013271.git.amitoj1606@gmail.com>
References: <cover.1445013271.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445013271.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace bit shifting on 1 with the BIT(x) Macro

The semantic patch used to find this is:
@@ int g; @@

-(1 << g)
+BIT(g)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/panel/panel.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/panel/panel.c b/drivers/staging/panel/panel.c
index a7e3875..b47da2b 100644
--- a/drivers/staging/panel/panel.c
+++ b/drivers/staging/panel/panel.c
@@ -1794,7 +1794,7 @@ static void phys_scan_contacts(void)
 		 * So we'll scan them.
 		 */
 		for (bit = 0; bit < 8; bit++) {
-			bitval = 1 << bit;
+			bitval = BIT(bit);
 
 			if (!(scan_mask_o & bitval))	/* skip unused bits */
 				continue;
@@ -2060,12 +2060,12 @@ static int input_name2mask(const char *name, pmask_t *mask, pmask_t *value,
 			return 0;	/* input name not found */
 		neg = (in & 1);	/* odd (lower) names are negated */
 		in >>= 1;
-		im |= (1 << in);
+		im |= BIT(in);
 
 		name++;
 		if (isdigit(*name)) {
 			out = *name - '0';
-			om |= (1 << out);
+			om |= BIT(out);
 		} else if (*name == '-') {
 			out = 8;
 		} else {
-- 
1.9.1


