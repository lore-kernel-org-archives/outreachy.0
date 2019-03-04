X-GM-THRID: 6664645719610097664
X-Received: by 2002:a05:600c:2110:: with SMTP id u16mr71966wml.11.1551733752711;
        Mon, 04 Mar 2019 13:09:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:d04e:: with SMTP id h75ls65782wmg.0.gmail; Mon, 04 Mar
 2019 13:09:11 -0800 (PST)
X-Google-Smtp-Source: APXvYqzwsmyhDQk9XRDvh7SUFa50Tg245aKuMaNhQ+8EYv6apFBhAG9S9PncAu10unaGwQoRxcoD
X-Received: by 2002:a1c:4108:: with SMTP id o8mr63816wma.23.1551733751625;
        Mon, 04 Mar 2019 13:09:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551733751; cv=none;
        d=google.com; s=arc-20160816;
        b=qlBJIHxjdkDnufewddz9Whw/u0HETif5wwTpG1tKhvtaL9BxmNZvawsJ+ACDswbKFm
         nkal7MgrcbU/jIynlWZbwUh81KmKcrLLYMzTpfXN8DCJVj7vL0qhkkAeiJFisLO486eE
         DEj0VmmgFcRZkE1jmlJeS1xgDSxAW5CuxvkC+RMCtDZL+gdaxWfMxisfjk58lXrkfgxf
         lazRIza+ATamtPpv1tj6rrZd5RF4HxYs8/6lQuidnomFbsyMyn5Bz3jXiBsOSMMqVpEu
         6d3QME0qu4OJ+pO+zIoWWYVhjZ/oto/6KXPlqDo+P8j54jtqjWrcyNjNYKiomtESkYLS
         pU2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Q5tDi/mzccQ6AbaS9azQtuLDVIFA05soy94jMEvfsFg=;
        b=0ZSJ0mzS57/2Df02TPBl97BOifs+I80qPr/njxd9VXc9LmOmCUPgHumu1B7lUroCgO
         o6y6Q0SvodxJMBUkw1vFhn2rEHOzE0sqxhF9gaNT/CIwlFSAuE3QPSMZCeNlU1vvtY1q
         M0Rt0PuiBHRWMeBKSkl2LAESUre6UVnCeiW6OXFZbDmFHdKhKUZl9ps/jFGmyYWxsE76
         NbEwC668Y4pK4wQacCdkbG5ktEoKs+ZQT5jEconX2ui1G/biJBi5TR9Qcy1bBT1UBZ9e
         ioY7CcG2mtp0qZ+JC0fP/HBNYr0c+c4TdBUf7qiUUkpfwz3IeK9yy+tIAZQnVWS/HIoG
         aIkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S9QHapNb;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com. [2a00:1450:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id m1si433725wrj.4.2019.03.04.13.09.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 13:09:11 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) client-ip=2a00:1450:4864:20::32f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=S9QHapNb;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32f.google.com with SMTP id z84so524201wmg.4
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 13:09:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Q5tDi/mzccQ6AbaS9azQtuLDVIFA05soy94jMEvfsFg=;
        b=S9QHapNb44zMd1Nmrf1DcRUylaVGTQSdLBU7/K2w/sp1VYI+C9z7cBggxqfSDI8gcd
         ZD5fuKP0cY3rpnHIrfuvAUEAtjzqJA/x3j3LuZUwATigg/m5qKjjcbA9OLEzH/znD+QL
         MjvZqiXaY1tcG6p3UBy7ZUgGHgqsCw/EUuBR2Dkhfb6f4ICEbKkE29ZHEUF2CeUlREey
         Pom0xyTi7k2RPTuShizPCKR8AFlMaS5HM09QG8kVXvkvZs5fXVGe8QsLh44sm2Hkj3rc
         lNGn7k4FFBR9OoVf+TdLzWqlInR+FOt8CO+bqFZXpkcgZsEOC0OZOvnVFTzCWX6PfMnV
         G2Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Q5tDi/mzccQ6AbaS9azQtuLDVIFA05soy94jMEvfsFg=;
        b=DxGt8Ncjcz7UDvb3K5vFnTj3oYkNz8bS0pHaVSN6jEzj3aotTOlTagdLfP+dc/C0Mo
         eps5tZ1BDZLZWCjOKnBuTou3+tMLLCD6DiJWOIubeyvkB6kNTSUvY8RHdHvJcMDPL0yA
         POGJTjrDWEIkYLfCLwFheiU998pCptHaWVT6RuziO+vLoGQCHivb5ojvUp+3Z5HOFYKG
         04rKhPhV1L76Tysja55GAvODxZPU1Vlmwjw6xuEN6Wuq5NlqlFEWWeVka5mg/7pkTLh/
         DXxI0qzwwjXy6YOwJ1QsnuD8FimW/qPV1Svpg1G289JkuEdsSq00G2AKVC1e4yxmO2Ja
         dpOQ==
X-Gm-Message-State: APjAAAWK+9kvdGOVPJbyAbFtTjQ0+m2eOSuvfv1Rogni6HS9rYNyVL69
	8uxP+3+IGGXl0n/5xM5jDZPUXhyd
X-Received: by 2002:a7b:cd82:: with SMTP id y2mr561211wmj.121.1551733751290;
        Mon, 04 Mar 2019 13:09:11 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id h15sm7673932wrt.56.2019.03.04.13.09.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 04 Mar 2019 13:09:10 -0800 (PST)
Date: Mon, 4 Mar 2019 23:09:09 +0200
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: daniela.mormocea@gmail.com
Subject: [PATCH] Staging: fbtft: Lines over 80 characters
Message-ID: <20190304210909.GA4408@pthm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix lines with over 80 characters

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
 drivers/staging/fbtft/flexfb.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/flexfb.c b/drivers/staging/fbtft/flexfb.c
index c5fa591..0759d93 100644
--- a/drivers/staging/fbtft/flexfb.c
+++ b/drivers/staging/fbtft/flexfb.c
@@ -671,7 +671,10 @@ static int flexfb_probe_common(struct spi_device *sdev,
 			break;
 		case 9:
 			if (regwidth == 16) {
-				dev_err(dev, "argument 'regwidth': %d is not supported with buswidth=%d and SPI.\n", regwidth, buswidth);
+				dev_err(dev,
+					"argument 'regwidth': %d is not
+					supported with buswidth=%d and SPI.\n",
+					regwidth, buswidth);
 				return -EINVAL;
 			}
 			par->fbtftops.write_register = fbtft_write_reg8_bus9;
@@ -718,7 +721,9 @@ static int flexfb_probe_common(struct spi_device *sdev,
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


