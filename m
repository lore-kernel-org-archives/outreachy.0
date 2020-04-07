X-GM-THRID: 6812856909283983360
X-Received: by 2002:a92:a103:: with SMTP id v3mr924102ili.194.1586241859241;
        Mon, 06 Apr 2020 23:44:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:dcca:: with SMTP id b10ls1314745ilr.9.gmail; Mon, 06 Apr
 2020 23:44:18 -0700 (PDT)
X-Google-Smtp-Source: APiQypIUBauyTThXoGdVsMu7PtBgz9pAcR0SjUtWYMN9Ps5BF3WY7sz+1ktYhQKFcZLuR4Q+iLN5
X-Received: by 2002:a92:d2c2:: with SMTP id w2mr942466ilg.167.1586241858100;
        Mon, 06 Apr 2020 23:44:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586241858; cv=none;
        d=google.com; s=arc-20160816;
        b=wH+8smUaRjO9dckQM/Zk8Iv58alHdNsnORGfGE5YgyFSyuSwHT4X1nfyhI+48lonaM
         EvSkrmdP4LzAA6H98RB5oXdQmDOyqdKxpW94gYZALgmfkmFeifYd514CQzoxseuMb5NR
         +Sr0pXR/gvO7n7kia/QsYIj2VFi2/s5yn3+siC+cBY5OAgoOllyQux2Lpit6jOZ/cU3N
         u2+02RSbH7ndAcjCiqYOdp+Lu2VIYZ3ZQtcxshxW7uh3zp8+vv/f81USPJvmXiatgwlI
         2VKv7k/haRWOKgXzmtFW4qVYTAfRdx4sAxPIemKX450HQrrfbfMQtCThKNCdmW7ozNZe
         CLEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=i/h1NMsMKg0rf92K19BoWY4w8ZLlPMnRXwIhYce3XwY=;
        b=Ial8S60Kj85uk9oocVGk824piJ0lqvlJnLOC2GQiPa1KXs3knqnQBWbm8FbkFyPz2q
         KnPqF5UfSC4Y75im4Rag7pA99t6sFr7ICuf256L/eNApcEDmPVa0vED8f3EAt8F1oZ+F
         K7qKGATKWO5i1LEQtd++FCY9JM56ZreKyA1TldpuDG50JHEbktLQ6uJRN3bgvz9kpMKz
         dKXN/2icW0HNrF7uKNjlxXbMwL8s/Lxze59q8wOqIriT+o91LwLU1Ki4JEzfI1084HDf
         bcLeDLNR2SDvo2yNcLxfPPdY8KhQv4VashaKhsnlAxcuKWa+11DYBTcilHWvnV/3wdnb
         JxhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F3IsRcMk;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id k88si151845ilg.1.2020.04.06.23.44.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 23:44:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F3IsRcMk;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1030.google.com with SMTP id fh8so329177pjb.5
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Apr 2020 23:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=i/h1NMsMKg0rf92K19BoWY4w8ZLlPMnRXwIhYce3XwY=;
        b=F3IsRcMkDuZY0jFkOBNxRXCoZTyaUkl3iwbC+6CaCHbV6wPlBaNw3E1igrPAcSb71T
         0N2GvLh4T58IaTD0Kgl+ck9a/IMTccOamflY4gOHaMtelq1G6elR6odZv1Z39wEF4lMX
         Y2TW/ghI7I7n0POoy5ZUXMi9MmHt8lDeO9CvCVFx5zkw37+nz5HUW5fQkM0Kr2FDpeYL
         7PIPWiAcWmjfwZCuqOZF2yR9DI+7bh6FsTPFt6ftF5M7+HK+sa9QN1LTaCtjtqfwEZzk
         dAUvOO2hxYPlhxymDo5YOkNB0AqG9AfwERa9ViuMDF1ZPC5ktro6Fj6+bYtjDdtyVr2X
         X8NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=i/h1NMsMKg0rf92K19BoWY4w8ZLlPMnRXwIhYce3XwY=;
        b=qifA8AsUPwNHsQ3gvN0KqqyuSifA+Lzt5YDZ24GNtVgtxEMsyb+/OnB7L/8WijV1XZ
         5viQQBUX5wDn6RTEDS+GRmwfliDUJYGwMXRxX6sKzL1lfmnaIeRdzgU38naCCd6bA825
         gL30LvrM3Z57tyFU1FkO9ZIWUFtsE9Yzzh8mJyKQgDL49oqkxSP4hx0WuwHEOXpA+Lob
         qmCn0MGmuQlZvTwnrNoVK8Wg763G7UjulxXeCuKLtcj3dU263rXpXzV9Sn0RRxKI5olq
         VXzARUmbNrlonT9ESblCWWz18jv/IR/O+lExcMWCRGoKpzjGR3IW/rsL7f3aNzO56ngb
         1DPQ==
X-Gm-Message-State: AGi0PuZRGcw2GIT6QamMYudOtsJ7Adcz+X6bowEZXrCEA+2CvQjIlxdV
	PACiizC4SvaODUYDIKhdQY8vmRiF
