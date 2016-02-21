X-GM-THRID: 6253795193501253632
X-Received: by 10.140.231.138 with SMTP id b132mr23166498qhc.0.1456075160362;
        Sun, 21 Feb 2016 09:19:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.7.101 with SMTP id i5ls386751iga.37.canary; Sun, 21 Feb
 2016 09:19:20 -0800 (PST)
X-Received: by 10.66.62.162 with SMTP id z2mr23917239par.11.1456075160020;
        Sun, 21 Feb 2016 09:19:20 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id yd9si2694231pab.1.2016.02.21.09.19.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Feb 2016 09:19:19 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id c10so81788654pfc.2
        for <outreachy-kernel@googlegroups.com>; Sun, 21 Feb 2016 09:19:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Fmh7odYZrRgxbqtBUYE/2Au7FbRXfW5dnsiA/whKDHY=;
        b=FZzScrabY449avRHB1uzrflR+c3kF0Pm1jlkz37/7gmUrngcYthnj5TYeYyA13narO
         1JA5dF4TEkN40sbFLPTF8min0iUdHs9VN2xDx4AdNCQT0RqIVm0Uk/sPs2VNg65L/hmH
         ub99aM1MPoNWew0ogZBxc7ZDMJ4TTz40qTKb9gqyn99Wd0BHly+9RUp/C9/okwJ/QyYw
         EicrtiP2utoB5xlv97gTiHnpByK+sESsYth2zYjg0Dzj8t7y2imDZG/tKb+23LIg1Z+X
         HA67PXaOT8UBIjz+nD9zpRQ2auRneU0ik9B8/shQCQoxK23QEJmKVk39SyGTFIqM8vE1
         dgVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Fmh7odYZrRgxbqtBUYE/2Au7FbRXfW5dnsiA/whKDHY=;
        b=QuPrtdAQCTxC+h8nDCS7RYT1FgquZfvPXi7fsQIQwejwAwhLKp/aJllF4/ecX1iYIE
         9XyL2EsQ81+Gdk/HaJqnxZJ/aGhn4zOgW+MlYM5tm2NeB63eAsk+Ol1e9lMoIdyDYbYr
         c5GlakOp2wQMjV3j49Cuj9o5OdBT69LVWGrSWqKfSn6OJWzJz95fXaVIKrjxL/ygGdgQ
         GhX7+8lqyI0Dj5tTIs/9aj2E8gQJWMhjCLQsyyETAozu+bAo/Dm/yIbwH69Kub3+RbNK
         asjE7J1U7gf1HfiaklWEsoIXuIvcdQjjqCh94zXajmhWo8zNLvPynPyrqqGGBJVIHl7N
         4Ttw==
X-Gm-Message-State: AG10YOT6OwYaRUTssBlx/HcPtfgNnDADqEezpSIWJoKmDBj4tFQeSnIHnKCPNomR7S0pJA==
X-Received: by 10.98.1.197 with SMTP id 188mr32436287pfb.8.1456075159878;
        Sun, 21 Feb 2016 09:19:19 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id g25sm31073433pfg.35.2016.02.21.09.19.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 21 Feb 2016 09:19:19 -0800 (PST)
Date: Sun, 21 Feb 2016 22:49:52 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lusture: ptlrpc: Use macro DIV_ROUND_UP
Message-ID: <20160221171952.GA32729@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The macro DIV_ROUND_UP performs the computation
(((n) + (d) - 1) /(d)). It clarifies the divisor calculations.
This was done using the coccinelle script:
@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c b/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c
index 72d5b9b..0d58d8e 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c
@@ -274,7 +274,7 @@ static unsigned long enc_pools_shrink_scan(struct shrinker *s,
 static inline
 int npages_to_npools(unsigned long npages)
 {
-	return (int) ((npages + PAGES_PER_POOL - 1) / PAGES_PER_POOL);
+	return (int) (DIV_ROUND_UP(npages, PAGES_PER_POOL));
 }

 /*
--
2.1.4


