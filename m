X-GM-THRID: 6261874986123788288
X-Received: by 10.66.236.199 with SMTP id uw7mr17826219pac.47.1457956383615;
        Mon, 14 Mar 2016 04:53:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.7.71 with SMTP id h7ls876278iga.16.canary; Mon, 14 Mar 2016
 04:53:03 -0700 (PDT)
X-Received: by 10.66.102.8 with SMTP id fk8mr17963410pab.44.1457956383193;
        Mon, 14 Mar 2016 04:53:03 -0700 (PDT)
Return-Path: <heenasirwani@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id ui7si3201941pab.0.2016.03.14.04.53.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2016 04:53:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of heenasirwani@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of heenasirwani@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=heenasirwani@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id x3so41050598pfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Mar 2016 04:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=yxr0PY9Jxi0fA0QGGGX/L2qAdDYPQIm6STAVOP2kxts=;
        b=GwrOJToCeEAmrlkAHxOj33Rd0GAoxSM7BsRCoN3nfE5xuQciCIA/Z4GzM78u4/Mr9d
         bELpUGmRd9FWYSOiDRgdldazUJmynSJLZQIR+aJmpSpNv5OwQLgzulIs0kuaf/l7vcKz
         GwphOID+9TO6LNacEdWgizO/ETbO0qZQ/dZg3LkVkRkOlmAk7nsIGuvfGytPgSmWxg2y
         DCyXreaVtX9FhGfmWLbXIlVb3CMKGlnEF5z0mojYwAbu8B0r4tlsF3eyLMj/2BNc66vK
         RPXAVthFSJlTIaK0wqrzDW4bMqZdu0S7mNVF6buJmqNVZn4heB/1WmfJh1pH1nKm6R9T
         N7vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=yxr0PY9Jxi0fA0QGGGX/L2qAdDYPQIm6STAVOP2kxts=;
        b=BqqkHCSqFXGh/Ju3WytVUSxLECb1w2XVdJxrh3lnUnY9+HRYkFTgQxbtnQAH/8tPSa
         YNQ5WhBS5ppdREy9LbcbMLUJwS3tdIwtZWMWQCtzvI8ODrWg63rQOYg7AFiL/1ujQQo3
         xPbxxBzNTcNuyfgpCCTCiLJ53TLn4FfVGL7vDv1gQmhAPOFbck8c67HkmjBndv/5lotu
         XWBXkX30Z690ilHG7wJiazDBgZyx88iUV+X8MiKnmDUfl7NfUdssYxhqcz/KJ9nf6WvC
         74uOs04iubBfCPs6M9iVxBu8FKk4aaphQNveYQY93DnxOmTuHhZJcbPqIYlBc8NIye4Q
         mhVQ==
X-Gm-Message-State: AD7BkJLg7IDs2chi8YnGHvSPUWI/DdyliVqgq585oi1sbSocWBd5ZK4DAChNbnSUC07BsQ==
X-Received: by 10.98.12.154 with SMTP id 26mr29418838pfm.20.1457956383064;
        Mon, 14 Mar 2016 04:53:03 -0700 (PDT)
Return-Path: <heenasirwani@gmail.com>
Received: from heena ([114.143.194.190])
        by smtp.gmail.com with ESMTPSA id ah10sm31795828pad.23.2016.03.14.04.53.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 14 Mar 2016 04:53:02 -0700 (PDT)
Date: Mon, 14 Mar 2016 17:23:00 +0530
From: Heena Sirwani <heenasirwani@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: omap4iss: Match alignment with open
 parenthesis.
Message-ID: <20160314115259.GA10739@heena>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

The following patch fixes the following checkpatch.pl warning:

CHECK: Alignment should match open parenthesis

Signed-off-by: Heena Sirwani <heenasirwani@gmail.com>
---
 drivers/staging/media/omap4iss/iss.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
index dea67d9..9e3cdb0 100644
--- a/drivers/staging/media/omap4iss/iss.c
+++ b/drivers/staging/media/omap4iss/iss.c
@@ -1274,7 +1274,7 @@ static int iss_register_entities(struct iss_device *iss)
 		}
 
 		ret = media_create_pad_link(&sensor->entity, 0, input, pad,
-					       flags);
+					    flags);
 		if (ret < 0)
 			goto done;
 	}
-- 
1.9.1