X-Received: by 2002:a17:90a:32c1:: with SMTP id l59mr1034504pjb.36.1586241857364;
        Mon, 06 Apr 2020 23:44:17 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id t4sm13219268pfb.156.2020.04.06.23.44.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Apr 2020 23:44:16 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: sbrivio@redhat.com,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [NOMERGE] net: selftests: Add xfrm encryption for vxlan
Date: Mon,  6 Apr 2020 23:44:13 -0700
Message-Id: <20200407064413.15480-1-briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Extend existing test by adding xfrm encryption on vxlan tunnel in
namespaces a and b.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---

 tools/testing/selftests/net/pmtu.sh | 31 ++++++++++++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)
 mode change 100755 => 100644 tools/testing/selftests/net/pmtu.sh

diff --git a/tools/testing/selftests/net/pmtu.sh b/tools/testing/selftests/net/pmtu.sh
old mode 100755
new mode 100644
index 71a62e7e35b1..824823470bc2
--- a/tools/testing/selftests/net/pmtu.sh
+++ b/tools/testing/selftests/net/pmtu.sh
@@ -122,6 +122,7 @@
 
 
 # Kselftest framework requirement - SKIP code is 4.
+
 ksft_skip=4
 
 PAUSE_ON_FAIL=no
@@ -161,7 +162,8 @@ tests="
 	cleanup_ipv4_exception		ipv4: cleanup of cached exceptions	1
 	cleanup_ipv6_exception		ipv6: cleanup of cached exceptions	1
 	list_flush_ipv4_exception	ipv4: list and flush cached exceptions	1
-	list_flush_ipv6_exception	ipv6: list and flush cached exceptions	1"
+	list_flush_ipv6_exception	ipv6: list and flush cached exceptions	1
+	xfrm_vxlan			ipv6: xfrm policy on vxlan		0"
 
 NS_A="ns-A"
 NS_B="ns-B"
@@ -451,6 +453,26 @@ setup_vxlan4() {
 	setup_vxlan_or_geneve vxlan  ${prefix4}.${a_r1}.1  ${prefix4}.${b_r1}.1  "df set"
 }
 
+setup_xfrm_sec() {
+	a_addr="${1}"
+	b_addr="${2}"
+	spi1='0x100'
+	spi2='0x101'
+	proto="proto esp"
+	alg="aead rfc4106(gcm(aes)) 0x8a60673197134fca0959564327a61f943accde0a 128"
+	ipsec_mode="tunnel"
+
+	run_cmd ${ns_a} ip xfrm state add src ${a_addr} dst ${b_addr} spi ${spi1} ${proto} ${alg} mode ${ipsec_mode} sel src ${a_addr} dst ${b_addr}
+	run_cmd ${ns_a} ip xfrm state add src ${b_addr} dst ${a_addr} spi ${spi2} ${proto} ${alg} mode ${ipsec_mode} sel src ${b_addr} dst ${a_addr}
+	run_cmd ${ns_a} ip xfrm policy add dir out src ${a_addr} dst ${b_addr} tmpl src ${a_addr} dst ${b_addr} ${proto} mode ${ipsec_mode}
+	run_cmd ${ns_a} ip xfrm policy add dir in  src ${b_addr} dst ${a_addr} tmpl src ${b_addr} dst ${a_addr} ${proto} mode ${ipsec_mode} level use
+
+	run_cmd ${ns_b} ip xfrm state add src ${b_addr} dst ${a_addr} spi ${spi2} ${proto} ${alg} mode ${ipsec_mode} sel src ${b_addr} dst ${a_addr}
+	run_cmd ${ns_b} ip xfrm state add src ${a_addr} dst ${b_addr} spi ${spi1} ${proto} ${alg} mode ${ipsec_mode} sel src ${a_addr} dst ${b_addr}
+	run_cmd ${ns_b} ip xfrm policy add dir out src ${b_addr} dst ${a_addr} tmpl src ${b_addr} dst ${a_addr} ${proto} mode ${ipsec_mode}
+	run_cmd ${ns_b} ip xfrm policy add dir in  src ${a_addr} dst ${b_addr} tmpl src ${a_addr} dst ${b_addr} ${proto} mode ${ipsec_mode} level use
+}
+
 setup_geneve6() {
 	setup_vxlan_or_geneve geneve ${prefix6}:${a_r1}::1 ${prefix6}:${b_r1}::1
 }
@@ -659,6 +681,13 @@ check_pmtu_value() {
 	return 1
 }
 
+test_xfrm_vxlan() {
+	setup namespaces routing vxlan6 || return 2
+	setup_xfrm_sec ${tunnel6_a_addr} ${tunnel6_b_addr} || return 1
+	sleep 1
+	run_cmd ${ns_a} ping -6 -c 5 ${tunnel6_b_addr} || return 1
+}
+
 test_pmtu_ipvX() {
 	family=${1}
 
-- 
2.24.1


