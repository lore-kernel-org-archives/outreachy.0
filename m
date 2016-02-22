X-GM-THRID: 6253814097035395072
X-Received: by 10.107.184.195 with SMTP id i186mr28242824iof.24.1456143699712;
        Mon, 22 Feb 2016 04:21:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.27.130 with SMTP id b124ls847372iob.40.gmail; Mon, 22 Feb
 2016 04:21:39 -0800 (PST)
X-Received: by 10.66.146.231 with SMTP id tf7mr26350413pab.6.1456143699388;
        Mon, 22 Feb 2016 04:21:39 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id yd9si3073748pab.1.2016.02.22.04.21.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 04:21:39 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id ho8so92985745pac.2
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 04:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Azs3Yghw71KCoX+dUPGzdjKlMRL8o3P8S4aGdDi22Go=;
        b=c7AhPcWvkGjuAee0zaRTIF1uIVb3KrkYLDVbwbaF85EdNyvGsrdf2LyxoXv5Es2HgI
         Z8Rnrm3TtXEO5YbTN8hHcOF/pgdgKYQbGHetIt2nwzQNblSqaiEkyoB7C6eTNzrjoQA5
         lyfaZcz8twAyZMEFfiDRbpmS/hUeXFlYujPNbpUgm95Ws/+U2omZFkBtriA8ZU/CWvQG
         a60AfN818JCpC4ZrOs16gbIKFS7ZOtOijfZK6B7h7T3m30d8t0XgwWHi50Dgl7noYiKI
         YqcUXDXefUpvOIlxKZWncs4YOV/C+OyUCaYqtbd4INhdWRavxqpUmnh6MfJ4yb/Us17d
         naEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Azs3Yghw71KCoX+dUPGzdjKlMRL8o3P8S4aGdDi22Go=;
        b=BV+xZW+fY8xba8YgmjmKW5d1RepGTvNrRZGMJfT+tj7NwoRSLY7P8RvTvFe0BW8n2r
         ZPbr7ULgFUIa3ec5Ag7w8FLtuNG9C+oVo+yabRcTr2O1G3kXksQ73dJDDLzqBlw+IGV1
         v8JJGX8PriTwnR+brXEZilQNyqUUxT4UJTdgz4DVtvcVQj0k0IxVUdlyeY9h5qkLsRX9
         0xI5YpkiHvNwsSa+4TzVUqvVzgWAopSqspuE29rLHx2kqFoff2D/DRMt1RpIJXqfHXmL
         BfRybfNHSygSPRgqDhTwcq+WUf/ZqXNqKG6LjWHhx9FNaL7yOIaGmmlcWpajMgy/iOu3
         +Xag==
X-Gm-Message-State: AG10YORcfVol8Bs44dqQOxcSNsI9YX8MtAxj8hNv+MFpx19Sv4SwbBRXkUNZIB7Z3F+CIg==
X-Received: by 10.66.63.104 with SMTP id f8mr37649120pas.109.1456143699267;
        Mon, 22 Feb 2016 04:21:39 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id lq10sm36793767pab.36.2016.02.22.04.21.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 04:21:38 -0800 (PST)
Date: Mon, 22 Feb 2016 17:52:12 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/4] Use macro DIV_ROUND_UP
Message-ID: <20160222122211.GA16615@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patchset replaces occurences of (((n) + (d) - 1) /(d))
with the kernel.h macro DIV_ROUND_UP.

Bhaktipriya Shridhar (4):
  staging: rtl8723au: hal: Use macro DIV_ROUND_UP
  staging: rtl8192e: Prefer using macro DIV_ROUND_UP
  staging: most: hdm-usb: Use macro DIV_ROUND_UP
  staging: most: hdm-dim2: Use macro DIV_ROUND_UP

 drivers/staging/most/hdm-dim2/dim2_hal.c     | 4 ++--
 drivers/staging/most/hdm-usb/hdm_usb.c       | 3 +--
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 4 ++--
 drivers/staging/rtl8723au/hal/usb_halinit.c  | 3 +--
 4 files changed, 6 insertions(+), 8 deletions(-)

--
2.1.4


