X-GM-THRID: 6803328043405279232
X-Received: by 2002:aca:c78d:: with SMTP id x135mr444018oif.51.1584023247073;
        Thu, 12 Mar 2020 07:27:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:d0e:: with SMTP id 14ls1422415oin.9.gmail; Thu, 12 Mar
 2020 07:27:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtDV1elNisVLqQl1rXGXZxBHVrC7F5f7IRrit0nH1w/Tf6CgOACOAVcla1PrrEXG4cxw68s
X-Received: by 2002:aca:dc45:: with SMTP id t66mr2848929oig.39.1584023245978;
        Thu, 12 Mar 2020 07:27:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584023245; cv=none;
        d=google.com; s=arc-20160816;
        b=AwbZzJXrfZ6Q/qv+gGk5neaSY0svxwOoZgQJOxpfrDJRb6uVvI5+sWUZj8aVx/tyMK
         QXiVX4Lm2D3/WzEIjJRfVFh5mvYB0nCYvKu7QFCIyupg8SuoC87RAV4JVNqilhzX968w
         2jZ7/tn/i+g29ivRb54anDo1gvrH7XcQgRJ4EVB3vnq2I8jhK7iWc67pg8d+a4qUKwiv
         gRGP5eDN/OghEO4RN5UC5ZTQHY1HcVwwDr+/3po0i+Zq+5O3rY955jurTo63la789zyh
         kOYrr73qqyK3lSJyp+FNvPttCZA+FQtLL1my+xt5MBZfgdDcinHAYllZy714Sh3G+eh9
         5cKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=0OR79l8awnCWEsFtkKq9JgDzwwDGvBfUvW5RRWKJYms=;
        b=UswUKIHWH5EQryPNWaDQwhXuhJua7G/UhswKzYBaNeRBmape9RyYpj5miz9778st/s
         Mrg4omjq4FJNyHPUc3J9h//C6o2FsDf0E7v23UHVEL8uGYK8pRZGcsTxpYveWWBDVSgw
         WXNGezn1pfbpT8NqtUiIn1XwwvTJud2o3QmsUfGUJILHqS6CkwAz1BkOSAEHALJb+PHq
         WP7eG/EJuRRIbEZdrYO0W++Dfyq2WAaNFeNR8eoGP6jnV6/hpGpBo+RmsVBubm/Mj1pU
         0z8NbpqKvHnxiTzqzcsMz1UX1C21rmSgmH6AkVGszE4CxuBHEPfw/KOxtGGy0FiN9jMO
         dAOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=MPJNhViy;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Return-Path: <jevargas@seas.upenn.edu>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id v19si370310oth.1.2020.03.12.07.27.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 07:27:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@seas-upenn-edu.20150623.gappssmtp.com header.s=20150623 header.b=MPJNhViy;
       spf=pass (google.com: domain of jevargas@seas.upenn.edu designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=jevargas@seas.upenn.edu
Received: by mail-ot1-x341.google.com with SMTP id f21so6392149otp.12
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 07:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=seas-upenn-edu.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0OR79l8awnCWEsFtkKq9JgDzwwDGvBfUvW5RRWKJYms=;
        b=MPJNhViyHf9HE1gryTmtKi7mxV8tbDG25XOMje9/qAV+r6nMXYwuKYEqgTWecP2/Y4
         FnZo62MbkhX35o0qRRXQLjkckMqpAwSRqdrppkrOhhy0NVd6AI2jD96UUSNUX0JlZJc1
         hg6cWmpfKCa4j8gSpvCx2slTQRg/HHzgA4MB2TRUVfZJfWJJPUHJMIGDH2RFtOHdGjLQ
         6C9pU0cX96Xuu/wYKXlFK/+6Zk9AguKil1kqD10N4BG4xvh7a8Fvt2k+3Dj/HuHmYWpI
         Cdv6PfXjK9LbpMCcRgVAGiWSI4JKaP19LatsAezu9d3UxW+b/dIah88KY6gMzVh2uNZY
         lT5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0OR79l8awnCWEsFtkKq9JgDzwwDGvBfUvW5RRWKJYms=;
        b=rPxt0cqwt18O8oXptYWyrp7tLiNOxZnbi5aQ5fUhJ3G/s4CN2LQZ82HS/hRMOpr0K7
         9Q10JpmLxrTdDyLD2us9Jr3kP8mAx1C9uDvupfDrC0kaTBIVQcy4ztAxh/WLSGuW7w0m
         rZOOyIit84uiQD53eypqOIbN1UCntsjv13b/20DYRwG41WhFjQ2swOntNFtrpO0br3Bd
         E2e23PKJthwdmEIp2yLy8KIw9SAWsqwG/4D4TiN6HoItuji9dOub1mmNWA+9QJ5SLnpH
         s9teVZ6rbg1ObjriJ5/ju5yMBm1nzKDeb1JraRp4MmAkVXd1LsUsacrjzPG0gKIDpXo/
         5LBA==
X-Gm-Message-State: ANhLgQ20H8YL7Fxxlj7OvVlJleroLcmIOmTWlheLysFVggRqmtyrMppd
	9ZqzRbU588pSmhzdGFbtl8ISud1P4j3nxQ==
X-Received: by 2002:a9d:ac5:: with SMTP id 63mr1923598otq.239.1584023245493;
        Thu, 12 Mar 2020 07:27:25 -0700 (PDT)
Return-Path: <jevargas@seas.upenn.edu>
Received: from evX1 ([189.172.48.149])
        by smtp.gmail.com with ESMTPSA id s128sm6654990oia.4.2020.03.12.07.27.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2020 07:27:25 -0700 (PDT)
Date: Thu, 12 Mar 2020 08:27:21 -0600
From: Enrique Vargas <jevargas@seas.upenn.edu>
To: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Stefan Popa <stefan.popa@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: iio: adc: align multi-line function argument with
 open parenthesis
Message-ID: <20200312142721.GA2748@evX1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Eliminate WARNING found with checkpatch.pl for argument split in two
lines not matching coding conventions identation.

Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>
---
 drivers/staging/iio/adc/ad7192.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index 51b1cd3ad1de..5f65d084e320 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -477,7 +477,7 @@ static ssize_t ad7192_set(struct device *dev,
 }
 
 static void ad7192_get_available_filter_freq(struct ad7192_state *st,
-						    int *freq)
+					     int *freq)
 {
 	unsigned int fadc;
 
-- 
2.17.1


