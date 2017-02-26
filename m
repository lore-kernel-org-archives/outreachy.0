X-GM-THRID: 6391116518625640448
X-Received: by 10.129.174.69 with SMTP id g5mr4063136ywk.125.1488095145217;
        Sat, 25 Feb 2017 23:45:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.29.200 with SMTP id w8ls10398533otw.23.gmail; Sat, 25 Feb
 2017 23:45:44 -0800 (PST)
X-Received: by 10.157.11.211 with SMTP id 77mr717236oth.142.1488095144913;
        Sat, 25 Feb 2017 23:45:44 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id h130si2469111pfe.1.2017.02.25.23.45.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 23:45:44 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 5so8933958pgj.0
        for <outreachy-kernel@googlegroups.com>; Sat, 25 Feb 2017 23:45:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:mime-version:content-disposition
         :user-agent;
        bh=69Rd1NNv587D7EtJG76ciQA6/PbhS/EjdZly8SreQ7U=;
        b=k1WeycTx0kvq1GNZKFtfyt/oc0IYny0irYBGpqOpIq2ncj37NJTsYkWQ796qEQ0n99
         hjPWVXY31shliZHH45zeqKjuTEs6gVGj9rX4F8DWkNpERIygqMv4aiIXaOYeTpFLg7qP
         bhn8S3qmPokVFLH2pFX75eQsRkhTRynymm/0+5usJVvk/SlvDMbSuM8lEJiHlPXqL0VD
         IbYfCgMdPE0YyWDaXC6oMtJltqUH9cWiGojJMBQsc3CGQf8XqgaBbAJoq4a29h7YHZJp
         riyykHNkRXTNJ9296wLd4rQYsZPOBZ0AylquccRdF8eRHl2cBJvrtnvBkY9XhMNN6xYj
         8DDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:mime-version
         :content-disposition:user-agent;
        bh=69Rd1NNv587D7EtJG76ciQA6/PbhS/EjdZly8SreQ7U=;
        b=T1C0HEFgeZyFSk8sdRsNj4j2mbtMo///mHUp8gCYVQpPHnufdkngcSwyz6yvoGq+vi
         K3M6a8PGCNNnPbIKyPS7r6smkiQr7KjNSwur15grlkpaSqiE6tZbrC7yh6sXuBQsKsJV
         OB/y3aa3Iiuf/79EPWulM9cbEi6zlqi37iVTNSnVMuriMnBTeBveoho4LUQcCePOetGa
         xz/6PAfTORPnwWccMdl/l33lmL2A37zPdyte0+jdQTCMwqApI4c02dgVPVid3EGL5sGI
         m9kHE1R/goZKts9qhmvITwqid0xBZhqFPV/CPqMRn7N+pIgXpEaTUGzp8kQ4Rsxx5YXg
         bnqQ==
X-Gm-Message-State: AMke39mflQ1jKCGCIxE6kLygkYIFU3aP6u6qGlRdp9kDXZJTLuqnYuBr0pgnGeM91NRVtg==
X-Received: by 10.99.173.76 with SMTP id y12mr13716126pgo.35.1488095144570;
        Sat, 25 Feb 2017 23:45:44 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.144.60])
        by smtp.gmail.com with ESMTPSA id l3sm23781751pgn.10.2017.02.25.23.45.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 25 Feb 2017 23:45:44 -0800 (PST)
Message-ID: <58b287a8.437c630a.85d25.3295@mx.google.com>
X-Google-Original-Message-ID: <20170226074537.GA3680@<rvarsha016@gmail.com>>
Date: Sun, 26 Feb 2017 13:15:37 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
	Teddy Wang <teddy.wang@siliconmotion.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 7/7] staging: sm750fb: Remove blank lines after { and
 before } braces.
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)

Removed unnecessary blank lines after open brace and before closed
braces, to fix the check patch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
changes in v2:
- Modified commit message.
- Removed changes in drivers/staging/sm750fb/sm750_accel.c 

 drivers/staging/sm750fb/sm750.c        | 1 -
 drivers/staging/sm750fb/sm750_cursor.c | 4 ----
 2 files changed, 5 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 332a3ef..c618c56 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -806,7 +806,6 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
 	}
 
 	for (i = 0; i < 3; i++) {
-
 		ret = fb_find_mode(var, info, g_fbmode[index],
 				   pdb[i], cdb[i], NULL, 8);
 
diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
index dbc8bb1..aa232c3 100644
--- a/drivers/staging/sm750fb/sm750_cursor.c
+++ b/drivers/staging/sm750fb/sm750_cursor.c
@@ -131,10 +131,7 @@ void sm750_hw_cursor_setData(struct lynx_cursor *cursor,
 		} else {
 			pbuffer += sizeof(u16);
 		}
-
 	}
-
-
 }
 
 
@@ -178,6 +175,5 @@ void sm750_hw_cursor_setData2(struct lynx_cursor *cursor,
 		} else {
 			pbuffer += sizeof(u16);
 		}
-
 	}
 }
-- 
2.9.3


