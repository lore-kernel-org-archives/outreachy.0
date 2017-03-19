X-GM-THRID: 6399268904363884544
X-Received: by 10.157.21.37 with SMTP id u34mr11492126otf.40.1489945897402;
        Sun, 19 Mar 2017 10:51:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.162.197 with SMTP id l188ls3133700ioe.23.gmail; Sun, 19
 Mar 2017 10:51:36 -0700 (PDT)
X-Received: by 10.107.146.215 with SMTP id u206mr6377370iod.29.1489945896494;
        Sun, 19 Mar 2017 10:51:36 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si2304568pfx.8.2017.03.19.10.51.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 10:51:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id p189so8749698pfp.0
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Mar 2017 10:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=g58Vw87JGqcUPNM+50YvbewJMnlR0Yfg9PUE7Rt9kQQ=;
        b=O9mP//GpqYoX3sCBIb8D0mtwpiz1pZpKunvtIQPjHdl58yTBtrqytcNQcAK7lKkhS2
         nVDmLu0qoX+k30p+teXWdr4D5UQWiUu3B46GK36pIzE5cuYgJDqTUf5K0zjfLKZI/kT1
         sJLILQLkli/3i+OCPVQobehZYcxveSiAcOCWyMdzJns1oZ9R8FOxR1YVyyJuR/wvn6YR
         /0lCa4F6GN2Vak0zPHq/lI0pD3Bh7YCHoDWWqECVZMb6xmxp6jN4c4ypLCHJN27gup/u
         TDY00iondq7mtxw+461jLACqx0SEcUKJcUCX2KY6xkDNSrbTave66FjgfyGgm1rNhmyq
         nXRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=g58Vw87JGqcUPNM+50YvbewJMnlR0Yfg9PUE7Rt9kQQ=;
        b=BacMzy1F/WZ6YKYCHTyJ3N+OIZVqjY+OZ+doqG3SWdOThhQf6asGWKMIYFMAxrNvxM
         qtFOjBRpZmV5QqNSOTlgc28SlJ9uGo9ZfQ3IjZpGgTMngXQvb1quPqbL4z6V4VS3C379
         gmveveZHcg/RIMvSeCXXqJEoetoyFZjlUxGfFzQPui1Fmxly1dAWX1rGIoE9feQIIDXR
         hhM4OU1h7kPc6TKNS+ccJvQfHKIsPPykiC8qpqCNS3OGRnBfdFSBklobJ9EkvnilNPhJ
         wwAzjHrPYqJ1RaQWToEeUb+Tpw/SM+J/AzCT1eHNWLSzbpJtMFQo61Itq5ms5nMsVT0f
         Ng8A==
X-Gm-Message-State: AFeK/H2tN/G/vWVPjPp0xX8ViGrIa+C/sw8yhlWxsYrtEtM4s7FGdxiRvh12KdyT4IFfHA==
X-Received: by 10.84.196.164 with SMTP id l33mr34913156pld.0.1489945896268;
        Sun, 19 Mar 2017 10:51:36 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g64sm28303390pfc.57.2017.03.19.10.51.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Mar 2017 10:51:35 -0700 (PDT)
Date: Sun, 19 Mar 2017 23:21:33 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: lars@metafoo.de
Cc: Michael.Hennerich@analog.com, jic23@kernel.org,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: impedance-analyzer: ad5933: Remove unnecessary goto
Message-ID: <20170319175133.GA19710@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary goto.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/iio/impedance-analyzer/ad5933.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
index 297665d..c9ed2ac 100644
--- a/drivers/staging/iio/impedance-analyzer/ad5933.c
+++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
@@ -663,12 +663,12 @@ static void ad5933_work(struct work_struct *work)
 		ad5933_cmd(st, AD5933_CTRL_START_SWEEP);
 		st->state = AD5933_CTRL_START_SWEEP;
 		schedule_delayed_work(&st->work, st->poll_time_jiffies);
-		goto out;
+		mutex_unlock(&indio_dev->mlock);
 	}
 
 	ret = ad5933_i2c_read(st->client, AD5933_REG_STATUS, 1, &status);
 	if (ret)
-		goto out;
+		mutex_unlock(&indio_dev->mlock);
 
 	if (status & AD5933_STAT_DATA_VALID) {
 		int scan_count = bitmap_weight(indio_dev->active_scan_mask,
@@ -678,7 +678,7 @@ static void ad5933_work(struct work_struct *work)
 				AD5933_REG_REAL_DATA : AD5933_REG_IMAG_DATA,
 				scan_count * 2, (u8 *)buf);
 		if (ret)
-			goto out;
+			mutex_unlock(&indio_dev->mlock);
 
 		if (scan_count == 2) {
 			val[0] = be16_to_cpu(buf[0]);
@@ -690,7 +690,7 @@ static void ad5933_work(struct work_struct *work)
 	} else {
 		/* no data available - try again later */
 		schedule_delayed_work(&st->work, st->poll_time_jiffies);
-		goto out;
+		mutex_unlock(&indio_dev->mlock);
 	}
 
 	if (status & AD5933_STAT_SWEEP_DONE) {
@@ -703,8 +703,6 @@ static void ad5933_work(struct work_struct *work)
 		ad5933_cmd(st, AD5933_CTRL_INC_FREQ);
 		schedule_delayed_work(&st->work, st->poll_time_jiffies);
 	}
-out:
-	mutex_unlock(&indio_dev->mlock);
 }
 
 static int ad5933_probe(struct i2c_client *client,
-- 
2.7.4


