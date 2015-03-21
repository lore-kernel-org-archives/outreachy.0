X-GM-THRID: 9440512180224
X-Received: by 10.236.203.196 with SMTP id f44mr76235304yho.15.1426962434243;
        Sat, 21 Mar 2015 11:27:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.232.138 with SMTP id to10ls1018067obc.93.gmail; Sat, 21
 Mar 2015 11:27:14 -0700 (PDT)
X-Received: by 10.182.113.228 with SMTP id jb4mr97274219obb.31.1426962434028;
        Sat, 21 Mar 2015 11:27:14 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pd0-x22d.google.com (mail-pd0-x22d.google.com. [2607:f8b0:400e:c02::22d])
        by gmr-mx.google.com with ESMTPS id pj7si245393pbb.2.2015.03.21.11.27.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 11:27:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::22d as permitted sender) client-ip=2607:f8b0:400e:c02::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c02::22d as permitted sender) smtp.mail=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdnc3 with SMTP id c3so141254196pdn.0
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 11:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=bOLNMSY6EcgrLoB9/5wkjWeDDihk3bgfWgbirQ0uMmo=;
        b=o0XentF1MBsr7rhYhvqDmYsBQK62pM/HbsEgMRRilO1j6XwcR2lniPnUW8hjZ8Avpr
         k4PlIx4C6Md6871Q1OX1TKeGqxKMSKOndaHW7yaEagD25eV7rgaPNS8Y4dGeDCCAucTa
         QLeniv5WwiHSY3JHrFHV8etvuFe7ojo0bgRZQ1mf0MsqbeP6hA3gPk8TeL1F0MY8taLo
         5vQ4iEEGQRdlnIcBA3migxabWD2tqtQd28X1XgKxINl02p3tsqzsJb4xDNS5JMii8LO/
         7kjQ9ZTOuRRuuZ91T5LZNm0VqM/r8V1o0ZBhw/8JxdkjMLRRwGhA3w4BeeaQoB9fCEHT
         oOPQ==
X-Received: by 10.66.140.15 with SMTP id rc15mr124369692pab.44.1426962433884;
        Sat, 21 Mar 2015 11:27:13 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.209.90])
        by mx.google.com with ESMTPSA id o17sm12235233pdj.26.2015.03.21.11.27.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 21 Mar 2015 11:27:13 -0700 (PDT)
Date: Sat, 21 Mar 2015 23:57:09 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: sm750fb: Correct brace position
Message-ID: <20150321182709.GA27651@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes error in file ddk750_chip.c of placing brace '{' in
te correct position after if and switch statements.
 
Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_chip.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_chip.c b/drivers/staging/sm750fb/ddk750_chip.c
index b748689..3ccf4a5 100644
--- a/drivers/staging/sm750fb/ddk750_chip.c
+++ b/drivers/staging/sm750fb/ddk750_chip.c
@@ -110,8 +110,7 @@ void setChipClock(unsigned int frequency)
 			return;
 #endif
 
-    if (frequency != 0)
-    {
+    if (frequency != 0) {
         /*
          * Set up PLL, a structure to hold the value to be set in clocks.
          */
@@ -140,8 +139,7 @@ void setMemoryClock(unsigned int frequency)
 	if (getChipType() == SM750LE)
 		return;
 #endif
-    if (frequency != 0)
-    {
+    if (frequency != 0) {
         /* Set the frequency to the maximum frequency that the DDR Memory can take
            which is 336MHz. */
         if (frequency > MHz(336))
@@ -152,8 +150,7 @@ void setMemoryClock(unsigned int frequency)
 
         /* Set the corresponding divisor in the register. */
         ulReg = PEEK32(CURRENT_GATE);
-        switch(divisor)
-        {
+        switch(divisor) {
             default:
             case 1:
                 ulReg = FIELD_SET(ulReg, CURRENT_GATE, M2XCLK, DIV_1);
-- 
1.9.1


