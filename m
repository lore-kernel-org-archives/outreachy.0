X-GM-THRID: 6329698324214448128
X-Received: by 10.157.60.198 with SMTP id t6mr10662927otf.10.1473747734623;
        Mon, 12 Sep 2016 23:22:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.117 with SMTP id p108ls609482ota.42.gmail; Mon, 12 Sep
 2016 23:22:14 -0700 (PDT)
X-Received: by 10.176.69.214 with SMTP id u80mr480986uau.8.1473747734220;
        Mon, 12 Sep 2016 23:22:14 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-qk0-x244.google.com (mail-qk0-x244.google.com. [2607:f8b0:400d:c09::244])
        by gmr-mx.google.com with ESMTPS id d206si1547835ywh.3.2016.09.12.23.22.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 23:22:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) client-ip=2607:f8b0:400d:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400d:c09::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x244.google.com with SMTP id w204so13318679qka.2
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Sep 2016 23:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=o4SvxCx4ee1vvIHlKn6zUOnHsWP2ZxIDwkI3cpV619c=;
        b=UsLfK7rDVj0aBEwY1KBUfkNei5TYyvHIpRMjqe+c6B9qz/z9YXbkalNdAPKL+JSLbe
         XreWYmoinyKZmx80RETpyABXmmQ3nvjhXQMlQd02qRuHJtPWIaH0gVjCjDK8oyI439/t
         bdJKcJKz23sH/bPNdK9mLvvxEKX81PjwV8SDSNCrkLZIMLX0x8RlYIrqD/W/vR5oGi6K
         mD0HlqBRq0BSppm7bS68GuaJ5ZwpyA8b8IUD8TPDC9foMlTpJiOKUCnDmQSRZx7nWk2W
         RKIyNyT3h5MVikClyOkVoBgdXn9/rF3NkH4JcZqEHMLe61u1Oh+0S1QCEN2cjeZIMzbi
         UHGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=o4SvxCx4ee1vvIHlKn6zUOnHsWP2ZxIDwkI3cpV619c=;
        b=BKrUBasEHKzL3XpUO7gaes2YlWRs4gC33sp2846HAN0m+k4Czivb+WLHFMwle9DRvQ
         st7BiP63KY4BknGxQWqejHg2peZdhnGW9rAkk9qvhByDtvN5aewZPudxJML9bBGXPRRW
         YyhAtjix5LcvRSfYWTRC5OCmcOHpEAVvqjgXU5M8aDT9oAuGsowfMAdUVczfiQlw+3H3
         hbLxWCYPLel9bmclYGjBdKVUgKxUuyyKtX930HQqSG6RtK1FjFvm4zPYAIpR/RsjPtyN
         eEg3I+nvHBEx3La27Gm3oSHmsqTa44WaA/AeQnJ6X48DFWIGQ0zrQgqe/nNpToCHEMRk
         sYBw==
X-Gm-Message-State: AE9vXwMFmfOzFQSO6EJDEj/X7Zmo84k6zhzcRKzIP2+1fT3sMdkMecy0E27WzHANFKLXU23aKdW3YFTEjiKqbg==
X-Received: by 10.55.8.7 with SMTP id 7mr26284920qki.284.1473747734011; Mon,
 12 Sep 2016 23:22:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.41.97 with HTTP; Mon, 12 Sep 2016 23:21:53 -0700 (PDT)
From: Namrata A Shettar <namrataashettar@gmail.com>
Date: Tue, 13 Sep 2016 11:51:53 +0530
Message-ID: <CAFrQyDErWX1NgsruZtt10hihZR2J3cvK-Q9Zj_dp_GLc_0mLmA@mail.gmail.com>
Subject: [PATCH v2] staging: comedi: comedi_pcmcia: Removes unnecessary blank line
To: Ian Abbott <abbotti@mev.co.uk>, hsweeten@visionengravers.com, 
	gregkh@linuxfoundation.org, badbuddha91@gmail.com, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a114c8aa82ca4d3053c5da295

--001a114c8aa82ca4d3053c5da295
Content-Type: text/plain; charset=UTF-8

This patch removes an unnecessary blank line that caused checkpatch issue.

Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
---
Changes in v2:
  - Changed the subject line
  - Changed description of patch

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

--001a114c8aa82ca4d3053c5da295
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>This patch removes an unnecessary blank line tha=
t caused checkpatch issue.<br><br>
Signed-off-by: Namrata A Shettar &lt;<a target=3D"_blank" href=3D"mailto:na=
mrataashettar@gmail.com">namrataashettar@gmail.com</a>&gt;<br>
---<br>Changes in v2:<br></div>=C2=A0 - Changed the subject line<br></div>=
=C2=A0 - Changed description of patch<br><div><br><div><div>
=C2=A0drivers/staging/comedi/comedi<wbr>_pcmcia.c | 1 -<br>
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
=C2=A0/**</div></div></div></div>

--001a114c8aa82ca4d3053c5da295--

