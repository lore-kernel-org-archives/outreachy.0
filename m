X-GM-THRID: 6530656197776769024
X-Received: by 10.176.80.248 with SMTP id d53mr13433360uaa.43.1520537242795;
        Thu, 08 Mar 2018 11:27:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.49.77 with SMTP id e13ls598158uam.11.gmail; Thu, 08 Mar
 2018 11:27:21 -0800 (PST)
X-Google-Smtp-Source: AG47ELudu257elC/a9OobaWSLvJPnLy4zIKYB0ufZAml2vNI8is03DLsb2m9TXEgeFOYr96Mze+P
X-Received: by 10.176.82.54 with SMTP id i51mr13138601uaa.29.1520537241459;
        Thu, 08 Mar 2018 11:27:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520537241; cv=none;
        d=google.com; s=arc-20160816;
        b=Do7fcihp9tK37bR1RRUFlYVkdVqcZD1/06lI+mgNvoOsz0igzHUYJEAzA26b1yCHC6
         G9sRkH60LzS+DbWa7QpeUVT0qq8FHaqSRFoVTXFW+7C1+kj8dSyeoqaQfewMb26jFpiS
         EnGhSzOtJ1UtjgRRQZtNcjmMlE08jRYQ8kASTaEs+vvvsjN8nbAI6TKtTaDWdexQb0kK
         YKyO+ovkSjqdpyaqH9/Z0139WJJrLMDx/ZdJAjghVmzuxckQPwhHtwvwGT/EatJ8/O2c
         jKd1eEkpQrxCs8brrubGCpCOR8S9kygCyKuWYqXovp5tsz3wYabsB5eIT5u2x4KOhJ1H
         jMEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=5YNWuxu9zcgmGvo6/4n6ZkdQxHoztUh6hNix/fRT9aU=;
        b=xJgN/59OFws7VO8BKyrRJBDIIbOIAXDIsQ4dIm9rqSzi34YsbbylG4yUq7WC/71got
         4nBbGW8V9NkwqX21/jRMGY+7U5LsviZ8ZEWqTJgJ9F3TKw8CMqP92/oaQTcKGdiFpuGD
         YBUvK76sgQeMEqbapW6udxEp3oqhEQVgvVAf1+lqEoY8GQbuAY26sPvqI8RthFb0LYbZ
         r61a+NVKl0p4Bnf2XFjW2iPKm+7rtvkLpa6egAtUbjPSho54MWUDRk2iYeSWN1y0234W
         dIrks0DniV8Qcbw8FuQVLFgGePOEra2XspkeaSJ9e9nKZCnQkGJP9L5d9I8nV4nFGtjQ
         SK0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=QpKXkh1j;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x243.google.com (mail-pl0-x243.google.com. [2607:f8b0:400e:c01::243])
        by gmr-mx.google.com with ESMTPS id q126si1501550vkf.1.2018.03.08.11.27.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Mar 2018 11:27:21 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::243 as permitted sender) client-ip=2607:f8b0:400e:c01::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=QpKXkh1j;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::243 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x243.google.com with SMTP id v9-v6so3847258plp.12
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Mar 2018 11:27:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=5YNWuxu9zcgmGvo6/4n6ZkdQxHoztUh6hNix/fRT9aU=;
        b=QpKXkh1jkK0+aNPg2FhM3Wz6vXD2MX5rDLKIj8cCTHk7yXAx4JwqLOvs94Wgbd8E0e
         SgQPgT4DuerV7d/YZIU90Di7iCQxdJas3iEAeDgdDXx6pDo1LdDhIjo4VXo7E+ehaala
         JBqJX0MsFOzu0KTtNQ8Z2PChR5LlvnbyHB6fo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5YNWuxu9zcgmGvo6/4n6ZkdQxHoztUh6hNix/fRT9aU=;
        b=s0H7aIFE8FLv/bx0It7D7KEDgx/5XD4liP5fLdyjnkOswqgns22bDSlT65kY/UnXlm
         ZdNKv0YarPSN1wBC/nINTpEFcuHIRdmXKAurpNPD49/WfIW8Ygi+Hu6XAJToSd0+EX3M
         JHg8E8VCzQE2HXa58g/NJC9k0OnzXrs34np8qqsdiQhGSJ9QD6en2QO1VA53fvTgcooN
         myAAd6hWRNXdpt06nCjYfYywHv8ov0p3wJNYlY4YD9aep4hLs3V/Tx8zqjWVSGMU+59+
         kiyH/+J3HGud7HKBOAbMaL5iDh4eq36OF8GCuLAS936U5xRJZ8hFsyYwy8Ikv+bu5+zK
         9i0Q==
X-Gm-Message-State: APf1xPB8U7n+AMCy/Lx5gmA6Fctndn9WmRXpvGnr6Jy19V6hoqjg/qqa
	zlpC177brwMK7IQgIT2N6WkeNtNN
X-Received: by 2002:a17:902:780c:: with SMTP id p12-v6mr25508394pll.161.1520537240492;
        Thu, 08 Mar 2018 11:27:20 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([210.212.93.46])
        by smtp.gmail.com with ESMTPSA id 12sm41507678pfr.147.2018.03.08.11.27.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 08 Mar 2018 11:27:19 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH] staging: speakup: Replace simple_strtoul with kstrtoul
Date: Fri,  9 Mar 2018 00:57:11 +0530
Message-Id: <1520537231-14918-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1

Replace simple_strtoul with kstrtoul. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/speakup/kobjects.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index bd7cfab..836e1b7 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -756,6 +756,7 @@ static ssize_t message_store_helper(const char *buf, size_t count,
 	ssize_t retval = count;
 	size_t desc_length = 0;
 	unsigned long index = 0;
+	unsigned long val = 0;
 	int received = 0;
 	int used = 0;
 	int rejected = 0;
@@ -788,7 +789,7 @@ static ssize_t message_store_helper(const char *buf, size_t count,
 			continue;
 		}
 
-		index = simple_strtoul(cp, &temp, 10);
+		index = kstrtoul(cp, 10, &val);
 
 		while ((temp < linefeed) && (*temp == ' ' || *temp == '\t'))
 			temp++;
-- 
1.9.1


