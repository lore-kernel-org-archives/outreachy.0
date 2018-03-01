X-GM-THRID: 6528076274942869504
X-Received: by 10.107.43.80 with SMTP id r77mr2031277ior.76.1519936200587;
        Thu, 01 Mar 2018 12:30:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.195.136 with SMTP id t130ls1419000iof.10.gmail; Thu, 01
 Mar 2018 12:29:59 -0800 (PST)
X-Google-Smtp-Source: AG47ELvuQqUiAXAEqhLJ80jPJGlyZPLd8WmiCX6R9P2hnif7V0nsWAojGR9A5Elsdb0s/rVH6WQw
X-Received: by 10.107.205.77 with SMTP id d74mr2262696iog.54.1519936199222;
        Thu, 01 Mar 2018 12:29:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519936199; cv=none;
        d=google.com; s=arc-20160816;
        b=OlWNj6FbuqB4jkPsIp49VhTwYUbpbi2qJ/ChVzN5ONON87h02QTKY+xqNPHd6Bv9x/
         k3rXQGOBHDi4WEBwZaTzFAxJrMY3rzQKGb/FugoWBJZXZij18zvAtcL0bKKmebmHpZfI
         XdzXINXooiccmK2gounYCy+jHez2tkuVCKsIFYwEV0zwalmRlz3d127mukC9x6EBWsZ+
         qQ0+qp4m08N5qK3/Y43QXMH39tIYkUfT7p9PgbfNOCXcAtYwwvQz5naTC8/nSIhNOLxl
         016mXusDkZEcc4fFASIfHZD4nuR7rCtMLYncFQ+PnqmJf1guV5lZ7uy84CguXK4MpeXd
         gw2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=p+nw8IwU6ewGj20SO9wfEYk3O9uUvl8oDSuk1jGMJck=;
        b=RTId8eDhBJhwxyhtKqM6a3h0lmEaey/r289ojBKEHclyqqHwcfp01ivLjg/n9oTBmp
         5a7sbLIddWqsUHhwLQC+8/Fqs4iayt+IRbNt4IKOcVR8bBzFVJACnQmzrAGeIqP64/Ae
         3U1JIvPu3fXJpM20EQlTGxhDaCY8tDA7peSNZpsaOteSgZWCUAa8XIpGuY1givpzWPH7
         eNNRFU24NSn5q8zMR3/Nw7qKFZa2zC8lsu0HMJBNhg+NmDtMFlAABi7uPdr2zKzzWTuL
         HDgDtMO3iKfSerw0q1tDYKo5Co9Pxa9MiCHb8Nyv6agyi0fPa5vJNJJxxMAeZ3l5yt3X
         ZVRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=LozOS+DN;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x243.google.com (mail-pl0-x243.google.com. [2607:f8b0:400e:c01::243])
        by gmr-mx.google.com with ESMTPS id w89si539122ioe.5.2018.03.01.12.29.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 12:29:58 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::243 as permitted sender) client-ip=2607:f8b0:400e:c01::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=LozOS+DN;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x243.google.com with SMTP id m22-v6so799867pls.5
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Mar 2018 12:29:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=p+nw8IwU6ewGj20SO9wfEYk3O9uUvl8oDSuk1jGMJck=;
        b=LozOS+DNWz6Y2k8sTAnNdIESOUNs9PMvI7UEJnhWfkVtkMc+w/BcFBPKEb7SXywEb9
         VpQzvlnvJXOtzsJLv6pHwbiXNXvYgS4yF53bosE5PNOUa8zNde2NOrIoOygJQFAdyJEe
         GfPhEHRgq21JMlajpjPtPtljQY7YOliO9Ik9I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=p+nw8IwU6ewGj20SO9wfEYk3O9uUvl8oDSuk1jGMJck=;
        b=tYlFvLMhdB8UrAQOqzBnjezUXp+ewziPYlUZDnIf4zgQMa5maaAqFwS5RmlvXcfgh7
         KZ4eye0Gv1LF+nHf/yiaoqh8mP3oQiCUa2IAkDhR9YUTDZxTgXUfI12DOyDO951gGhS9
         wluGhtnRdPjRYgFxsxtI1yJi2CXGgUHZoNthe6B8WvYTN14kH0I/hhoCzB4ZAyMKHx0Q
         Of+ooTDS5sxLx1o6/3EW83rAMxKv1NOiI/VfPDIBAV4WcOilMOs2TAXq/iVjSwuG/BUb
         tVNquwss74oaihW7wG/TerRj+dqEFFc3KMLFYO4thZdem1RtzPoD7qU5bglN4wZ7BJeo
         504w==
X-Gm-Message-State: APf1xPCNnIrgOUn8F9NuND+RWs7B/zaEz+R7yXT/70kQ+MT8DYh4UtcV
	CJPa3NmQWgIVRlMsNk3UJgo+PA==
X-Received: by 2002:a17:902:407:: with SMTP id 7-v6mr3021318ple.9.1519936197540;
        Thu, 01 Mar 2018 12:29:57 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([210.212.93.46])
        by smtp.gmail.com with ESMTPSA id m83sm10733615pfk.107.2018.03.01.12.29.53
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Mar 2018 12:29:56 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	eric@anholt.net,
	stefan.wahren@i2se.com,
	f.fainelli@gmail.com,
	rjui@broadcom.com,
	sbranden@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging: vc04_services: bcm2835-audio: Format multiline comment
Date: Fri,  2 Mar 2018 01:59:45 +0530
Message-Id: <1519936185-27614-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1

Move closing "*/" of multiline comment to new line. Issue found with
checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
index 7f4871c1..0630040 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-pcm.c
@@ -279,7 +279,7 @@ static int snd_bcm2835_pcm_prepare(struct snd_pcm_substream *substream)
 
 	/* notify the vchiq that it should enter spdif passthrough mode by
 	 * setting channels=0 (see
-	 * https://github.com/raspberrypi/linux/issues/528) 
+	 * https://github.com/raspberrypi/linux/issues/528)
 	 */
 	if (chip->spdif_status & IEC958_AES0_NONAUDIO)
 		channels = 0;
-- 
1.9.1


