X-GM-THRID: 6476131493902024704
X-Received: by 10.55.66.69 with SMTP id p66mr2883780qka.17.1507841864002;
        Thu, 12 Oct 2017 13:57:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.15.42 with SMTP id e39ls2487530qtk.2.gmail; Thu, 12 Oct
 2017 13:57:43 -0700 (PDT)
X-Received: by 10.55.103.82 with SMTP id b79mr3056263qkc.32.1507841863418;
        Thu, 12 Oct 2017 13:57:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507841863; cv=none;
        d=google.com; s=arc-20160816;
        b=q6fnv582lGhSNsEC/yQ9aL6BQXNyw3KZBxrGvZt90deD09vRbMRA8zj8vbBkB7KBPA
         YhQLjhaYDDo3WKD89Z3iQSduwqeLjH82IOTtJmCDyHkO8KHt0NrYKoMkJFUvbVc4p9iz
         d6Wp710ivN+eF4BSaIOOHe9YSXYScVd58zeAXFmjmRaDQgtFloKB7wiS0Lgi8bXqABy3
         nTzkO9mPLM3n95nu/9oFC1/GAAAKko1kR8TWZQYhwqlqxEaLPYWJyJ1cbBPemdkK2N7m
         YRLUocwHuVzqyQEsE9J5Qs3IrLdeSgj8aBJXRd7rcfWs/be82YXe6vjhY9IHQfCM9PAc
         PZUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=kCDl+yiK8RAfDDfM3Excl02tmpAeeCltFuwsLUC5MLk=;
        b=DdoNfsdEjhQFR/cBB/4r2MweXWwUXm87LzuGNIYFzxydKqHoYyK0MOHpaxOakoC9DN
         ouXxx55vBMaEGCS6+SRQJREg+nU7MUpM2nOrfr7nGvRYN2QwZE5/wVeZ34Ui2E5u6Lz+
         GfVEKINlWU56ubxoEh/2Pn8NpVq4XspUhOc/bDyiwiTaipMhcRQMmjADSVaJ+Yir/wNf
         Z2e5HN6L2ons7JfER9KQGhJgOy+F9ttWF3mC3coOZ1WU5Y1VAF7iuezYUHFZIH8AtwoA
         y+qBd28CVtbDq1R+s9bIeeKTTz4LyyqXXTphXNOCSXGxTYlNb805PXO7O+hsrCJ8weMF
         jb3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nCvQCk5Y;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id v50si297659qta.0.2017.10.12.13.57.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 13:57:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nCvQCk5Y;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id m28so6595621pfi.11
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Oct 2017 13:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=kCDl+yiK8RAfDDfM3Excl02tmpAeeCltFuwsLUC5MLk=;
        b=nCvQCk5YAkHoBrOsL+d1mTtMBGbewa0avUQ1umaUUdgDU7D48GwvRMuhhdRhc6GVtD
         YJGVhnQA5lf0oi2vMH/LmOBiLcD/h2LHOevGsqLsv2GQqPkaxjGhhCovpxB3Z7beuhvw
         UuOJNMaZfiJhZBc6HrborYVkVTmskmt1J2GSnHuSAyUHPz9O8ibMfH4zcASILY8zs6d5
         rOWE7Vz0HrIl8UOXa3E/+vgIZacIYsxrhKhTYwxM+dnp76F4qcMv1HLQTn1r5XBIIt5j
         bC+Y2hlPNNgNXVtB0qCas7a19QpuzukrQ1Z0OhhFzOhdUc10AMui3Y6u6TmI21vS+mEp
         mSsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=kCDl+yiK8RAfDDfM3Excl02tmpAeeCltFuwsLUC5MLk=;
        b=kXPZ4pEYn+rOOub3lSMrdPZwF2zJhqz/tNzot9eMRi4wg6lrJIjYFwceUak1svD1Qh
         tktQ9bmeKRcCeFqwAZujR0iKAFpazPtSGoLOczIFg+a2KYIhGNoQPOkvoNaRcw4NMqwQ
         tapRzhFMxhnRglksF75E3SNneKSQlxDwyihS6DG6PzNuix5kL3iTL+2hCMgI++C1Llzk
         R/v1uemQsrYk/ttqM+6ekCVOUuQsxqvbOUbZD8BHajHvAgH8Jld2Y1f13X81Ndcu8gC6
         3Z2E1KsZLiRyKbRPDAeIvQetNqj2StIUaYCcjWTRPB4QpmY33VakZKSF6Uvd+5CnC+g9
         5EZg==
X-Gm-Message-State: AMCzsaV9Vuyve1okg0vrhGNDurlw4ODJgL69Xq5ztbt3ODffD0twLlRi
	ktS8rhqQLHZUnOHsKHxPO9w=
X-Google-Smtp-Source: AOwi7QAaCcfn1KtxkY+mR9Coi8As1tnMoEiAHaTiHTRGsruz6ruInO8OtMGt8US7ClyoykNS1Obsqg==
X-Received: by 10.99.127.20 with SMTP id a20mr1208187pgd.264.1507841863009;
        Thu, 12 Oct 2017 13:57:43 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id t8sm32111878pfh.116.2017.10.12.13.57.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Oct 2017 13:57:42 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] tests: py: Add option --all to nft-test.py
