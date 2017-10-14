X-GM-THRID: 6476716620752355328
X-Received: by 10.129.49.4 with SMTP id x4mr2241136ywx.83.1507978099617;
        Sat, 14 Oct 2017 03:48:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.160.85 with SMTP id x82ls670054ywg.34.gmail; Sat, 14 Oct
 2017 03:48:18 -0700 (PDT)
X-Received: by 10.37.186.193 with SMTP id a1mr2438362ybk.2.1507978098937;
        Sat, 14 Oct 2017 03:48:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507978098; cv=none;
        d=google.com; s=arc-20160816;
        b=LzrAcvx2AdIOMBtj08c+yuZaSupWnEUAnYm/3P5lIHhLzhXjGttPQ74igKIjiRUXID
         yPJQ7Ym9sf9mf4rkEU3wNmGU3JNml4/EW5ym4NZbZjQSfbTwdzwOHcrJWnt06V6QgszT
         NOl7yI91BU2xizatsRTS0xpW5sIFxthXyz0FJilm+AfZRXYtdZUPk8tyGT0qDaJrhvg6
         5nUxAqKyD4SJcdtANkEjDk7r+Bta5oOaDByQpXKJPGhUL+wAcZanVzbhc1Xh85/JL1jV
         UTWJ1IPj6mNl3L0Cw26v5apbNcOSd5C22mWdc0zBx6YKrAn6N7KUYTP/5YrcFM9cuOan
         gMZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=t8Z7MfR8w++pjzzWyS12FMDfjBgBMLuVD97hYB5uhls=;
        b=b4Avx/jW7b8zkeRS4rClK/uUd63q/9ES+sERzAzdLJdde3ZRH7IAbXO8sJOQ7/b+tc
         u0GDCPpW0wT4GtpoIOPJtHEdyBEmsstgmTzPIYTKKbNuvYWKyXlvujSOS6StCaDcZNwh
         aOGnW5v84iAs0Hyi8ttjpm1XalI6/CR28siFEZ5z6PtU2D+FctDy9C7Zfhv7n8pG+IPc
         rsKLtqbm36tTTTF+GXeaRjbk+NqiyeeBQkmuSTuDmjATMi5YIbiFE9xTjaSB69sIq1kS
         ebW58sTsmhv+6hPuvg0o9J0DbmPOuatq5GdrH04wcMbvRyDp5nU3jXCuGxY74b1AEIOq
         dGxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kJae7u1X;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::235 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pg0-x235.google.com (mail-pg0-x235.google.com. [2607:f8b0:400e:c05::235])
        by gmr-mx.google.com with ESMTPS id z193si131353ywa.3.2017.10.14.03.48.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 03:48:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::235 as permitted sender) client-ip=2607:f8b0:400e:c05::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kJae7u1X;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c05::235 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x235.google.com with SMTP id k70so2119363pgc.8
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Oct 2017 03:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=t8Z7MfR8w++pjzzWyS12FMDfjBgBMLuVD97hYB5uhls=;
        b=kJae7u1Xh1UcoEmA7AU3bvhbtk3lEZdiT1/W0WkZtWX3vyK8rhH7G7P0NB0BkD1dgp
         hKfBQsFHydqp+c9LcIhMJqWq0qZepg1CF4Mq5GyBSkAwIp00OKQqrSngSTkRHs52QTsa
         hlrYdVxMM9nlZlyYoxthPZ7cUzoZN9Oc5i6n/ogrGtoBqKKYDyn5qKxlukU0xyipwfsf
         5/0haHw4UjbdGTCRdq6WR6loNSZ4fHPEX9d069z8Cd982vjLxJAD1ShRjKxW6ip5Ty5B
         kHilytGU4KoGODBr8E8yQ1Y93/slQM7xNgNEIqwn955hQw6NbHRd4RN0d7BghiZ2eZW7
         npNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=t8Z7MfR8w++pjzzWyS12FMDfjBgBMLuVD97hYB5uhls=;
        b=okDdqaC9iAk5h+ZS1EBVC11UsKno1l21RWvhb+vsbU6+JCHx7pPaz2spTQRxrgvJ2y
         aNV6X7GxtjkKERTm2lh8yekGkjqUT5YIXy7ovynySpXFhZ7WowWcDQx7XhhgTfZjhZ8n
         6XcwJ3Q2VMJe3ak+FBWApHriwhl2Q0yO2WZ1z2xDreWu66TFLq8H4TSJyy8xqoh9YC7E
         PmR9hXTH8AkFwiLFRk0GtqvGGGITHEuZIbWYGPg8a2/Z9QKuIC/ELkSO1NwLRpmvPX7w
         21mAkWigcgnR39h5mMjkYgT55rfToaqEz5MU64ziRS0IgwU4n4uNH6kz66FDFqRYLxnh
         Dolg==
X-Gm-Message-State: AMCzsaUz/YhPC82TpnsflVxeBp+SyBJYGCRKxAO7oLA+HB7sfAdD8QhH
	AVdnAYl4NP/J9DkuVpPpkWA=
X-Google-Smtp-Source: AOwi7QDtNWTooJOzj6NAVm27RWLEO4cezS1IECQ4C5QHZgr5hbYgx9lwwqfFD46NbXM524E2K44QKA==
X-Received: by 10.84.224.195 with SMTP id k3mr3792650pln.403.1507978098205;
        Sat, 14 Oct 2017 03:48:18 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id 76sm6686277pfq.4.2017.10.14.03.48.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 03:48:17 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] tests: shell: add testcases for named limits
Date: Sat, 14 Oct 2017 16:16:03 +0530
Message-Id: <20171014104603.16365-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Add testcases for creating named limits and referencing them
from rule

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 tests/shell/testcases/sets/0025named_limit_0 | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100755 tests/shell/testcases/sets/0025named_limit_0

diff --git a/tests/shell/testcases/sets/0025named_limit_0 b/tests/shell/testcases/sets/0025named_limit_0
new file mode 100755
index 0000000..91553f3
--- /dev/null
+++ b/tests/shell/testcases/sets/0025named_limit_0
@@ -0,0 +1,27 @@
+#!/bin/bash
+
+# This is the testscase:
+# * creating valid named limits
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
+table ip filter {
+	limit http-traffic {
+		rate 1/second
+	}
+	chain input {
+		type filter hook input priority 0; policy accept;
+		limit name tcp dport map { 80 : "http-traffic", 443 : "http-traffic"}
+	}
+}" > $tmpfile
+
+set -e
+$NFT -f $tmpfile
-- 
2.11.0


