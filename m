X-GM-THRID: 6331266648892243968
X-Received: by 10.66.234.197 with SMTP id ug5mr1288207pac.143.1474112889450;
        Sat, 17 Sep 2016 04:48:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.40.231 with SMTP id s94ls7399022ota.17.gmail; Sat, 17 Sep
 2016 04:48:09 -0700 (PDT)
X-Received: by 10.129.78.134 with SMTP id c128mr10150288ywb.50.1474112889171;
        Sat, 17 Sep 2016 04:48:09 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id z4si3406570pam.0.2016.09.17.04.48.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 04:48:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id p64so35580607pfb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 04:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=jrvhINh5EBzvNlz8qMaz8Tm7Q+UiHxtEQO/efkNdUA4=;
        b=DeV8deV/1QjmOTHyumCf61avIi1amAVMNeAbohYOW82TFgwNFkwAmV9sehyKRjUkbV
         5+wfKt7F1rf+Uz9uWWVHaKYWI5zru1eUvUUK+dWo8ILE4wm9j4LBP92W10uC2Bym2YTF
         R/l6PJREYPEUhAt0IxjyIBk75SGRChhattP5sBLDqbCZ6ez/sqPnz5PJt3sYZ8pN7A/r
         HbcKmyw1S0R78C4iCwcC2NOXH+8Hs+ohe8+0Ki2vr4XFr3Gp8Hy3qLgIbtaXSPQpxwqf
         ylmsVu5/zcWLjXDu7UKeGx6llPYzAuG5UsW9BIVwgQLEZV1ViMx2t1vI/e76+3IG8g7I
         cVMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=jrvhINh5EBzvNlz8qMaz8Tm7Q+UiHxtEQO/efkNdUA4=;
        b=dDy/8MBIM3/x4frU8oXEs8KCvvJw68Tn34d9EzIjlOwpx+9ueWyEvaBdC2F5sBu08I
         VTkKOIhmVPTpvFNX1ETsR8n6y0z8B5KLX82ZAYenAzfThSfazwsDF0yEC3SGWll5rivm
         yBt2pQxyw+KVt+gv5SdCOfSvd4KOTP3sm3Txjo9M0JKUb6Nqvu56y6Pi04PeIt6rBFSx
         PRCb6Qga5QSKSw8ghqM8ZlqQmozuDIOtcZDq+4aV2jybPUhyxISykUnyqOTTuW37M6cG
         UOB/bfYyiAlIZcI11rt73rKsW1DVILmFMHG2Mu+xG4TyifhkCtHkguWeBbIE5GZyTTaJ
         YnNw==
X-Gm-Message-State: AE9vXwOV0UbDdty9w9LSxfh0HyYTr5nhnRS9KTS4cYK3AYs1+7ljdDuFKvackuT7kt71YQ==
X-Received: by 10.98.110.4 with SMTP id j4mr30730087pfc.56.1474112888967;
        Sat, 17 Sep 2016 04:48:08 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id u1sm56764174pfb.62.2016.09.17.04.48.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 04:48:08 -0700 (PDT)
Date: Sat, 17 Sep 2016 17:18:03 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	Anson Jacob <ansonjacob.aj@gmail.com>,
	Haneen Mohammed <hamohammed.sa@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/4] staging: vt6655: Fix checkpatch issues
Message-ID: <cover.1474108444.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix multiple checkpatch issues.

Namrata A Shettar (4):
  staging: vt6655: Replace explicit NULL comparison
  staging: vt6655: Replace explicit NULL comparison
  staging: vt6655: Break multiple assignments
  staging: vt6655: Break multiple assignments

 drivers/staging/vt6655/card.c        | 6 ++++--
 drivers/staging/vt6655/device_main.c | 7 ++++---
 2 files changed, 8 insertions(+), 5 deletions(-)

-- 
2.7.4