Date: Fri, 13 Oct 2017 02:25:13 +0530
Message-Id: <20171012205513.23216-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Add option --all to take all tests from files, place them in a temp
file and then run all tests in one go printing all errors and warnings.

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 tests/py/nft-test.py | 161 +++++++++++++++++++++++++++++++--------------------
 1 file changed, 97 insertions(+), 64 deletions(-)

diff --git a/tests/py/nft-test.py b/tests/py/nft-test.py
index 9ad9771..f2165ba 100755
--- a/tests/py/nft-test.py
+++ b/tests/py/nft-test.py
@@ -18,6 +18,7 @@ import os
 import subprocess
 import argparse
 import signal
+import glob
 
 NFT_BIN = os.getenv('NFT', "src/nft")
 TESTS_PATH = os.path.dirname(os.path.abspath(__file__))
@@ -157,27 +158,26 @@ def table_create(table, filename, lineno):
     if table_exist(table, filename, lineno):
         reason = "Table " + table.name + " already exists"
         print_error(reason, filename, lineno)
-        return -1
-
-    table_list.append(table)
+    else:
+        table_list.append(table)
 
-    # We add a new table
-    cmd = NFT_BIN + " add table " + table.family + " " + table.name
-    ret = execute_cmd(cmd, filename, lineno)
+        # We add a new table
+        cmd = NFT_BIN + " add table " + table.family + " " + table.name
+        ret = execute_cmd(cmd, filename, lineno)
 
-    if ret != 0:
-        reason = "Cannot add table " + table.name
-        print_error(reason, filename, lineno)
-        table_list.remove(table)
-        return -1
+        if ret != 0:
+            reason = "Cannot add table " + table.name
+            print_error(reason, filename, lineno)
+            table_list.remove(table)
+            return -1
 
-    # We check if table was added correctly.
-    if not table_exist(table, filename, lineno):
-        table_list.remove(table)
-        reason = "I have just added the table " + table.name + \
-                 " but it does not exist. Giving up!"
-        print_error(reason, filename, lineno)
-        return -1
+        # We check if table was added correctly.
+        if not table_exist(table, filename, lineno):
+            table_list.remove(table)
+            reason = "I have just added the table " + table.name + \
+                     " but it does not exist. Giving up!"
+            print_error(reason, filename, lineno)
+            return -1
 
     for table_chain in table.chains:
         chain = chain_get_by_name(table_chain)
@@ -201,21 +201,21 @@ def table_delete(table, filename=None, lineno=None):
         reason = "Table " + table.name + \
                  " does not exist but I added it before."
         print_error(reason, filename, lineno)
-        return -1
 
-    cmd = NFT_BIN + " delete table" + table_info
-    ret = execute_cmd(cmd, filename, lineno)
-    if ret != 0:
-        reason = cmd + ": " + "I cannot delete table '" + table.name + \
-                 "'. Giving up! "
-        print_error(reason, filename, lineno)
-        return -1
+    else:
+        cmd = NFT_BIN + " delete table" + table_info
+        ret = execute_cmd(cmd, filename, lineno)
+        if ret != 0:
+            reason = cmd + ": " + "I cannot delete table '" + table.name + \
+                     "'. Giving up! "
+            print_error(reason, filename, lineno)
+            return -1
 
-    if table_exist(table, filename, lineno):
-        reason = "I have just deleted the table " + table.name + \
-                 " but the table still exists."
-        print_error(reason, filename, lineno)
-        return -1
+        if table_exist(table, filename, lineno):
+            reason = "I have just deleted the table " + table.name + \
+                     " but the table still exists."
+            print_error(reason, filename, lineno)
+            return -1
 
     return 0
 
@@ -241,22 +241,22 @@ def chain_create(chain, table, filename):
         reason = "This chain '" + chain.name + "' exists in " + table.name + \
                  ". I cannot create two chains with same name."
         print_error(reason, filename, chain.lineno)
-        return -1
 
-    cmd = NFT_BIN + " add chain" + table_info + chain.name + \
+    else:
+        cmd = NFT_BIN + " add chain" + table_info + chain.name + \
           "\{ " + chain.config + "\; \}"
 
-    ret = execute_cmd(cmd, filename, chain.lineno)
-    if ret != 0:
-        reason = "I cannot create the chain '" + chain.name
-        print_error(reason, filename, chain.lineno)
-        return -1
+        ret = execute_cmd(cmd, filename, chain.lineno)
+        if ret != 0:
+            reason = "I cannot create the chain '" + chain.name
+            print_error(reason, filename, chain.lineno)
+            return -1
 
-    if not chain_exist(chain, table, filename):
-        reason = "I have added the chain '" + chain.name + \
-                 "' but it does not exist in " + table.name
-        print_error(reason, filename, chain.lineno)
-        return -1
+            if not chain_exist(chain, table, filename):
+                reason = "I have added the chain '" + chain.name + \
+                         "' but it does not exist in " + table.name
+                print_error(reason, filename, chain.lineno)
+                return -1
 
     return 0
 
