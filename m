X-GM-THRID: 6202795679273713664
X-Received: by 10.182.27.69 with SMTP id r5mr15382111obg.17.1444200910001;
        Tue, 06 Oct 2015 23:55:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.41.100 with SMTP id e4ls141080igl.8.gmail; Tue, 06 Oct 2015
 23:55:09 -0700 (PDT)
X-Received: by 10.107.30.76 with SMTP id e73mr36154178ioe.16.1444200909646;
        Tue, 06 Oct 2015 23:55:09 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id zg1si4961534pbb.2.2015.10.06.23.55.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 23:55:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacfv12 with SMTP id fv12so12487846pac.2
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 23:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=nOAvlxjaQe9sSqsf5fqrlomHD9HZZznrY+IEdN/z79w=;
        b=DNgCZc2ZCQ9vpmxuvg5lZlvezQ4BNlw59aLeLNIsBPwXq+ZeOjWW7z8UzLCko3Ps5X
         46gs2HMPm4PZmCI4IvKE2SgbL45JxvREfT+lb2poCkQd8bkl/vJ94OfIAwF99dmv6EW5
         ueQmibacEYybotDuV6et2tWv6uJd3a/MprDrEED30HAE0QpK0zA+zKLNrHxBJt6HE03e
         s1fLbXa1rftZbJ4Qcgu+W5bhWtUaK9rPn0OK3OF5vs+wbykIHDoHUhRMxeleCQikohbM
         Hx7nxIXL6iqHk8eQbpn6SDfFEGhVWq0XK3SlT6S8ct1Gore1UchPOata5YXVpYJjlt8w
         FIVQ==
X-Received: by 10.66.155.231 with SMTP id vz7mr50857919pab.58.1444200909541;
        Tue, 06 Oct 2015 23:55:09 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id zc4sm37360706pbb.24.2015.10.06.23.55.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 06 Oct 2015 23:55:09 -0700 (PDT)
Date: Tue, 6 Oct 2015 23:55:08 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [KERNEL NEWBIES ACCESS] AlisonSchofield
Message-ID: <20151007065507.GA3486@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Requesting edit access to the Outreachyfirstpatch wiki to correct the
example used for modprobe. (rm file extension on module name)
Thanks,
alison

