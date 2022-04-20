Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 844737A
	for <outreachy@lists.linux.dev>; Wed, 20 Apr 2022 04:55:17 +0000 (UTC)
Received: by mail-qt1-f172.google.com with SMTP id f14so275193qtq.1
        for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 21:55:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=1ylqEqxzb9r+YeMoJNAalBpdnk8Al8y9yQpbE6jYWN8=;
        b=Z/EMKqBjndW27c8d00KoK5XYXz0QVINpLblAgbn4V8X+934rHn4ZTLmYgD/dlk0O8V
         z76C21QhCIif3+3WtiENDgNQIPhYPZZD6lBl0vVLU5UNNcXxYJVhcpo9HUhjkWQYFnsQ
         fdMDDC4Suv56Q5GvwQAuE4O0o+s9hqEmJMKtO7zBAz0eb69Mf3ltEGqvzBf7OyGq0rf5
         BzM4Jp58YpHz+fshG999vOFzU31XM5TfUFrs5ntJiVux8Xt2124cNOzxiw8h80gn3aCN
         M3/JvFThPDeqDtxCXV4yurBDBmEkbxhKgqi5CmKbIGnhAdGonlVuXAOYbyK7tt6lKUr3
         BtMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=1ylqEqxzb9r+YeMoJNAalBpdnk8Al8y9yQpbE6jYWN8=;
        b=KDu+Tv+fA5hhti+kutQdp+MpRmsGK+rJaRWu+tckEHohWOuZpvt6PNLdcOczFFLrCm
         JqTkZWQSP3qa/QMYa9juQowyBo7uDYVmg0yK2Tq9J/YIi/9lLD/tyUsyfS+EO7Y/wA6j
         gcnY5d/KWsz4ZhVhchQi1BD1o0Yudmmc+ObnK0bd2NGFB81Px9oG8iWj+G7XTldPREYO
         YgYn5wzKLs/T+M+YargJI7NZw+e1zDshXAbkL2TqficeW891PPXqwZUWQt0TAAEQ0WiU
         gC5vJW9ygIwo6Vf+o/ITzGhUXNRPX9z7BWxxOqVVfgNvA84nMt2KMlXRWlxcgrSKAv53
         Sp5Q==
X-Gm-Message-State: AOAM530l2ZPcnJOLFoIEjotzpVgP0P+eyyjPGAksnEtXzxVfVoefi6yH
	Wq0iYbq2Ck7KGvCS+1W9wjC6eWP6UrdPzFIp
X-Google-Smtp-Source: ABdhPJwEWkBriThwlBbwY51TmenNIKzBixQ9gSvamRxmY+0KSaphW0h2fJjpCQtDjaAJOYOr+zL+nA==
X-Received: by 2002:a05:622a:13c6:b0:2e2:2778:2ea5 with SMTP id p6-20020a05622a13c600b002e227782ea5mr12636029qtk.512.1650430516173;
        Tue, 19 Apr 2022 21:55:16 -0700 (PDT)
Received: from jaehee-ThinkPad-X1-Extreme ([2607:fb90:50e7:2813:787e:11ec:44cf:aee6])
        by smtp.gmail.com with ESMTPSA id n81-20020a37a454000000b0069e66f8a905sm1014475qke.17.2022.04.19.21.55.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 21:55:15 -0700 (PDT)
Date: Wed, 20 Apr 2022 00:55:12 -0400
From: Jaehee Park <jhpark1013@gmail.com>
To: outreachy@lists.linux.dev, Julia Denham <jdenham@redhat.com>,
	Roopa Prabhu <roopa.prabhu@gmail.com>,
	Stefano Brivio <sbrivio@redhat.com>, netdev@vger.kernel.org,
	jhpark1013@gmail.com
Subject: [PATCH net-next] selftests: net: vrf_strict_mode_test: add support
 to select a test to run
Message-ID: <20220420045512.GA1289782@jaehee-ThinkPad-X1-Extreme>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Add a boilerplate test loop to run all tests in
vrf_strict_mode_test.sh.

Signed-off-by: Jaehee Park <jhpark1013@gmail.com>
---
 .../testing/selftests/net/vrf_strict_mode_test.sh  | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/tools/testing/selftests/net/vrf_strict_mode_test.sh b/tools/testing/selftests/net/vrf_strict_mode_test.sh
index 865d53c1781c..116ca43381b5 100755
--- a/tools/testing/selftests/net/vrf_strict_mode_test.sh
+++ b/tools/testing/selftests/net/vrf_strict_mode_test.sh
@@ -14,6 +14,8 @@ INIT_NETNS_NAME="init"
 
 PAUSE_ON_FAIL=${PAUSE_ON_FAIL:=no}
 
+TESTS="vrf_strict_mode_tests_init vrf_strict_mode_tests_testns vrf_strict_mode_tests_mix"
+
 log_test()
 {
 	local rc=$1
@@ -391,7 +393,17 @@ fi
 cleanup &> /dev/null
 
 setup
-vrf_strict_mode_tests
+for t in $TESTS
+do
+	case $t in
+	vrf_strict_mode_tests_init|vrf_strict_mode_init) vrf_strict_mode_tests_init;;
+	vrf_strict_mode_tests_testns|vrf_strict_mode_testns) vrf_strict_mode_tests_testns;;
+	vrf_strict_mode_tests_mix|vrf_strict_mode_mix) vrf_strict_mode_tests_mix;;
+
+	help) echo "Test names: $TESTS"; exit 0;;
+
+	esac
+done
 cleanup
 
 print_log_test_results
-- 
2.25.1

