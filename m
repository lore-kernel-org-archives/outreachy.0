X-GM-THRID: 6670186659940663296
X-Received: by 2002:ae9:ea0f:: with SMTP id f15mr11797513qkg.55.1553023853007;
        Tue, 19 Mar 2019 12:30:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:acb6:: with SMTP id m51ls8790105qvc.1.gmail; Tue, 19 Mar
 2019 12:30:52 -0700 (PDT)
X-Received: by 2002:a0c:c125:: with SMTP id f34mr12982920qvh.48.1553023852501;
        Tue, 19 Mar 2019 12:30:52 -0700 (PDT)
Received: by 2002:a37:4909:0:0:0:0:0 with SMTP id w9msqka;
        Tue, 19 Mar 2019 12:29:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzbxMBE+cKSKoo57dre9zjXZvYYs0z6a7A4d0Uh1bSq2Y4s5HqnNw8jxrmc5Vj+fRZuU7DY
X-Received: by 2002:ae9:ec08:: with SMTP id h8mr12462064qkg.22.1553023770002;
        Tue, 19 Mar 2019 12:29:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553023769; cv=none;
        d=google.com; s=arc-20160816;
        b=Jb9TA2HRk/6kwKGHU/SjtoPk9RLy5rRnpTTr6DrHGvm4/3+V1UfYghdphCsvC+VQeP
         qarNKVqP3gsbqt5rg2qzDBQqyg+gGiuy28sWhGW3GiPDyhpgYLtEqi8hD+fHMry1lh7w
         yN4jxisVr2KGqqGRABzJIlMiwXb8gZ7HFDBQYX6UnV10UT/BgmKPk/BKQ9aQ8lWQRq8Q
         lO+aOc9IgAndcgWpFdSFV9eECboabbMEuBu7tDvwLnED3Oe5xuQu35WCZFmHqcPo78t5
         XV4AErfx0NlU3HxJhZDQiy/LMzCuit2N8XliQub/GIXqCvV3BNNpxzE6yBy++jbPBS7p
         TCdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=YsS/4TUrBWJsrkrJ/SL3pXVx1FMRl+39XqOX7naA4z4=;
        b=MVUZJnGcPxcqqU5m/Fsn3Kdt8ssp+zisyTTESpoWjDjxwKkPyonmzD4fqcFI3+Ln2F
         T25cEYttpX7rcOjGr/lONl/4EnEN/ldg/Tjpx623LLrfA6pmxaDJOdVysFi+V8B+zFiy
         8XhXmxjQX4uDlPt1IuUTiRRNY1x0+gs+0nUEg/mh+oljiDYneU1CfMuyWNJ/syIBEDtz
         E+iAsKVnTKKcdkFLDQ1ccFjMrfDaryZ5B8/Dp/jdtdd+GcfRqf1cnSJBi/H65ipivzJ0
         Bl45intYe3creBd/gQ/8qVS1qXugz1tHAlzvzIf7/Z9QNaDI7BlDIt0falgMUFsChoU6
         liPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b="ZB7B/mno";
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.79 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic313-20.consmr.mail.sg3.yahoo.com (sonic313-20.consmr.mail.sg3.yahoo.com. [106.10.240.79])
        by gmr-mx.google.com with ESMTPS id e12si507524qtg.5.2019.03.19.12.29.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 12:29:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.79 as permitted sender) client-ip=106.10.240.79;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b="ZB7B/mno";
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.79 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553023767; bh=YsS/4TUrBWJsrkrJ/SL3pXVx1FMRl+39XqOX7naA4z4=; h=From:To:Cc:Subject:Date:From:Subject; b=ZB7B/mnoLy5LTSMALc2/Or16q/FMQHXd57bU2Cc6dJ1Wd6tVaaaIPUofOtZ+dtI0v/FfH05XRUugIMfnoMeErRNXbYt+MpTQ+RmhdbKF16jX+TJd4OiEtgqoLt+8n8wK9i3/Y3AQAcNsR2mdAu9aYA1hAt0U0w9DjRGNCdBL0xlBRPiPSyo6Y2AfYREOkFZV75IcjGvCVpMayMRKkRtQUEgEEEZq4G0yRw4jb/dBWi2GqkTGKCuS+IPucDgzHnocV4nxmZPw7VL8uDiCFGHMIxQDyAvAIgy0DKcUfh6oMLt/qpQJI5m/zT2gMVDvr98yg3o9ewOi/qb1AufOwumJAg==
X-YMail-OSG: 29cOgSQVM1kjggWFbooquZaHnFdvpjpiHITUydI3ob0LV3jEqS1EGyzkHoEXDsD
 YZpLYpkivJOjgAc5kuKh2CHp7OTr4BwSUi6pEsjHW39X0vUTDY2Y.Tn9oU5gcvXsusa7T.NVymOX
 ybuKtuadfGop6Z7MtgIG7yN7rUXjWAA4WRpIz6kXugjAVRVz5pNwxjElXzt.JHbmyK7KozpZZYba
 pvdqoxovWTN_i09PYiEzhYsDNHqdY1olZQbPzKhCtYfq6k.ITtL1kChmBM8KC1whGipXhWjSBglT
 xLqvOpIHxNedGPm8sCfe9fuh0wdVeDzkv.P7.AI7MOBnzeBVAhKt4P3KduUHZrHx5JufHnXy8C9H
 .gHxuI1nSFmdz.ZrHgEA4EVz1E3J8S3EYG7yRaJ4kOql6abhh7Njg5OqU40Mub5IdIGV589sr5Ya
 9PVZhdlfb.bTARk6yqJIZJRuwn3SPhy1jXEpfQAUPhOgOsz1SAMguPzmczf904cffBJJFI4QYeA2
 gEb0Jl0EtQUt6y0l.yN22o2KNIHgh9CIqOcmHInShKech.V04HFc1lregDIXNp6Fnfm7L6Nlowyq
 4xZ.Dl6pL05LQhsh37qYwvklJuF3.6ZYbiIXRDvBzyy3zx7rLsW_FZc0tq53.UViApuhcDdmfHo8
 BHmDPkn2I.stvF3W5MBjxv5jncggixmWTwRb9BsO.UvIWOs6Kg_4KIqqCyyOUqflHcdPbOnafpBq
 iZ1rVuxJ.O8MLvoPGng6zppAQYA61iEpDMu2tiMqnSbFWA7ZqPXMzb6XkZzLd29osuKic5T2.4e7
 X7l3.jWWo5wfK6DMjdmz4P2j63H5A1VspctForDx7MdIrXHLCKwpZeSlp3f9RAuDhB3bzqiKu4I7
 GX2kH9qpoSj7gXV8iiTQGG9IRKU1_91f4ZIN.fYU1yMJX3YC3MMYjymDaCZ7aq7JKxYgq5psJkgf
 A_c8R6wb3I18a.80ZuGKMESTczy16tP6Axeme82ThYENZUeWM5qap.yDfk_uZyjAe9.V7ZHcTQOo
 UDL4uj8g95NaF8ThDFKZSEFkyqL.hDV5i2JO5ILrGHFz1BTWhrQYSN0w1TNccBIniDGnNDi9IAym
 Myyteook6T5WLlYAiWcvqhuNa2QIW59vz
