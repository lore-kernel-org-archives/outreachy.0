X-GM-THRID: 6665854027940495360
X-Received: by 2002:a62:3201:: with SMTP id y1mr6075778pfy.88.1552015083465;
        Thu, 07 Mar 2019 19:18:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8a85:: with SMTP id p5ls4043809plo.4.gmail; Thu, 07
 Mar 2019 19:18:02 -0800 (PST)
X-Google-Smtp-Source: APXvYqzXAzElBRnVkhYYbnLb4v40tQbwpqo4fhTCGfKKOSxFWdpj6Om7zJlVvWYRbtAssVSwxGi0
X-Received: by 2002:a17:902:a711:: with SMTP id w17mr4907698plq.112.1552015082778;
        Thu, 07 Mar 2019 19:18:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552015082; cv=none;
        d=google.com; s=arc-20160816;
        b=OGIXFd3jLp6cwrrpHjoelolnBiBAcC6h2PwR7XuymGTzt6gqHokgksWeGaEiZPlrL5
         Gx+XeFc/4UHc5c9SHnDftJY6dhfj++ANXgsFJeLbfbLkSlq8wc/TyoUyzf6pLKPVwSSQ
         bxGehkgMYJxXA3QO5TeilZd2XZWH5HuHUHkFZhuzjVMTf7O7U5UK4gjKzml2F3WEVfMa
         X+wJdRWeWDWSQ3U34HM5/F3K7+hg6UnFyo2nKMTxnDeamWlM5a8RKQoXO8Ob99vr4O4N
         FtQpr5B2n77KRJ7Ga14ygB9PLaSeOSRuq1Yu4/6xdSHxYsj3/kLZwnLF5ovohmyDoFPJ
         xmqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=vjGYzHAOn2CXs0K+NY4pBKy1ZHS37KkYhPqxrCf4FZA=;
        b=WSPpC79kCL60+LnsCBroklvyKW8Bu2NMvDUJYEJz6ObwcJ1S9Mr34LEGN4OJpNiAqe
         VCxG4Qpa4sr6GrDUwCyq2n6KwPsp19W/p2uVpBo2sVTHY6Jfj57VcqP0VCdb1g0awe2L
         FO/wJI6YHKiYHdtYxaxmGftj9KCxb/R0yvZYQByrYop3leLlDYCl+pROXCRFiDgt9q+J
         Q7r+8dX4dDRnhOfHZj4aLlffo6eRJ6JuEsDKW5kkMFhpHRRPb0Ndug7k9nm2A4nP2WBz
         Bdlpkwrdp91srRotpP1OK4fpZFtPIs5pYZ+LeVH7ks77PQEXjBJBbXYG3lMkTJuCICyV
         W3SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UpZGE3kr;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id t11si304910plz.4.2019.03.07.19.18.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 19:18:02 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UpZGE3kr;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id n22so13050932pfa.3
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 19:18:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=vjGYzHAOn2CXs0K+NY4pBKy1ZHS37KkYhPqxrCf4FZA=;
        b=UpZGE3kr9O+jK7bsTACcb0TSi4pfq4bdaHOJIJ1LoNJWbgDLxFEFIHzQeRoYDX33Pi
         wfoFDs/eRICF2dfhoIv+7i0Yq5cyoWA/EXIHtJgcA0W1RLKDRKcBFJAifWeKId5vXRzL
         aIt/Ntj4OqtG5sIJO4I+GHKHzRZECIFiBHuxDtrgXTI7yPUI7/ovSoLS4qH1EO1NC7q9
         JnlfZ1TsC+RCF/6CY+RJ0Szbid38Ahs3EnZkJLRiw2NFLWeGiwtV3LKz7qHmm5IHabar
         +GZCXhwV9OcwZyKJmSb5lJs6Bi6VRN8rO2smLlulEE7WmishrQKwRw4zhDU9cjzXAyPY
         fgzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=vjGYzHAOn2CXs0K+NY4pBKy1ZHS37KkYhPqxrCf4FZA=;
        b=eDmHTR2X1KAEKHu3fT4b40azJ4s5g5l0Bpw0gOuThgaKXHikaDSgk4xCz24aq02Hyj
         L3bMf8LEYBaCy2OomtNhw8gWXv0HoocV1uqVxd5AcLvWYUydBHYdqc0o/WLLrUaOFqrW
         ZvWbfJey9cQEYDxvblXIOzBH3iOQnVc5DIEBVkK7Y2SbGnoXVh6RcmyCGkugBv5Pvuee
         cMXd03bLXf13Z/xQQJ0Ef6LQgVz/iElg1INXpS5WSR45GnOfWAYpfARj/V2DtlpHgyu6
         ARi9kNPcxWjXdQw7QNKfIXGclCkLCOmVVIA0L+X+y3T267tWm50J7r6aByNCl8mcf0f7
         Stnw==
X-Gm-Message-State: APjAAAV5s4ZkIy8KbOmFIepkyWJE+HT0nT/t9NB0XFbVy4tB5CC4GlGz
	YvcLkfDHdo6DHF2TMh13OpM=
X-Received: by 2002:a62:1851:: with SMTP id 78mr16509865pfy.206.1552015082490;
        Thu, 07 Mar 2019 19:18:02 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from debian ([2001:da8:d800:199:7e1:7347:f861:5837])
        by smtp.gmail.com with ESMTPSA id k12sm8271286pfk.109.2019.03.07.19.18.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 07 Mar 2019 19:18:02 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH v3 3/4] Staging: most: dim2: Fix SPDX-License-Identifier in sysfs.h
Date: Thu,  7 Mar 2019 19:17:58 -0800
Message-Id: <20190308031758.8865-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0

Fix the checkpatch.pl warning in drivers/staging/most/dim2/sysfs.h:
WARNING: Missing or malformed SPDX-License-Identifier tag in line 1

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/most/dim2/sysfs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/dim2/sysfs.h b/drivers/staging/most/dim2/sysfs.h
index 33756a3bffe2..24277a17cff3 100644
--- a/drivers/staging/most/dim2/sysfs.h
+++ b/drivers/staging/most/dim2/sysfs.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * sysfs.h - MediaLB sysfs information
  *
-- 
2.11.0


