X-GM-THRID: 6670962205822812160
X-Received: by 2002:a63:66c4:: with SMTP id a187mr21299137pgc.369.1553513223082;
        Mon, 25 Mar 2019 04:27:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8a85:: with SMTP id p5ls8498732plo.4.gmail; Mon, 25
 Mar 2019 04:27:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxEF2KdSmCbbrRseoF5MzdlMcRyFNvLwvYVI2dffv75NntkLcMWnS3uxH0EsXQxu8REeJzi
X-Received: by 2002:a17:902:6b49:: with SMTP id g9mr24928252plt.291.1553513222341;
        Mon, 25 Mar 2019 04:27:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553513222; cv=none;
        d=google.com; s=arc-20160816;
        b=M8ZOO2z9SUlsinTdIjyNS2I/femfLhNLIa1OgPGOit+CblbE9XWv3ARslgyg6KOflw
         +5hbQvYSWDnIz46ro+BtxARq/R9vY2c9ed3deWIgO/slP2QccB0oaZyDw6dZVKk0oWxQ
         OgFvbaAtOZAoU+PaS/Hx4uVIK6I46ouql+I5q6NUHDLPyie8Vq72P8ueugnQAMaYFWnx
         136H1tqQqia87IFi4kwiJ3Vfi66I7zL8dMVX1rvQyqBIca+zpJbYBZnNgzHg+LW8uFpt
         3uu9XcFlxrOeXC1qlqh9id/MkdDJkUq5hLbIjM0uJq+6YSn4+ZreKbV6M4aTc+T15XpB
         iOZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=P3ay5EIIFKzvQezpJK5moFgwrqBv2l0vGblXNV3d6HU=;
        b=r0Kox5SvTEi/N82BCGN8f4qIr/BUfSM+DnnUe0s1BZlJFwv9xHDaTmLLUyMaYrBhFT
         BRhqsBvBK2nuiuDS9ymWCf6hXnowh/GT3ByFBUry1b8l8X3DY+N9l++Z8DLZsUsxtDso
         fck3xwyOcvbSEoI7UR9y81W2nzji1lzt8pCeVbdbzNMcZ0QbTUYj4oe/LMItDSKdYaWB
         NG46+4Q0Z0ktf2KVrdLxQC1746ZqGPL7Uze1iA7Q38bqZxHlnCrJZbQsoeDIf/zRP6qR
         2lMZO0BOur5SYfknK5B8+rdOBb+9xtHxqkUBAVQXHXIUuu30EWcZGLjBgyq+FPDk+xw8
         iFCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IQGwAjsU;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id i126si750551pfc.4.2019.03.25.04.27.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 04:27:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IQGwAjsU;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id e24so5345462pfi.12
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Mar 2019 04:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=P3ay5EIIFKzvQezpJK5moFgwrqBv2l0vGblXNV3d6HU=;
        b=IQGwAjsUtgngP3RteuNDhhcpebC+ZM5/hySaefIbqrQeddiUTC4wjKZmkY2q7gG+He
         zkqY/Q4yrPw/UUtTalWO4xSpGf2TcX/M5PCQq09oF4rBCVQzMUs03fvMDfugdWFd0hGp
         XPIlbJ0oPuKuVbbYldELjruvgMVs7X1Jld53ILDQiMywBRFVOQr26vExeCnK+vUxLfrh
         lqiMw8z5E9ln8D/zAKGC5lj93VvLJvwtn5D6g79/0jmltFvfQ2Ijzsxxj5LCX1xno1P/
         40CBiej61WzibJni5TaT0Uea9P+cy83D9s5bhPRbFkbbH1BcgZPbtON1B0hn8p+WwbTq
         1Qog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=P3ay5EIIFKzvQezpJK5moFgwrqBv2l0vGblXNV3d6HU=;
        b=Wy0RUGXrurTmfGzNU8kVJLg+91PB1yGCqouXmokanXYefD4FTjSo4h1/wf5Ivprh3P
         boCl2Vu+VOBRUQDGavXywkhz1/fBYT45i43M5smjYZBQoa22PfsGWMFzpa86hYcFVBcJ
         jY99dNRZWua2O8py/N/kYXiGRmvF7ZJljN1uB6ZEg/R6TMm3ZKj7fwY0OYcvGxjKf6sJ
         Au5kAlOD1WzWkvl41809p+R/ygFHNfcJef+Td6Fz7oo1uKQbK2F6YK1VyxtmiqctvFp2
         8816BrmO7ruLWBV2zfH/bmCG0+mE9IRDyC4laKlesstypNRn1cl1TYFP8fsmFACC25nQ
         Iu+w==
X-Gm-Message-State: APjAAAXyTeBzU3AHjFkpbxyUCDt9vNc46jhh983XdAY0MIRcLjoxgGSD
	XFIwLYlNztcqFsbGOkrskMKtrA8xyMI=
X-Received: by 2002:a17:902:be18:: with SMTP id r24mr2137621pls.69.1553513221938;
        Mon, 25 Mar 2019 04:27:01 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.56.3])
        by smtp.gmail.com with ESMTPSA id w68sm23730256pfb.176.2019.03.25.04.26.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 04:27:01 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH v5 2/3] staging: vt6655: Add spaces around operator
Date: Mon, 25 Mar 2019 16:56:45 +0530
Message-Id: <20190325112645.20150-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Add spaces around '-' operator to get rid of checkpatch warning.

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
changes in v5: 
 -assembled all patches together

 drivers/staging/vt6655/rf.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index d0581b2ff72c..97b90bbf5770 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -704,11 +704,11 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 
 		MACvSetMISCFifo(priv,
 				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
-				dwAL2230ChannelTable0[uChannel-1]);
+				dwAL2230ChannelTable0[uChannel - 1]);
 		ii++;
 		MACvSetMISCFifo(priv,
 				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
-				dwAL2230ChannelTable1[uChannel-1]);
+				dwAL2230ChannelTable1[uChannel - 1]);
 		break;
 
 		/* Need to check, PLLON need to be low for channel setting */
@@ -729,15 +729,15 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 
 		MACvSetMISCFifo(priv,
 				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
-				dwAL7230ChannelTable0[uChannel-1]);
+				dwAL7230ChannelTable0[uChannel - 1]);
 		ii++;
 		MACvSetMISCFifo(priv,
 				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
-				dwAL7230ChannelTable1[uChannel-1]);
+				dwAL7230ChannelTable1[uChannel - 1]);
 		ii++;
 		MACvSetMISCFifo(priv,
 				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
-				dwAL7230ChannelTable2[uChannel-1]);
+				dwAL7230ChannelTable2[uChannel - 1]);
 		break;
 
 	case RF_NOTHING:
-- 
2.17.1


