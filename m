X-GM-THRID: 6204754090721804288
X-Received: by 10.107.155.130 with SMTP id d124mr326279ioe.28.1444656888147;
        Mon, 12 Oct 2015 06:34:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.30.65 with SMTP id e62ls1616874ioe.49.gmail; Mon, 12 Oct
 2015 06:34:47 -0700 (PDT)
X-Received: by 10.50.114.2 with SMTP id jc2mr12571490igb.5.1444656887733;
        Mon, 12 Oct 2015 06:34:47 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id zg1si1684357pbb.2.2015.10.12.06.34.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 06:34:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id rc13so19711625pab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Oct 2015 06:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=BciItAgNH9AnyJPZqr8JwGMyKfeFS4ilx2oTsM/Gfbs=;
        b=tluxCHSnu5tszF0/nx18OfmLjCv9jUuVlIW4tjt3bYl/2v6XEKT2rUWA8WM0O1JnYO
         ZxiqLowPFA05tTJ4CKH/CwC1F+zfbagB+c4It/wgjSX2DmOwmChf6NC4Fz+PeQKIONhj
         /KeWLj5Mho18icfz72TX4u1/2FwdRl2ilIyT5+DBJu40qi2MMOviz9Xp++/IE7d15zHP
         JFHVNdANN68C55hN+EITcvRvSZUlNijZJ/nUq6phCqeDvxkFlGt8gkz/4D/twGmj9DP2
         NmcTf/DKU1pdg8ofwydS0NAT6ppe+xLPfb6APmbZSVOmt8ctCdgS6YqZujX05ZtDxxu5
         Cy/g==
X-Received: by 10.66.253.199 with SMTP id ac7mr34300787pad.56.1444656887614;
        Mon, 12 Oct 2015 06:34:47 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id b6sm15070988pbu.90.2015.10.12.06.34.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2015 06:34:46 -0700 (PDT)
Date: Mon, 12 Oct 2015 19:04:38 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Fix issues detected by coccinelle
Message-ID: <cover.1444655924.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Replace appropriate functions with kzalloc(), fix NULL tests
and remove unnecessary code.
After applying this patch, code becomes better.

Shivani Bhardwaj (3):
  Staging: wilc1000: host_interface: Replace kmalloc with kzalloc
  Staging: wilc1000: host_interface: Remove extra NULL test
  Staging: wilc1000: host_interface: Remove unused code

 drivers/staging/wilc1000/host_interface.c | 24 +++++-------------------
 1 file changed, 5 insertions(+), 19 deletions(-)

-- 
2.1.0


