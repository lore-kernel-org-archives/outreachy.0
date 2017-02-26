X-GM-THRID: 6391320776651309056
X-Received: by 10.99.170.11 with SMTP id e11mr4055158pgf.54.1488095330367;
        Sat, 25 Feb 2017 23:48:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.39.17 with SMTP id g17ls1507517ita.21.canary-gmail; Sat, 25
 Feb 2017 23:48:49 -0800 (PST)
X-Received: by 10.99.154.9 with SMTP id o9mr4231919pge.6.1488095329637;
        Sat, 25 Feb 2017 23:48:49 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id c123si2244390pfa.4.2017.02.25.23.48.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 23:48:49 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id s67so8928645pgb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Feb 2017 23:48:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=x9IN2aE9YHH2t9AGK4/KF/tE/cKeXI++obc7Pautomo=;
        b=llMq8fV23noQH2kz2tOYL18pESH7B0QsQrnzyt5bZkssifwBg1wpRwqpIVi42iXiED
         1zpN49TPHN2TlGo+oiayYmkslEY8jhbxhEy01Ig+iKoHzOypmAWdQZy1V/2kPq9mKiXo
         Q6aCyPdc39p4lsI6LSd9OwuTGL7UCVKpBZfTcWXmhhNxtWOUk9UBN0fkjHrlxQi7gsHR
         9gsFVvI7B4MVId+9slw1WN3OCgS/ok4iaW/LBNLKayCH4ytXWrtqmz5n4poIx+ElZRfH
         89SpSVqVYZskhZ9sg7MfGOgWOETP7JjkzHgWdJilhQOvEE158X9jKtQDFHiJld3Xt4hL
         h7qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=x9IN2aE9YHH2t9AGK4/KF/tE/cKeXI++obc7Pautomo=;
        b=cdoqjOxlthB0jms9BzE+rtHE5OY2+o2shXQ7OXFJhri9tLrBIdLa8bVbgQemMIE/xx
         UWb2mbUGX0RPqTaWns04wSw+uJDjIDcErxPht51ibXr5u9W5Vu+wKCUp8lmMltpwTgma
         Wc9OhhojVnmK1fb+9j+GxqoTVUDUI9ezL6oPvimsKPqWFwUGQ4zboC7D7+wtHjx720sX
         x1PqK/mXlqs4ZDsSGdNR/xTL9QSL3rFkcuGuziMRtUEUvp/vQcMDzDJ7/at+zye8gOs1
         WSFdsmOvBSvnQy4tIRxSUHL4YFpRf/qrTWJxby0ZdzU7VrXOIV4474eQJdJVMcmQ45bj
         fiKA==
X-Gm-Message-State: AMke39mvMuMXhJ7D1y8gry31vlg5zAbFbHeBeTLfItK6lbBQhT23cTLCYhYaZHLXvyUZKA==
X-Received: by 10.98.21.71 with SMTP id 68mr13650428pfv.16.1488095329470;
        Sat, 25 Feb 2017 23:48:49 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.144.60])
        by smtp.gmail.com with ESMTPSA id g28sm8091290pgn.67.2017.02.25.23.48.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Feb 2017 23:48:48 -0800 (PST)
Message-ID: <58b28860.5c37630a.52b6.2c1f@mx.google.com>
X-Google-Original-Message-ID: <20170226074845.GA3815@<rvarsha016@gmail.com>>
Date: Sun, 26 Feb 2017 13:18:46 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: sm750fb: Remove unnecessary braces.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Removed braces which are not required and the trailing spaces caused by
removal of braces.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 drivers/staging/sm750fb/sm750_accel.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index 57ae743..9548863 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -259,8 +259,6 @@ unsigned int rop2)   /* ROP value */
 	if (accel->de_wait() != 0)
 		return -1;
 
-	{
-
 	write_dpr(accel, DE_SOURCE,
 		  ((sx << DE_SOURCE_X_K1_SHIFT) & DE_SOURCE_X_K1_MASK) |
 		  (sy & DE_SOURCE_Y_K2_MASK)); /* dpr0 */
@@ -276,8 +274,6 @@ unsigned int rop2)   /* ROP value */
 		DE_CONTROL_COMMAND_BITBLT | DE_CONTROL_STATUS;
 	write_dpr(accel, DE_CONTROL, de_ctrl); /* dpr0c */
 
-	}
-
 	return 0;
 }
 
-- 
2.9.3


