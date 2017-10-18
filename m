X-GM-THRID: 6478258108976070656
X-Received: by 10.176.5.35 with SMTP id 32mr8829881uax.14.1508337005477;
        Wed, 18 Oct 2017 07:30:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.168.147 with SMTP id r141ls926522vke.8.gmail; Wed, 18 Oct
 2017 07:30:04 -0700 (PDT)
X-Received: by 10.176.27.24 with SMTP id d24mr8800798uai.39.1508337004626;
        Wed, 18 Oct 2017 07:30:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508337004; cv=none;
        d=google.com; s=arc-20160816;
        b=Ehway2wW9mGZ9wVXYTTw14OE4Cs4EN9lmia82HsS7kpJSOJlV1B7CNWy5BJqCh5HZo
         HazxcLilY1Obg3sGHNBZgwpeQ9XHp+F8ggbA6zT5I2uUGAiAoE9pkGR/jvfbW37W1+kK
         atm6GKeS7vOu+3dr5EUP4+KOlEjP6rq4wAkd/CrRZIYu/k3KA4S9xsmfJgDr//fOSf9M
         OYkUjPo/Bb+0crCCN73PJql7izvLOgDHragGJkLS3QNksf7OC/lOHj28vftChn/zVNKB
         ZNoYiMl3uN5MPf5ExiVyttY8thNBYvyEt6y6l1g5KqZoCrd80sJqEz9A4srC2U+ClCUf
         jkvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=23YoxN10st4pVB+zDuHou0/3TwHghMlxDXcbzFV2dUI=;
        b=hkkDkJfc0T55LezlgwHMfS221O007RZ3N2Ll9LC2Nt7udkTpbcXbyGuFu+JsbN1hjH
         PYV+9uiIhxdW8h8YPKabSXnqU8MwXrkkYgRUTkukcPq4aPUkpnHo6pnabSlFcA4KTANA
         hAvgTWY5fOBj4jzPtyOIHTmF5rLiODTyRODeUYoT2ntsWdgRWWTKQ7UPoTRotNNGnDKX
         yu008WL3uCXYflQovZ/2lJAFCJuivtN3kZGCaXAlJGw77tNPmMLwnyKMkgI0yP7dXj/u
         wO34RyRD8l0qOH6qxb0QhY8CQ+JCC6AezCvTf/U9dfjGcGCzW9PUd5g7/jgc8CsuMPZy
         oFng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oCWKKGli;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id h54si866153uaa.4.2017.10.18.07.30.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 07:30:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oCWKKGli;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id e64so4081569pfk.9
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 07:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=23YoxN10st4pVB+zDuHou0/3TwHghMlxDXcbzFV2dUI=;
        b=oCWKKGliNhoCUyAULRJJ8lFO3cKi5b8lhe+YYammgUIQtJMem6g4rFw47HhzltZByF
         ks1kjcN37EwxxhZqDYIGy0Hbbph8xKqeW59mEAR/dJ0piMvfBHw2L9dPXb0FvBmzOCsC
         RKmzonxX4bk6+adoTO+cAdXWlHcRZECbmKD5wu1UH08VngL85E9qrqcYhWSvZfRs126+
         mbzLTTOsw2+kr4SEEeuVKoUG35dI9wFvo+XtBrWQ+w7NF2l1mK+exClENGAf7JjKuH8F
         EucpEV7iJbk10+yKE+QeQHKotz5marc00SwJfcONtoWSwc2GdXbtgkgaJ2/IQLc6nuXm
         994g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=23YoxN10st4pVB+zDuHou0/3TwHghMlxDXcbzFV2dUI=;
        b=UGLy+ofAIKKnSqmu1PHbiSCwfS1n5zNy4861QRtAxI+a2Rxh33IqqjrxozP+RMvQkf
         0Yj1CvqNeP550FCiVPgl6Mre607TqWJWYxAPhCS3EzP2JfxI042LwSmDVjXgS9C57fmj
         RoZ0tdgPEWj5APZq1ZAHYgf7O6X1p4N4B6Zr5csV/kzSngd1qw3mmQQfC6hTYB+F3rmD
         frGKelgoZX/+Lz2FiK+YWUEfvIvxNLrWxssPSjqY4I5n+vmic4bj3Qldu6MEsqbPYJHV
         aSSvrv5zctzeMynNjUBF7DepRrgI7vZEDhRDE774VwX2uYmP/KAkvXFCWVsslsFFVbN4
         dEYQ==
X-Gm-Message-State: AMCzsaX746XHVuGW/17rkxemSVsZxB1KfeEKJa4OmxqNI8kJ1VkG43pW
	UpBN/Vof5QkW2uTaZltHlpg=
X-Google-Smtp-Source: AOwi7QA706bVSwvzqtodNKeIUTU24+avK2GTcVV7JzYHQQtknoUi4KVR8n52gdcI68NtAiXZVNy9PA==
X-Received: by 10.101.72.65 with SMTP id i1mr13907817pgs.436.1508337003723;
        Wed, 18 Oct 2017 07:30:03 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([2405:205:1503:8771:4132:cc05:7b4:47e5])
        by smtp.gmail.com with ESMTPSA id h70sm26454888pfc.51.2017.10.18.07.29.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 07:30:03 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] tests: xlate: print total no. of testfiles, tests and tests passed
Date: Wed, 18 Oct 2017 19:59:44 +0530
Message-Id: <20171018142944.14872-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Print errors and total no of tests and tests passed for testfile argument.
Print total no. of testfiles, total no. of tests and total no. of tests
passed for "all" argument.
Change testfile argument to take "extensions/test_file" as argument.

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 xlate-test.py | 24 ++++++++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/xlate-test.py b/xlate-test.py
index 43c4be19..9927ac9c 100755
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
@@ -78,7 +94,7 @@ def main():
         if not args.test.endswith(".txlate"):
             args.test += ".txlate"
         try:
-            with open("extensions/" + args.test, "r") as payload:
+            with open(args.test, "r") as payload:
                 run_test(args.test, payload)
         except IOError:
             print(red("Error: ") + "test file does not exist")
-- 
2.11.0


