X-GM-THRID: 6479716556024578048
X-Received: by 10.98.7.80 with SMTP id b77mr2601770pfd.30.1508676576495;
        Sun, 22 Oct 2017 05:49:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.74.196 with SMTP id c4ls3599406pgu.28.gmail; Sun, 22 Oct
 2017 05:49:35 -0700 (PDT)
X-Received: by 10.99.110.8 with SMTP id j8mr2507656pgc.35.1508676575455;
        Sun, 22 Oct 2017 05:49:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508676575; cv=none;
        d=google.com; s=arc-20160816;
        b=cTsVZp7SF+bXuNGN71AA+8RirR5YDv9G4KbX5+6BqstfxtQSgf7tnz//TYPQBX201q
         HjEETUHVH+o4Aebhe8BzUCFiCPZovgjTuPfj+vAsnWY38AiddFmIx2MJPGAMNsGqlkpQ
         1iRX078qEy3lm37IA1XP+2XOM3MU1d6ERJT1pC1YVTeWQJTvno+9GiWXthIVgxnvWa5M
         yAHiW3TSy9AuRbLbO7KX92p/wGxrKMd/D++EVCTVYs82tfXf/s5V4Kw+bM0vb0DXTqD/
         7BfnFRDwlecBy1vJLFWHUgRalBkT82DWzFtm8L7uoyqr5C25oppZaXhd07OFjHGpnl0R
         htaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=t2x7VsowZVPekQS5dsUO9j7TULka5vunDGHcgX/8Chs=;
        b=f56W1DxnKzyXzXNMOxlfqpvvZSDUtyUlba++Z0Deb56K0dTmPKu42mu7APjgw5Pxm9
         s7bf7iEyV7gDYAra7M2zW20KaqlVagSOjW789OK0F+c4Xd7mENSa/+ni6Pl92ebiyICO
         C0NJTHA8dANEwESrr7gUxRCv2fR8yFppyxGct61dzu2Rj/UGf8caQXHe9CTroBBK15h9
         QbkQCkQdrBFD8G01gqwTVanuM6wxJvS5r/njNgsSZgJRfRommvs/fk7HXkNIGx/MbQch
         2+l6NXyBpNlMUKWqeSpRqIkb5i6hRH83eBjIXeI3jbAl14gjLDoATs8PC72qG+n53sCd
         nybg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XU9xvqoK;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id l10si242197pgp.3.2017.10.22.05.49.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Oct 2017 05:49:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XU9xvqoK;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id b6so15184829pfh.7
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Oct 2017 05:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=t2x7VsowZVPekQS5dsUO9j7TULka5vunDGHcgX/8Chs=;
        b=XU9xvqoKIItihMMcnqV1YyT9tUMyeMK0blvby9KlVmRga8TzvpXuIgQIQIFFgNWPOI
         uncPJTeCify6odm/2YtNUuTYoXN59xA2VIOP8f7NtPZDGGXCHcEPpErUQQexepL6v7+u
         G1bWN3fLD+hEjFWAVNYrz+DXoulkjQf8ln9+UlN/XmpN8EY4ppFVAM9IyoXFqJHHCfsA
         FNnLKXIvzW9JcpX8kyHNDJgNa8O13DStE5DXsrH9z5X67X8TMxy3mR7cYx3nuaqxYdym
         Ra3siWd+0jR/FYjDh6DKiADemWh9ANVl0XfFQamUrZPMMeTeHvZPnSujOn4vvdZ/mqhg
         ueCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=t2x7VsowZVPekQS5dsUO9j7TULka5vunDGHcgX/8Chs=;
        b=cFOkSruWq6S+Fc8xim6IASLZDor8Wq7rbrtxFKGE+l2PYKEY8hHh5O829KLDrlJJ0D
         Rp0aETQiDjQULJHwijDNXamIxBEfF59ZzrsHuB1jCQ4A/DeAPu4lQrwbChtXJh5AsuSw
         S0TYY+ba8ZIHcHLfkVtTPF5ckefjvQvB3wUmstAHCgPgIY+eZLKoJ+EVWFfYL55k4L9p
         OeCdyihGuuUyBy7ANIbBenZCcH2V3K0mW6anOT7h4SBjiFBZj8SSbETDh/oG7nnqZuSo
         dosDUcsPa1bpL/Bgq5Dixf1wCG+vzWDyMohYVZNnSuERodwHDpC87lEiI1XyP5f+d6Dk
         NNOA==
X-Gm-Message-State: AMCzsaUL8f4Sc4ja0EPwoAJBuz1Qz7KpqiAT3xSMl4BDb7gVpDjwG+ub
	Huk2rjRWIYQn2RntWMWiMNc=
X-Google-Smtp-Source: ABhQp+TUjDx03dA6gVwEdbyzIGg89NNwaSYj1jhnFylxKtYBqSn1fLcEKyeeERmKTyt/63vADA2Hhg==
X-Received: by 10.99.170.66 with SMTP id x2mr9406800pgo.117.1508676575140;
        Sun, 22 Oct 2017 05:49:35 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id x9sm8938906pfk.120.2017.10.22.05.49.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Oct 2017 05:49:34 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v3] tests: xlate: print output in same way as nft-test.py
