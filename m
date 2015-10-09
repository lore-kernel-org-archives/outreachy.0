X-GM-THRID: 6203360253861429248
X-Received: by 10.182.230.197 with SMTP id ta5mr12512189obc.37.1444423841906;
        Fri, 09 Oct 2015 13:50:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.54 with SMTP id e51ls1581131qge.6.gmail; Fri, 09 Oct
 2015 13:50:40 -0700 (PDT)
X-Received: by 10.13.240.132 with SMTP id z126mr12732757ywe.34.1444423840320;
        Fri, 09 Oct 2015 13:50:40 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id wl2si321657pab.1.2015.10.09.13.50.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 13:50:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id lk4so96118975pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 13:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=mP8PwLJ5hqC4R6IA4W/d+MX8fQDrSrYT4euy8CGrR88=;
        b=dRSgt6qYIgSaF9fnQ/i5NfgU45gbRfoqe41lAdogWwKVstbcs8QmE5BG5NCD49aSQZ
         mliFHHE4zE7sK5+vpHBdgSb4/fnquvqm5nUxqXiwOLETo5IOnAY4gZJXDUoSQFdZBi1v
         UDVLJbK6QpjjtGrDLoIl79ThFnQJBazBu7+1/S8n0TTAAmJBeCGiuh0ORnCGaKVgRIyW
         sikCYcl5oZAGecZmDrr2HDgjKvqnAJn9kzncOIgNfbkstFXQfCWgq51QhPv8XGNlY5Ag
         F3cMc3pUuXOixOFaYIUuSm9GG95homwEWStlV+PZGAPQXeO9sCMfnOCqq7QNE04/ynkg
         +x0w==
X-Received: by 10.68.201.168 with SMTP id kb8mr17531740pbc.95.1444423840164;
        Fri, 09 Oct 2015 13:50:40 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.135.155])
        by smtp.gmail.com with ESMTPSA id fm3sm4171072pbb.36.2015.10.09.13.50.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 09 Oct 2015 13:50:39 -0700 (PDT)
Date: Sat, 10 Oct 2015 02:20:36 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/6] staging: sm750fb: Add space around '<<'
Message-ID: <eb6f00d97baf59429f70614010df4c7ab076647b.1444423168.git.amitoj1606@gmail.com>
References: <cover.1444423168.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444423168.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Add space around operator '<<'. Problem found using
checkpatch.pl
CHECK: spaces preferred around that '<<' (ctx:VxV)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/sm750fb/ddk750_display.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
index 91ee375..f8005c2 100644
--- a/drivers/staging/sm750fb/ddk750_display.c
+++ b/drivers/staging/sm750fb/ddk750_display.c
@@ -228,21 +228,21 @@ void ddk750_setLogicalDispOut(disp_output_t output)
 
 	if (output & PRI_TP_USAGE) {
 		/* set primary timing and plane en_bit */
-		setDisplayControl(0, (output&PRI_TP_MASK)>>PRI_TP_OFFSET);
+		setDisplayControl(0, (output&PRI_TP_MASK) >> PRI_TP_OFFSET);
 	}
 
 	if (output & SEC_TP_USAGE) {
 		/* set secondary timing and plane en_bit*/
-		setDisplayControl(1, (output&SEC_TP_MASK)>>SEC_TP_OFFSET);
+		setDisplayControl(1, (output&SEC_TP_MASK) >> SEC_TP_OFFSET);
 	}
 
 	if (output & PNL_SEQ_USAGE) {
 		/* set  panel sequence */
-		swPanelPowerSequence((output&PNL_SEQ_MASK)>>PNL_SEQ_OFFSET, 4);
+		swPanelPowerSequence((output&PNL_SEQ_MASK) >> PNL_SEQ_OFFSET, 4);
 	}
 
 	if (output & DAC_USAGE)
-		setDAC((output & DAC_MASK)>>DAC_OFFSET);
+		setDAC((output & DAC_MASK) >> DAC_OFFSET);
 
 	if (output & DPMS_USAGE)
 		ddk750_setDPMS((output & DPMS_MASK) >> DPMS_OFFSET);
-- 
1.9.1


