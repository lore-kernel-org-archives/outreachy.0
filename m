Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481061851
	for <outreachy@lists.linux.dev>; Fri, 29 Apr 2022 16:47:05 +0000 (UTC)
Received: by mail-qt1-f169.google.com with SMTP id hh4so6182679qtb.10
        for <outreachy@lists.linux.dev>; Fri, 29 Apr 2022 09:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=OPG/WbHsbgFOvJv9xt9caXn7O/pNdDi/DPsrTup3DFM=;
        b=brL8y9jop/WYMfEouoEj+LxFNMQnJCRO/RUJObX2EAvBJEMbCUk0C8gJamJTAe6SDD
         xlYOQeyl7vgKycsN31pjj/IIdSoCfHvvFQLUTo28vs887mn+oD+rKevgBlqxAz3yP4bc
         CwEIaHFo8oWyzjjkYFsLWKE3wqiTd4KtHgLxcRQf9ghOTpTtg3rhu2jryQyAYvi3pdXQ
         btGYxnTdNopYDORIBsOnZ63nLMHTmCtTjsrHKJ0C+uY0zWPrgwKI6pvMHUe0TyPTWUWW
         CgChtrg9YmWmWrRrnFc5F1I1VesPY4Vu0sMpa1C/y+APNxAYhwNXVHDDBW8zGd11HIDh
         scOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=OPG/WbHsbgFOvJv9xt9caXn7O/pNdDi/DPsrTup3DFM=;
        b=b1XHu8l7smx50dcnZwBMblT6GZLNijNxS88iVrWTTD0l456MtyQo5Fh3WjsP0UsTKH
         LyGAHJCVJj8oCZeip865R9poxO+B5ashel/dwFN8luwBeVmVQrCwfZVAG7HYrxkt++rU
         WeXCYmELS0pkHihNUw50u6WT0d59Md+pLOQIvyzxLXE2qRGTl7WjySJHQ33d6junNC3+
         VGTF5cEgblD1i5XInztOdnepQHIgPNBPTwecDbLJNLu9tisU7zkc5wnHL3izCYGwNwk3
         AeMRi2f5AvEUpDzrQ1e/YkIoLeaQns/v08KMN4h0faA8+UWNfQGk8DZIOao0MtAH34C2
         eGTw==
X-Gm-Message-State: AOAM531gV1eyGlA+lxI2SuHW5rabsCP3HzxFYR4AlLHNTblellYV/Imt
	eWxJvf9W51zzNvutg0hCFaY2fF+CxpqqtA==
X-Google-Smtp-Source: ABdhPJxDqQeFLdpL6vQvdxCjdLX5IN/UtpZKWf0g56XbJk3I0FDmG7NizU9Hk9gqtSyWeJpohvxMLQ==
X-Received: by 2002:ac8:5a10:0:b0:2f3:90c5:5f0c with SMTP id n16-20020ac85a10000000b002f390c55f0cmr254369qta.121.1651250823754;
        Fri, 29 Apr 2022 09:47:03 -0700 (PDT)
Received: from jaehee-ThinkPad-X1-Extreme ([4.34.18.218])
        by smtp.gmail.com with ESMTPSA id g187-20020a37b6c4000000b0069f840cb643sm1667921qkf.102.2022.04.29.09.47.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Apr 2022 09:47:02 -0700 (PDT)
Date: Fri, 29 Apr 2022 12:46:58 -0400
From: Jaehee Park <jhpark1013@gmail.com>
To: outreachy@lists.linux.dev, Julia Denham <jdenham@redhat.com>,
	Roopa Prabhu <roopa.prabhu@gmail.com>,
	Stefano Brivio <sbrivio@redhat.com>, netdev@vger.kernel.org,
	jhpark1013@gmail.com, Roopa Prabhu <roopa@nvidia.com>,
	David Ahern <dsahern@gmail.com>
Subject: [PATCH net-next v4] selftests: net: vrf_strict_mode_test: add
 support to select a test to run
