X-GM-THRID: 6396588867730800640
X-Received: by 10.99.149.81 with SMTP id t17mr15219635pgn.62.1489330124712;
        Sun, 12 Mar 2017 07:48:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.31.6 with SMTP id x6ls11408504otd.46.gmail; Sun, 12 Mar
 2017 07:48:44 -0700 (PDT)
X-Received: by 10.129.57.66 with SMTP id g63mr13420850ywa.77.1489330124455;
        Sun, 12 Mar 2017 07:48:44 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id g82si2670664pfb.5.2017.03.12.07.48.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 07:48:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id j5so16212207pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 07:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=lZIBgb/NcOYfOKTrhEyFzLKZtOiRCqne4SLIUEesXgM=;
        b=kVa0NS1eGaC997AYFPkoBDwvB6CJuyzSJsItq8fRPqnzKdD4SrrD++F8/AjXH0RMeK
         j2iWvqTzQGQ5TeEQNHJxygWra3h35mY2VsewKLUBMWrjRJ77hFFTCVWAItmllcFMRQWN
         i98+UNGUyQpCMFOGSfD9iYGD5xgfIodqSjYBiXyvMbJqoHGLblS9vb7FGBPbYsGt97b2
         bcj7A9s9H4ujGgN8VHpqvHNWxsd9m0gDRafPSDNVa1CQ5uaNmW4bhE39/2KmxFeN6q6x
         Y1UqgSWm7TVG5Y94AbBX15kvTto5SFmMFjk9RDS23c52GEI8hf2DLv9qkkNAgcH3u+sm
         7y/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=lZIBgb/NcOYfOKTrhEyFzLKZtOiRCqne4SLIUEesXgM=;
        b=FLGsWVv+wHvBLAuvbRiZC+cpRwMxw68C3Pc0zQVCVrS7zGlByXzAAYgH0eDyTbnYz8
         RynGu+07qtp5SjblbgPueEPRXymgtvTJgECfagfhbouFauxvk4PiyLqf/fPB78fsv8zG
         9gKTk1qlzAjDg7e9Eu33NmTyd0uNwGJ8zmP1ERciZHvqo0zV8Qdr/fqyJnr/ZKVDSCT7
         9lGhQe2BpxqKZF0sw1EG2Zcf3+HEGGZu5qMBCEjyvDOpj0q5VgM8WB6k22IKopVKpYpn
         1RXc+WKXwG01J3ThEiRDHAa0czP/fun8rZSefXJndtJnW+euSs0RRwSa6cAQv0n916B8
         CnUA==
X-Gm-Message-State: AMke39k8Yr6093xfcQe6HksA3In1bxzQTcaCjdZaIpGmh5Q+q0azjEIwxi1G1f/hYwNJsw==
X-Received: by 10.99.39.71 with SMTP id n68mr30589385pgn.85.1489330124231;
        Sun, 12 Mar 2017 07:48:44 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.194.58.130])
        by smtp.gmail.com with ESMTPSA id q194sm28755055pfq.43.2017.03.12.07.48.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 07:48:43 -0700 (PDT)
Message-ID: <58c55fcb.cb2a620a.8e3bd.8223@mx.google.com>
X-Google-Original-Message-ID: <20170312144835.GA27704@<rvarsha016@gmail.com>>
Date: Sun, 12 Mar 2017 20:18:36 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: comedi: Compress return logic into one line.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Simplify function return by merging assignment and return into a single
line. The following coccinelle script is used to fix this issue.

@@
expression e,ret;
@@

-ret = e;
-return ret;
+return e;

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:

- It is not a good idea to remove structure member initialisations. As
  the value of structure members are not limited to scope of the function.
  So it has not been included in this patch version.

 drivers/staging/comedi/drivers/cb_pcidas64.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
index 3b98193..b761f00 100644
--- a/drivers/staging/comedi/drivers/cb_pcidas64.c
+++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
@@ -1417,9 +1417,7 @@ static int set_ai_fifo_size(struct comedi_device *dev, unsigned int num_samples)
 	if (retval < 0)
 		return retval;
 
-	num_samples = retval * fifo->num_segments * fifo->sample_packing_ratio;
-
-	return num_samples;
+	return retval * fifo->num_segments * fifo->sample_packing_ratio;
 }
 
 /* query length of fifo */
-- 
2.9.3


