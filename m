X-GM-THRID: 6476866726968426496
X-Received: by 10.101.81.8 with SMTP id f8mr1105649pgq.141.1508013048735;
        Sat, 14 Oct 2017 13:30:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.39.70 with SMTP id n67ls1879676pgn.30.gmail; Sat, 14 Oct
 2017 13:30:47 -0700 (PDT)
X-Received: by 10.99.111.199 with SMTP id k190mr1221038pgc.22.1508013047930;
        Sat, 14 Oct 2017 13:30:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508013047; cv=none;
        d=google.com; s=arc-20160816;
        b=OEQyS+21fEgSVE19N6RKe0gGUOaT6BhIrfmOtsJbRHht6XCFb5YVkcZRgaDCVAFqvQ
         BFQvIvUY/QsDjf245IpcbOu4rv1N5HcRVpLJmFBs6JCkSbXqwbAmjDvg3dH72zN7mC8+
         9/naXS0kIl3dw51y15sxqMDgihznxTk4ZC2leY+qApVhGMuY28wPGqBZCGjZHekG0rR6
         HByUlyfm9HbXSU6vJ0ozUxcRVYIVGoqF+P/ZR2NXjQrqEnpGgQ0doRMoka/ljzYv+VbF
         3zer8aOGQHjKAPtEHa8SiWviVUGZ+t1ThgOEXECdwojAPjKYDfCQebA9grGGeZiBUZR9
         1mxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=VEXRu7uXS3NaZqeG6OpXvUPqfRMMxr6Oq+z9J2ZPj8I=;
        b=BcypgbsrmADHKc9Ka5lpftokpoatXgwK8ElPKNP5SApglwheSXQ9LK78N/kARCu7C4
         tgNQ2OD4VY4BwVtzop2Yc0LycfksW2mN3PULnYtzbibJMBQ1FSympiMXu62QSh+AHgRc
         WBb0m9rUM9CHl5WScejcK6PwMSsVeof235p8xpuNG4H3VnlUsnN8I7q0i4CCoPZJ08yq
         nLtS0yuLftlx620Xu/bghm8IDaqSX4t1JzQ0vrjlT5kMxQAtXXXFI7qgbNPCXsVbc+x0
         ZwOjDFsg0ZZHNiAHN6qXQeo/pgZ1ev6659g+Y+HD3JCFh5tWLOZL8Q6s2UM1iZYncsat
         mCqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TRvIb26z;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id b2si143839pgt.1.2017.10.14.13.30.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 13:30:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TRvIb26z;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id x7so12936626pfa.1
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Oct 2017 13:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=VEXRu7uXS3NaZqeG6OpXvUPqfRMMxr6Oq+z9J2ZPj8I=;
        b=TRvIb26zXAoWoXJfq6KFLKHqPSJdpvZ8amx9REUyyg9jZS+1aQuWAIomP1rcyOqfJQ
         VyOeqR91AFlg7BZgrT0+a4j6LTGcm1fhpOUAxnJfV3WQDmosIKW35zSOQrLbVMWckZz0
         sT39bQmMVX0p4EQg+wNTpwd5F4bF9jxTDmShUH1dim/xwYKbNdhIKJ3/YaDPLZIRIRS/
         qN3e+ZEK4kckf42gnwhE/X5lF8zMYK9eFqvBDEKU1SOE9lrkn+Wmbyw9/3UYw/UagjP8
         3axwyrpeCyPWqTmOhOb8tma1ahKk9AJHZ7bHCSXVWTqnxbQOG5Nrg0PeuMazy5TXq7Gv
         Zkpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=VEXRu7uXS3NaZqeG6OpXvUPqfRMMxr6Oq+z9J2ZPj8I=;
        b=uD0I3eSE+qDqFAd2YSeR+tgDylR9sEUZdcgDzDxz028sXtBi+1YQ2ksmVLkiaknUJm
         l5nyk3RvXUBvnES6YtIcZsFvzm+8MPYzH53s7q9cCFQyA0RpL/IhGileq90Xl6F8Q4zm
         S3JSEnXNVhwRb28v97JUE/LQ3pV0u9h3xWJHWj4NExiuR3oNNcVYOffP/J7BwAjLNX2L
         VX2QSsGs5npSZu3/FpanmOrvpU3hNrH+GnDekUiOQLeNoR7kIaJWntIpxYNNXE/ZNap9
         ihB9SjJwV7mQkj3Tjr3OEG3vgaQOxPG5cPdWTYwB9u8nGjCLWpKgwhZocpFemrVYL+T/
         Unnw==
X-Gm-Message-State: AMCzsaWOTfMTGGvVaTRulZOrCzZazlqLXYtphPkkbWlAzjKT8/UyLkrL
	TCBSY4qz3sXCbAngbOEJRS8=
X-Google-Smtp-Source: AOwi7QBu5vmWCCUZT6vdpYUalc3jj7go4NjlWDqXmIDvVAQZ9AfbJ/x/TKk63Ykw67fqzMm6tqWSGQ==
X-Received: by 10.98.56.18 with SMTP id f18mr4597738pfa.81.1508013047711;
        Sat, 14 Oct 2017 13:30:47 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id u6sm9532360pgo.9.2017.10.14.13.30.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Oct 2017 13:30:47 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: daniel.vetter@ffwll.ch,
	treding@nvidia.com,
	airlied@linux.ie
Cc: dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] drm/tinydrm: Replace list_for_each with list_for_each_entry
Date: Sun, 15 Oct 2017 01:58:23 +0530
Message-Id: <20171014202823.29230-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Replace use of list_for_each with list_for_each_entry to simplify the
code and remove variables that are used only in list_for_each.
Done with following coccinelle patch:

@r@
identifier fn,i,f,p;
expression e;
iterator name list_for_each, list_for_each_entry;
type T;
@@

fn(...) {
++ T *i;
  <+...
- list_for_each(p,e)
+ list_for_each_entry(i,e,f)
  {
              ...
-   T *i = list_entry(p,T,f);
                  ...
   }
   ...+>
}

@@
identifier r.fn,r.p;
@@

fn(...) {
  ...
- struct list_head *p;
  ... when != p
}

@@
identifier r.fn,r.i,r.f;
expression r.e;
statement S;
@@

fn(...) {
  <...
  list_for_each_entry(i,e,f)
- {
  S
- }
  ...>
}

@s@
identifier i,f,p;
expression e;
type T;
@@

- list_for_each(p,e)
+ list_for_each_entry(i,e,f)
  {
    ... when != T *i;
-   i = list_entry(p,T,f);
    ...
  }

@@
identifier s.p;
@@

- struct list_head *p;
  ... when != p

@@
identifier s.i,s.f;
expression s.e;
statement S;
@@

  list_for_each_entry(i,e,f)
- {
  S
- }

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
index bd6cce093a85..bf96072d1b97 100644
--- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
+++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
@@ -414,11 +414,9 @@ tinydrm_dbg_spi_print(struct spi_device *spi, struct spi_transfer *tr,
 void _tinydrm_dbg_spi_message(struct spi_device *spi, struct spi_message *m)
 {
 	struct spi_transfer *tmp;
-	struct list_head *pos;
 	int i = 0;
 
-	list_for_each(pos, &m->transfers) {
-		tmp = list_entry(pos, struct spi_transfer, transfer_list);
+	list_for_each_entry(tmp, &m->transfers, transfer_list) {
 
 		if (tmp->tx_buf)
 			tinydrm_dbg_spi_print(spi, tmp, tmp->tx_buf, i, true);
-- 
2.11.0


