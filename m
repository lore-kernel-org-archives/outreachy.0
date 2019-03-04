X-GM-THRID: 6664664784241164288
X-Received: by 2002:a1c:4087:: with SMTP id n129mr87415wma.13.1551738191239;
        Mon, 04 Mar 2019 14:23:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:81cb:: with SMTP id 69ls3728379wra.10.gmail; Mon, 04 Mar
 2019 14:23:10 -0800 (PST)
X-Google-Smtp-Source: APXvYqzwz2JPstcqcG7fXXrw6kLOgHUCKdstaruSTuMwGUYQjcPOT8FJz7tPdGuC1nHPmgODaCM/
X-Received: by 2002:adf:e412:: with SMTP id g18mr1118269wrm.9.1551738190536;
        Mon, 04 Mar 2019 14:23:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551738190; cv=none;
        d=google.com; s=arc-20160816;
        b=velN/RqpJNMHb3BorLrXM+RwIvRmPiVnyb1Ar/wJ6NaHxfCsqPBKGG1XzsUZ3IuVll
         OTCH7+6QqWABdAfXtVvDelD1Nf+oYGi9L+YVsHoSBa4/Gp1ZDrl1ZExhSXKxnI37mZCl
         q8G4Jk+ETFOxSdHqV86op5qqPsw9cjT9qUWxSJoJrfk2Qxiqf9cc4STgc9ZorbUtSTzb
         QzuVzbQK+nquLYIBUgM2JsqCwkMi9VrSlA+WFQtoOgY27PAuQCvfryOyAFPkEkfopYMW
         dreV7wBkcTv1uH1UOrXvv4EH00R6pp9bpJX+inH/UO+vkUt2D7WIQA0h8WZoFTDjTjk2
         gWyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=/9IQ6AfjERd1HyuKdyr+1GlSNOVVhWLlxxVwjQJ9Q4Q=;
        b=AtC04A5WE8Go0sBZXgOxOmS89uDELW/BC9X85C3ZZvIFM5XvQeSkuru8vOvp/0+WAm
         uwSVqJ/ZbD3T9sqWRhQYfgO2ePMq7VNADP7DyhIq80x/PSEybq3ONRTAxXENOujxL/xC
         p9UKSn5KzSiPd+lFdPQIXe8AF9AZdhJX2LI7wpHP7LgbxgEj21Kydp8XNuoVCYY7uzr3
         RRQ8d/mUzYQ3jXZyAa4IJt2AGnXReOlipTlo/YGcR4HVmvuobck7koF8K4v9lKEZ1Iwq
         7S+BWOED4T5V+2xAM/k9p4+CD3xtqHW4MZcdQE9lSa6wt60eDtCtjgNCfZU4AKyvvt+d
         1Nkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k3PEIEPG;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id b130si290951wmc.0.2019.03.04.14.23.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 14:23:10 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=k3PEIEPG;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id g12so7290942wrm.5
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 14:23:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=/9IQ6AfjERd1HyuKdyr+1GlSNOVVhWLlxxVwjQJ9Q4Q=;
        b=k3PEIEPGreEmKkLOaGWjrX8O3QaBpLpNHD+1VAEBFuPYXNmYb/rpjilIeWlxqbcHk1
         brCQ5PbB5Djp3jpEMzOxqaWVn+CYOGPofbjMnDhTLFvgzdB0x5de8+KsrHhIshQNa9Rg
         VXmTZ7rFH9BJP4Tq3QbqbqkohgBiYtutXbLDiyMWFEiq9iFJbQGXV4dSeaqdqQ89Zm1E
         E+mh+u6G4Xm8IBBMNxuZCWO9VJKRn44i82khet300YCkRxk5Fkkqxw3C7doYJov2Bsgi
         9igsHZBcb/tWdQoTBHEul/YmwmPdBeRO3XzMC0eE7AkN4fx3YnCSb7SYshTQ3COtBi91
         RgFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=/9IQ6AfjERd1HyuKdyr+1GlSNOVVhWLlxxVwjQJ9Q4Q=;
        b=kb33fhFGSzQ/1LdDpPMrjGKTWjkOpbjKroIAdgSYmbr6EKvDdzsEGM/m80xwyP1IxF
         uFZfnCH1DzukaBg24anItQIEWqKrblYrltIxV4bl53fEB7acSPJoPhAhIBrRGD0092LM
         zPy8hsCQKhNCq+j7qcqNdCctXjGt3xTDckfpdcN2yGJapyHSWEvqIi8d9FrjCOSUCcoE
         2d7RtpfXaMssB6HVclZMXzJKY2+vpNqNHw9WvxsjtiZ1hvXlIYENcycOszvUQUA1cxKO
         ufxpQZ+H9Oe4uqcJX7RgDL6PYthCNy2N5upZk1ZdqHh8O+bYbX7kFRpQgR5ZwF7pXAoI
         oQ1w==
X-Gm-Message-State: APjAAAV4t2Ov1niMZ2PTMJGXZA3q6eZuumGqwul1LPUTRrk8Qehoil3c
	AqbJPOusJYzQnhG9EYL1MSQhnjUh
X-Received: by 2002:a5d:558c:: with SMTP id i12mr13832356wrv.19.1551738189930;
        Mon, 04 Mar 2019 14:23:09 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id v6sm16271595wme.24.2019.03.04.14.23.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 04 Mar 2019 14:23:09 -0800 (PST)
Date: Tue, 5 Mar 2019 00:23:08 +0200
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: fbtft: Fix line over 80 characters
Message-ID: <20190304222308.GA9982@pthm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix line with over 80 characters to get rid of the warning
given by checkpatch

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
Changes in v2:
-Correct a mistake I made in the previous patch regarding
a multiline string

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


