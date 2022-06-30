Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1474EBB
	for <outreachy@lists.linux.dev>; Thu, 30 Jun 2022 10:24:54 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id s1so26564802wra.9
        for <outreachy@lists.linux.dev>; Thu, 30 Jun 2022 03:24:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=l6AzkA8havxcJ97cev8Fn2QmW59hqm7h1z8/O75RMTU=;
        b=aoylw+Bm3d7bRynQXm1EtMpfdeC3Ct+tlDTFFxO9i2qmx573vK4ardA3U9kXEdcQET
         1sFm6BKkYBZwjRU/xFlfrScK6BBIJ0hYPo8E2gMIYjh7XPtJzFf3+/S+0a37sFw+/V6b
         qQFzBCNh01mzHMtxlwUPES3E5L9bND1WZtmrCpG038w+4ZD1lSsBxwz8jKkt+BrdwqfN
         HGnYehdN508RV+jJJt+Os77+bsQLKUceNEUdjNlJybNFpAV8E5BU4wIj6wxMtmjvsesE
         TDYKi7kGWznsxOxHTWRUTlaATFrdlkU4zwvRW+8HRZW/22rB8s1l7pmkVGONx5NUI7mv
         Y5xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=l6AzkA8havxcJ97cev8Fn2QmW59hqm7h1z8/O75RMTU=;
        b=voKuwEi+xdTbr4wr+sE6komCpFF1w2pwDI/fVU6r+bhWVgNfK2lbG1+7Zq0y7EKugI
         AGeOjTzDl1vyM11dTgNa2zy5kgOpPr3/B6p8pXYpV5b3tBhTYQ03VPEr1hyqJ3bYiOfa
         Jd0R4EqIxdxObJIDPkQTKVt4x0MZYu3BN6AWrcSJTqueLDqQjNQSMtNVuG1RqRr8HZ31
         kQXZMYRA3rd//ZNyEup6NSsB1QYZh7cispfGJXwfV/pjkLmjikcV05TIz9z605COOKwL
         DyghKbdrSWpSBCC/UITcpJ40CeiDSuo8gLP0ae0wU1WOhHrTm/dCiKgAxJbmjh2Zv82i
         uXRQ==
X-Gm-Message-State: AJIora8+K5pAr6i8EsBcnoDlfepTHUsbBMo3lUKDSCP61/YMUZUIO18G
	rPlKd4Hwkk+1+pYH3nFKhUEG7xY1DbPJGw==
X-Google-Smtp-Source: AGRyM1sjWvYm+qQ4BW2cd3W6CjjSosbZ8CrO2mQYHT8N8FG4tQSn/tZEdcqpOsHusA0PlUD+TEqBiQ==
X-Received: by 2002:a5d:48ce:0:b0:21b:9f34:f297 with SMTP id p14-20020a5d48ce000000b0021b9f34f297mr7654918wrs.351.1656584693134;
        Thu, 30 Jun 2022 03:24:53 -0700 (PDT)
Received: from localhost.localdomain ([41.232.197.17])
        by smtp.gmail.com with ESMTPSA id g1-20020adffc81000000b00213ba3384aesm19536954wrr.35.2022.06.30.03.24.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 03:24:52 -0700 (PDT)
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
To: netdev@vger.kernel.org
Cc: outreachy@lists.linux.dev,
	roopa@nvidia.com,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	linux-kselftest@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	eng.alaamohamedsoliman.am@gmail.com
Subject: [PATCH net-next v3] selftests: net: fib_rule_tests: fix support for running individual tests
Date: Thu, 30 Jun 2022 12:24:49 +0200
Message-Id: <20220630102449.9539-1-eng.alaamohamedsoliman.am@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

parsing and usage of -t got missed in the previous patch.
this patch fixes it

Fixes: 816cda9ae531 ("selftests: net: fib_rule_tests: add support to
select a test to run")
Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
---
changes in v2:
	edit commit subject and message.
---
changes in v3:
	add Fixes tag
---
 tools/testing/selftests/net/fib_rule_tests.sh | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/tools/testing/selftests/net/fib_rule_tests.sh b/tools/testing/selftests/net/fib_rule_tests.sh
index bbe3b379927a..c245476fa29d 100755
--- a/tools/testing/selftests/net/fib_rule_tests.sh
+++ b/tools/testing/selftests/net/fib_rule_tests.sh
@@ -303,6 +303,29 @@ run_fibrule_tests()
 	log_section "IPv6 fib rule"
 	fib_rule6_test
 }
+################################################################################
+# usage
+
+usage()
+{
+	cat <<EOF
+usage: ${0##*/} OPTS
+
+        -t <test>   Test(s) to run (default: all)
+                    (options: $TESTS)
+EOF
+}
+
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
 
 if [ "$(id -u)" -ne 0 ];then
 	echo "SKIP: Need root privileges"
-- 
2.25.1

