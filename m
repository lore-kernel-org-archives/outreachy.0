X-GM-THRID: 6463467119656828928
X-Received: by 10.31.70.70 with SMTP id t67mr837409vka.97.1504893209052;
        Fri, 08 Sep 2017 10:53:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.97.24 with SMTP id v24ls563392iob.17.gmail; Fri, 08 Sep
 2017 10:53:28 -0700 (PDT)
X-Received: by 10.129.48.206 with SMTP id w197mr2252936yww.143.1504893208338;
        Fri, 08 Sep 2017 10:53:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504893208; cv=none;
        d=google.com; s=arc-20160816;
        b=ZBJldjOfO3dtbM+sO/uBKjKZJVF7X9qvEhKEWPYtPdMUG6CaFRpDkGfH/hUEyHs05q
         0aQzmUvaUuL8qsU1+9aQgA/uo1LIROyqvUB9kCN1Moyker2+geXDkCXOmrmizOvQ5MMC
         akAb56nF4yyn6VDD1OhlVIRN/Lg347qIaNJGQaoMurY/+tCW7BUfMWIpJVxhk9TNCiQG
         DssuE8zVuPJiue3uVCq0CvjthdBwZLRz0EgGpAxgcoHlVab7nmfDFAgQKehy9zCwud5S
         FKhsX4tnqWEFv8ElAb1Ra8JnT/uyi2qUrsPAme6bN20iER0F/MAHrJvWOAWVeKniMRpp
         YgRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=MfcDgZHl2Am/JESk+qqsfmdDPXFUHajfRJXGGORKMjo=;
        b=x7YUJQgvcsTxoLj8CKE76BP1rZWAEnxCBslNw+GsNafOwM280x/vn3VRypAyTAfC8S
         zZiS73jyJofTAMRWe/hg83YztsHtHxqzoUgHCBZjyGS10pX5uumigoEmw8zziv+4y1QN
         XrdvrmDg/qdsKkaUYMY+lYvVyGSYltcNqqvDr/u/8PAuCnmjRtajHTAlhWTIeFwZQUib
         FkERzavisJokOjdd1RNMv2jRba/EhSA6wf1yfve0ktoS7qpIqpQ0lGFeMozw84MmZEYT
         QItpCHuF3UC9c+3rW5q6pOHWO3y3mnFSm4t/Nx+trSgbnPK3I9WLhJGZ/n4YhSUeid3y
         d3kQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JWEPuU3N;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id f189si306752pfa.1.2017.09.08.10.53.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 10:53:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JWEPuU3N;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id g13so1741713pfm.2
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 10:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=MfcDgZHl2Am/JESk+qqsfmdDPXFUHajfRJXGGORKMjo=;
        b=JWEPuU3NARyvFmZqWOkDOU3wF6NGWXY+kq/KeQMJl7w8eweeUwMSo5BePLxA9r4XOK
         QJ63JGfnr00p9LQ1ja/DvffnsE4G8eH4namMx6PJuOSKW9tGhJjfr756eauE6FocNueb
         ZDa8kljlX9tttSLjDr2lvZiqCEuw6e4Wlblusb4RPrpP7eOc5bPwWkO+zUUsH283DnoN
         TaJDXFx7CuSljoQYfFuQ3Oyd2HG+MbXbIO3z3uSoxV9ZlPioY0EB0FH1Dx6n2VVNePNW
         PC9vlmBVdGcfLPrD3F2vPMyevXcBP5cuMu9daYU5V1ZX4y8A2dc/5TUxEWKhcsTi5U6g
         aeoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=MfcDgZHl2Am/JESk+qqsfmdDPXFUHajfRJXGGORKMjo=;
        b=SOG08Ygt+CvmqiD88saOCYoPSyBM/X5+0g6vIlLhsAkCXz3tTOFrhrV1HbQbSE8ITV
         /LsIRN8O5Xf5epwEWTPNop0NAkhGJ1hJLFlUCGhdfeRf4SiTijRy2SobWBK2NRHD9hEP
         6ZkKFDshaad8GAM7f7SZSGZel4QmUZa61n/BhFYMIpLCxZ7q9Nu+p2+rk+e7L3FIbnmP
         tfMMgGTV0cMW9OYgfsm8LyP91T9FZYowp1uxBKm76ROFeHAW/GQgUtmSej26N6aXKgOy
         9hB0UKHm6MsGruGXOLd3ifKHx4nceicWNy/Ub7KO+CjB5rVCh/+hv46PjU4ISHx92r8x
         S/PA==
X-Gm-Message-State: AHPjjUivh6qkuv0pZ5PvAxBs/tV8XPhiSzgxo2vWxWcTffQRlGmeQumQ
	oDNe5L6Q0es4tg==
X-Google-Smtp-Source: ADKCNb7jF/PKL7QRRuCsZkyXf3zyJf6y+oVByRqeszcpMfyQ7ovofXl1H1dOC/1RuIl0PdU++k9P5w==
X-Received: by 10.98.152.199 with SMTP id d68mr3905776pfk.250.1504893208105;
        Fri, 08 Sep 2017 10:53:28 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id r12sm4737449pfd.187.2017.09.08.10.53.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 08 Sep 2017 10:53:27 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH v3] staging: typec: tcpm: Rewrite comparison to NULL pointer 
Date: Fri,  8 Sep 2017 23:21:25 +0530
Message-Id: <1504893085-6113-1-git-send-email-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1

Make code more concise and readable 

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
Change in v3:
 -Change in subject and log message
Change in v2:
 -Change in subject 
 -Change in log message
 drivers/staging/typec/tcpm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/typec/tcpm.c b/drivers/staging/typec/tcpm.c
index 630fe75..9f4a5a5 100644
--- a/drivers/staging/typec/tcpm.c
+++ b/drivers/staging/typec/tcpm.c
@@ -982,7 +982,7 @@ static void svdm_consume_modes(struct tcpm_port *port, const __le32 *payload,
 	}
 	port->partner_altmode[pmdata->altmodes] =
 		typec_partner_register_altmode(port->partner, paltmode);
-	if (port->partner_altmode[pmdata->altmodes] == NULL) {
+	if (!port->partner_altmode[pmdata->altmodes]) {
 		tcpm_log(port,
 			 "Failed to register alternate modes for SVID 0x%04x",
 			 paltmode->svid);
-- 
1.9.1