Message-ID: <20220429164658.GA656707@jaehee-ThinkPad-X1-Extreme>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Add a boilerplate test loop to run all tests in
vrf_strict_mode_test.sh. Add a -t flag that allows a selected test to
run. Remove the vrf_strict_mode_tests function which is now unused.

Signed-off-by: Jaehee Park <jhpark1013@gmail.com>
---
v2 
- Add a -t flag that allows a selected test to
run.

v3 
- Add commented delineators to section the code for improved
readability.
- Move the log_section() call into the functions handling the tests.
- Remove unnecessary spaces.

v4 
- Remove unused function
- Edit the patch log to reflect this change.


 .../selftests/net/vrf_strict_mode_test.sh     | 48 +++++++++++++++----
 1 file changed, 39 insertions(+), 9 deletions(-)

diff --git a/tools/testing/selftests/net/vrf_strict_mode_test.sh b/tools/testing/selftests/net/vrf_strict_mode_test.sh
index 865d53c1781c..417d214264f3 100755
--- a/tools/testing/selftests/net/vrf_strict_mode_test.sh
+++ b/tools/testing/selftests/net/vrf_strict_mode_test.sh
@@ -14,6 +14,8 @@ INIT_NETNS_NAME="init"
 
 PAUSE_ON_FAIL=${PAUSE_ON_FAIL:=no}
 
+TESTS="init testns mix"
+
 log_test()
 {
 	local rc=$1
@@ -262,6 +264,8 @@ cleanup()
 
 vrf_strict_mode_tests_init()
 {
+	log_section "VRF strict_mode test on init network namespace"
+
 	vrf_strict_mode_check_support init
 
 	strict_mode_check_default init
@@ -292,6 +296,8 @@ vrf_strict_mode_tests_init()
 
 vrf_strict_mode_tests_testns()
 {
+	log_section "VRF strict_mode test on testns network namespace"
+
 	vrf_strict_mode_check_support testns
 
 	strict_mode_check_default testns
@@ -318,6 +324,8 @@ vrf_strict_mode_tests_testns()
 
 vrf_strict_mode_tests_mix()
 {
+	log_section "VRF strict_mode test mixing init and testns network namespaces"
+
 	read_strict_mode_compare_and_check init 1
 
 	read_strict_mode_compare_and_check testns 0
@@ -341,18 +349,30 @@ vrf_strict_mode_tests_mix()
 	read_strict_mode_compare_and_check testns 0
 }
 
-vrf_strict_mode_tests()
-{
-	log_section "VRF strict_mode test on init network namespace"
-	vrf_strict_mode_tests_init
+################################################################################
+# usage
 
-	log_section "VRF strict_mode test on testns network namespace"
-	vrf_strict_mode_tests_testns
+usage()
+{
+	cat <<EOF
+usage: ${0##*/} OPTS
 
-	log_section "VRF strict_mode test mixing init and testns network namespaces"
-	vrf_strict_mode_tests_mix
+	-t <test>	Test(s) to run (default: all)
+			(options: $TESTS)
+EOF
 }
 
+################################################################################
+# main
+
+while getopts ":t:h" opt; do
+	case $opt in
+		t) TESTS=$OPTARG;;
+		h) usage; exit 0;;
+		*) usage; exit 1;;
+	esac
+done
+
 vrf_strict_mode_check_support()
 {
 	local nsname=$1
@@ -391,7 +411,17 @@ fi
 cleanup &> /dev/null
 
 setup
-vrf_strict_mode_tests
+for t in $TESTS
+do
+	case $t in
+	vrf_strict_mode_tests_init|init) vrf_strict_mode_tests_init;;
+	vrf_strict_mode_tests_testns|testns) vrf_strict_mode_tests_testns;;
+	vrf_strict_mode_tests_mix|mix) vrf_strict_mode_tests_mix;;
+
+	help) echo "Test names: $TESTS"; exit 0;;
+
+	esac
+done
 cleanup
 
 print_log_test_results
-- 
2.25.1

