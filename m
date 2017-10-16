X-GM-THRID: 6477594412631195648
X-Received: by 10.37.64.79 with SMTP id n76mr6260864yba.11.1508182476351;
        Mon, 16 Oct 2017 12:34:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.13.203.70 with SMTP id n67ls976400ywd.40.gmail; Mon, 16 Oct
 2017 12:34:35 -0700 (PDT)
X-Received: by 10.37.132.65 with SMTP id r1mr6319810ybm.3.1508182475616;
        Mon, 16 Oct 2017 12:34:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508182475; cv=none;
        d=google.com; s=arc-20160816;
        b=OQZU1TM9ftcMolzMTJHqMv9iBaboeVYFkvjlHvuIeaMyj9hEEkN3H/YvQhVP9hKFFs
         A8IzzP/gQEbHuDU2oQSVV/67k2v2eaZE+bxyZBq+eg0BCT2oBRQ/q0o7j1VGB/7BOInu
         0yoGg+h5mfdVeeFA1m62cVcIAHqPEdXWmICl91j7sIp/PBfdukOac6RjIA8MT65/+i0A
         JAMWYhRGedHT7SktGGvVQO+6+b0S+LUeExRsBIxdyTBIJA3cLo/ffZRBQpy81L0NKU5u
         oODX/sT/dxZdK/60Ag/fGojZiqtlzTgpVxK4oLIvMaWwMmRQLztHAQaJHgr6DNrNeeD3
         KCtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=dcngCzlUUI0jt7hveGkft0oeB5VntP3X+LrOtGcglCk=;
        b=wjjVwP8TpitMENZgnIWmQwOlerm4oW+1r/qCFBP6As7V0jlGk92ZySWMxQwwrd6a/2
         wky1ODrZTsUsFPDw1RjCWYpaAvZVzF18rG7XdjoolVQ14SZ42o9elmwxtUEwMKYpFFRd
         gW5/uwnwPn5Lyob01n//fiL8SLD7FNchnk3WaE8HndsaUXZtR9pdwmwz0ZGTUmSKNh/f
         kcXWCjyWYemu9nMZWVH0qKCl4IjHOPg72dpuzIyYencJ0s3zgSFK8MSLBwqcbrcfmrJa
         st3gY976t0HAyuCEROM5pp6essjTOZNuUn/FGetWB6CPyUs1x3yEje6O9eKt3EiQolIE
         GbBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S3BZ9y8F;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id z193si367016ywa.3.2017.10.16.12.34.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 12:34:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S3BZ9y8F;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id n14so16520874pfh.8
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 12:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=dcngCzlUUI0jt7hveGkft0oeB5VntP3X+LrOtGcglCk=;
        b=S3BZ9y8Fj0YaDiaQWV6GlqLVL0MAIjVniVCAWFvn+GnB0bmZIK5QGzx0Ldd6g3GGR1
         F30u2ifDQSASmih5STTjEjMA7V3R099oT6yRodmHDZr773Tx28QKwZvHdrZB4wjbK6Eb
         jr81HNGB8/XEd0w1NnguXtnIfUwuVArXTU0nwQf+0ADxzVKvH3SIAGM9pgw7ktVEnIVR
         LZP5CUyqJoufPkFvcI4O4sq0xJPhP6eHVgolrYGSw5pwaWeOUWyz51cNj1SkMKO5dj+d
         VFl+SIR20jGHpG5FGDeap3yg6gahFNbOpe4fW0vEuS9MpRg5CjS1OqCkqHKgLs+iIM+2
         G06Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=dcngCzlUUI0jt7hveGkft0oeB5VntP3X+LrOtGcglCk=;
        b=dRrsD6++FpdQvLidFD2PXBQv+at94CqU7Yqo+2c7xgwEOq2oPBr9MWfPtyHNEBMo6V
         5p/TCMzGllBuIo0/F0md4u5s9TmHCEDpdiJSrHJZ5xcT/85/p2iybmqGcazfvHm2ntL8
         5+IZp7vNKb05rnoBFZobBPo2ZcdtvRHr9NaINDQQgO0yZbJj0g8CIiu8M5w+/KhpxCah
         2WWmPY6a+upP5YpzrVWobDSft2NUhU2TCUJjPS5oO7hD4ZSzojqc1jziaYQY1RswUilK
         Q4So58sd2Fi9CXVeIEJJvviPZqw1dr4eqZVC5nV36bmlvxX4UBUTPeAVQeBuDnTFb4sj
         hppQ==
