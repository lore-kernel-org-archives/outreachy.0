X-GM-THRID: 6477789465287852032
X-Received: by 10.157.87.9 with SMTP id p9mr7138983oth.85.1508227890220;
        Tue, 17 Oct 2017 01:11:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.199 with SMTP id r7ls238997otr.2.gmail; Tue, 17 Oct
 2017 01:11:29 -0700 (PDT)
X-Received: by 10.157.60.221 with SMTP id t29mr6744642otf.23.1508227889474;
        Tue, 17 Oct 2017 01:11:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508227889; cv=none;
        d=google.com; s=arc-20160816;
        b=qvBJ7D68cK+BGI1daU7CtkSW6jU4cTy+fCQa1gAtb2cqAeIV/yu87SRJhmo/SMIeLa
         nj+VWleaFARZEOOOsGt3joEpLicxxqyuWlrsuQo9vEVpkIT4/Qw5OEBlV0vWJJfAbMQ4
         SKUFb69lntnHJlF7+vWEDV/W+U2Kgvj0tg6g2o+Ayy+houq7ym6JHJ9TCp4IOy738L9K
         n8XSPiM8SJU76zt1Zdq1y/8/gU/WfYNOJTalTfnp0ppFxBBOaNU+/as+k4hGb+84MEDl
         VTY2R4zp6qR9aNoxtO3KcqRyQS2dbB3ZAEz+yWgul/ArtEg3vyP9HOgnX0p2ZUHaQScs
         KUbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=syf/t3z4M8dPaDhzsA/wmYWfKW38qn3JEHQl07yvyyY=;
        b=Vp4FRPvZBzUDEo0mkHi/PLCANJfA41evZsXsfGI/sDI+tv1bWrsc7cr1O/F1ka+3/9
         9Xv6bmEMRxsTEErreUb1ci7k3P817APsG/AbG3ox9O0RxBCmY8/eqfnP6rS9eg3LCcOu
         /ac74EbaFYZJZEXQV0GFKL28xKpDrkrRbo1F7rrSCcGU6WA5mU6TE3XlFdEKKCdU9JJu
         Vx+HXGH+E/ui+pNj3TVyfR3g+UMU485J5kDjPAiSFpgjndftkQlducT2L0Vb2GBOGXjA
         pXnkig9JHr74bhZWgqwlBVmwAtZFG5mL5Aa6y8JVTana54grH60vpizrgfDwoFk20lL6
         yjKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ejL/qC8a;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::22e as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x22e.google.com (mail-pg0-x22e.google.com. [2607:f8b0:400e:c05::22e])
        by gmr-mx.google.com with ESMTPS id k24si496365oiy.1.2017.10.17.01.11.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 01:11:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::22e as permitted sender) client-ip=2607:f8b0:400e:c05::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ejL/qC8a;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::22e as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x22e.google.com with SMTP id a192so812836pge.9
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 01:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=syf/t3z4M8dPaDhzsA/wmYWfKW38qn3JEHQl07yvyyY=;
        b=ejL/qC8aj3TnZZ53I0Z1NnfSyZQS7xoWlrI6NZjYZ5BOXogvgekx8n4xLpKMqTi8D7
         IM5IpsH2KeWhbQKXWNS3aHrfcdTUiPQRTa9Pi2qFctzNApwHfhUEjEkX0Mn10qhFX28A
         TzzmKQSSPmmfbT2ISW3sH2MUSLNJuwihVzI0ilgRkkzXDz3iodanaEhgWk/7s6Vo+JVn
         MhrUI4yF9LYwjKn4j+1AMdrPLVTaaTL2JKD6WceDu62SGhH9zEJ8cm4ujLhSRif3MeiS
         I0Px8tXBFCYW8dH8X0mkWxHYbJfnjQ0Yr549ADA6J6QYWeZdKgooMSaSFKW9AWrJ9znK
         Extg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=syf/t3z4M8dPaDhzsA/wmYWfKW38qn3JEHQl07yvyyY=;
        b=e06xw7NNjLwHmHme3ce++iNhrHV/HVdgBfw6vxNij/mTFVGQ0eA+9mgmPKj5GSGBI0
         sQ/boOxzE0hOTENeEa/yW7PFNkMtW8B/HBLCR6ZcBHADYDXCIGkMryx1d85Db9ukuOKS
         GN7RCJn8TomGfvZqnJlS7WLPMi9cCeoPSZnYOU9bPvzXZo7V9IN9fDp7KbhJSDj/qEDN
         kJukJF52g7Z9fz0ssYB9twMEJQVm5zfcEXksOkwucCOP84ROfA1Hxzq9dxVe56LDsiaR
         hyDA4vQs/rJroMbIOZqDbEy+DDFNMqIf7LhTeX703b63q0YZ8Lb54d9I8AG7AQiInTP7
         oZuA==
X-Gm-Message-State: AMCzsaVdyS7EsKfJkxU0pZsaFsMnf3S6tuCp9TlNw4NB08ZpSP8Siszl
	laA7UDhNlYQaTjV413iHOXMyZi4E
X-Google-Smtp-Source: AOwi7QDfaWo47wgOMo8Ja4MKjaXWOURxZE0dAJwKzNS9jbxWouzaOu7vMb8ol49v3Zh/5kZIbxhnew==
X-Received: by 10.84.224.195 with SMTP id k3mr11354958pln.403.1508227889192;
        Tue, 17 Oct 2017 01:11:29 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id 76sm18324933pfq.4.2017.10.17.01.11.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 01:11:28 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] tests: xlate: print tests passed or error for testfile argument
Date: Tue, 17 Oct 2017 13:39:03 +0530
Message-Id: <20171017080903.15719-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Print tests passed with errors and warnings when run with only specified
test file.

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 xlate-test.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/xlate-test.py b/xlate-test.py
index 43c4be19..b7a053f9 100755
--- a/xlate-test.py
+++ b/xlate-test.py
@@ -51,7 +51,7 @@ def run_test(name, payload):
                     result.append(magenta("exp: ") + expected)
                     result.append(magenta("res: ") + translation + "\n")
                     test_passed = False
-                elif args.all:
+                elif args.all or args.test:
                     result.append(green("Ok"))
                     result.append(magenta("src: ") + line.rstrip(" \n"))
                     result.append(magenta("res: ") + translation + "\n")
@@ -60,7 +60,7 @@ def run_test(name, payload):
                 result.append(red("Error: ") + "iptables-translate failure")
                 result.append(error.decode("utf-8"))
 
-    if not test_passed or args.all:
+    if args.all or args.test:
         print("\n".join(result))
 
 
-- 
2.11.0


