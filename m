Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DCD7E
	for <outreachy@lists.linux.dev>; Wed,  1 Jun 2022 17:43:44 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id r123-20020a1c2b81000000b0039c1439c33cso1486716wmr.5
        for <outreachy@lists.linux.dev>; Wed, 01 Jun 2022 10:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7cbknEZGUGD2cxU937ieJPI9qyLodJRcbX0FPdvitY4=;
        b=ifBZEtRLIZDgnjgCirPIRbDpD4+2k0ji6YiTOqqGf3vyBHkTGgWU2FrXcQ65T2Nv6E
         LY/qQy0xpRocxt2MjbXIYNEzJ5ZIbgr8eTQtVAtSoW0BMfJq0KRJGhn615hQkdbri0zQ
         J4oMNV2moa3q/9jdiTR/9qVYAwv34VDvnA+b7Nb0aYmKo41fEnWhToQzLiAG3RAG8Jo5
         2VA9+UXbujviKWjeHig9tJohVjITD6sctW6AlJ/tglBmib/ME5dB1G7nHe4FYASNaTOo
         OCCI2o7RMJeTcCEgRKYNnNhJKsKpHmpDmIZnH8q8UkySlK0gc8Mbf4q2rkJpPrWkXmIi
         ZnfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7cbknEZGUGD2cxU937ieJPI9qyLodJRcbX0FPdvitY4=;
        b=Bjo2VMpgtY4bZJQ0M+ND6UxQGwo1z2Tmg0XklDxgRcRcQRdOa5n+dLF4o17YJ6EAul
         /vA0MQmRLfLCK/n9q9kOtGCLq1ayio7ZDBFbyP593Tm9XToanGSTX2umhJviPnl3pU77
         fq1OFgbsGscHKknF06kPAKG4Lk+5ZKv+vAsdRRCfTmTBMD9J9vV6li5Z+i4DLqBXlZwS
         s5quONv3C09Wcy6iNSLE8lOs2XSqspeUyUswbRX9PHJU/tT9KAQtuJuyY8hoSSTECiyB
         60hGOR5MahC1duYeS3KiJ2R2U8rKwayF8ulLPiqxjB760yvjY23zx0yN1iTNebLGcH1U
         tdbw==
X-Gm-Message-State: AOAM531WitCpvToGUSVmqUTdGYR8tnf/ZNqAAzh2VJteUZc6zptHTUwm
	e5MyWANP65hL1bgjzGCFwsM=
X-Google-Smtp-Source: ABdhPJwLxV/v4JoM4W2W2dE7sIidkESeRh7JcIp8hPqVguQXHIYFoQQsNd4zVoXzYP27YjKcYKfeGw==
X-Received: by 2002:a05:600c:1f0e:b0:397:707f:5a60 with SMTP id bd14-20020a05600c1f0e00b00397707f5a60mr463432wmb.3.1654105422243;
        Wed, 01 Jun 2022 10:43:42 -0700 (PDT)
Received: from localhost.localdomain ([197.57.182.33])
        by smtp.gmail.com with ESMTPSA id az29-20020a05600c601d00b00398d2f6b5d8sm2940824wmb.4.2022.06.01.10.43.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jun 2022 10:43:41 -0700 (PDT)
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
Subject: [PATCH net-next v2] selftests: net: fib_rule_tests: fix support for running individual tests
Date: Wed,  1 Jun 2022 19:43:16 +0200
Message-Id: <20220601174316.4278-1-eng.alaamohamedsoliman.am@gmail.com>
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

Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
---
changes in v2:
	edit commit subject and message.
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

