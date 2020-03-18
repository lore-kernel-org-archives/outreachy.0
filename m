X-GM-THRID: 6805399652543758336
X-Received: by 2002:a25:ae11:: with SMTP id a17mr3309071ybj.514.1584505702006;
        Tue, 17 Mar 2020 21:28:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:5cc:: with SMTP id 195ls7879234ybf.10.gmail; Tue, 17 Mar
 2020 21:28:20 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vus1W3fx7PN9E9tGpfW3Za5XGCnIBCTv861rYUr0sekJgenTOejMEv8tQX9CKKAmf92kDBe
X-Received: by 2002:a25:b7ce:: with SMTP id u14mr3225186ybj.192.1584505700656;
        Tue, 17 Mar 2020 21:28:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584505700; cv=none;
        d=google.com; s=arc-20160816;
        b=sxwBpAKyd9uQJMyp1Eeb3JGK/V0V0b++UEmq2mheTvW4P9SAEa//zbGXH/lvJSKYy1
         Nugpfxp9KZZoXiy4lVO6Z6xdWJhJkbZP2T7dQCiDQrqFFrEVSmgkCk0/VaU5WYCqkpfe
         lq2rQnfuqcXBkaRGScF0prsu6RDmG57aGb38sgEgxL1B4g0tDJPAOWoboIKWhzY1h0Sx
         vEbk7WY3DM/m1oaDh5QDLLqtlIX9oG+aFusRHIx0q5aFlBa0WB38JfbzbEEsTBlUEVIf
         UBaa5XLKEN+1ZQmVTFpyOtG6F5AQkJjZpPwbINm5Dxyc9o6wp0Df6I7GRgPFG3Vp1zfT
         PO0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Yby+mB+m4t6+rWgz+NdAFsUfRpAwoGudrPEsW25H53E=;
        b=tbHf+BYKvupSfQdfcH2+mlVliunrW2ApUBYmx60ilMRJcOVOBXh/TG5NCtjwAHJSei
         tBcV5bUA6i1X+NexR+wn6sDLiMWmIdmYuQ2B7PmrMDXKpo1pTMkbLjOcZJ4ey2/ysv4n
         51KaVSydgxRV5X+5JKaYPztRptKgUh8bGYBske7z1ka1sgCTG29OAoed+YrM6cflUMU5
         fdmenKlEYJdl56rir8USgaRZf1uPIl/ikifa8J6+n0SEPr/FNMET9rIDeh/wJGzKHyU5
         5svK1+b5iDHv28qdaxihiV1TSt0Cc1ZsH8xwwHl65KaqH14J3v5eNUjT6vI4Y6tV+Cv2
         hEfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GC1QPTma;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id e14si517446ybp.0.2020.03.17.21.28.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 21:28:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GC1QPTma;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id hg10so755297pjb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2020 21:28:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Yby+mB+m4t6+rWgz+NdAFsUfRpAwoGudrPEsW25H53E=;
        b=GC1QPTmaU4fhhDidbDtOc+AEKg+aD4AaLcCbrnW76z3DHn2OdeWguFtlDvGPNNSuw+
         fw2E0Y6R/PL5W/dk0RxSg5c7HPLuafM3vebU1yi0xiTDx4q7kF308y5fHyT/MbzimAw7
         u2BIE0eWC0UiBjH8d0+dzfE3JYLhqNmrPOxFiaCEldgqaHlW8diIzn7AixXdxN686fuV
         3Y9i7G8E3m2LQv3e8GDbXqEBdBJX3fj8DtquSCIrvve+L8O9T/wzldthMBvzLWg6/C01
         yMNLE9RjoA8H4b9IhRKKvkSZ8pqj+5e3e+R1BFbiopZK+PS8cO+ACb9h7t81u0tl4rPN
         gTKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Yby+mB+m4t6+rWgz+NdAFsUfRpAwoGudrPEsW25H53E=;
        b=oKyK5NeSnf33KFLId+65XkPCQfpYHZCLTGmxmE/fDQl8rh0BVDrQvQ3bcb5D3H25zE
         32FaR2Z8LtvmAIlb3eRlmNOm9VIWUEcD/54GRkaJF0g0SJuPwc7DL7/1UzTUTgAXd61J
         ldoN4lATrzHODr3VnllAIVx8TYgoxpQzYGdGiwxfQTrDFbFvTunl/2lccpUiR0PICqSV
         iQ6Ru6z8nw+cs03Gzt5G9UStiOccOv/XEwU6bd0t4zBJHZ5WS85i8vsafZUm3k2g9PdO
         7U5HuqSYwtGlb+Y/pwfc9Z0zDp2a/UAL+OS+gOAR07w5JOCGladHTkJFcKDyXCUJhUU6
         YJnA==
X-Gm-Message-State: ANhLgQ3PUerVg6V0Ge8p6foJMGOk8fV4tfdrM27K5zrws0urxkwCG9Mt
	hTzldceQABqxVTxA8mZ3qL+znRLZ
X-Received: by 2002:a17:90b:4d07:: with SMTP id mw7mr2674077pjb.94.1584505699730;
        Tue, 17 Mar 2020 21:28:19 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.226.97])
        by smtp.gmail.com with ESMTPSA id m68sm730572pjb.0.2020.03.17.21.28.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 17 Mar 2020 21:28:19 -0700 (PDT)
Date: Wed, 18 Mar 2020 09:58:13 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, stefan.popa@analog.com,
	jic23@kernel.org, knaack.h@gmx.de, pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org, linux-iio@vger.kernel.org
Subject: [PATCH 2/2] staging: iio: adc: ad7280a: Add spaces around operators
Message-ID: <6703668c512dd665a2299a1f5bf14d99262314f8.1584505215.git.mh12gx2825@gmail.com>
References: <cover.1584505215.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584505215.git.mh12gx2825@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Add spaces around operator symbols to improve readability. Warning
flagged by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/iio/adc/ad7280a.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7280a.c b/drivers/staging/iio/adc/ad7280a.c
index 19a5f244dcae..34ca0d09db85 100644
--- a/drivers/staging/iio/adc/ad7280a.c
+++ b/drivers/staging/iio/adc/ad7280a.c
@@ -825,14 +825,14 @@ static irqreturn_t ad7280_event_handler(int irq, void *private)
 }
 
 static IIO_DEVICE_ATTR_NAMED(in_thresh_low_value,
-			     in_voltage-voltage_thresh_low_value,
+			     in_voltage - voltage_thresh_low_value,
 			     0644,
 			     ad7280_read_channel_config,
 			     ad7280_write_channel_config,
 			     AD7280A_CELL_UNDERVOLTAGE);
 
 static IIO_DEVICE_ATTR_NAMED(in_thresh_high_value,
-			     in_voltage-voltage_thresh_high_value,
+			     in_voltage - voltage_thresh_high_value,
 			     0644,
 			     ad7280_read_channel_config,
 			     ad7280_write_channel_config,
-- 
2.17.1


