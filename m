X-GM-THRID: 6670962205822812160
X-Received: by 2002:a37:4f95:: with SMTP id d143mr4668504qkb.253.1553204424288;
        Thu, 21 Mar 2019 14:40:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:24ef:: with SMTP id t44ls3218746qtt.4.gmail; Thu, 21 Mar
 2019 14:40:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwnE1aSNSk5A+sY2Kr7aETYc17i9ry1RAgUy8jTwzXVHcAAcOipIpVG8PqOzcCj0XLLRsM9
X-Received: by 2002:ac8:308a:: with SMTP id v10mr5176332qta.185.1553204423689;
        Thu, 21 Mar 2019 14:40:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553204423; cv=none;
        d=google.com; s=arc-20160816;
        b=mrKM6JAY9NH82IoIyUkXb4dQ2UtLqY+Mc4GnyhE+WanfwvYM6bAoTIRpKaZEGA/TmA
         bjm+Z+7fwLHnCYx5nlC9GeY44s2QeWgTGCXXFYuPupSL/PsqWZbaq0ejLwa+tInf4ouW
         gV4TO0s7izPKWdZy+D1IT99Wl9Z+zuxvLBGmQ8BJhIfiBKmfRWUiK9Jtx9dxbKgxa+hp
         8qgaCs4qWqK5T4lKMwl4BY3YUljPs9xk5z+VbcsV+fhaYFjVVmxEOik5oF0SEiwdB+rg
         MiVgdqJNUU2tJBk6dwWv3QRbhCVg9hr2cinv++ZwOVz0+ibu8k96otzKx9Wr3CJYRPs8
         WJGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=/p99o4I8o9gJHtJ1lvo9sXZ9fVmLMyZG770TKcug/rY=;
        b=NQc/hncSNxQPxESRtcVIFUuSpbaptKandYMXVH5L3j07MsCVqXcAdNYWgHSepGqWik
         JArPvDQkjwwF1u72sqFLp+LuugVQVY+KbCZ5VbwOc3niY8iOdadywH5GaRJvrvGgSQVr
         3cYnwRFSXKDRgeDPxJxuMSYPfCjWNa9FNYmlrM2qLvBdiXN4G/lDjZBDSUHNCNSZqI+t
         eQPj2Hh39NBVrSiZHpRV9rF3aFZIXyRrukU2tB6AWXXWMHFFG7JYiYNQpeW0X81cip6S
         Xd6sBqdWcWIOLwGu5QwpEYU+2GCVb6gJl/z0zCZHzDwXM1Xr4itroUaDh63YC9J7nI1T
         gQNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=usACwYAL;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id t17si588539qtq.0.2019.03.21.14.40.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 14:40:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=usACwYAL;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42b.google.com with SMTP id 10so2469pfo.5
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 14:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=/p99o4I8o9gJHtJ1lvo9sXZ9fVmLMyZG770TKcug/rY=;
        b=usACwYALlzeH2tcTHUxX7D7isE5s9TKAabdYEWiJT54EeUant1PeUCNT8n/oBRwLnc
         c2RGrEUqy4xeQZClMcR7RKrfRcD6W3N2kbC5m5teld2QnGZybLt/UKHqvqqlLkXWJSNh
         W44zdfaLQXfmjgbtsZWu68dKu8+luXWxGw3wTvEN6SbLmLCPJuSsaIERVT+XUU4uIJAe
         PrG1DX6M14+FCisKdDWbD3OhC3Mc1ZewqUuyF/MhqXSQkqb8yemLn5EOX7aFhrPIYT6X
         f73ttgD9Y37aZM37FCAbuvjy+vC8erOXYhZUyVwkPAb2hFBNieNnP76r43oQXk0c/o70
         XI5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/p99o4I8o9gJHtJ1lvo9sXZ9fVmLMyZG770TKcug/rY=;
        b=L+gi70uhmD8fxAZpd/+szrnmyhkYD9rUwB6vmvm3yI6P5joy0srlQft09Nq9JUra/2
         TBeV4Brh1iUks+i/goSvVNwl8N63rmEXJKzkFQirrqX0675dqOi+g5Rwrl17KwekXaDB
         NIoHFxEsNkIvv/UtR2oQTWSrqCg2YSyzLoZfmhrMUbYeBlcJuMSY1LSlrs1k1oP+P/G+
         u9qbscD0yorB9ytixgiDzzEEIgdVSjYpynxK2YcspRsjlONpXN0LF3nyBrX3kHOWkC88
         LFSYP+XfYY7RJZUqlRwWTlNPQR3eiZl3Sb/l8HkBLTmvvwLjOewsSZo0oFTMEohGlKDr
         iiBQ==
X-Gm-Message-State: APjAAAVwc2YwCoh/Va7rjO5HJmbqITe/gkZX/cN0Bf0iatCiHjkFl5GZ
	mIwy4SdkhlfC19TtohSkjZtPHKxGPDs=
X-Received: by 2002:a17:902:6b81:: with SMTP id p1mr5918277plk.106.1553204423214;
        Thu, 21 Mar 2019 14:40:23 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.5])
        by smtp.gmail.com with ESMTPSA id k17sm3239302pfi.2.2019.03.21.14.40.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 14:40:22 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH 2/3] staging: vt6655: Add spaces around operator
Date: Fri, 22 Mar 2019 03:10:05 +0530
Message-Id: <20190321214005.15907-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Add spaces around '-' operator to get rid of checkpatch warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/vt6655/rf.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 8d1caa4b19e8..6b8a69df509d 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -702,9 +702,9 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 		for (ii = 0; ii < CB_AL2230_INIT_SEQ; ii++)
 			MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230InitTable[ii]);
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable0[uChannel-1]);
+		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable0[uChannel - 1]);
 		ii++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable1[uChannel-1]);
+		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL2230ChannelTable1[uChannel - 1]);
 		break;
 
 		/* Need to check, PLLON need to be low for channel setting */
@@ -723,11 +723,11 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230InitTableAMode[ii]);
 		}
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable0[uChannel-1]);
+		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable0[uChannel - 1]);
 		ii++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable1[uChannel-1]);
+		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable1[uChannel - 1]);
 		ii++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable2[uChannel-1]);
+		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable2[uChannel - 1]);
 		break;
 
 	case RF_NOTHING:
-- 
2.17.1


