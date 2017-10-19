X-GM-THRID: 6478258108976070656
X-Received: by 10.101.81.8 with SMTP id f8mr223801pgq.141.1508416838678;
        Thu, 19 Oct 2017 05:40:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.248.133 with SMTP id q5ls2015568pll.7.gmail; Thu, 19 Oct
 2017 05:40:37 -0700 (PDT)
X-Received: by 10.84.133.164 with SMTP id f33mr253308plf.33.1508416837737;
        Thu, 19 Oct 2017 05:40:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508416837; cv=none;
        d=google.com; s=arc-20160816;
        b=ie2Us++R3CevW9ZL/rHe7Erj2ZKPVrNrpHfjqYDtGii7Vnrirn6fRJQxMYGFbCuK0X
         bMq66mh6DVLRwMeJgqBT+cRZ8NGN2LVzTKKs7NQl6nlW6J5/bw1d4C9BD82E4YYn8pdF
         8SIzOYX8zcNAxpJ8VnckR8c3mC7iozkBS+erdhKH97e5JBLCdBACKLHHAuaoLMC3KpR0
         kCrvjyqhQPKiqNLRpJ4diwBJ/aMcZp2WSRI+t/xKziDfVEs1Cwrc+kGRKjaAHHWzfRSE
         vH1Wb1jlAAb7/znPyQTTFxkXlmAc1uInCgRC3qFn7aSMyBsiiv3sxtAF5++sWuGGN+VL
         pwcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=yWKXbi19bGOwfoYg47fPUmKN8LSj1NOUz+iR9ai2i5c=;
        b=J9nwEUCbuMnX2ZfowjRrwpvALymZ/vDtj8vl6Gnu04hpHu9MUCbGUUm/UXUeS16DSS
         lEtTksdS3T1FpRl72rRWdl3oz2fknNX2NS2lDz2HuBJkuCMpMOk8WP2kBX/F+g2jvLFF
         kAsxGa8t+M9n516PuUZevFZamQR9GU0Ex0DPU8JRMhzehXQW90teyIp7mes56d2I2jhN
         XkJtK2HT3Fk1qTwDohJnYa2g9kvxw68DKyAh81JZITORDMTk9J9Zlm28iLANASxeeQFG
         Z5Q9AkIV8eysyqB4EFg0mNM8fUU3A+vmFNE/xKSKrqBKpUpAllBy4jcDvfnrKOoxT07r
         WaOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IrISxAm6;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id l10si704479pgp.3.2017.10.19.05.40.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Oct 2017 05:40:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IrISxAm6;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id b6so6506504pfh.7
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Oct 2017 05:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=yWKXbi19bGOwfoYg47fPUmKN8LSj1NOUz+iR9ai2i5c=;
        b=IrISxAm6hnI95w3a9onorAKax3BceRGbAqkXZl0QCgJU+TvnSozrEZIPsblrGV2ssm
         BpeVtk/i1PKhQhU0Hp6wP/A6+nAxdxXcKjWMBipxN/7z5/AF0wq/xo9dZySXW8wBROLW
         UFdwLOoRiHvdQ1bzAl2ZRxDhiNpFOGwuNGEPLV39LVNpRQiFWMgHPhKu6sdVE4qGhBu2
         z8Ja2426vfZxUNHaE91+WLgZ0rQRfw+UF/i/FqDOYfOP+RgtGyRDZsTRIutmYbLzTepT
         F+94t5jDsAeDFLJTSOnqF8o322uyHjU8BJAaLyDsXy9YKaKwgU5Px/NML8CwVAK19gPa
         hrCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=yWKXbi19bGOwfoYg47fPUmKN8LSj1NOUz+iR9ai2i5c=;
        b=R70h7UsSGqcMP9iqnlfdOqZwhHwEyoSGcvA/OlmAnfDPwJWEHxSIqUdlvOh/1bVWif
         nds5WbRO/yKAttLNDkBfiw4X4YvVPaAIofnNLJbqyw+vBkdPm5R3FZfGAQofuU8Iwy/T
         f1BukiMPK3ZQAtEcpp1AyIDe3PXU7i/VROlCkcm7mZSDKgLWK4jd00gbvysp+hmLK89c
         7A0EG3KoyEi/gBIMNfSdpQAQPYW7D6Yt54wpeSl4g0fln4EONkkcMu0SVmU9vnYeHVeS
         95EBJVNnHBMbGcOmhTRZU2vSpZPQebx/N+iXukV+i7skCbvlTWEDI1O9DOflfju25RDi
         Vmgg==
