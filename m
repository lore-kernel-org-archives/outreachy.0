X-GM-THRID: 6260482272289357824
X-Received: by 10.140.140.19 with SMTP id 19mr3490822qhm.29.1457632117209;
        Thu, 10 Mar 2016 09:48:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.194 with SMTP id g60ls1980990qge.52.gmail; Thu, 10 Mar
 2016 09:48:35 -0800 (PST)
X-Received: by 10.129.82.14 with SMTP id g14mr3489995ywb.13.1457632115452;
        Thu, 10 Mar 2016 09:48:35 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id r75si673741pfr.0.2016.03.10.09.48.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Mar 2016 09:48:35 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id td3so45566978pab.2
        for <outreachy-kernel@googlegroups.com>; Thu, 10 Mar 2016 09:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6noYAVRtoxY2qv+2043Poa6TmjBrPouEXZz/GtlL910=;
        b=vAq4UyNJ1d72NAYP5YxxAVEDz4N1AHjqRpUnQWL7ZKNjd+2jiNHyVjPjkVJkuYTxYn
         GkZfoDX9CRRJFEU1aZkUlZZilm9Agu2t/AWbwwQgCkX39gO9T4TKr/AanUb+OjVRvDOI
         3MjKwQO/4tVDEwTdAEg4CR6kiK4VUYYW3B2lvPGed83whlvxKNyCuxwdGGmGmLhdic7W
         T/g4t1hpZEbVtAiPO0FrVh8Fb2KZwDCpOA88B9GcF2iXIVuftHMgiqmZqkZpuN7ndB9U
         nR/3senkrUxDNQn7GzmkFx+aif2+2lkRrytj0QlOxE5KwLARPnAXDxI4kJHmalsw+Rk3
         ORtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6noYAVRtoxY2qv+2043Poa6TmjBrPouEXZz/GtlL910=;
        b=J+gck1nsrlqhY4alhKYXo3AMogTJxSshs8aiAp6WbXWwlOrOFYWm8jQANBlXzm1USR
         MorVyAh0isX+pt7klMIjs6gVtBL3PwJFMc0F6PXyI0tKiShNwvAkJU/FDB+ePdC2eR7+
         lXdmR9e92idTucKntlcYY7rs2dHJqHa80ZN8DiDKkih0dGXKwzpYXCBCNxw1zXxWDlfA
         9nSLBpoMTxPRB/EqHU1Roev9OwbLNOKk8Gz56QECKxOQzJ9yOm5AMnlCmURToTrLgAA3
         ZPVwN+schgLpnvxv3d3wHoZnholIGDqkjCt8R5KsPoroV9SQm864DKDfDMLMLqKuEVx+
         +q1w==
X-Gm-Message-State: AD7BkJJmFzytLmFxIQm3pX9gEktBjm9WJ4g6cTd6TMLnXVqKTsVwNjYsk3WzyVGY9Xyueg==
X-Received: by 10.66.152.231 with SMTP id vb7mr6826824pab.132.1457632115287;
        Thu, 10 Mar 2016 09:48:35 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id qy7sm7011562pab.34.2016.03.10.09.48.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 10 Mar 2016 09:48:34 -0800 (PST)
Date: Thu, 10 Mar 2016 23:06:23 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: media: davinci_vpfe:  Remove unnecessary else after
 return
Message-ID: <20160310173619.GA20307@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes the checkpatch warning that else is not generally
useful after a break or return.

This was done using Coccinelle:
@@
expression e2;
statement s1;
@@
if(e2) { ... return ...; }
-else
         s1

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
index 6e4c87f..46fd2c7 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
@@ -94,7 +94,7 @@ static int get_oneshot_mode(enum ipipeif_input_entity input)
 {
 	if (input == IPIPEIF_INPUT_MEMORY)
 		return IPIPEIF_MODE_ONE_SHOT;
-	else if (input == IPIPEIF_INPUT_ISIF)
+	if (input == IPIPEIF_INPUT_ISIF)
 		return IPIPEIF_MODE_CONTINUOUS;

 	return -EINVAL;
--
2.1.4


