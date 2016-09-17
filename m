X-GM-THRID: 6330646891713265664
X-Received: by 10.13.195.193 with SMTP id f184mr1471263ywd.153.1474118605802;
        Sat, 17 Sep 2016 06:23:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.77 with SMTP id p74ls2550267iod.9.gmail; Sat, 17 Sep
 2016 06:23:24 -0700 (PDT)
X-Received: by 10.98.131.137 with SMTP id h131mr1472858pfe.23.1474118604155;
        Sat, 17 Sep 2016 06:23:24 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id h124si5092594pfe.0.2016.09.17.06.23.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 06:23:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id vz6so4663688pab.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 06:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6ri3DUkWG5gaeGch+JgICJsrq5ohK73ZwNyayZdfJ2o=;
        b=aIA9loZ+Q6LDksoW/9O1bSOupVtWwTJn6wij9gmPQONkumZqUaeYMK8Y8H9N5xupwT
         ulWtk2nWU7NlydpKzdTOkYMaa7LfFrtrfrFjVY2+tLCDRK92m4a1DqcmZLR94oU+SqkC
         g9vVLn2aNVT9aaUWTsdVF7gAJSgKWCD3GVZOcNT1tgqNdKvI8fCllNDJKjXfjecEqTxZ
         eOJyzoF48Bivhx8Mx8pDP8akez6t2aa1QguMXPYzKAoLZluWwxLzp5IP0J7MNiBp7rpf
         EFRoYAYJIM19Iok9ndc7sZ18r8Y/Ug2SNf9xwPBDKkE+sZeSPw6xb/MMu7AiMkx3j2Qv
         1Fdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6ri3DUkWG5gaeGch+JgICJsrq5ohK73ZwNyayZdfJ2o=;
        b=AZqOOwW+w0Y+JLwi5Ey4JWlysJw8fH9wcMBoeYLsZ9pGgyKnLLJnkGlAtnTbFZICCx
         ISm9z0hPoc9SH9HVyZkTWyJ/OdQfmYgoFI1WKTvjuaBmAnxkbKe6fPKUq6GxODquMAPB
         knmeejrW8A/089Hizpkb2JA4OOin+emVeS0SAvOHdQ+sqWL9MjIgOVJHcf9yStuOzQfd
         4gpIq0rjZLt3qNEC4HrjupBDKz7sv/jhz0uxWzexVJyytNBkN2lMlG9BqB0WwFz8mAuw
         1eJp8oaDkm9hsV3lenurw+0alrmJkVA+sGqGn88lynJgMXIaxE5HR3cDjpBNLVvL1niV
         cC4Q==
X-Gm-Message-State: AE9vXwONIEemEMdrA9e7Rb4sqdg6AgzD8vHxtQVVQijXTGB6ruxHDWvaPWv5u0tUE5P54w==
X-Received: by 10.66.79.138 with SMTP id j10mr31680754pax.60.1474118603813;
        Sat, 17 Sep 2016 06:23:23 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.172.239])
        by smtp.gmail.com with ESMTPSA id xw10sm19318241pab.0.2016.09.17.06.23.20
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 06:23:22 -0700 (PDT)
Date: Sat, 17 Sep 2016 07:53:05 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, oleg.drokin@intel.com,
	andreas.dilger@intel.com, jsimmons@infradead.org
Subject: [PATCH v3] Staging: lustre: Convert array index from the loop bound
 to the loop index.
Message-ID: <20160917022305.GA15019@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Convert array index from the loop bound to the loop index.

The structure cl_env_percpu[NR_CPUS] has been initializing for each possible 
cpu (i.e 0 to i). During initialization if any error will occurred, the error 
handling code should uninitialize cl_env_percpu upto i. But currently 
unitialization is repeatedly done for the same cl_env_percpu[i] element. 
This does not seems to be correct.

Used below semantic patch to identify this issue:

@@
expression e1,e2,ar;
@@

for(e1 = 0; e1 < e2; e1++) { <...
  ar[
- e2
+ e1
  ]
  ...> }

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v3:
* Incorporating suggestion regarding commit message.
 drivers/staging/lustre/lustre/obdclass/cl_object.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/cl_object.c b/drivers/staging/lustre/lustre/obdclass/cl_object.c
index 91a5806..eeccd30 100755
--- a/drivers/staging/lustre/lustre/obdclass/cl_object.c
+++ b/drivers/staging/lustre/lustre/obdclass/cl_object.c
@@ -1000,7 +1000,7 @@ static int cl_env_percpu_init(void)
 		 * thus we must uninitialize up to i, the rest are undefined.
 		 */
 		for (j = 0; j < i; j++) {
-			cle = &cl_env_percpu[i];
+			cle = &cl_env_percpu[j];
 			lu_context_exit(&cle->ce_ses);
 			lu_context_fini(&cle->ce_ses);
 			lu_env_fini(&cle->ce_lu);
-- 
1.7.1


