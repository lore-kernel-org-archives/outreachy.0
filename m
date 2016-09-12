X-GM-THRID: 6329492802868609024
X-Received: by 10.98.25.66 with SMTP id 63mr2619741pfz.2.1473699883057;
        Mon, 12 Sep 2016 10:04:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.37.197 with SMTP id q63ls4498369ota.13.gmail; Mon, 12 Sep
 2016 10:04:42 -0700 (PDT)
X-Received: by 10.157.9.230 with SMTP id 35mr16695883otz.20.1473699882679;
        Mon, 12 Sep 2016 10:04:42 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qk0-x244.google.com (mail-qk0-x244.google.com. [2607:f8b0:400d:c09::244])
        by gmr-mx.google.com with ESMTPS id c75si1034522ywh.0.2016.09.12.10.04.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 10:04:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) client-ip=2607:f8b0:400d:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x244.google.com with SMTP id b204so2729628qkc.1
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 10:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=txJrEJimS48LzRNgDZFbMe9j8gXGegDnSrGtUrjVo2M=;
        b=asoFH7EVnOCMtOrKCHHx96qx834QhY4xLYEkUc17r/8Jgv5bPRJVuuwCTYKK/hKYgW
         H2PUi5AaqtlmETk6PrFRFGP9V6HWsAvgqbkwShwSn4OnNo1zypZV40oAPF3flnebHjes
         J1J2ATyZ2o/loI7lMZPjrrkO/DIhqwN2Uipi3eybi9v1eBaX0TJ5GN+INi87MUJSi1dB
         jnwx9QyVm32R0Q4MkusKUo7dlsMOWrL9Tl9tt0yOm23q9Q3Y2hnEMeaYyX1529ba77Y/
         +FZ3tZ6E0B+PcHAEZ0Ye1jrjv8Z4JR+mkkmsS1xdmMbeOjeRUucL/6Z6KMsUtdmries3
         ShsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=txJrEJimS48LzRNgDZFbMe9j8gXGegDnSrGtUrjVo2M=;
        b=EnIblRfgBjnxdJFMN4Xnzys3cZg2lEd4unx+6jKQQFSrcvU81nnZtKyVHlqupXuOfC
         xMGdDti7Vznkzn4H6Ev4nknaN8ODS8znL9iRHnjAp+enboY76UOlDualVi3Cz/Vvlf3W
         4sbjiA0Zt/ahmSAM8Njj4jmYMISbaeppv81QlKgCITo5xv6VJhc4XJIW2NfWyIv8mQrb
         RukSk45QzuWvbpxkHlId6HIKLmoXkTqvJSrAEISkjmyiszOnOGXHg6iQ3IQ0ZXgFob8j
         QkkeRm895ByJczfA2lRoU7hjfGX/d4qjd99sAP6vEmNd8dyg+OvEQIC697OYx4p4G7zJ
         UsZw==
X-Gm-Message-State: AE9vXwPP5Cf8GOMXIcqIKQBxENqCmuePze7H0v9785+U5klbF7JaOYYQfuJrpdHxl71pyndskfQAOSoCdLkLpQ==
X-Received: by 10.55.98.200 with SMTP id w191mr20565151qkb.154.1473699882397;
 Mon, 12 Sep 2016 10:04:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Mon, 12 Sep 2016 10:04:21 -0700 (PDT)
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Mon, 12 Sep 2016 22:34:21 +0530
Message-ID: <CAFrQyDEjFOCD2WZmVWedeRcasU_48CmaTpOCKT3QJWbRB5zFgQ@mail.gmail.com>
Subject: [PATCH] staging: comedi: comedi_pcmcia: Fixes multiple blank lines issue
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=94eb2c05726cff0bf9053c527d9e

--94eb2c05726cff0bf9053c527d9e
Content-Type: text/plain; charset=UTF-8

This patch fixes the checkpatch.pl issue:
-Please don't use multiple blank lines

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
 drivers/staging/comedi/comedi_pcmcia.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/comedi/comedi_pcmcia.c
b/drivers/staging/comedi/comedi_pcmcia.c
index d7072a5..ec8a0ad 100644
--- a/drivers/staging/comedi/comedi_pcmcia.c
+++ b/drivers/staging/comedi/comedi_pcmcia.c
@@ -18,7 +18,6 @@

 #include <linux/module.h>
 #include <linux/kernel.h>
-
 #include "comedi_pcmcia.h"

 /**

--94eb2c05726cff0bf9053c527d9e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This patch fixes the <a target=3D"_blank" href=3D"http://c=
heckpatch.pl" rel=3D"noreferrer">checkpatch.pl</a> issue:<br>
-Please don&#39;t use multiple blank lines<br>
<br>
Signed-off-by: Namrata A Shettar &lt;<a target=3D"_blank" href=3D"mailto:na=
mrataashettar@gmail.com">namrataashettar@gmail.com</a>&gt;<br>
---<br>
=C2=A0drivers/staging/comedi/<wbr>comedi_pcmcia.c | 1 -<br>
=C2=A01 file changed, 1 deletion(-)<br>
<br>
diff --git a/drivers/staging/comedi/comed<wbr>i_pcmcia.c b/drivers/staging/=
comedi/comed<wbr>i_pcmcia.c<br>
index d7072a5..ec8a0ad 100644<br>
--- a/drivers/staging/comedi/comed<wbr>i_pcmcia.c<br>
+++ b/drivers/staging/comedi/comed<wbr>i_pcmcia.c<br>
@@ -18,7 +18,6 @@<br>
<br>
=C2=A0#include &lt;linux/module.h&gt;<br>
=C2=A0#include &lt;linux/kernel.h&gt;<br>
-<br>
=C2=A0#include &quot;comedi_pcmcia.h&quot;<br>
<br>
=C2=A0/**</div>

--94eb2c05726cff0bf9053c527d9e--

