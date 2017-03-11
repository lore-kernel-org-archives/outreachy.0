X-GM-THRID: 6396343645329424384
X-Received: by 10.99.116.72 with SMTP id e8mr10898890pgn.92.1489267052050;
        Sat, 11 Mar 2017 13:17:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.88.40 with SMTP id r40ls1311672oth.13.gmail; Sat, 11 Mar
 2017 13:17:31 -0800 (PST)
X-Received: by 10.13.253.6 with SMTP id n6mr12112411ywf.84.1489267051721;
        Sat, 11 Mar 2017 13:17:31 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id a3si2431749pfb.2.2017.03.11.13.17.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 13:17:31 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id o126so14716630pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 13:17:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=cDf9I7iOqbUfzhVWqxcBoBwuZubEFWAw9hjYPv+gbQo=;
        b=leTyd0lC8w93DHc9Z3Xxdlj5ADbybFvjA5sQ82o/LQFALnA03hwEaHC/E094fO7bAv
         eOFBnT02YLoWdYLzzl8dEnsdH9ItKO+3E1tQ3gG4kW5eegLnqZ+XLX3aG3GFtreWINYi
         jAiOWpKHk77alPjbC/CR5kmkEmAvLDzRWoGUMbli3A94F2V18EN/HEWn03G2i7gZUa4B
         Yxa32meD4Vy1SVmfPJ3QYUf6rrPotoTkP63GRPwk7Ii9ptBGDymFeoeWm3ru+Y+aB4aG
         QwyAnpudwE5JfGRBGL4KRTQn2V2pYw6B9LFAFJaTgnzDdNtn9kLAL4GM6Jx9fk3tA+BK
         a70g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=cDf9I7iOqbUfzhVWqxcBoBwuZubEFWAw9hjYPv+gbQo=;
        b=UZfa0w5tn3ppCyslpu+9QDYFOzucXFseHaQ2KIBZ5ao68G34v9Uplzrbc1pvuEjqy3
         xgZusT6vN4ZA8yl0RR/cfzXVF9vuMpzrODA7E9yCqBOzi/MMswAWaKqPVlrPrFr+iVIm
         Qi/FxQ7inBPH448A70ClO3Eud07s4QDd7o44vW5DA9x3CvrozerEKKldj58qVO4D1j5D
         9qLiG4P5njvA9s4L/1klD8wp7I5ZVoIOeOAjjIWcSOMZW8P8p5NO4FCHruznQUel8vYA
         FZOD/C9N7ih33dgE92Znk2eSZehvqisoTIHH+46k8ql35jIbD6DOrikY8mlaUhJ63x17
         WNOg==
X-Gm-Message-State: AMke39nn705e54O6e4e0xw3Vy6MHhnUPmahlUgivvwOjnmLYDSnkMuqkqr7AdG7MDQDsEg==
X-Received: by 10.84.136.135 with SMTP id 7mr36208259pll.149.1489267051202;
        Sat, 11 Mar 2017 13:17:31 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y16sm6822437pge.53.2017.03.11.13.17.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 13:17:30 -0800 (PST)
Date: Sun, 12 Mar 2017 02:47:25 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: arve@android.com, riandrews@android.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: android: Replace strcpy with strlcpy
Message-ID: <20170311211725.GA12884@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace strcpy with strlcpy as strcpy does not check for buffer
overflow.
This is found using Flawfinder.

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---

 v2:
   -Correcting the place of the parenthesis
 
 drivers/staging/android/ashmem.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
index 7cbad0d..eb2f4ef 100644
--- a/drivers/staging/android/ashmem.c
+++ b/drivers/staging/android/ashmem.c
@@ -548,7 +548,8 @@ static int set_name(struct ashmem_area *asma, void __user *name)
 	if (unlikely(asma->file))
 		ret = -EINVAL;
 	else
-		strcpy(asma->name + ASHMEM_NAME_PREFIX_LEN, local_name);
+		strlcpy(asma->name + ASHMEM_NAME_PREFIX_LEN, local_name,
+			sizeof(asma->name + ASHMEM_NAME_PREFIX_LEN));
 
 	mutex_unlock(&ashmem_mutex);
 	return ret;
-- 
2.7.4