X-Gm-Message-State: AMCzsaXaqZc8cqxvAKOmJol1vZ9Rt5Fpu3RYU6y7te3MKP9+aCmFOIF9
	5vkqmCMbEMXLFHov0+FSbpw=
X-Google-Smtp-Source: AOwi7QCWZG3kfu9ixnyu8LFAWtRE4XRV8BJnSIxay9p/9VHDKA1SP5bm1lRPMIOkoIA/zDPjqowIAw==
X-Received: by 10.99.114.81 with SMTP id c17mr9115585pgn.43.1508182474864;
        Mon, 16 Oct 2017 12:34:34 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id h70sm17970759pfc.51.2017.10.16.12.34.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 12:34:34 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] tests: add regression tests for xtables-translate
Date: Tue, 17 Oct 2017 01:02:18 +0530
Message-Id: <20171016193218.8197-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

This test suite is intended to detect regressions in the translation
infrastructure. The script checks if ip[6]tables-translate produces the
expected output, otherwise it prints the wrong translation and the
expected one.

** Arguments

  --all     # Show also passed tests
  [test]    # Run only the specified test file

** Test files structure

Test files are located under extensions directory. Every file contains
tests about specific extension translations. A test file name must end
with ".txlate".

Inside the files, every single test is defined by two consecutive lines:
ip[6]tables-translate command and expected result. One blank line is left
between tests by convention.

e.g.

  $ cat extensions/libxt_cpu.txlate
  iptables-translate -A INPUT -p tcp --dport 80 -m cpu --cpu 0 -j ACCEPT
  nft add rule ip filter INPUT tcp dport 80 cpu 0 counter accept

  iptables-translate -A INPUT -p tcp --dport 80 -m cpu ! --cpu 1 -j ACCEPT
  nft add rule ip filter INPUT tcp dport 80 cpu != 1 counter accept

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 extensions/libxt_TOS.txlate | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)
 create mode 100644 extensions/libxt_TOS.txlate

diff --git a/extensions/libxt_TOS.txlate b/extensions/libxt_TOS.txlate
new file mode 100644
index 00000000..6d55eb24
--- /dev/null
+++ b/extensions/libxt_TOS.txlate
@@ -0,0 +1,25 @@
+ip6tables-translate -A INPUT -j TOS --set-tos 0x1f
+nft add rule ip6 filter INPUT counter ip6 dscp set 0x07
+
+ip6tables-translate -A INPUT -j TOS --set-tos 0xff
+nft add rule ip6 filter INPUT counter ip6 dscp set 0x3f
+
+ip6tables-translate -A INPUT -j TOS --set-tos Minimize-Delay
+nft add rule ip6 filter INPUT counter ip6 dscp set 0x04
+
+ip6tables-translate -A INPUT -j TOS --set-tos Minimize-Cost
+nft add rule ip6 filter INPUT counter ip6 dscp set 0x00
+
+ip6tables-translate -A INPUT -j TOS --set-tos Normal-Service
+nft add rule ip6 filter INPUT counter ip6 dscp set 0x00
+
+ip6tables-translate -A INPUT -j TOS --and-tos 0x12
+nft add rule ip6 filter INPUT counter ip6 dscp set 0x00
+
+ip6tables-translate -A INPUT -j TOS --or-tos 0x12
+nft add rule ip6 filter INPUT counter ip6 dscp set 0x04
+
+ip6tables-translate -A INPUT -j TOS --xor-tos 0x12
+nft add rule ip6 filter INPUT counter ip6 dscp set 0x04
+
+
-- 
2.11.0