X-Gm-Message-State: AMCzsaWErjUtOPkaQXo2x2++ysVn3dxd/20690pdWtwtFFVLVcURHBXZ
	6wdgWB7QZTaEW62qzs7Q5SQ=
X-Google-Smtp-Source: ABhQp+T9P1XbukmH7eh/IrNxuIXr9BQce07s7emR9NErxYIbhqjh8cA603WPUBEvH7Q4qtMZMSWkUA==
X-Received: by 10.99.95.76 with SMTP id t73mr1282931pgb.57.1508416837465;
        Thu, 19 Oct 2017 05:40:37 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([2405:205:1288:bb17:dde6:a96:5704:3108])
        by smtp.gmail.com with ESMTPSA id h1sm22327688pgp.37.2017.10.19.05.40.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Oct 2017 05:40:37 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v2] tests: xlate: print total no. of testfiles, tests and tests passed
Date: Thu, 19 Oct 2017 18:10:02 +0530
Message-Id: <20171019124002.11066-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Print errors and total no of tests and tests passed for testfile argument.
Print total no. of testfiles, total no. of tests and total no. of tests
passed for "all" argument.
For e.g. :
sudo ./xlate-test.py --all (adds this line in end with whole output)
64 test file, 246 tests, 242 tests passed

sudo ./xlate-test.py libxt_ipcomp.txlate
1 test file, 2 tests, 2 tests passed

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
Changes in v2:
 -Change log message 
 -Remove changes for testfile argument

 xlate-test.py | 22 +++++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/xlate-test.py b/xlate-test.py
index 43c4be19..97b3a903 100755
--- a/xlate-test.py
+++ b/xlate-test.py
@@ -9,7 +9,6 @@ from subprocess import Popen, PIPE
 
 keywords = ("iptables-translate", "ip6tables-translate")
 
-
 if sys.stdout.isatty():
     colors = {"magenta": "\033[95m", "green": "\033[92m", "yellow": "\033[93m",
               "red": "\033[91m", "end": "\033[0m"}
@@ -35,11 +34,14 @@ def green(string):
 
 def run_test(name, payload):
     test_passed = True
+    tests = 0
+    passed = 0
     result = []
     result.append(yellow("## " + name.replace(".txlate", "")))
 
     for line in payload:
         if line.startswith(keywords):
+            tests += 1
             process = Popen(shlex.split(line), stdout=PIPE, stderr=PIPE)
             (output, error) = process.communicate()
             if process.returncode == 0:
@@ -52,9 +54,12 @@ def run_test(name, payload):
                     result.append(magenta("res: ") + translation + "\n")
                     test_passed = False
                 elif args.all:
+                    passed += 1
                     result.append(green("Ok"))
                     result.append(magenta("src: ") + line.rstrip(" \n"))
                     result.append(magenta("res: ") + translation + "\n")
+                elif args.test:
+                    passed += 1
             else:
                 test_passed = False
                 result.append(red("Error: ") + "iptables-translate failure")
@@ -62,14 +67,25 @@ def run_test(name, payload):
 
     if not test_passed or args.all:
         print("\n".join(result))
+    if args.test:
+        print("1 test file, %d tests, %d tests passed" % (tests, passed))
+    else:
+        return tests, passed
 
 
 def load_test_files():
+    test_files = 0
+    total_tests = 0
+    total_passed = 0
     for test in sorted(os.listdir("extensions")):
         if test.endswith(".txlate"):
             with open("extensions/" + test, "r") as payload:
-                run_test(test, payload)
-
+                tests, passed = run_test(test, payload)
+                test_files += 1
+                total_tests += tests
+                total_passed += passed
+    if args.all:
+        print("%d test file, %d tests, %d tests passed" % (test_files, total_tests, total_passed))
 
 def main():
     if os.getuid() != 0:
-- 
2.11.0


