X-GM-THRID: 6536488278592323584
X-Received: by 2002:a24:7887:: with SMTP id p129-v6mr6744370itc.27.1521894777350;
        Sat, 24 Mar 2018 05:32:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:ed4d:: with SMTP id r74-v6ls769679ith.8.gmail; Sat, 24
 Mar 2018 05:32:56 -0700 (PDT)
X-Google-Smtp-Source: AG47ELs+EUFt1qjk0FzT34u7By1EbvyJHv8BUZZa/2+o6LWTf4cCSWq0GvEYHrzNnd5EqpIj8Yrc
X-Received: by 2002:a24:6c51:: with SMTP id w78-v6mr6798220itb.43.1521894776367;
        Sat, 24 Mar 2018 05:32:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521894776; cv=none;
        d=google.com; s=arc-20160816;
        b=rXcmtM3S3qqMqw8Q9PHn401g2T9TledDzpFKyAgShnbZXqQs0SoZqKX3TedzLAOMie
         kWLoaswoD3zVg8FpuZ7Rpf9RZt2wk+HsCC3buKPJqxw3D+KANLTxjOYiBOTSveBNKpRu
         zVYtxap0Bbn1aAUCg5R3AI92NNf51IRSCv5XGPBr8KrJbgDZI/TY7TMLDZVo0km+fw9j
         d1bFHqJpRoYe5aFjdl9bE60Na22IeUdRqxhRiELWrf9epCaWl0k3qYIsPKFFb1FjehkG
         aXk2LcHOmvJ2DGQ4HjPmK5PXtkrEgg/Kuiduc4azQBjcZ0rRFzFBMbahSR5k2t5jgbtE
         5IFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=OEfilZRAn7TAx0lNhcqJRX9qIhdZqRtkwA5EZ9wkMlg=;
        b=K4QURUc7Pv1XeNE9T0dbO1Ui+tbVb+Ygl/H565kQLFeSXgO2e9HnpnB28LuJ3o7pbx
         4qgbvW4AkHORX0xGDDC2GSTxoLSpPL/XAM6gIVWvtA2222FjdDRUXQqnB9iyXSeMGZbH
         RRsaTIWS1vWeKWGroLaQ7geZMX6nZ/iKSG8TOd7Hj5RkoWhiBf6TsOApqA76sTtkqX/+
         L0Q+I58x0OFz3I4wJTUVuFWFUe6/HQTX2116ImjDSlQx0fq9D5B2yqn6JPP6FGZwZmcZ
         tlj2W9jAICNRjkwwTn1LesZmoKJ7xVUgmUlfhvHumroRnznXEiwRcR5Ry39Ni81q2Uj+
         m4bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=ZySbnJk8;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id i201-v6si491850ite.0.2018.03.24.05.32.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 05:32:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=ZySbnJk8;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x241.google.com with SMTP id u11-v6so9088218plq.1
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 05:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=OEfilZRAn7TAx0lNhcqJRX9qIhdZqRtkwA5EZ9wkMlg=;
        b=ZySbnJk8ZewIG676m8K2eHHu97EbKhW1VHCtp51eLpAx5Txr3FUUQIPW1xhUU+znCl
         AEFEsh4uJz5zgFszf39vttK5uCvbjXYibHnc+YAUXieK8hzTQk6XybqT65ojNZPfLbu6
         zFIcA+ahdmMTNr+dEnjMaVixvAoq3J6tVGI2U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=OEfilZRAn7TAx0lNhcqJRX9qIhdZqRtkwA5EZ9wkMlg=;
        b=DpHzrLVvjSRi4W5dXaojSQmKLlUI58aJy70hAWqj1piak7UAydF6KK7qc/LxShP9lH
         QcBYFtgsoDgXQLbPfxm/TavWc4aTkaKqH9f3MCepahTXBqRAlUgaogWWjFt4hPMSBLJ4
         70E8qKoJyLO4FtrKUfo6nNfqp98srrBu2dwgjbcIIqHx6wf1MKLnpvNNGbQQTMcFqF2X
         vd15/QTF6P9tw/cVIgk4fyf/YowslR7AO4MEPlQt0JvZ8UNvK+bYJeYYRfzw0cLhHBpH
         /4G9ZNzRBfLh9pCcCQlrnsGSne7+zTuGVR6RbQSuT4PNGqNPIxkvJaDdtJZZVBKthU9b
         nwAQ==
X-Gm-Message-State: AElRT7Ejv9c4JpLHuIvWQXvFKSkipigCnsNkIU7qFDG44HHTW+3hlR4X
	oEIdRyjskGKOPxy1E01uPkHERg==
X-Received: by 2002:a17:902:6884:: with SMTP id i4-v6mr34058303plk.259.1521894775782;
        Sat, 24 Mar 2018 05:32:55 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id n13sm26128092pfg.45.2018.03.24.05.32.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Mar 2018 05:32:55 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH 3/5] staging: media: davinci_vpfe: Replace explicit use of function name
Date: Sat, 24 Mar 2018 12:32:37 +0000
Message-Id: <1521894759-28450-3-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1521894759-28450-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1521894759-28450-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

Replace explicit use of function name in string with %s..., __func__.
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 65d7242..61fb542 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -743,7 +743,7 @@ static int ipipe_get_3d_lut_params(struct vpfe_ipipe_device *ipipe, void *param)
 
 	lut_param->en = lut->en;
 	if (!lut_param->table) {
-		dev_err(dev, "ipipe_get_3d_lut_params: Invalid table ptr\n");
+		dev_err(dev, "%s: Invalid table ptr\n", __func__);
 		return -EINVAL;
 	}
 
-- 
2.7.4


