X-GM-THRID: 6659980627461275648
X-Received: by 2002:a24:5755:: with SMTP id u82mr5039129ita.16.1550647576922;
        Tue, 19 Feb 2019 23:26:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:911:: with SMTP id 17ls1490335itm.5.gmail; Tue, 19 Feb
 2019 23:26:16 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYbtd5rWZePmuQeiQpAqPSYZe9EWZJCtKbrrSitI/zI744WwDsXMVka2xb6dvI8YcE+6qaB
X-Received: by 2002:a24:13d3:: with SMTP id 202mr4839075itz.20.1550647576211;
        Tue, 19 Feb 2019 23:26:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550647576; cv=none;
        d=google.com; s=arc-20160816;
        b=wpIQieKtqG5vWUCEvNlb726S2eECg+iiuS1hkNYw3/LO3hFrzY4HpIGPApRlmcRUP1
         vww8lHknK5o1tUAaROQhiaViPMQVXM0RsVaBtyEqINgyW8Mmgfp0y3cOWp11yyG2IbsS
         y4MyHvVydd7mZ/sWE7ChuIE03H/IzBycGg4dkqU1CvvUE6E5Uzw5sBAuahjgscCCPY1i
         VxIiPHs6zFPe7TDmn4TIO9mMgzM5y189IO4bL3isXP1xiuPG8Yi/XG3EFYqAOij2vevB
         rBpgcfHs2U/Q1cE6CTQLrCMlnLfpQbxpPpRQ8kCwWSQ0IziACp/PQdI6x/8kYH9RD0kD
         WNAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=0hZVG7+UeCd7VwsbVkuDS2/ONHBVkP9K5/Q5qUocMpw=;
        b=Sfntf/XBetIHArpkB3ad76Ry4SqCCSCx+eI31U3lyHKM85SwaaC/bXrGdI4sL82+k6
         yu0zRorCSoICUTJa97m9pWqngdkLBwJz1fSrkIgBvgINjLMVgj7gdnBaL6oKQn2HDvCJ
         mbCRpxi2U1hUY0ckl/pR2lSwnErN2w8ZqxsA48p5WPZ37QGXE+6vZnoyv353h1S/SJxb
         RMC2VOQBNMRQ2f6GpKnZPBiFcfR/utzIm6RyfyeGHTbDGYqWKcLXaN0cKCrsv0l1yyxw
         Z4BbesEC9z+tIqcUSfN3Vs5K3rgJhhaIMD5tOqLKmtnh+vDK7EfDHzLsp+kjVqxQT30D
         zGHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BznrP+XE;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id v63si904380iof.0.2019.02.19.23.26.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 23:26:16 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) client-ip=2607:f8b0:4864:20::630;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BznrP+XE;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x630.google.com with SMTP id q3so4384953pll.4
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Feb 2019 23:26:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=0hZVG7+UeCd7VwsbVkuDS2/ONHBVkP9K5/Q5qUocMpw=;
        b=BznrP+XE0OynbfYsgG/SuQIzIYLvnfHotHRf5JgoI+RS1nIIlsX/j7iiLVgclNBP6S
         eJ2ByTLN3Rl4wKPU+zMiDa2d7O+0+EGcuAinvqu8rkDSif+Ur+Fcmx19NuadBzNHBZY0
         DWZmK/3ybzxCC107EzGMg+cseTWEbna0diG9unHGWrgaqL1OCzmPCgjj4PCsoOvbehdt
         2Xu48ceEBUD7uIkbtEvej5WaYH3Qch5VMkxlzpT6OhqHpUmHKgjlg1M4TQC4xgz5K7rO
         BaaTSbx5zJpU3ApvJl+9K3sJyCaN6XWBw/tETgiCfObPufjg+q23NHdBu/MwxedF8A4M
         m1/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0hZVG7+UeCd7VwsbVkuDS2/ONHBVkP9K5/Q5qUocMpw=;
        b=tb0lHPrxvl/YBMxrIw4WSPQF8r2upf0PScohIWbx8DVbi6cJwdOUxrRMH//hiuoNiT
         Bl/SHbVN2a78RsY6u5pPIZe5rQJXR9HhyeG0R7o4MU06qBUeGRAxS9qeU/+gpRsK/o5o
         iv5K6g4IIk/dGT346bjDIqsEuFqqNRcWR4N1pPLeyC6Qv1P9wEQO5I4QoyDmjcQL1kZ5
         5S5uHcq8PRFAzKO6CV7DIeI7EU1vih5pVpz09NnzajYi+X58si9fm9KHl3UNmNiKcChm
         5P2cKncE55Vq/KseF8uP/MerSG4gGXxn8rsHzmFJq/tMuSkwMGVWoA8RtgfWV5elprHz
         Lvew==
X-Gm-Message-State: AHQUAuYVM8TVQrVJHgxKdUyH7YotTvtD5KT9dgGC+DQs/cAQmrz395np
	iztYEE+jJlpDNWDJKPYdumaQgApbVPI=
X-Received: by 2002:a17:902:8687:: with SMTP id g7mr35043236plo.96.1550647575907;
        Tue, 19 Feb 2019 23:26:15 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id s2sm34828190pfa.167.2019.02.19.23.26.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Feb 2019 23:26:15 -0800 (PST)
Date: Wed, 20 Feb 2019 12:56:12 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/2] Remove Checkpatch issues
Message-ID: <20190220072612.GA21139@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

This series cleans the following checkpatch.pl issues:

WARNING: Missing or malformed SPDX-License-Identifier tag in line 1
CHECK: Avoid using bool structure members because of possible alignment issues

Bhanusree Pola (2):
  Staging: rtl8192e: Replace license text with SPDX identifier
  Staging: rtl8192e: Avoid using bool structure members

 drivers/staging/rtl8192e/dot11d.h | 19 ++++---------------
 1 file changed, 4 insertions(+), 15 deletions(-)

-- 
2.17.1


