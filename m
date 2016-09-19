X-GM-THRID: 6332014923786223616
X-Received: by 10.157.61.72 with SMTP id a66mr4215177otc.58.1474287110797;
        Mon, 19 Sep 2016 05:11:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.37.39 with SMTP id k36ls9776452otb.2.gmail; Mon, 19 Sep
 2016 05:11:50 -0700 (PDT)
X-Received: by 10.129.123.197 with SMTP id w188mr4585676ywc.111.1474287110455;
        Mon, 19 Sep 2016 05:11:50 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 137si1481833ith.2.2016.09.19.05.11.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 05:11:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id vz6so6940626pab.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 05:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=QHPnDS4a7WUIS3n5TISmrWxrqSZjP3Tv8A5xUYZFDwI=;
        b=08cWD/uImG8DYJb72WVykl71IZumM8Tuy2L2l2076WA8dve0yXLm44+7gYJ+H7kDV0
         G32s4AHvIfj+cLt7w3866OaGO6oqXRLjSyl3Q2rcTs4T2Xm/mtoEa9USPucsjoNN2KJe
         hfQbs18V3hRK0Mw+cISn0CoA9hsZ3UYtcpViP3ULHe0jf5xfWHAyTBmM/Ft54e29+/Dh
         NBu6GViNUCdfvmdfe350dev+iNg0ra9QJakZHxn4XdiYIEIsx6ocILlcB0v5/hFTBY1x
         YVlGechr15tPm3aQSwKBnnFJnTrnAbF60OpSI7oplUAtytDRzL2X/w28zvquAuoMvIIT
         ejOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=QHPnDS4a7WUIS3n5TISmrWxrqSZjP3Tv8A5xUYZFDwI=;
        b=Jv5I4XY7K+PNVV3WLsSDEtp80QGT2HX/qRwWybt87QuM/efoq9zKKuEoe9v5yvzCpk
         C6PTCNStEC1t3mgWgbPxrf61TkPXtjHPk/hrI1W5WHe87+pHZ0oRZkJn8v0iQ4paSNYH
         8IcpXSnNPijw0hYUAVze986IOvPZTQM3a0VrKd6EF5070Y5eOhjZw5efBNa4F3VUSOJm
         inH1ZVd+XEAMU55I4iAV/Jr7MVM9LzV3YP8V5dSGwOnXNsOdn3SqfLXLDlVPkpldma2p
         0aYlSiEQfEkabc9tRsEc6i72TByqTS7mUe04c80oyZn2f399PzG1MH+PLTraJh9UVQIS
         ZBsA==
X-Gm-Message-State: AE9vXwMIE9h74ke5A4eccIBnzVnJRenSe2biYP4Y0unNdONHu/UuRof+9uxbNQwtYO1uDg==
X-Received: by 10.66.34.101 with SMTP id y5mr46170036pai.95.1474287109751;
        Mon, 19 Sep 2016 05:11:49 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.188.202])
        by smtp.gmail.com with ESMTPSA id u64sm71305032pfi.0.2016.09.19.05.11.47
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 05:11:48 -0700 (PDT)
Date: Mon, 19 Sep 2016 17:42:29 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org
Subject: [PATCH 0/2] Staging: Remove unnecessary space after a cast
Message-ID: <cover.1474286513.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

No space is necessary after a cast. This issue was found by checkpatch.

Sandhya Bankar (2):
  Staging: vt6655: baseband: Remove unnecessary space after a cast
  Staging: vt6655: card: Remove unnecessary space after a cast

 drivers/staging/vt6655/baseband.c |    2 +-
 drivers/staging/vt6655/card.c     |    4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)


