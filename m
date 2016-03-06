X-GM-THRID: 6256304454696435712
X-Received: by 10.67.30.161 with SMTP id kf1mr14235742pad.21.1457294619712;
        Sun, 06 Mar 2016 12:03:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.241.74 with SMTP id wg10ls532935obc.3.gmail; Sun, 06 Mar
 2016 12:03:39 -0800 (PST)
X-Received: by 10.182.106.11 with SMTP id gq11mr14257367obb.45.1457294619256;
        Sun, 06 Mar 2016 12:03:39 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y20si2610166pfa.2.2016.03.06.12.03.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 12:03:39 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 63so6717122pfe.0
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 12:03:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=vTXqreln9ZfZ8jyxU89q5z6hU5jRdiSO5xn8VfRv/mo=;
        b=vlQzFyJrECwffqULhf1MYx9p7TukC1nVeN6cmC79OhNCqwFQMNfpNBw6XDimgST4pl
         Kqa0+xUKi0qWYPSAIYIX+K9niamSuEppmyXDPAQ4p72CJ2YrwyES2ot28HthvPVEQQ58
         QM6faVOwWN0ASW4+xiabXm0dJM+9lPT7F4NTM6KEcDpBYr4DlpPjyBCmELlCAa2aN8uY
         ZwCGgAFDP9pUSkM0loDYXsW6qv34HTOv3gHXDtHuZOk/sK24vZUfE9p2Q9XvIRryWWbk
         hYRq90HvyPaB7Pu4BTtE1a79yEWM2EWPmX17FtFqfydHYeWfhBeOgZF0uyG0WzY1G7IA
         ieLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=vTXqreln9ZfZ8jyxU89q5z6hU5jRdiSO5xn8VfRv/mo=;
        b=NtTI+rl9JuN1rIEjRqOaPTfkf+18XcFPWlAQbroaeX30AmqzGEVnUy2F4XPWcZEqeS
         OgKay3xLf3BjDs+rCG7fJf29NsYZSmXOuepUwgogXpNWUUN1/yP0jvntHXgyBioMx3aB
         s8tcqjo/JMD1Xvq+cVrODo/NUStblsrYO9WvkyUh7U++XudwMToEeZ3aE00ytMbOd7JC
         Uo+53fMia+s3hQuiH4BirrIfnT+05MiaTnQSmuT8EchgPGoE+uNx4efddrkiNVfLRYT3
         ePBqxFeY+rpxdLNfj06KTl3yBnKZR3Te9TkINv0gIjH1Ls6mjFnbefRfY0OgpEgXbndP
         gkoQ==
X-Gm-Message-State: AD7BkJLV1J8AtPDVNVX0zR/a+/luaJ8IvgJBYbTLfBxraA5H3lkTT57y4lctEXREC980aA==
X-Received: by 10.98.9.27 with SMTP id e27mr28417898pfd.59.1457294619045;
        Sun, 06 Mar 2016 12:03:39 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.154])
        by smtp.gmail.com with ESMTPSA id y21sm19266117pfa.85.2016.03.06.12.03.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 12:03:38 -0800 (PST)
Date: Sun, 6 Mar 2016 17:34:01 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: wlan-ng: Handle error condition.
Message-ID: <20160306120401.GA6428@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Handle error condition.
Below semantic patch found,their is double assignment to 'result' variable.so instead of deleting double assignment,handling error condition for "result = mkimage(..)".
@@
expression e1,e2,e3;
@@

(
 (<+...e1++...+>)=e2;
|
 (<+...e1--...+>)=e2;
|
 (<+...++e1...+>)=e2;
|
 (<+...--e1...+>)=e2;
|
e1=e2;
e1 = <+...e1...+>;
|
*e1=e2;
*e1=e3; 

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---

Changes in v2:
* No change.
*Compile this patch to check nothing is broken.
 
drivers/staging/wlan-ng/prism2fw.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/wlan-ng/prism2fw.c b/drivers/staging/wlan-ng/prism2fw.c
index 8fc80df..35fd5fb 100644
--- a/drivers/staging/wlan-ng/prism2fw.c
+++ b/drivers/staging/wlan-ng/prism2fw.c
@@ -333,6 +333,10 @@ static int prism2_fwapply(const struct ihex_binrec *rfptr,
 
 	/* Make the image chunks */
 	result = mkimage(fchunk, &nfchunks);
+	if (result) {
+		netdev_err(wlandev->netdev, "Failed to make image chunk.\n");
+		return 1;
+	}
 
 	/* Do any plugging */
 	result = plugimage(fchunk, nfchunks, s3plug, ns3plug, &pda);
-- 
1.8.3.4


