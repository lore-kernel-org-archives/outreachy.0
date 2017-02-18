X-GM-THRID: 6388545925534449664
X-Received: by 10.107.189.130 with SMTP id n124mr4867272iof.0.1487452064116;
        Sat, 18 Feb 2017 13:07:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.200.10 with SMTP id w10ls1351219itf.13.canary-gmail; Sat,
 18 Feb 2017 13:07:43 -0800 (PST)
X-Received: by 10.107.8.89 with SMTP id 86mr4950470ioi.100.1487452063427;
        Sat, 18 Feb 2017 13:07:43 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id s64si813004pfk.0.2017.02.18.13.07.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 13:07:43 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 1so789439pgz.2
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 13:07:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=YfGuZNzNwL+FzPwleopw5Vehwavy2AWIcxJ2Gv/9ToE=;
        b=nm3ata4O2JScVLU5LIrFwA3gJtEMaMkQY7LoF21E7CbfCDiPm3kpWsiOcUSnKRzmIj
         fEZRa1z+qtG6jkzuo8BHZlvzPr9jgXxViBrhdd6UTcYG83JRqEunVvhG5AFLkFxtFrmX
         1k5FUAR0Va+pj0NPkhfZg3crfZPu03DoixyFxD4pdi2XKB8XfXHWxEjRMxDEeS5m+CSZ
         APxxo+r0bRU87JdHPoZHNGMegxp1YzRF9TLRICXPJCW+flK8Akn0dX5+YvkzaEi0Bk8V
         C35Zv8tdVxiyt6D4svLP0lLszrkiEsP2rs1bXPlbdjCEq/BY4xUK5sNwW3uPlWOWdIwT
         Iasw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=YfGuZNzNwL+FzPwleopw5Vehwavy2AWIcxJ2Gv/9ToE=;
        b=R51Ht4enJGekDg81RHyqvlMg5VM4Z9K8gMeL+95kQ8aXQaB2yNWk3Dxpp+D//nc4C+
         d3ao9MyB3eHPeeC8fRGeEC9uXMRhrUCKOxbZh4Zh22ydIweGiW3kNMskYbK1o6Ubj0wB
         WwatNy7pcIggcLraQQUtJF0ERfIKT0gV8uJRfvv8oaroUq9dbgln5YlxzzGXi/OqAuEh
         75+wAIy68NyaMJKPdk+l3YloSb6GNNBrlJDiJ5QaIR8yitWltka528DPgja1td4RyAAn
         RAnGHvKazOxmGqwsfhXfUfVXE6bMdGhCe3uiPmDem999keSyNxNUnmszNhbXERFxXYOF
         V3Bg==
X-Gm-Message-State: AMke39keo84TC77wATKjB0ITA5FrRAhoJc7S21egRMcZG6lD7zwpDKEwK24/W/Go3ZfKqA==
X-Received: by 10.99.101.199 with SMTP id z190mr17798125pgb.219.1487452063226;
        Sat, 18 Feb 2017 13:07:43 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id i10sm26932871pgd.37.2017.02.18.13.07.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Feb 2017 13:07:42 -0800 (PST)
Date: Sun, 19 Feb 2017 02:37:40 +0530
From: simran singhal <singhalsimran0@gmail.com>
To: forest@alittletooquiet.net
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/6] staging: vt6655: Compress return logic
Message-ID: <20170218210740.GA14258@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

gregkh@linuxfoundation.org,devel@driverdev.osuosl.org,linux-kernel@vger.kernel.org,outreachy-kernel@googlegroups.com
Bcc: 
Subject: [PATCH v2 1/6] staging: vt6655: Compress return logic
Reply-To: 

Simplify function returns by merging assignment and return into
one command line.
Found with Coccinelle
@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 
 v2:
   -Removed assignment

 drivers/staging/vt6655/card.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
index e0c9281..9a8999f 100644
--- a/drivers/staging/vt6655/card.c
+++ b/drivers/staging/vt6655/card.c
@@ -918,9 +918,7 @@ u64 CARDqGetTSFOffset(unsigned char byRxRate, u64 qwTSF1, u64 qwTSF2)
 
 	qwTSF2 += (u64)wRxBcnTSFOffst;
 
-	qwTSFOffset = qwTSF1 - qwTSF2;
-
-	return qwTSFOffset;
+	return qwTSF1 - qwTSF2;
 }
 
 /*
-- 
2.7.4


