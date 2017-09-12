X-GM-THRID: 6464947819093426176
X-Received: by 10.98.76.206 with SMTP id e75mr8443379pfj.10.1505237961829;
        Tue, 12 Sep 2017 10:39:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.141 with SMTP id g135ls1530724ioe.23.gmail; Tue, 12
 Sep 2017 10:39:19 -0700 (PDT)
X-Received: by 10.13.202.212 with SMTP id m203mr9940910ywd.77.1505237959060;
        Tue, 12 Sep 2017 10:39:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505237958; cv=none;
        d=google.com; s=arc-20160816;
        b=BCIId2MbMUBh4/W84ga4In4jbKfCVKXfXMa5JfT2+Hr/sMQY1/iCcyThisWcAtFLVk
         xeHfZDToimflKxMQZCY/jY4EyjZy0SyjtYdJdrBoIzj8Dzcz94U4gzPiz39U3wof+5Xl
         puZG64KyZBfSFAC5CKscB1fIF4GMDCeR7YyU9GDtFw2dq6PYG4ejPTSQ7vFd0HtDjtAi
         HoN12HveYX+mBL129Jvlsqy45p3q/kNI85PJ51GAMVaJZlq9XcO+S1vLbZ0SPHrPYx28
         ju5c9bJ0lsag8GyxpOOSCjsduN2bVmXf3IiodzjQmMsVQErN27K/LC5XAINdoJW4ljnZ
         ZDsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=sTedZzCJ3sVcsxaPHGor+kjVb/I21qXwnKpbusphsyk=;
        b=F/4za0rQcaV2Jw54ULtEUVaUUML+ox1eN2gC4Pe6Wr+hsYUncfcebsYBQzquoICuX6
         cIPVS5yursR1TZy4sDVoGX8Q29ffL6XZH0+bUwKEYqYVaM4oknUl53hT1XEBWRUsjsDF
         FhtfptfesEt0ssPrzxsGShxMM6wWppW+UgGIhabGOin1vG937kS+CnSTAk9ww5xxMzFF
         Q/lxIFIK70z8jzC8Rl9NztFemlmA3IP37SU5h1lxLVD2zg5yFwKRkzOg/aAiUVYlVI+C
         Am4vHNmwbO2ArIU8CNwW3PP4n1Qu1UgzL6VfHlosn8UVNFs2XSk8cBYDrbvZ8vjeRhFk
         n3+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DmZfuxOD;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::22a as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x22a.google.com (mail-pg0-x22a.google.com. [2607:f8b0:400e:c05::22a])
        by gmr-mx.google.com with ESMTPS id u19si1291617pfl.4.2017.09.12.10.39.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 10:39:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::22a as permitted sender) client-ip=2607:f8b0:400e:c05::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DmZfuxOD;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::22a as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x22a.google.com with SMTP id 188so22514670pgb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Sep 2017 10:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=sTedZzCJ3sVcsxaPHGor+kjVb/I21qXwnKpbusphsyk=;
        b=DmZfuxODGyeUKUHznySOQLuwyb2pAB5hWGYJjj8zHLocfRoNcdCdXQGAKixxnjgdB9
         dXGZKwzoXBlSHZ76iXyYUU3Mqv4WEQMQzv2lTuUINzX1YYCcjeljN6Gb1Q7YUeILsLGQ
         lUYehAafR1GbjbUFjH1V0QcGesp7K/dtkqGKqkc1nTC67dxjtccZqTiL6tolriJwSTug
         sagP21YBakLRjriB8qEKb69aDuCrtOQ1epogaz46/fi0bu6MZi2+o79Ig14QpSu87Q+F
         7mlosDo9hzOUMvj5l30TJ+PfkH5s5xrM+FO7Yzp6GTJskIFTyUFLwgVK1sEWzRBfbrvS
         x2/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=sTedZzCJ3sVcsxaPHGor+kjVb/I21qXwnKpbusphsyk=;
        b=YLhnaNXAL+krxBsMcmvwItsH5bGQK/HpiSlKgU0AP9ijyjork5P57in+ba8CH9gI6c
         lqyyYAHR0oPgz5SqNvLwSdIZ7N+lHw1bQBc1WanVlnNc+eggufHfJCUhUzlTfSqMzvxD
         0FsC1HeKdZzvxCULrQxt5+4EXaB3kod3iBf00+GE2Yot+lNpZbDXlaMDWmICeAo1kJhf
         jJcS8iqKUDjT0BKnaeDWAYZ3OGC2oiALCE6ZB9sJHLV/BNd/e9vkGTJexxlFjRWi/POo
         Sk2x+Wz6OYsTtY48K852VXbendgaOTY4j1OH/Oo8t//4sJ+W0FQCkfDTLwF9NkzOmAEr
         Hguw==
X-Gm-Message-State: AHPjjUgnO6N3CS9eggUx38X89AWBkUWLfhh4pWXPi2gifn2ZE6e/NOk6
	pXvUVifnBKcogOPF6uM=
X-Google-Smtp-Source: ADKCNb5nEHqQcGmXWwJvePD/lF4Qw3kWTXoDjX248KMQm5rYpTaqKVu+K7zskdVBjT7I5bLKR5ceaA==
X-Received: by 10.84.246.203 with SMTP id j11mr17402549plt.321.1505237958829;
        Tue, 12 Sep 2017 10:39:18 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.172.87.17])
        by smtp.gmail.com with ESMTPSA id t17sm2905019pfl.61.2017.09.12.10.39.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 10:39:17 -0700 (PDT)
Date: Tue, 12 Sep 2017 23:09:12 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Staging: vc04_services: Code cleanup
Message-ID: <cover.1505234866.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The patches in this patchset fix some warnings
in the vc04_services driver.

Meghana Madhyastha (3):
  Staging: vc04_services: Remove 80 columns error
  Staging: vc04_services: Replace "foo * bar" with "foo *bar"
  Staging: vc04_services: Remove commented lines

 drivers/staging/vc04_services/interface/vchi/vchi.h | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

-- 
2.7.4