@@ -271,27 +271,27 @@ def chain_delete(chain, table, filename=None, lineno=None):
         reason = "The chain " + chain.name + " does not exists in " + \
                  table.name + ". I cannot delete it."
         print_error(reason, filename, lineno)
-        return -1
 
-    cmd = NFT_BIN + " flush chain" + table_info + chain.name
-    ret = execute_cmd(cmd, filename, lineno)
-    if ret != 0:
-        reason = "I cannot flush this chain " + chain.name
-        print_error(reason, filename, lineno)
-        return -1
+    else:
+        cmd = NFT_BIN + " flush chain" + table_info + chain.name
+        ret = execute_cmd(cmd, filename, lineno)
+        if ret != 0:
+            reason = "I cannot flush this chain " + chain.name
+            print_error(reason, filename, lineno)
+            return -1
 
-    cmd = NFT_BIN + " delete chain" + table_info + chain.name
-    ret = execute_cmd(cmd, filename, lineno)
-    if ret != 0:
-        reason = cmd + "I cannot delete this chain. DD"
-        print_error(reason, filename, lineno)
-        return -1
+        cmd = NFT_BIN + " delete chain" + table_info + chain.name
+        ret = execute_cmd(cmd, filename, lineno)
+        if ret != 0:
+            reason = cmd + "I cannot delete this chain. DD"
+            print_error(reason, filename, lineno)
+            return -1
 
-    if chain_exist(chain, table, filename):
-        reason = "The chain " + chain.name + " exists in " + table.name + \
-                 ". I cannot delete this chain"
-        print_error(reason, filename, lineno)
-        return -1
+        if chain_exist(chain, table, filename):
+            reason = "The chain " + chain.name + " exists in " + table.name + \
+                     ". I cannot delete this chain"
+            print_error(reason, filename, lineno)
+            return -1
 
     return 0
 
@@ -949,14 +949,17 @@ def payload_find_expected(payload_log, rule):
     return payload_buffer
 
 
-def run_test_file(filename, force_all_family_option, specific_file):
+def run_test_file(filename, force_all_family_option, specific_file, filename_path = ''):
     '''
     Runs a test file
 
     :param filename: name of the file with the test rules
+    :param filename_path: if filename path is explicitly defined
     '''
-    filename_path = os.path.join(TESTS_PATH, filename)
+    if (filename_path == ""):
+        filename_path = os.path.join(TESTS_PATH, filename)
     f = open(filename_path)
+
     tests = passed = total_unit_run = total_warning = total_error = 0
 
     for lineno, line in enumerate(f):
@@ -974,6 +977,7 @@ def run_test_file(filename, force_all_family_option, specific_file):
             continue
 
         if line[0] == '*':  # Table
+
             table_line = line.rstrip()[1:]
             ret = table_process(table_line, filename, lineno)
             if ret != 0:
@@ -1102,12 +1106,18 @@ def main():
                         dest='force_all_family',
                         help='keep testing all families on error')
 
+    parser.add_argument('--all', action='store_true',
+                        dest='test_all_files',
+                        help='test all files in one go')
+
     args = parser.parse_args()
     global debug_option, need_fix_option
     debug_option = args.debug
     need_fix_option = args.need_fix_line
     force_all_family_option = args.force_all_family
+    test_all_files_option = args.test_all_files
     specific_file = False
+    filename_path = ""
 
     signal.signal(signal.SIGINT, signal_handler)
     signal.signal(signal.SIGTERM, signal_handler)
@@ -1136,6 +1146,27 @@ def main():
     if args.filename:
         file_list = [args.filename]
         specific_file = True
+    elif test_all_files_option:
+
+        with open('/tmp/newfile', 'wb') as tmp_test:
+            for directory in TESTS_DIRECTORY:
+                os.chdir(os.path.join(TESTS_PATH, directory))
+                for files in glob.glob("*.t"):
+                    with open(files) as tmp_tests:
+                        lines = tmp_tests.readlines()
+                        tmp_test.writelines(lines)
+        filename_path = '/tmp/newfile'
+        specific_file = True
+        file_list = ['/tmp/newfile']
+        with open('/tmp/newfile.payload', 'wb') as tmp_payload:
+            for directory in TESTS_DIRECTORY:
+                os.chdir(os.path.join(TESTS_PATH, directory))
+                for files in glob.glob("*.payload"):
+                    with open(files) as payloads:
+                        lines = payloads.readlines()
+                        tmp_payload.writelines(lines)
+
+
     else:
         for directory in TESTS_DIRECTORY:
             path = os.path.join(TESTS_PATH, directory)
@@ -1144,8 +1175,10 @@ def main():
                     if f.endswith(".t"):
                         file_list.append(os.path.join(directory, f))
 
+
+    os.chdir(TESTS_PATH + "/../..")
     for filename in file_list:
-        result = run_test_file(filename, force_all_family_option, specific_file)
+        result = run_test_file(filename, force_all_family_option, specific_file, filename_path)
         file_tests = result[0]
         file_passed = result[1]
         file_warnings = result[2]
-- 
2.11.0


