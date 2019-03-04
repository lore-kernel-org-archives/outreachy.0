X-GM-THRID: 6660473635314073600
X-Received: by 2002:adf:ee89:: with SMTP id b9mr1062561wro.23.1551737140255;
        Mon, 04 Mar 2019 14:05:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:6a03:: with SMTP id f3ls77508wmc.1.canary-gmail; Mon, 04
 Mar 2019 14:05:39 -0800 (PST)
X-Google-Smtp-Source: APXvYqweAnGtwxe21gb0qcEw2AoOeldts0A7+Lp2ypvgQ5md1OnY9uQwmn+GWOrOuy4or+Sj3aA3
X-Received: by 2002:a7b:c0d8:: with SMTP id s24mr84128wmh.11.1551737139380;
        Mon, 04 Mar 2019 14:05:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551737139; cv=none;
        d=google.com; s=arc-20160816;
        b=LItf9BUP/ayd0waGnVgqJ41S43gC4a9LCDu7X2bOoukdRIvaTtji/svttD8XTRFUOd
         Sr3utam+tqZT7EW7YI792n/X40Cy7eezZDdDxwH/KpM9QxXXTWL9rDUpYl4nw7armxjp
         zo8H9DFw1qtHRXIoaDfVDPfLvewhgaBhgmEAOGkyCtUxJ+ckk631b2GdN1TAd8vGtoAi
         7a2WVbCxE4+FSpza5RImZ1EPxFkEbCzE+dizKVusc0Ann8S6WaAjv3nF0rXj1XF8vjgQ
         wI3nxLFWh1FrbX5Lko1wcL9C7vR8cjyU5KO1NClPQgiOZ6icaaFrBcZgKrM9VHFvxSqy
         2uxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=fb7Tv6r9GDAp8o1vbG5sHBXcnkKh4XNw3wnSRSCO6gA=;
        b=l4P1aRffMsgZ5TDgTTexp3pcH04Nirxt45dJGVssu66EP1azcHPCJvqmiZvarBbEuw
         IpJbUll24O2Bz1sdqIW/DCWLQp8I+EhlPkDq9WYdbzbr6PUQXxMGdF+SwrdnRi+1VHrZ
         HKIb2DysVmdYsnXKKZ4gSrvyu26xmXRFqeJV84Ulu3jgHgHOi0SHkJ06F8U+Cq1Ox+4l
         JPv5RYLZabZtjTlLq9Znx45FggfMz5vJXdILslN6C7BmEv0OeeF4wQAlA7WNPavCL4Bc
         xgTS9hwpDC/0yxs1Er8z2LyJBTtjVloCzPYI64ymwpaqpfSCJ00JhZOTu5qeK25J2eRp
         mm2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pTgRTSlZ;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com. [2a00:1450:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id b134si335291wmd.2.2019.03.04.14.05.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 14:05:39 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) client-ip=2a00:1450:4864:20::42c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pTgRTSlZ;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42c.google.com with SMTP id q1so7264160wrp.7
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 14:05:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=fb7Tv6r9GDAp8o1vbG5sHBXcnkKh4XNw3wnSRSCO6gA=;
        b=pTgRTSlZYJ1EvTKsGNLUEuUI72e1dlLMVijwx1sh2UXwba6enu0GjqgUI0clbp9edJ
         Zb4tzT6ms/jpQUFx3EbnzesGpz9nAMS53fRA3l7EzYFOpmIX6D3nTlQxlBoJaJ2qre87
         2oX7xc22Qcw6krphRO+k2iPu2DHJoc/u/QHAVO/p9w2O3n8vvB1+KBu1zRzDUIJr58xE
         J2Y012phmH901y2uQ3lCqCdSPvW60EYfy28WpbpIsDAeC+8ag6I+q6TfdG5AnYouqyla
         oCsjVaFt53p4XPVhqnWxFkE2YW1WuiQ3sJmtEzyYWoSw61chMZ1JcJYE2MJ0px973cSy
         lmLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fb7Tv6r9GDAp8o1vbG5sHBXcnkKh4XNw3wnSRSCO6gA=;
        b=lFZzAqtol5OWJlQleggGvVo0CIwBs7mNi6e2AEQX0zzzM8UO3pUb6KopiJk5wryMlA
         Wf5ZBnaChKgsKRG33arfly/QssUAJmnsq5yoBKzRTiwTS2ZUXcQCEDBViCDJ8vzrHCMA
         KIyEerIXMhzRmmRA+VG8J+4bvW1tMdyfqr5NTC/nO1vKFPtSG/0mVn5WjaUYcszm8lW2
         abPoyUo9p07imDLg7/sFI3sVHX73He4vmI+B8NyfMWPET6O94jUhSIET1H6Ca70AWMCD
         IMhPl1x2bhbNO2YQSjiAaoJNUqMYd1rXgOGnVidliBQdjYgdn6HlJKkDbqvraNpILDfz
         3Lkw==
X-Gm-Message-State: APjAAAVkA/yPW2Lvt+xAIYx5tZviM2HYo/bwbO5wbga8DJd2AvHzI8dT
	m9XymSh2kG7XQcvE6OuqXi55vHcl
X-Received: by 2002:adf:e548:: with SMTP id z8mr14515441wrm.52.1551737138857;
        Mon, 04 Mar 2019 14:05:38 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id a8sm6196708wrt.79.2019.03.04.14.05.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 04 Mar 2019 14:05:38 -0800 (PST)
Date: Tue, 5 Mar 2019 00:05:37 +0200
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: fbtft: Fix line over 80 characters
Message-ID: <20190304220537.GA9580@pthm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

fix line over 80 characters, warning by checkpatch

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
 drivers/staging/fbtft/flexfb.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/flexfb.c b/drivers/staging/fbtft/flexfb.c
index c5fa591..b91b459 100644
--- a/drivers/staging/fbtft/flexfb.c
+++ b/drivers/staging/fbtft/flexfb.c
@@ -718,7 +718,9 @@ static int flexfb_probe_common(struct spi_device *sdev,
 			par->fbtftops.write_vmem = fbtft_write_vmem16_bus16;
 			break;
 		default:
-			dev_err(dev, "argument 'buswidth': %d is not supported with parallel.\n", buswidth);
+			dev_err(dev,
+				"argument 'buswidth': %d is not supported with parallel.\n",
+				buswidth);
 			return -EINVAL;
 		}
 	}
-- 
2.7.4


