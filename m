X-GM-THRID: 1068226314240
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8554fdbdd0916d21,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.19.100 with SMTP id d4mr929841lae.7.1424396605843;
        Thu, 19 Feb 2015 17:43:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.105 with SMTP id o9ls5848wic.38.gmail; Thu, 19 Feb 2015
 17:43:24 -0800 (PST)
X-Received: by 10.180.87.166 with SMTP id az6mr20283wib.1.1424396604525;
        Thu, 19 Feb 2015 17:43:24 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22d.google.com (mail-wg0-x22d.google.com. [2a00:1450:400c:c00::22d])
        by gmr-mx.google.com with ESMTPS id ta1si6675wic.1.2015.02.19.17.43.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 17:43:24 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) client-ip=2a00:1450:400c:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22d as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22d.google.com with SMTP id k14so10618590wgh.4
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 17:43:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ibNo2nrmSEbRee4/LebC9KnvB8wQuE7WkDXxzCde/po=;
        b=Hb9APd4r2/NAUp0rbwiOP8z6iCvSV4Iv5MIVInbyZUJPowSp5QYQEDwUqHKKPvGUoL
         6Dx1OzmJVcyJ3VASoJnZCxFY5whnPAdlUUxIBNr8cuK2x57bmAL+gqWiFeMSxV/3JNfq
         90+oIYp/V/TEzjwatx9MW/brTnV8BceoUZcTRH+rLFuX8QWWCVA6KKhvAvJPcvc0foKj
         RAM9YyDvpr4w/dG5VVTu48EWHphAyhFLwWgy3zS013OUsIN0bcLsf8X6XS1na4zaWDbz
         ebvv3gk1v/5FaaL5LrPth4fUu9SQsqCwtB2t/ibQioL8Vek0YvLROkCoIWYj/heD3W5w
         aRwA==
X-Received: by 10.180.36.174 with SMTP id r14mr11180525wij.93.1424396604468;
        Thu, 19 Feb 2015 17:43:24 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.237])
        by mx.google.com with ESMTPSA id fa3sm125573wib.17.2015.02.19.17.43.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 17:43:23 -0800 (PST)
Date: Fri, 20 Feb 2015 03:43:17 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/2] Use #include <linux/uaccess.h> instead of <asm/uaccess.h>
Message-ID: <cover.1424395309.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patchset replaces <asm/uaccess.h> by <linux/uaccess.h>. The
replacements is safe since the header file <linux/uaccess.h> includes
<asm/uaccess.h>

Aya Mahfouz (2):
  staging: i2o: Use #include <linux/uaccess.h> instead of
    <asm/uaccess.h>
  staging: i2o: Use #include <linux/uaccess.h> instead of
    <asm/uaccess.h>

 drivers/staging/i2o/i2o_config.c | 3 +--
 drivers/staging/i2o/i2o_proc.c   | 2 +-
 2 files changed, 2 insertions(+), 3 deletions(-)

-- 
1.9.3


