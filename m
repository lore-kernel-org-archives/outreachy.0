X-GM-THRID: 6472044844807094272
X-Received: by 10.98.224.210 with SMTP id d79mr1026298pfm.47.1506890366422;
        Sun, 01 Oct 2017 13:39:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.233.14 with SMTP id j14ls520354pfh.0.gmail; Sun, 01 Oct
 2017 13:39:25 -0700 (PDT)
X-Received: by 10.99.99.197 with SMTP id x188mr1278018pgb.40.1506890365376;
        Sun, 01 Oct 2017 13:39:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506890365; cv=none;
        d=google.com; s=arc-20160816;
        b=vXczrS74nlPEnSDyHjgEVRHbSgMJSOkkh98eantO3H0Hek+M4P+fXaRLX6MKPRsn06
         nkxJCDBEQxIy4Hr7+fp97vAUpvmksLVkHJYtJsc4HMc1qM08w9ap6x5W/MPmR+MBCh7y
         Hyaav+EOuy+1b2oQXroJ1druYCYOlGpfxkDwFB5WqNpcqO+D6FMlNVGh2R2dHc45ZMqU
         f/rt7bWsTzQ6yhwPxE7kJnmsMEhcer/UKBE/HnhwzAVQywhlUH6TInJSwwSY25LUNlUn
         CG3+MJo+NgHa3b051YdN5SIEuHcWgZW5ZdKwLnZRl4VFApAiVWXc+5Eb5QvcxInbZ6zc
         ND6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=4QV75QxQQ30J1Av8L7Cvl8CD7s9U7Yx04YPtePiazt0=;
        b=ZqVlR3xiKXWzHVK75LGYPvvXzggQLYrrzZb/vl3OEm6dFFYdDEhbhPFAk3dzyB9+Lz
         8jBUCiv/cF5TM9eHa5/FGRj0UwWDULLbl1AbF7nLZrOt2377IBKPp2Mwe0vpvDTmKC4h
         41pRl4fypHrfLgmt+ZgHpVYAxs55wwE9lpYWElVjDfaw/Uu3shQrpNd5KnG1DqZtDm7C
         OW1MIJhdKI1TFmSOT4srbG+9k+iEfvSL2pMQEfPz5tn+MfjdSEqbUwWcHhwoXX2SN4Ie
         XXYDev99+vucz9ePZy43oYfZEG144Rblo+dQuXFNUOkhdpHMJ5RWCyLkfuaj3IHzK5Kj
         Y+zA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SdYE5EtH;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id f189si850950pfa.1.2017.10.01.13.39.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 13:39:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SdYE5EtH;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id m28so3581858pfi.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 13:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=4QV75QxQQ30J1Av8L7Cvl8CD7s9U7Yx04YPtePiazt0=;
        b=SdYE5EtHyktD+fCJ9vZbbuCwMNVBoZ93W8aZR/NCtsL/1tYZXamGIPzNjPgNMWUFy4
         BUkY6ojYHeMftbY1EvvCo73pzjrq29quzhw6F7s8UOsrFPBkiiIh7wV+z/wLNFFpCaC5
         pyGLHjrme8lDiU54RGiBScEkVR7e1Ip8UchbU6ZflQXdlavOZB5e8IA8g2cbj+fPIZzU
         bps2jGzIOWPCc09ZI6ttbge3kkSg6TcAsfVDNzvPIKL9vrdOvd2c9RzjIt0Qk8LYkTAo
         IKoXkFJCzrwBj/uGCNiw4VKLy2iYDxMu1Sjv2sE7VxCJHv1Ltw0d4PkySnhnclN5+xxl
         h+Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=4QV75QxQQ30J1Av8L7Cvl8CD7s9U7Yx04YPtePiazt0=;
        b=diVxWh+a4+SlDQUcSQ/2ZYxIhALAKB1oTsXrebe3eWV7o3gBHbcayZmnEg6MbLNffw
         4IjRyGUX6bvVEdHS74LMn/dmVbXVBcsZ5r/wyxUCYqApSosilLzYQzlY1SrUt1T7L3Z/
         VCUY0wDO2QHjLN92lkRwPMHXGQTRR1hUrJrFLGQdG4N6poR7cWF/vpYWRurpjL2Xi17u
         0phvuMhEXP/6gLD2FesbB1a0/99oRVrUK6J/a07Xh5uz0ZsyGt5GUXTkD1UGQFB1jpGP
         bkqlpWCFCSQADqyrJnzlG/3EEMKEqK2dHdk6d0szWU+5Sy02saz/vs+0pUvlZcxpv6eF
         2k3w==
X-Gm-Message-State: AHPjjUiVqc87vfll05/ItxOrAe80YpbvNYxDYDJux19oTR5cZ4Jfhxez
	xmubhmGOyOmwfnu48x04ox8=
X-Google-Smtp-Source: AOwi7QBBzhAMX4lvPQBtYhaGgA5q/7OZgPWcq1b96eA5nPjxetJxLvZVhrV2NmtXVQ8tyG3oETprwQ==
X-Received: by 10.99.150.25 with SMTP id c25mr6219012pge.386.1506890365136;
        Sun, 01 Oct 2017 13:39:25 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from harryPotter.domain.name ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id q15sm14284307pgc.64.2017.10.01.13.39.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Oct 2017 13:39:24 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] exthdr: Add support for reserved header and address
Date: Mon,  2 Oct 2017 02:07:00 +0530
Message-Id: <1506890220-12226-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Add support for IPV6 type 0 routing header reserved field and address
unable to test it with nft-test.py

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 include/exthdr.h  | 2 ++
 src/exthdr.c      | 7 +------
 tests/py/ip6/rt.t | 2 ++
 3 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/include/exthdr.h b/include/exthdr.h
index 97ccc38..ad09f27 100644
--- a/include/exthdr.h
+++ b/include/exthdr.h
@@ -14,6 +14,8 @@
 struct exthdr_desc {
 	const char			*name;
 	uint8_t				type;
+	unsigned int			protocol_key;
+	const struct exthdr_desc	*protocols[3];
 	struct proto_hdr_template	templates[10];
 };
 
diff --git a/src/exthdr.c b/src/exthdr.c
index 4add3da..87c09da 100644
--- a/src/exthdr.c
+++ b/src/exthdr.c
@@ -263,13 +263,8 @@ const struct exthdr_desc exthdr_rt0 = {
 const struct exthdr_desc exthdr_rt = {
 	.name		= "rt",
 	.type		= IPPROTO_ROUTING,
-#if 0
 	.protocol_key	= RTHDR_TYPE,
-	.protocols	= {
-		[0]	= &exthdr_rt0,
-		[2]	= &exthdr_rt2,
-	},
-#endif
+	.protocols	= {&exthdr_rt0, NULL, &exthdr_rt2},
 	.templates	= {
 		[RTHDR_NEXTHDR]		= RT_FIELD("nexthdr", ip6r_nxt, &inet_protocol_type),
 		[RTHDR_HDRLENGTH]	= RT_FIELD("hdrlength", ip6r_len, &integer_type),
diff --git a/tests/py/ip6/rt.t b/tests/py/ip6/rt.t
index 2d044c3..1eb198d 100644
--- a/tests/py/ip6/rt.t
+++ b/tests/py/ip6/rt.t
@@ -44,3 +44,5 @@ rt seg-left { 33, 55, 67, 88};ok
 rt seg-left != { 33, 55, 67, 88};ok
 rt seg-left { 33-55};ok
 rt seg-left != { 33-55};ok
+
+rt type 0 reserved 2;ok
-- 
1.9.1


