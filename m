X-GM-THRID: 6667902165871230976
X-Received: by 2002:a24:c546:: with SMTP id f67mr2224601itg.28.1552491953048;
        Wed, 13 Mar 2019 08:45:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:6008:: with SMTP id r8ls926886iog.6.gmail; Wed, 13 Mar
 2019 08:45:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxwQ+M3vaZKKmwrldmwYkAyHIwukjzast6bSKFGzpoV08WMOdziKpXz/bBE49vz9YhCiy+/
X-Received: by 2002:a5d:8141:: with SMTP id f1mr6034316ioo.9.1552491951979;
        Wed, 13 Mar 2019 08:45:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552491951; cv=none;
        d=google.com; s=arc-20160816;
        b=bNm/69O/UEeJH5up+vjASgsiSAQE40grNjCw8LC9ATmovwYkZPpWeYfbUK0I3/E3J3
         sR85IfUqhcAht2z63WfZRNyGv+pmf+rHgQ2JQI7X2H6W5wG9niqtuec4fCXLccX7fhdK
         UyVQ9AeKN51P4MD/UWlfi/byDBp5Vsyqgjf2ScnsI4jYbUk/eHBEDP8eE4VD5i4vM70z
         zo9CtIj7h+8Vf9LA+al+xFQY1K7mg6Td1qYrhEkbmRuSybydwswqSdIhIWnVEERI3/go
         ZKm1GyFJhc6nyBEnu81LpqmxqlOju6zdQZf8LicXAgpYOQP2lcIZqHjSRxt3V0qXDcVl
         vurA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=eFdSnl39pbWVxfigNTmTG18G72aUV6S5u0kC3s2M+Fs=;
        b=djhCnYXo805xqOP8OYjuiR5Mmkbxwu3ENjdUIZL9I9q32+C62e2mZWkgxhsNh7LRZc
         HEJiOT11RZbMrn8YB4HnAAdJQm10USy7jATh32Re+EjS39WgkesPc+s50EZTNURw1AjP
         5H0WNIbCxyJaSPYSGa1DcqA7s0PdkrzJM1h0BmfXJ443akJ/V3afTydFY6jMQbeXhAHQ
         z0JqS2mBbTOgk0M2T4fjjDeRQMojjqpwZfCokfm6QEiqRuS6cUP9wKjBAW7xfA6afcQc
         5tNhxCJTMNNaQgBaYxQ8aHUXGOtEXMOv+lG1i5smFiQybaM6doHoLjCIrz/u8xOPBusE
         WRTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="PZixmXm/";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id 207si94783ita.0.2019.03.13.08.45.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 08:45:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="PZixmXm/";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id s22so1665101pfh.4
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Mar 2019 08:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=eFdSnl39pbWVxfigNTmTG18G72aUV6S5u0kC3s2M+Fs=;
        b=PZixmXm/QA2OSJIb60E1fAcjiLXY16Cbe6O5FMJvCX8g31Vp4ST5m57qOhCM1f4PXY
         /BCDt1if10Uj+WrZxzlLZWZlmfjuZnjPRSv0ewtxBArQQ4JNci4ugCIswq+oQ+aZPLB0
         Yd6Rh5zBqKzjslxqzMbGiI8FEEH5+RmcKZCGWya/hbV7CdBrVSWlRSHwVrdBJkz0H56B
         apGOJFVu0oXjokxqlyhZjNZGVprjOkqqMZE5eguoi3/r4UxWmRlEyKPi/MZ2S+3qc+qR
         qmqdFXS5OHX+/qQfx2uh7/BgWFjUWvM7Xk05Cek/pejwoKuXEe+aDv1NDmda+R7/J0wD
         CjxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=eFdSnl39pbWVxfigNTmTG18G72aUV6S5u0kC3s2M+Fs=;
        b=sj0RLG3Gvo4SyPpZ5ixDYDfC9I7e1pfXQ+y9xgSLWIg/EckMQGwQyrX5eDFWaPzgoM
         WS9O6sb6FtX7iTGd2FR0VPbP4+QqQY5P4UhW/OeKfuc3RmZ9mZ4xlsdkV/HXg5JZwHF2
         Nrc1iX0wALpBqbNwJJWiKaEZ/cAyLkohnnDc2TJ6HYETBaNFrAqkZmyzER+gjlj/u7N8
         /1dGCQk8onTFjMQUWWPhiaYSHRzvwPy/QqMVC7KzIF8JVwQ7GI6hFR7LqwBEdl/7i+RX
         fxZY79kRx1O3BhUgUcyUJbdFqYc81LSUuuX22Ucvr4hl0d7s0vOFI9CUl/y5HHBDshOn
         HpZA==
X-Gm-Message-State: APjAAAWbr+lIjdFKLsUcv0y4V0UvEFbQLiMTCMhOBJD76EdDEVfLLGdN
	9IOxAhb0EvOAhi1SH7COyZQ=
X-Received: by 2002:a65:52c3:: with SMTP id z3mr41066921pgp.395.1552491951480;
        Wed, 13 Mar 2019 08:45:51 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570 ([123.201.165.8])
        by smtp.gmail.com with ESMTPSA id g15sm5045520pfg.157.2019.03.13.08.45.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 13 Mar 2019 08:45:50 -0700 (PDT)
Date: Wed, 13 Mar 2019 21:15:47 +0530
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, julia.lawall@lip6.fr
Subject: [PATCH] Staging: rtl8188eu: rtw_recv.c: fix a tab indent  issue
Message-ID: <20190313154547.GA10791@sanjana-Inspiron-5570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Fix a tab indent issue which removed warnings after compilation using
chackpatch.pl.
[WARNING]:No extra space at the beginning of a line.

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 1d83affc08ce..cc6f1a23da01 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -24,11 +24,11 @@ static u8 SNAP_ETH_TYPE_APPLETALK_AARP[2] = {0x80, 0xf3};
 
 /* Bridge-Tunnel header (for EtherTypes ETH_P_AARP and ETH_P_IPX) */
 static u8 rtw_bridge_tunnel_header[] = {
-       0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
+	 0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
 };
 
 static u8 rtw_rfc1042_header[] = {
-       0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
+	0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
 };
 
 static void rtw_signal_stat_timer_hdl(struct timer_list *t);
-- 
2.17.1


