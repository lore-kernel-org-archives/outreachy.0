X-GM-THRID: 6473369006202945536
X-Received: by 10.159.255.66 with SMTP id u2mr1116662pls.19.1507198672297;
        Thu, 05 Oct 2017 03:17:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.134.10 with SMTP id x10ls5741630pfd.3.gmail; Thu, 05 Oct
 2017 03:17:51 -0700 (PDT)
X-Received: by 10.101.86.199 with SMTP id w7mr482017pgs.65.1507198671173;
        Thu, 05 Oct 2017 03:17:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507198671; cv=none;
        d=google.com; s=arc-20160816;
        b=c6yGNlgUUp6vF4aHv5U9l+gDVjpiGBVgsQXvFZYLHR9yxd0PA/Icf/YmghzrUeHZzs
         5z9Gd+GsL6DsWZrjwfg7v+z2Xpj8EbBr4HV/nhoCr9gaAGyLLTnnMrxMqwd+U3jybH76
         xU7wneqdY3AJ023Eh2pME4+SjFx4rhJN7jH3DkAZkLjxIzwh7KG7JYKrP6uBsjiow0Ql
         YtEnTYSYcir9ZQngtIkhT21TNSzg3SL13gSmKWQjKYNpQ+UoavW1ccEC5OvkSrmJLbeC
         I4myTQ/KMb/zsrnYMi9YfCkFSGuQ4CHR6idy5qTFpVj9cIJepmRFg8/lw80S/OMTYOyy
         gS3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=3d+s00jL3pCR+gkVdooTo5DEYUkcfotm0kI+WPfYVVM=;
        b=ULdvhjE06bQCoqaJ9ODIC9ErYH7uvBKhz05Kd/cY9OgCPS9n7UyrJhb9z5SZajqf/I
         0GpLAVNT7yaNLof/6CS8an5GcafX9itvuG0PCRuifNBW/5rlJEJDKO8qXNypwpEAea8v
         qg+Iv0irTHSOTht9St5i9hrSnTzV2aX56t+vSjmPX5HoQym50MFwEfn8JtlAt5BVC4sW
         mzjzaoqpxmTITC2bEBVj1tOiuUft2WpnyFePMy8z4lMo/7K1aw1xUXdqg32cagrqzG3Q
         Xc8EOpUMi9xVNWCJSLz0BK6thJI+etW6HsmB25bTGOarEH6+C3Ncko+ez51w15x8P3dH
         Uqhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FLhhJ0Xz;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id p73si1743820pfk.27.2017.10.05.03.17.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 03:17:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FLhhJ0Xz;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id u27so15278643pgn.1
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 03:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=3d+s00jL3pCR+gkVdooTo5DEYUkcfotm0kI+WPfYVVM=;
        b=FLhhJ0XzNhAkBcCq0t1zXD97D2ig0mZmW/i89xRgTPIuDCNi9JHDfJ9diTW33cpoE0
         4xwRksyy2i5ehXmHkNPKDvtunOYnY4/Hre+bH7yC7uZRGmJlIwh0H4VNuKvNUIeEIR+m
         MFOscC1NoWCM+S1NBJXfltOz+gc1T4JQ6L+72iWbWjjzsAXEfCAJ4f7Xj+chWKQD9gsU
         +LlJQTkOlfU+MUGkiee33IfP7ez+2n2Vbub6YXxC2EIH3vPQFALDZ2Ho77MpWj5OBtH9
         giVG98qWCKmeqEdmQZd1Ea+qQwON+tKJrdhuIjPwlXXmo307hlb5jOyf65oxRefVhxAn
         Q0kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=3d+s00jL3pCR+gkVdooTo5DEYUkcfotm0kI+WPfYVVM=;
        b=XP4z6Ft1HsaFltQ7GcMtpjwkO7xz4px92GTWrZUD8mFA8hA2MqnA573caXw6poZ19l
         y0ckfD/+HG9xd9KH452w+vfvqwRp9swI126hPsbVGCD01OHJdaS6hNiFIHER3mVH6p+0
         kejnizBgMIw5gRbb3OAK7L6ArXUkdr6js4Bij99mZNyQhpEwBEDtVr+Kigd3EIHueE/L
         zMknrxndVhe4AU7wrUdVlu2ZqN8pqf8jDOW2lSYq5iyQ1GR47VwJu31kpcLw6QkzZsaN
         Mot68Q/WqXRoDu3/D58QH95mSUtOiLhCuFatSa7YybM5uU8e6+7pq0EFaLyPGc3M9tuz
         2FeQ==
X-Gm-Message-State: AMCzsaX96aAbNQWnawHWjXC5ToPxvzkPLKdRr29oWeuqu7lvw+xLDaeK
	kF1CB3q31+qYriCSgfxqoJs=
X-Google-Smtp-Source: AOwi7QDBGtp5vehRecvggs37LDnbFprJrTM3zw2+fmqkpa/sN/w44wvxQDiXWgwYTXcgCCA30Qmqwg==
X-Received: by 10.99.119.201 with SMTP id s192mr9321449pgc.233.1507198670970;
        Thu, 05 Oct 2017 03:17:50 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.122])
        by smtp.gmail.com with ESMTPSA id f12sm6409201pga.7.2017.10.05.03.17.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 03:17:50 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] tests: shell: add testcases for named objects
Date: Thu,  5 Oct 2017 15:45:39 +0530
Message-Id: <20171005101539.32010-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Add testcases for creating named objects with unique name, defined
by user and referencing them from rule.

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 tests/shell/testcases/sets/0024named_objects_0 | 41 ++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100755 tests/shell/testcases/sets/0024named_objects_0

diff --git a/tests/shell/testcases/sets/0024named_objects_0 b/tests/shell/testcases/sets/0024named_objects_0
new file mode 100755
index 0000000..de02d65
--- /dev/null
+++ b/tests/shell/testcases/sets/0024named_objects_0
@@ -0,0 +1,41 @@
+#!/bin/bash
+
+# This is the testscase:
+# * creating valid named objects
+# * referencing them from a valid rule
+
+tmpfile=$(mktemp)
+if [ ! -w $tmpfile ] ; then
+	echo "Failed to create tmp file" >&2
+	exit 0
+fi
+
+trap "rm -rf $tmpfile" EXIT # cleanup if aborted
+
+echo "
+table inet x {
+	counter user123 {
+		packets 12 bytes 1433
+	}
+	quota user123 {
+		over 2000 bytes
+	}
+	quota user124 {
+		over 2000 bytes
+	}
+	set y {
+		type ipv4_addr
+	}
+	map test {
+		type ipv4_addr : quota
+		elements = { 192.168.2.2 : "user124", 192.168.2.3 : "user124"}
+	}
+	chain y {
+		type filter hook input priority 0; policy accept;
+		counter name ip saddr map { 192.168.2.2 : "user123", 1.1.1.1 : "user123", 2.2.2.2 : "user123"}
+		quota name ip saddr map @test drop
+	}
+}" > $tmpfile
+
+set -e
+$NFT -f $tmpfile
--
2.11.0