Received: from sonic.gate.mail.ne1.yahoo.com by sonic313.consmr.mail.sg3.yahoo.com with HTTP; Tue, 19 Mar 2019 19:29:27 +0000
Received: from 125.22.40.140 (EHLO localhost.localdomain) ([125.22.40.140])
          by smtp415.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID dc686c8f5f5fe22eeb3e32a07fcb85f7;
          Tue, 19 Mar 2019 19:29:25 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: rspringer@google.com,
	toddpoynor@google.com,
	benchan@chromium.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH] staging: gasket: Remove return variable
Date: Wed, 20 Mar 2019 00:59:11 +0530
Message-Id: <20190319192911.8526-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove return variable and return the return value directly. Issue
suggested by ret.cocci.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/gasket/apex_driver.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
index 0578bf1ba1e9..a5da9bbd8396 100644
--- a/drivers/staging/gasket/apex_driver.c
+++ b/drivers/staging/gasket/apex_driver.c
@@ -439,9 +439,7 @@ static int apex_reset(struct gasket_dev *gasket_dev)
 		if (ret)
 			return ret;
 	}
-	ret = apex_quit_reset(gasket_dev);
-
-	return ret;
+	return apex_quit_reset(gasket_dev);
 }
 
 /*
-- 
2.19.1


