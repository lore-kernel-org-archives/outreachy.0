X-GM-THRID: 6332156650242179072
X-Received: by 10.66.19.167 with SMTP id g7mr15120107pae.46.1474320108679;
        Mon, 19 Sep 2016 14:21:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.117 with SMTP id p108ls503907ota.42.gmail; Mon, 19 Sep
 2016 14:21:48 -0700 (PDT)
X-Received: by 10.200.52.202 with SMTP id x10mr4744196qtb.67.1474320108374;
        Mon, 19 Sep 2016 14:21:48 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id z4si5306022pam.0.2016.09.19.14.21.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 14:21:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 21so6316349pfy.1
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 14:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=mp9+OtOXyqoKMeatfSKBvgy2w72VIQFQRd1DtH17+q4=;
        b=ihBRPUvNV+1Rx4rx2ZfKydaBbG1pV2tXm8kCyj/7Bxm9dXmlZ3GzCR6gsBoXlQ5Rmo
         hK60jC4+AC2aqDvs5hmZ9TgOKLAljFxfmhYNSybWoXwfRcMIzPyrGODh8JEIRoZN5xeU
         jetUIIUBMR/6AQIbm4AXlHDJ4zj9r4zTqjOoaLZkpeI29chCyJm2bwcnLJ1QBJVVW/dc
         TY6cx+bfI1rRnvhvNlyAuQ9hciQzS/MKFsA2IWd8H9xYiq/EsUIOkAqbg+yTLO8itsn4
         07qZFOWIOln5SrxE51HENN+8N73Nf5gQNhCANoR7+YVv0CWjtAAFPszM0ykecHgT/ytN
         sEdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=mp9+OtOXyqoKMeatfSKBvgy2w72VIQFQRd1DtH17+q4=;
        b=So16MfQzoLSdkbZyOjyQ+JI2lEls81yR7NH9E8P2jcIoR9SguTs2AMhWcI/5w1mFYt
         o6RaOynUevRZZJbb7UgB2GSOTyXEa9fkLdBWxe6a0FoymhnLcnAI82WVPzi41E8j3toM
         M8b/iCGIMoBXoQ1KAcLsoAnFjZ8Nu+3+M+gSUHCsyflYdE+OKRy6qJtKhcEw6ufspgCt
         u8W1oHJq+PFzZFKBE5E4OhxH5oGq2v0861Ol4UoGn6or2pnLEmExo/D0cvC1ApMvCK09
         wk90jY5klGwo3eRb6CzHyo1YRzOW7SRx9C8S9YfBhyMg3VDpiCqufcZYgNMReosgekin
         8zxQ==
X-Gm-Message-State: AE9vXwPx9E83h6lNlKZli14/TzmGy/XEY6FL2KgGw2aL33bfAgOuCywBl/AG9j56e+vEkA==
X-Received: by 10.98.107.198 with SMTP id g189mr50125390pfc.14.1474320108158;
        Mon, 19 Sep 2016 14:21:48 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id c28sm6535681pfj.6.2016.09.19.14.21.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 14:21:47 -0700 (PDT)
Date: Tue, 20 Sep 2016 02:51:37 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/2] Remove redundant return captures in media drivers
Message-ID: <cover.1474319701.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)


Removes redundant return captures in media drivers bcm2048 and davinci_vpfe.

Rehas Sachdeva (2):
  staging: media: bcm2048: Remove unnecessary return capture
  staging: media: davinci_vpfe: Remove unnecessary return capture

 drivers/staging/media/bcm2048/radio-bcm2048.c   | 14 ++++----------
 drivers/staging/media/davinci_vpfe/dm365_isif.c |  8 +++-----
 2 files changed, 7 insertions(+), 15 deletions(-)

-- 
2.7.4


