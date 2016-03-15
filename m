X-GM-THRID: 6262126512629088256
X-Received: by 10.140.31.102 with SMTP id e93mr20951980qge.27.1458014946939;
        Mon, 14 Mar 2016 21:09:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.223 with SMTP id t92ls33145ioi.69.gmail; Mon, 14 Mar
 2016 21:09:06 -0700 (PDT)
X-Received: by 10.107.43.147 with SMTP id r141mr21336344ior.15.1458014946495;
        Mon, 14 Mar 2016 21:09:06 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x229.google.com (mail-qg0-x229.google.com. [2607:f8b0:400d:c04::229])
        by gmr-mx.google.com with ESMTPS id i133si1481502ywe.7.2016.03.14.21.09.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Mar 2016 21:09:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) client-ip=2607:f8b0:400d:c04::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x229.google.com with SMTP id y89so4758499qge.2
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Mar 2016 21:09:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=os4MMa0kRuXYDjsMFgOe9rlJd0vLwVGWUzxT+OvXwk8=;
        b=xBeB2fScyM+z4jAEy4RUSasF8wP4yL/bSrwPhixs5QcA+7gJNyYnAowu0hutVucjXa
         j45GOwjGT7r8nUuilKXPvy0IpscqEozOZnpSm0hLj9Z8weRkD691VpUtkdRZZXliYvwz
         G4uLfpXqZ/HysLrQSN56Y8gKsF1Y1FnrKATJ8NBHmWZb91fn4XROt1UdF7bNbEz9T0o/
         aW/NRvkblncitIoJ1GNpShpEFz7YZAXgtPFAxR07+MdmLsXFWxlyfbnzaArAF7v/9jCP
         OKxnz66Pi8pqcHy6BANluxbJt81HGgZywWlm85O1QnO6T9Nz1WTURMhEjPhFaSJ8SKbW
         kGJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=os4MMa0kRuXYDjsMFgOe9rlJd0vLwVGWUzxT+OvXwk8=;
        b=dXFG2C+1i7dSc39rXzjHg8Q1mU6LQ6vjWzf+jzJ+h7YW6CebEibF0X+uggajhTHNSE
         c8XMt8DtuUgQDAXF63m9yc/l2tYGdY/NNcPcpCix0vJ5zu7+0pVQafn5ZgltUlT6cyeg
         tf0XXGxWp+20eHtwkYq15E5qufsNNQuKcMMmNhDCSfMuTjnJRaYunSScLXiPXGHWbdjg
         WktDQbW8HvjeWSTM1hHbDGY4KEgopLBElByb1eNu6ipdtCd0m3zO2tg653dypz+nNJ67
         eo0iu+0jVJJJgj7NzoG9/XDNY3a0NPp0by6iQwr0TcEX9ECNa3C7DX0BoPIHEeW3pC8q
         +XXw==
X-Gm-Message-State: AD7BkJKFDBOb+5Hvq9tZ78W550yZ/p0poIapMvmon4mBDoAqt4qb8FqEIHv6saEUvUiEBQ==
X-Received: by 10.140.82.146 with SMTP id h18mr35653898qgd.26.1458014946162;
        Mon, 14 Mar 2016 21:09:06 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([2804:14d:ac80:19e9:b6b6:76ff:fe71:ca4b])
        by smtp.gmail.com with ESMTPSA id q64sm11923763qkh.47.2016.03.14.21.09.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 14 Mar 2016 21:09:05 -0700 (PDT)
Date: Tue, 15 Mar 2016 01:09:02 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/6] staging: rtl8188eu: usb_halinit.c: fixes multiple erros
 and warnings
Message-ID: <cover.1458014176.git.juliana.orod@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patchset aims to fix multiple warnings and erros
caused by malformed comments and coding style. There are
many old comments in usb_halinit.c. Most of them were
reformatted to match convention, but an evaluation
is needed to see if they are still relevant.     

Juliana Rodrigues (6):
  staging: rtl8188eu: usb_halinit.c: fixed multiple warnings
  staging: rtl8188eu: usb_halinit.c: fixed comment blocks
  staging: rtl8188eu: usb_halinit.c: fixes comparison warning
  staging: rtl8188eu: usb_halinit.c: remove unnecessary braces
  staging: rtl8188eu: usb_halinit.c: removes unnecessary parentheses
  staging: rtl8188eu: usb_halinit.c: removes else after return

 drivers/staging/rtl8188eu/hal/usb_halinit.c | 959 +++++++++++++++++-----------
 1 file changed, 592 insertions(+), 367 deletions(-)

-- 
2.7.2


