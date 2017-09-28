X-GM-THRID: 6470843799541121024
X-Received: by 10.99.112.72 with SMTP id a8mr673621pgn.41.1506610726747;
        Thu, 28 Sep 2017 07:58:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.122.76 with SMTP id j12ls1206380pgn.22.gmail; Thu, 28 Sep
 2017 07:58:45 -0700 (PDT)
X-Received: by 10.99.8.70 with SMTP id 67mr652014pgi.126.1506610725624;
        Thu, 28 Sep 2017 07:58:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506610725; cv=none;
        d=google.com; s=arc-20160816;
        b=hEMPmyttI9QwR5ndBRxirT9bd2SPY5Tae5S20al1/K58S2TQFYQabGGp6KOpK8k/qo
         x4AHMXUZtRLQJDFWgpWzyzE+m91vdzUDFqWNE1g5Z37o7GHzJ2dX9ExGaPh2KbiAWO7P
         p0ncnPpXYVCkS0gCj75BQdP86t5fPKXyx0nvaDOPuU6vHR++I4y93rCQyHAGdwMaJsmL
         bLVV8OHbzU0q3WvSLMNqEnxYayb380sEveXA9bey3Wr0+lAC/xXf3bEMZJz1yMy5cepP
         /qyWXsk4HbayrA7+JPzPXYFLfyo5KpTJCZ0H1xSsm8OJj+PhgO/niKHr2/1Jjgaic7aj
         j+tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=IALOfmn/23IxqoIeOlV8aCOUlOF4eFVPtkteXB9sukM=;
        b=NUXNxYi4Z+eAtK6WfjeaSJC7Sblcxxb17QvNJzrublO4nHwy44qJpAQmCBs/c+zT1p
         6t0Blezvx7zy55pKmratMUqAANiXD6wEdosZsc83zbmdZCmqQx2WtaOfHwXP4dBY2A+Y
         ZxLCCaki5T3dGh9AwdbDv8eV57WCNAOroPkE8z96I8vpbqudL+1iVE0lAlDPCAWiTBLN
         mJThFFassKeomyXZ3fLEYuf5yKTi+WwCkbDgGKhM1Xe3zKl1Igt7WyxpJuBkBwOiiyMu
         B4VwSQcHhEigqPe0Q9Ddpj+EmyliWORBB+bkwa9R1syFE6YBYP/V5wr4eCDcKe2I7wuo
         CMxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dugLryNg;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <keerthigd4990@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id l10si226772pfc.17.2017.09.28.07.58.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 07:58:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dugLryNg;
       spf=pass (google.com: domain of keerthigd4990@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=keerthigd4990@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id a7so1703514pfj.5
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 07:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=IALOfmn/23IxqoIeOlV8aCOUlOF4eFVPtkteXB9sukM=;
        b=dugLryNg3jcbX6eJI+WG88NMDADnOfK9azosFaH99d+2AW7FbqEyk1uXksVOd87afh
         VaFeocTpD17gOqbgqYaDBnx9+XWziCDIXSrj9Z5aTRTpFZ06Ois77f9Gh1R1toHHq0yd
         q8xs0krJKi+1a3Kpv4ILLVhD1As55tY4o1ArjJ8z/6cKoKyyI/ooZ9XdnPy2E9Qrj0Gq
         VGGOCpuSWgC4geHgNvKMWP+bNlDSJifiF/BEwHXSV/W1WxT/u+3Ese2oHgQUe7V7OJC6
         rH5jX1/zyfQ9OrkR3qtyOfjZhLyojcGkZm1C9O4JDjCbWD4EHu/06XxFDb/PRaBsunTR
         Jfsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=IALOfmn/23IxqoIeOlV8aCOUlOF4eFVPtkteXB9sukM=;
        b=qoL6U5PPp1UhIRZGNdDFgiRVJBLFVQ84pEqCJuzfgBO3TTj5dhRvTapS+HrJayq7gW
         0t73Z852vRW6HWXUjIQloYslz2rMtImNlnShcj6pe0rD2kJ/s7jfXtAT+TZgw7UejlB3
         xLInBbXV1zbhMUypqsYYP2tsTnBg7N0JGCJRYxaajwd+Cjb4IlNKrqHYj8eejOJFrl4F
         L2YFtrVZYTyJEbNhYLdJyampy1KFRGfAMI0q8dZODggbl6Ytmx4CM3LO2g6gO+/OQRUu
         YUYvTJNDcG3sdBYXRpFNfao6/nqTPDV1HvmVWt9AFXj1bZoLmsmvg2/xSSqSo4uZPjdS
         p+pg==
X-Gm-Message-State: AHPjjUihnbsuR14okxQDOXo3IjoFy3rSVkTKPya73JyAwgAvmtArKNwx
	enH8LMdILR5OnwN6KydNea3MxVpf
X-Google-Smtp-Source: AOwi7QDuBV79R3Q0HmnpIiT3vI4dHZ4g5lBKfec//dZEijmfLrc+D8AcRhiX/QKkM6OEdAgQq/0tWA==
X-Received: by 10.84.143.195 with SMTP id 61mr4256598plz.251.1506610725256;
        Thu, 28 Sep 2017 07:58:45 -0700 (PDT)
Return-Path: <keerthigd4990@gmail.com>
Received: from manoharreddy ([202.53.87.190])
        by smtp.gmail.com with ESMTPSA id e3sm4461339pga.80.2017.09.28.07.58.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 07:58:44 -0700 (PDT)
Date: Thu, 28 Sep 2017 20:28:40 +0530
From: Keerthi Reddy <keerthigd4990@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: eric@anholt.net, stefan.wahren@i2se.com
Subject: [PATCH v2] Staging: vc04_services: remove unused variables
Message-ID: <20170928145840.GA16783@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

the volatile fields of bcm2835_alsa_stream -
control and status are not used.

$ grep bcm2835_alsa_stream
From the above command all instances we see that
all variables of 'bcm2835_alsa_stream' are declared as
'alsa_stream'

So search for 'control' wherever we have 'alsa_stream'

$ grep -l 'alsa_stream' | xargs grep "control"
The above command returns where we don't any usage of
'control' field. which means that there is no usage of
these fields.

similarly for 'status' we see no usages.

Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
---
 changes in v2:
 more discriptive commit message.

 drivers/staging/vc04_services/bcm2835-audio/bcm2835.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
index 379604d..f1e43e4 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
@@ -123,8 +123,6 @@ struct bcm2835_alsa_stream {
 	struct snd_pcm_indirect pcm_indirect;
 
 	spinlock_t lock;
-	volatile unsigned int control;
-	volatile unsigned int status;
 
 	int open;
 	int running;
-- 
2.7.4


