X-GM-THRID: 6477704984004657152
X-Received: by 10.98.137.3 with SMTP id v3mr2725991pfd.50.1508208220471;
        Mon, 16 Oct 2017 19:43:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.62.137 with SMTP id l131ls52001pga.32.gmail; Mon, 16 Oct
 2017 19:43:39 -0700 (PDT)
X-Received: by 10.98.86.9 with SMTP id k9mr2743576pfb.10.1508208219477;
        Mon, 16 Oct 2017 19:43:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508208219; cv=none;
        d=google.com; s=arc-20160816;
        b=cSCBEIFiVUnvJp4Yzrvuyarhbce+mt8lTPI1OQr6Fr4NIoYdioixupX7J7aCean7qp
         IoVhWDTvg3w/BXEo5n7Ik9ETNpLcuSUiGlZs8Zx8wojncgPMvSAi+LOKJIrrXhbbHeJ1
         Qn+ztloeeddguFHO/aaA+LJocEewM8lM+lW4GBbsegEJ0qzCwFZ92lyD2rDOIcgcEhJI
         3I8dHMzGowZpspM/skGsTgEkY5MbHuNwzfxuW3p5bESeHOUNwqcy7qb2ektl2mYO1ZQl
         4xtMbnXocpLXI9Djk90PHY6fo/FaM2h+qN/VAJN3IvDSQTMEjVZI7JN578F5pI+mtBGL
         KfgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature:arc-authentication-results;
        bh=j0+XUa9Hya+C5UiwMEmI02WMaEATorMHrjLsN54KPL0=;
        b=MjBzHMftncJVrFsLh2g3+rfJO7HD5f/klid1ZtA5CUbewTY1Bcf9WlKq2/tCIxV+t7
         kqhBbEM+9FnETTffn5ZYJwy+vB/lHGKkQMCJuBt6rfyb5VAEg4XWNMjY3f7+SJAuVEQH
         9YsrXOFEw2aNzD+Aul/DDvqhczCESyBy1CcBv7mHtPJmGw9BLbGR0UzWFiC+5265XZL8
         /CJjP5lMOA2Ah8D52LxLK0ZOG+B9hfXe3uXzn3fjQJafYgtrmatilgXXGKN2Q39he2Xb
         3U6a+wyxZUiXL2tVe2TpT4H4mTkWloeGmEppkehSanvml34ujdIfUPLIzeRdCt0b6ylC
         Ks/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=Rb4E3FMk;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::241 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua0-x241.google.com (mail-ua0-x241.google.com. [2607:f8b0:400c:c08::241])
        by gmr-mx.google.com with ESMTPS id w4si825285plp.5.2017.10.16.19.43.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 19:43:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::241 as permitted sender) client-ip=2607:f8b0:400c:c08::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=Rb4E3FMk;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c08::241 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua0-x241.google.com with SMTP id n22so173489uaj.13
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 19:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=j0+XUa9Hya+C5UiwMEmI02WMaEATorMHrjLsN54KPL0=;
        b=Rb4E3FMkYdHI1RrbFT7oxSvBtNOa/3CE2btvC7tETDpJlz5kSee2DGzVxakPukraRc
         Gz9cUTQm6s/VkLS7liWxCpFLOsuPLIH9f4fVBieQZEZIMKEGdILUoKHqm4ElOrxwFvD0
         CsogHRVxysmT7gSSXOMr8pPyHCYKizKcyF5RLoCjqat2TK5s+xs3Rq+BzCnxTfr7Imn6
         CDyCcTui4FcEhbgCYeHdpXXrLSbTNvkcVEXhfBYP5W9Pn+boUIeTYbKQznJ4jNJdEF5H
         3fimt0io0zgHF6y9W6H/NHAl4mxvW0OZEfmP5y/JjG4nkRvTqHrBzjSrUwNOWkKI7Fqa
         410g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=j0+XUa9Hya+C5UiwMEmI02WMaEATorMHrjLsN54KPL0=;
        b=KO9VVI+G/xjVAZysQtZm0qRTyL5BYUFbyiEKtYyzgb1/Tkntd0GHbs+Y7JglHqVxZA
         iniecCi+9+V/ct0ti9t5UFW7kx9a2KY6V3Sf64rsUxRxGpKUXTVxWPcCeT7xMMTYfJdD
         jLc4aRXHrHrgAs5TVSz0TLCCYrXe1DchWLC6LKoj//71hPGfYsJgWVG7HQ5mclr2Fj45
         dpHKdurm3VygCzBUq3SAgk9+2P7Rk0lYkOlXKKTQZ7zv0XaKMi8WLV/fwBnvlY90eKHV
         9VDKYfSXa6tYXJa7mb03fax635dhTZt0FNNBw3HIhRgQZ5OHsLjy+1FEVmGmxAmwir++
         183A==
X-Gm-Message-State: AMCzsaU9QCFXhOk2go8F8IKl7CL3Vayf1u4ev77qFZnb2ZLoWBhLZ4KX
	sYAloxODXXKtO8P2qHDxNuxNAVaT
X-Google-Smtp-Source: AOwi7QBml/x5vCE/DherZ3OcH6/k0ljb94a4BINzyCbsw3npPqatTtbBtQFMsPh6M2vXY58RFLjQkg==
X-Received: by 10.159.35.107 with SMTP id 98mr8074370uae.190.1508208218735;
        Mon, 16 Oct 2017 19:43:38 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.207.209.222])
        by smtp.gmail.com with ESMTPSA id k32sm2877459uaf.11.2017.10.16.19.43.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 16 Oct 2017 19:43:38 -0700 (PDT)
Date: Mon, 16 Oct 2017 22:43:36 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: outreachy-kernel@googlegroups.com
Subject: [KERNEL NEWBIES ACCESS] FrankCancioBello
Message-ID: <20171017024336.GA3288@ubuntu-server-1604>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Hi,

Thanks to all that contribute to create https://kernelnewbies.org !!

I found some details that I can fix as soon as my user have access.

frank


