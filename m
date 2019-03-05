X-GM-THRID: 6664067951305424896
X-Received: by 2002:aca:5e05:: with SMTP id s5mr15212051oib.53.1551798472283;
        Tue, 05 Mar 2019 07:07:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:c189:: with SMTP id r131ls646380oif.6.gmail; Tue, 05 Mar
 2019 07:07:51 -0800 (PST)
X-Google-Smtp-Source: APXvYqwcpfOT/2C6u6ie6ZEmJe660Jwmix71PpJe6QURemI4UP+Pw6BeyCI/mjH1OOLgInJpyvrm
X-Received: by 2002:aca:4911:: with SMTP id w17mr15362629oia.5.1551798471412;
        Tue, 05 Mar 2019 07:07:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551798471; cv=none;
        d=google.com; s=arc-20160816;
        b=UFag3gY352Xir36wYmskgRRnifyzyo4jJCdFjDCZLObxmWu5RgcT1pfvqnD0tboY0Z
         /DlTYeGyfaOVl2eImzWHaJHrtAWqWnx22KgzH7dUTxIQlkFFqk6fMibPhNwsXog1oOCH
         porxuArecvGZgaz/E9gnstwbSPVE76ZT4YtnW5lHS5krwbEO0dod3BwkhFtAOu2nBKZk
         rfztRiK7sDReUc9IDadZnEYNHoRURjfLsFNr0SKFgH7Bj445uHRyRh7OnqPQROoZy7KJ
         v1mW7Tg+s4e+uGnQUFze8P3T/ZPTHHsOyRvAdzacPSS87erPMhBNbvOl0xGHozkOG5C5
         FaSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=ueASV8zRszDGiSFZ8XIJw/D1QN6kLG7nrUzfCoYrc80=;
        b=WcKL8siRdsJxhEGT822TdaVh3Oq0fEzsnw+gKTqeEkAqb+5kw0Yh5L9T6fiIRYprPY
         AKEortqkGJe0awMMFN0dWDTzhCM20nn5+FKZTrFDNOMSVzbT45tZfHBfAA/f6So11qFQ
         EP4jLCO/BIF6GLG8Ub2PZ+7IpLlzuFRrvZdK2VV7PeuCsZl8epWEtUisor1LYL8zWrE3
         MKd5KwOrOhLDu4k9h4zBv0a7XOVrmRdp+hppTpXTuiKsmfIz6X2UHp8ruP8OR9TWGQtX
         Zmt8xz4347PGiJ6JwW9J0afOqR8GVNTYJybJiDPun5xDa6xPqNEaMVHOB8ftWQW7pGZM
         HFaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t2fnln86;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <idebleenasen@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id q206si332873oic.2.2019.03.05.07.07.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 07:07:51 -0800 (PST)
Received-SPF: pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t2fnln86;
       spf=pass (google.com: domain of idebleenasen@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=idebleenasen@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id i19so5923016pfd.0
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 07:07:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=ueASV8zRszDGiSFZ8XIJw/D1QN6kLG7nrUzfCoYrc80=;
        b=t2fnln863etr0Ffg4+LzAZPIwodvZA4fZevkpT8ea2Gnq4Htg0oz6F7ijNwazPBEtm
         1gYGasCUggP7IeGvnmfYnbeeR3Wiy2v8BOrswtefotSpyxmiYQDic9XTvU/OBbhfoV2B
         QtPNKzWaqCJ9jn+xV+gnukXedrDuTGVqDgi6p/eW0eIpZZILbLRrW6Gjzgxpfcj5ew6X
         ytbfBLQXKOCTjtR/zJSdCSt56ajK+da+FEpV7iqqyJt7KIflU1AND9wxP52jLs7htf1M
         JuNWjo9xGoHlYtzINz0ArnXF9BKY7efEPYrhVXl108LQnHOAYPjj2vSVzkuGQvgPyrZP
         2TNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=ueASV8zRszDGiSFZ8XIJw/D1QN6kLG7nrUzfCoYrc80=;
        b=mX1TdngwZLhhiYYkUmiEDgqYWAjl0Y+uEZ3fugMgSIa+k1BG6p3uuTueR0+o8oS1Zz
         kgg0YtNG9RKDDiv/psdw8463C3JtYluqMketyqSrgaywEeDaloRyJYojwK91q6Q9fdFg
         UdggVWRi4AXcYMCy+ap83fowCWcQklJe6Rul7uYhA56st26+gjmzkMKhKAvEn5Qur+L5
         IJDn3jZb6ShDXlN+/TDAZ6ZMUhwGwqw/MkVbAXwRBMtsgkstjiLjgAjRzsAF1EizS75n
         GyChQiGYRhs92QbVdtiYTJ/lGDcP68ytXpbfxo5vI6DYtrOaYXjWldNIgeeEp1j81NC8
         qpuw==
X-Gm-Message-State: APjAAAXSfouZ2TL9XJ659hPPqlTfxs57+9dAM7RaWZCpLAh3/7BQsyew
	6KxOFsS6tQqMGyzE7ANP0a4=
X-Received: by 2002:a62:e80f:: with SMTP id c15mr2274048pfi.33.1551798470777;
        Tue, 05 Mar 2019 07:07:50 -0800 (PST)
Return-Path: <idebleenasen@gmail.com>
Received: from ubuntu.localdomain ([117.211.86.109])
        by smtp.googlemail.com with ESMTPSA id q86sm24908783pfi.171.2019.03.05.07.07.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 07:07:50 -0800 (PST)
From: Debleena Sen <idebleenasen@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Debleena Sen <idebleenasen@gmail.com>
Subject: [PATCH v4] Staging: pi433: Fix line over 80 characters issue
Date: Tue,  5 Mar 2019 07:06:54 -0800
Message-Id: <1551798414-5143-1-git-send-email-idebleenasen@gmail.com>
X-Mailer: git-send-email 2.7.4

Delete extra whitespace and tab space and use one tab space to
remove the checkpatch.pl warning:
WARNING: line over 80 characters

Signed-off-by: Debleena Sen <idebleenasen@gmail.com>
---
Changes in v4:
	- Add version change log in the right place
Changes in v3:
        - Add version change log
Changes in v2:
        - Add "and use one tab space" to the log message

 drivers/staging/pi433/pi433_if.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
index b231463..53928af 100644
--- a/drivers/staging/pi433/pi433_if.c
+++ b/drivers/staging/pi433/pi433_if.c
@@ -45,10 +45,10 @@
 #include "pi433_if.h"
 #include "rf69.h"
 
-#define N_PI433_MINORS			BIT(MINORBITS) /*32*/	/* ... up to 256 */
-#define MAX_MSG_SIZE			900	/* min: FIFO_SIZE! */
-#define MSG_FIFO_SIZE			65536   /* 65536 = 2^16  */
-#define NUM_DIO				2
+#define N_PI433_MINORS		BIT(MINORBITS) /*32*/	/* ... up to 256 */
+#define MAX_MSG_SIZE		900	/* min: FIFO_SIZE! */
+#define MSG_FIFO_SIZE		65536   /* 65536 = 2^16  */
+#define NUM_DIO			2
 
 static dev_t pi433_dev;
 static DEFINE_IDR(pi433_idr);
-- 
2.7.4


