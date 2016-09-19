X-GM-THRID: 6332057580597149696
X-Received: by 10.129.74.3 with SMTP id x3mr4868919ywa.88.1474297042069;
        Mon, 19 Sep 2016 07:57:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.13 with SMTP id f13ls3238547ioe.45.gmail; Mon, 19 Sep
 2016 07:57:19 -0700 (PDT)
X-Received: by 10.66.129.232 with SMTP id nz8mr5887409pab.14.1474297039225;
        Mon, 19 Sep 2016 07:57:19 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id si10si5476958pab.1.2016.09.19.07.57.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 07:57:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id my20so4113960pab.3
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 07:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=acmt+o+qOXqlpoxchmxStTX/vnrCIT7Pe/lRP7iUJrg=;
        b=HVQ7fzqenBZ6uR9l/gcXCAkLzBWTEG57dZTkSS0Ckr9NG841wMzNhuvJtCsAo8NZpS
         BNwywfs2EmHh9Wo1iAepGZF4ueIvY0bdHamF3iEWzr4sSCG0sXrpvote31RFMI0UyBGK
         GBA7H88x4U3xnutsl+3avpKXww1XZ5XALC9oZCSvR9mDpyYhxLEI7ZcgtO+FC+bi31yR
         t0mGizne7Juv7SDYOe2ozWHJ2TjGqyGo3CS9CSOrqtUB8yirRtRq8LcUqitY25w8mAyW
         Y+vuTsE2KpT8fkSpzgAz/UEaxnTouhqqS05JHlA+9QiHTz2F7FnvJdid9vk/vNQThxde
         Qltg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=acmt+o+qOXqlpoxchmxStTX/vnrCIT7Pe/lRP7iUJrg=;
        b=fZpXXVn2bV553JE1n+kkE5tMBq9mMbyp4j2MqGuiZh0NY8RSW8YC4Vwv1EnhJjONVw
         Q9RDi3hfhdWJk7gVVMJktNwhAFq+DEcx/pjVOnzVSTquC4JFdtd1MjdGWmIneHaGo3x4
         FwoIDrXbrbbbex6kXxuyGcV4yb7uox7vhHywSdGZHRW+opu241I2D/pUyNQzPei3nYbV
         gtBi4aMGX46/cGyrvRvB0lGCEfSZrHsEyMweslirlAfFWAnYiQ4bGSGnftqAskKjfnNA
         0DoD97AaMMNseV0Vf+Mh2sg+CEwWr84jNLywhFmV3bzkC0bNTcUfESbpmq+IqYRmfN5B
         TnLQ==
X-Gm-Message-State: AE9vXwMHbURFxsyrbdATX6PURxIiBnLqI6eaGanKBeKiAFv6FyQr3eIJvYIPqCxlPgjrTw==
X-Received: by 10.66.16.38 with SMTP id c6mr46990628pad.64.1474297039065;
        Mon, 19 Sep 2016 07:57:19 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id hs7sm32356086pad.24.2016.09.19.07.57.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 07:57:18 -0700 (PDT)
Date: Mon, 19 Sep 2016 20:27:14 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mateusz Kulikowski <mateusz.kulikowski@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 0/4] staging: rtl8192e: Fix checkpatch issues
Message-ID: <cover.1474296026.git.namrataashettar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix multiple checkpatch issues.

Namrata A Shettar (4):
  staging: rtl8192e: Add space around '+'
  staging: rtl8192e: Remove unneccessary blank lines
  staging: rtl8192e: Add space around binary operator '+'
  staging: rtl8192e: Insert blank line after function declaration

 drivers/staging/rtl8192e/dot11d.c | 12 +++++-------
 drivers/staging/rtl8192e/dot11d.h |  5 +++--
 2 files changed, 8 insertions(+), 9 deletions(-)

-- 
2.7.4


