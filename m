X-GM-THRID: 6806841558557523968
X-Received: by 2002:a2e:9cc1:: with SMTP id g1mr9763381ljj.152.1584841301211;
        Sat, 21 Mar 2020 18:41:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9a8a:: with SMTP id p10ls2122829lji.9.gmail; Sat, 21 Mar
 2020 18:41:39 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuud3n+1CfBTR0QDmczGap74QkOn+l3PYTCLUgLG7lcB9ELyFrNYTbTZf43cWx84on5h+m1
X-Received: by 2002:a2e:7e0a:: with SMTP id z10mr9571146ljc.42.1584841299920;
        Sat, 21 Mar 2020 18:41:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584841299; cv=none;
        d=google.com; s=arc-20160816;
        b=vFqPbl8ZA3rZ2bTYEUl52INCxqf8Dg6cUNioowPdO+Ho7iSjCi/7avbDbmfU9bccZz
         hO5McmuFM0Dw+BrBBnch4TOXbFROOO44vn73LYY2iFvwYmFhHnRrUXfORB0AsXuHXUrq
         CtYMkZkhTC30/ia7JT19oev/ffryCrpko3m9oTujRN6qzPhGqQvxdcZifRvZW16Pajf1
         OTndRRk5X0KrANwSzph4YYybDiJmeUz6guQBWHENxpUePSVQSUaULKI4pzJYa3mutSkL
         v/Mskt20nTt5CVfkMyviqfBeUcy1+2mVilL7MVSOtdkOYAISfThpdUYgxrSO+9JOi7ct
         fR/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Nxb5ymcn5T2B8Ksatud4W1TgHy1LvK3OEJI5vzSz9sk=;
        b=aDi9TZ3wfE25vzGxlEz/CyQM6AggjL4VWMwPbK0BXOfZ+Re52I75Lt676injm/NLsj
         xyyNI/n92r8J9EHtdNub+3nZi03aqK/XZpCQ2zapY23iWqtBGROXhSp4+E3DMNoIyJ+6
         7E7KLQuWH4oODEJ/QDUoBy7fUOlbm0YB6nhcBdG83OlJeOZPSlQ6hhG2OtCfL/2k08w/
         awhNHFzTJafj/qf2FlWpErobv6XQNPy0cEh/i4tV8A6d/YGs3p4M6enzeRTj/ZtPrUH5
         KWAhVWAgOQ/6acNhAZxUqMTrLkYsrGdLSXVt+MjYmSmpbQil8uYu2iGFCnpgPCBMnBLZ
         eMQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cam5RCgi;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id a21si742080lff.3.2020.03.21.18.41.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Mar 2020 18:41:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cam5RCgi;
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x243.google.com with SMTP id w4so10656966lji.11
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2020 18:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Nxb5ymcn5T2B8Ksatud4W1TgHy1LvK3OEJI5vzSz9sk=;
        b=cam5RCgiAODAq564zPX5dKY3s81IZMWipHn5U0fxtCC0BeR5RgZoNFlg3Xj+eLduan
         zWMwwtTgd6TPUV8kuirygPBisvqk1PYdiLtqGLZxbjC2l67e1nfZUctKqJ4Fs3I3gpKq
         HXIQFeppbz8OdV7cgTufKsw5doqUudDXaIJFphsTl4MKZ92cfj1jTOxMmGxDmQ2ozy4H
         8B8mphZE1xdnRc29iBLPM37eE2h4bfPmNe3v2bkAdR4j6amLaiBiAeI8RikFAzS+qUpU
         gM4snf69JS6BqtiMyVdYxJZoTNAsx6eWmGIcnRnEdGi2t9lbYIdXi8T10nmqAhreNEDz
         vvJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Nxb5ymcn5T2B8Ksatud4W1TgHy1LvK3OEJI5vzSz9sk=;
        b=NTF76g+a3aYG0A5uzVrG9Ytcwy5FhisJUSJFMsJH3z2Rd5ej7RSlzOwbOrcavdbbaL
         V6DuyXwz4hWONh9YcrNJoRwP08lEOlYTZDq13SNamUwkdNuQwc6j2pGIzs57at3FaaJ9
         vGDZvCcZLcVy5KI2jNtwzsd3TjJ4G4S1ARI5Qb30JftLSqaKkUP4qC71M08rSi3sUkyW
         OmUkP/uyupB4AwqP+17qaRoKor8R1S9/86eg58VNUg459KxJd0hrfRaIsNIPsTqgGNe8
         psZwnsvb490fezCcMBSkh3/oE4zAgPk2E3AQ/+xNYNHLk8HLzKhaXTKTM0zvzCVS/39H
         G66g==
X-Gm-Message-State: ANhLgQ0FIczJTmg0dtqzfFjhITzqiBl5xl8q6XL87SKVI7Ktz4HufRsK
	koM1z5T7c6bvqrKH9igzUseEJHXgjbI=
X-Received: by 2002:a2e:3615:: with SMTP id d21mr9821656lja.213.1584841299710;
        Sat, 21 Mar 2020 18:41:39 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.50])
        by smtp.gmail.com with ESMTPSA id r21sm6621703ljp.29.2020.03.21.18.41.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Mar 2020 18:41:39 -0700 (PDT)
Date: Sun, 22 Mar 2020 04:41:37 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: hp100: line over 80 characters
Message-ID: <20200322014137.GA6031@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Moved to the bottom line after == operator for it exceeds 80 character

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/hp/hp100.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 1b957aa..43607fb 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -549,7 +549,8 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
 #endif
 			local_mode = 3;
 		} else if (chip == HP100_CHIPID_LASSEN &&
-			   (lsw & (HP100_BM_WRITE | HP100_BM_READ)) == (HP100_BM_WRITE | HP100_BM_READ)) {
+			   (lsw & (HP100_BM_WRITE | HP100_BM_READ)) ==
+			   (HP100_BM_WRITE | HP100_BM_READ)) {
 			/* Conversion to new PCI API :
 			 * I don't have the doc, but I assume that the card
 			 * can map the full 32bit address space.
-- 
2.7.4


