X-GM-THRID: 6264490857152380928
X-Received: by 10.112.149.6 with SMTP id tw6mr3734615lbb.6.1458574433318;
        Mon, 21 Mar 2016 08:33:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.213.194 with SMTP id m185ls647395lfg.10.gmail; Mon, 21 Mar
 2016 08:33:52 -0700 (PDT)
X-Received: by 10.112.55.212 with SMTP id u20mr3843801lbp.7.1458574432634;
        Mon, 21 Mar 2016 08:33:52 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id ph10si848326lbb.0.2016.03.21.08.33.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 08:33:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=sveta.orlik.code@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id i75so10075735lfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 08:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=IbY9GhcBaKOYKigWvIBsib2a6vhw52uC3D0VQCRosno=;
        b=V8YwQlpMcG5q9n9SU0pUHq7ON6nfvcwZcYYP+QblLlibP86+cQhc8VEW3Op2CZx5SN
         lTdl/aZb/8RtELEh7GzWa4d2LWZhfL+Gzssbhg/acvrojr4q/rK1Tf0j2SVZRj4pAm2u
         3K0YwiKc1O94I9Dx/N1GeEimFgMXrGS6ueOIp2j4ebpHCAYSvZTG0dacbsSBJmbtYwEF
         lIVRHuIxTj6j7buDSY+mZoXF1l6njlxnv0P1VlCLLeaq0m2lMTlbkH52ltXiO7sAlDLJ
         xFdFrKjcj3TeuXwl0fx5XWUjoGMtl4izygOFON00aebbU0mLMxOMJDYuDtmqBGnYrVY+
         wpPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=IbY9GhcBaKOYKigWvIBsib2a6vhw52uC3D0VQCRosno=;
        b=ALv8yH3sm7l2IKkvHSvi2SwDni4cWvsODuvQrd4QGwkUxRH/vSsawSynTcMuo7FwwG
         d6yGmXsTdclFYuPzYrFRjpmxDbTIjhGUEnEJdlh07ed9+tkMOarGSsJcoqtjdTpd1BHk
         MUqpqMPiHjM1hfdoVdPXNxR8acrpHjX4oq5NBuiciJUwG7c8ZpzaZD5Y/V1pmUwR/a6m
         15+8NFvueRfSGLvbrRzIcXMVOO4NvETFREBNYbda7nAZgvjDXqj7S0iovxoP5fonhHT7
         K5DWuphmd9t6FAzpfT2RSk1van0w9bcZjgfv/3urTGfIKqj41Aqy8qPTCzmrjZkq8e72
         grxw==
X-Gm-Message-State: AD7BkJL0GjnJur0FEVjKGoDiADF4qtMPof21gIrVCCvCIQdM8QiTxIa1gcD80ZT5+NUS/Q==
X-Received: by 10.25.149.68 with SMTP id x65mr11208821lfd.138.1458574432525;
        Mon, 21 Mar 2016 08:33:52 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from pal-comp (broadband-46-242-29-57.nationalcablenetworks.ru. [46.242.29.57])
        by smtp.gmail.com with ESMTPSA id tm4sm4545149lbb.42.2016.03.21.08.33.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 08:33:51 -0700 (PDT)
Date: Mon, 21 Mar 2016 18:33:51 +0300
From: Svetlana Orlik <sveta.orlik.code@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: ioo: ad9832: Replace 'unsigned' with 'unsigned
 int'
Message-ID: <20160321153351.GA16781@pal-comp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace 'unsigned' with 'unsigned int' to avoid checkpatch.pl warning.

Signed-off-by: Svetlana Orlik <sveta.orlik.code@gmail.com>
---
Changes in v2:
  Send patch using mutt.
  v1 patch was sent using Google Groups web interface.
  Not sure it works.
  

 drivers/staging/iio/frequency/ad9832.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/frequency/ad9832.c b/drivers/staging/iio/frequency/ad9832.c
index 18b27a1..358400b 100644
--- a/drivers/staging/iio/frequency/ad9832.c
+++ b/drivers/staging/iio/frequency/ad9832.c
@@ -31,7 +31,7 @@ static unsigned long ad9832_calc_freqreg(unsigned long mclk, unsigned long fout)
 }
 
 static int ad9832_write_frequency(struct ad9832_state *st,
-				  unsigned addr, unsigned long fout)
+				  unsigned int addr, unsigned long fout)
 {
 	unsigned long regval;
 
-- 
2.5.0