Date: Sun, 22 Oct 2017 18:19:09 +0530
Message-Id: <20171022124909.597-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Print errors and total no. of tests, tests passed, failed and errors for
testfile argument
Remove option "--all"
Print file names for which all tests are passed with OK
For e.g -
sudo ./xlate-test.py
generic.txlate: OK
libip6t_DNAT.txlate: OK
...
libxt_TCPMSS.txlate: Fail
src: iptables-translate -A FORWARD -p tcp --tcp-flags SYN,RST SYN -j
TCPMSS --clamp-mss-to-pmtu
exp: nft add rule ip filter FORWARD tcp flags & (syn|rst) == syn counter
tcp option maxseg size set rt mtu
res: nft # -A FORWARD -p tcp --tcp-flags SYN,RST SYN -j TCPMSS
--clamp-mss-to-pmtu
...
libxt_connlabel.txlate: Error: iptables-translate failure
iptables-translate v1.6.1: Couldn't load match `connlabel':No such file
or directory
...
64 test files, 246 tests, 242 tests passed, 2 tests failed, 2 errors

sudo ./xlate-test.py extensions/libxt_iprange.txlate
1 test file, 5 tests, 5 tests passed, 0 tests failed, 0 errors

sudo ./xlate-test.py extensions/libxt_connlabel.txlate
extensions/libxt_connlabel.txlate: Error: iptables-translate failure
iptables-translate v1.6.1: Couldn't load match `connlabel':No such file
or directory
...
1 test file, 2 tests, 0 tests passed, 0 tests failed, 2 errors

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
Changes in v3:
 -Change subject and log message
 -Remove option "all" and other changes
Changes in v2:
 -Change log message
 -Remove changes from testfile argument

 xlate-test.py | 39 ++++++++++++++++++++++++++-------------
 1 file changed, 26 insertions(+), 13 deletions(-)

diff --git a/xlate-test.py b/xlate-test.py
index 43c4be19..53b035c7 100755
--- a/xlate-test.py
+++ b/xlate-test.py
@@ -9,7 +9,6 @@ from subprocess import Popen, PIPE
 
 keywords = ("iptables-translate", "ip6tables-translate")
 
-
 if sys.stdout.isatty():
     colors = {"magenta": "\033[95m", "green": "\033[92m", "yellow": "\033[93m",
               "red": "\033[91m", "end": "\033[0m"}
@@ -35,41 +34,56 @@ def green(string):
 
 def run_test(name, payload):
     test_passed = True
+    tests = passed = failed = errors = 0
     result = []
-    result.append(yellow("## " + name.replace(".txlate", "")))
 
     for line in payload:
         if line.startswith(keywords):
+            tests += 1
             process = Popen(shlex.split(line), stdout=PIPE, stderr=PIPE)
             (output, error) = process.communicate()
             if process.returncode == 0:
                 translation = output.decode("utf-8").rstrip(" \n")
                 expected = next(payload).rstrip(" \n")
                 if translation != expected:
-                    result.append(red("Fail"))
+                    test_passed = False
+                    failed += 1
+                    result.append(name + ": " + red("Fail"))
                     result.append(magenta("src: ") + line.rstrip(" \n"))
                     result.append(magenta("exp: ") + expected)
                     result.append(magenta("res: ") + translation + "\n")
                     test_passed = False
-                elif args.all:
-                    result.append(green("Ok"))
-                    result.append(magenta("src: ") + line.rstrip(" \n"))
-                    result.append(magenta("res: ") + translation + "\n")
+                else:
+                    passed += 1
             else:
                 test_passed = False
-                result.append(red("Error: ") + "iptables-translate failure")
+                errors += 1
+                result.append(name + ": " + red("Error: ") + "iptables-translate failure")
                 result.append(error.decode("utf-8"))
-
-    if not test_passed or args.all:
+    if (passed == tests) and not args.test:
+        print(name + ": " + green("OK"))
+    if not test_passed:
         print("\n".join(result))
+    if args.test:
+        print("1 test file, %d tests, %d tests passed, %d tests failed, %d errors" % (tests, passed, failed, errors))
+    else:
+        return tests, passed, failed, errors
 
 
 def load_test_files():
+    test_files = total_tests = total_passed = total_error = total_failed = 0
     for test in sorted(os.listdir("extensions")):
         if test.endswith(".txlate"):
             with open("extensions/" + test, "r") as payload:
-                run_test(test, payload)
+                tests, passed, failed, errors = run_test(test, payload)
+                test_files += 1
+                total_tests += tests
+                total_passed += passed
+                total_failed += failed
+                total_error += errors
+
 
+    print("%d test files, %d tests, %d tests passed, %d tests failed, %d errors" % (test_files, total_tests, total_passed, total_failed, total_error))
 
 def main():
     if os.getuid() != 0:
@@ -78,7 +92,7 @@ def main():
         if not args.test.endswith(".txlate"):
             args.test += ".txlate"
         try:
-            with open("extensions/" + args.test, "r") as payload:
+            with open(args.test, "r") as payload:
                 run_test(args.test, payload)
         except IOError:
             print(red("Error: ") + "test file does not exist")
@@ -87,7 +101,6 @@ def main():
 
 
 parser = argparse.ArgumentParser()
-parser.add_argument("--all", action="store_true", help="show also passed tests")
 parser.add_argument("test", nargs="?", help="run only the specified test file")
 args = parser.parse_args()
 main()
-- 
2.11.0


