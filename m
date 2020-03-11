X-GM-THRID: 6803023005726277632
X-Received: by 2002:a25:c656:: with SMTP id k83mr4856855ybf.16.1583952235350;
        Wed, 11 Mar 2020 11:43:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:c102:: with SMTP id r2ls756916ybf.5.gmail; Wed, 11 Mar
 2020 11:43:54 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtKXdObZSe1Z4aFaBp++BhLrKN/FKJNEHPJrDfzQd+vwl+t4IXC26qQ/4FIOPXlGjDci730
X-Received: by 2002:a25:8389:: with SMTP id t9mr4802538ybk.277.1583952234037;
        Wed, 11 Mar 2020 11:43:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583952234; cv=none;
        d=google.com; s=arc-20160816;
        b=WbR/yI2qqTER5gmg60Gd4sISLxWPfKPsQytnP/CTHdM/0nGNftxxVUKRDAbNxLHlxY
         y3K2qwzDEfyfFXeBde4Waar8hBKoI6eNTjxP/CK5COmHVODfcAUyurViDVY4jUZrdlgm
         cMne/tDVSc7Ly1wOvxyTkJToV8ZzrQZMJjVDUCcuG3tow1Uvkf3Cf9rvNKmsjbj+Wvx1
         TABkc7bd0IyRTGA0TWfNQRmQA0Fsy2dZYpHnpIlcP4zYk6RO8KcKjUNN6kylSH7EGaUV
         GwXuTdD32+Fg/kIYxafput9qGVx56f3PmuvcaBCv6AgjlqKji3izPvN1UTCGz/f3D0nV
         /+Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=8wnXwISrtJZG0o8EHFyvZAZJDlyCuQ0sahHLUujthn0=;
        b=ghNB0snq5464s56ZaTnhYBiLIp1Pf6EGfmL68+I7QwPz7VvdQ+dfcd7wNnZWlcEA/Q
         O2bT6h9Gg9udnIpNZ+GcchhxiwxSmxx1tiG6a+lCPeBVCgWd0nLYZXzRrIWsejOtP9QR
         OJSWInK3Tgnzyydf32iNCQGCt6ATS8wOVGI6QdkNjhETlgaNdnV7aORB87+m98gpiw8D
         AcMWI9LPaqQOiOZztRqQ39/zt1pRznnphF+at75YLc7+UdGUToncwWU3H3KFXQLPRQP1
         CHTTgFc4+svCvbvoqzeXwgPPgOo0P1JIP69/GymQfrWuIFEoIMjnuNLOSAvaPaSS+NoE
         tY9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b="B/eCDV3A";
       spf=neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id e131si162593ybh.3.2020.03.11.11.43.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 11:43:53 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b="B/eCDV3A";
       spf=neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pl1-x643.google.com with SMTP id a23so1508311plm.1
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 11:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=8wnXwISrtJZG0o8EHFyvZAZJDlyCuQ0sahHLUujthn0=;
        b=B/eCDV3AGjZFCMe0DxKcjaQfK61edicZlgmMP56y4yN4gdzprR2HvZ0mASumK7kvhG
         pxLfcu6VSQU/WUrN8JGwje0BfyvWdJroffQ+9tGIXkmYGC7HprY5gBOS7EEFyisms4ZS
         Min66oEB2yPMuuf2McDyrgZpjAWM7Y9JaZ94q4vb9YFztEfO0Yd87kE1rQsM/lQeW/6h
         yTd3vc2/8rOi39qczuUUuHK84wWr3jtf/qN4tfB/UkJHerA3VEAWglb7Z0y334sSBIYo
         ASrFrtdbQG/LaTYJU3Z7iZI1CHV6kSlRsMyGwCIftH3jJogqasxV+xoY2O1afFnTNb5M
         gu9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=8wnXwISrtJZG0o8EHFyvZAZJDlyCuQ0sahHLUujthn0=;
        b=Hy3PJ4PUiHnR6i6+YeGdGDQJG7VDIbuce4har2/0trMzaWO8OAgBqB771bmlZ7fB32
         ywB1zI78VWR9JkP9vkInFmQZ4N7kohDkCzttbfVtO9DAqfTnEhzOBtLvzdEucCa7xauj
         XBaZv6MTY22UjQxMuY8anzjzUwiR16SWLMHGBUQ78BibknIr5BTKVNm3HBV9w6bhJ6O1
         79A5raHmMCdDPUPbt/lICvTgWlcSzxxEOp1IeBqCaVm4YUnW8OmFSVcgumxB9xtQkis+
         oi6b6VdilG+01f5kzfhn+Hm7xrzn9teaT+qy0oqCJ4G/qi6Zds3+xakDMfFKI5z2bkch
         2T1Q==
X-Gm-Message-State: ANhLgQ3HGab9M+Fy+KlEMMM15D+4Kti++JKjDxUqJOyYz3SmPVqyBqNA
	CQ7KU+X2zkBLBPAWq+SsNakxX7iPahsKZA==
X-Received: by 2002:a17:902:b907:: with SMTP id bf7mr4300431plb.3.1583952232787;
        Wed, 11 Mar 2020 11:43:52 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.175])
        by smtp.gmail.com with ESMTPSA id s123sm49241549pfs.21.2020.03.11.11.43.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 11:43:52 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: [PATCH 2/5] staging: comedi: check condition in one statement
Date: Thu, 12 Mar 2020 00:13:24 +0530
Message-Id: <20200311184327.25338-3-kgupta@es.iitr.ac.in>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200311184327.25338-1-kgupta@es.iitr.ac.in>
References: <20200311184327.25338-1-kgupta@es.iitr.ac.in>

check two conditions in one `if` statement rather than two since both
return same thing in file usbdux.c

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/comedi/drivers/usbdux.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/drivers/usbdux.c b/drivers/staging/comedi/drivers/usbdux.c
index 0350f303d557..8eff7f140560 100644
--- a/drivers/staging/comedi/drivers/usbdux.c
+++ b/drivers/staging/comedi/drivers/usbdux.c
@@ -617,9 +617,7 @@ static int receive_dux_commands(struct comedi_device *dev, unsigned int command)
 		ret = usb_bulk_msg(usb, usb_rcvbulkpipe(usb, 8),
 				   devpriv->insn_buf, SIZEINSNBUF,
 				   &nrec, BULK_TIMEOUT);
-		if (ret < 0)
-			return ret;
-		if (le16_to_cpu(devpriv->insn_buf[0]) == command)
+		if (ret < 0 || le16_to_cpu(devpriv->insn_buf[0]) == command)
 			return ret;
 	}
 	/* command not received */
-- 
2.17.1


