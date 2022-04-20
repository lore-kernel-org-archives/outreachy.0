Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1967A
	for <outreachy@lists.linux.dev>; Wed, 20 Apr 2022 04:46:52 +0000 (UTC)
Received: by mail-qk1-f182.google.com with SMTP id b68so473457qkc.4
        for <outreachy@lists.linux.dev>; Tue, 19 Apr 2022 21:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:subject:message-id:mime-version:content-disposition;
        bh=1ylqEqxzb9r+YeMoJNAalBpdnk8Al8y9yQpbE6jYWN8=;
        b=ePQtUR0CT/pXx6sb2HBbfZFx3TyruHPu1U/fHrtcjobRnqdpSw9NZYm7B0uhmGJJZp
         IM4T0mFJwQxroQgOl55UY+rnSD71PJPd54SFICQe0uDW2E2MtGigv3agCYkGDJZgOTsN
         wugqfPLu0axe1YENOfrYtUzxGV0HJjTTZpWDpQ85/VdwM0RcMJ0x+WiP+LH4Z5zM3GPu
         kytAFF9wq9wdhYAulcnFv24lsrLqEBxuk/cvDzTUXZp6IvAP50YlG+rXtFwUD2EU26S9
         kiyeFeyF1GXs1G7GVxAD4eSapPJx1Q45QwRi+KO/H/zh3nWERgX6/iOW0iDQEPp7fO8p
         G86Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition;
        bh=1ylqEqxzb9r+YeMoJNAalBpdnk8Al8y9yQpbE6jYWN8=;
        b=M79C2sl9qlcZeOh3m+KwDaKuxr/K1tbNkZo0E4WjwssB4yf10GIC+t+3XDPmqu+uYr
         gS1S9ZGBqJExoXwDTULd5J/fp1WT0/gLDLXwBSJAYleBr3n2ydMfNWHZVVvrgzcs9bcb
         5HAEhgvEEM2WKS6asXzcj3iF3ntH6jKRwCrB/iChqh5vZgh98sQXM3eLbzbkyKU/TTTG
         0WQ8EX9QT/uEzZWzHhMHCxRcppk7PRaSjmCsyg8DXDD8m2768MClJK42qVftri6cxCcp
         XWTnd63jdo6pm4C0TKPEvX1Zh2xVB2eIwxR3365YoacfNlldZNC7cgdLCkgNd/h9VGtM
         QrHA==
X-Gm-Message-State: AOAM532Uc+ql21k7U6KaEtX+zoAYgpj0yH8ViUZKHbhsQQ547MSz+c/0
	qa2KPh5JiEIyK1HmGy4TsmmA9i+QCOY5W1c/
X-Google-Smtp-Source: ABdhPJwBdEI+HlfQ3U4jcPWiC4cWilA2sEUfPfvPJFZ44Qb6cJ/Q5f6ItzIb8ocTORISD7hybvhY5g==
X-Received: by 2002:a05:620a:6ce:b0:69c:c0b4:ed2b with SMTP id 14-20020a05620a06ce00b0069cc0b4ed2bmr11647512qky.718.1650430011072;
        Tue, 19 Apr 2022 21:46:51 -0700 (PDT)
Received: from jaehee-ThinkPad-X1-Extreme ([2607:fb90:50e7:2813:787e:11ec:44cf:aee6])
        by smtp.gmail.com with ESMTPSA id c10-20020ac87dca000000b002f2067229bcsm1184223qte.77.2022.04.19.21.46.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 21:46:50 -0700 (PDT)
Date: Wed, 20 Apr 2022 00:46:47 -0400
From: Jaehee Park <jhpark1013@gmail.com>
To: outreachy@lists.linux.dev, Julia Denham <jdenham@redhat.com>,
	Roopa Prabhu <roopa.prabhu@gmail.com>,
	Stefano Brivio <sbrivio@redhat.com>, netdev@vger.kernel.org,
	jhpark1013@gmail.com
Subject: [PATCH] [net-next] selftests: net: vrf_strict_mode_test: add support
 to select a test to run
Message-ID: <20220420044647.GA1288137@jaehee-ThinkPad-X1-Extreme>
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

