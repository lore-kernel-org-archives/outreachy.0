X-GM-THRID: 6608456604457107456
X-Received: by 2002:a9d:524f:: with SMTP id q15mr7032698otg.15.1538723833299;
        Fri, 05 Oct 2018 00:17:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:aa4e:: with SMTP id t75-v6ls4881547oie.12.gmail; Fri, 05
 Oct 2018 00:17:12 -0700 (PDT)
X-Google-Smtp-Source: ACcGV630czQElpwyStPlCCS3vYzoHTGU1+kZd5224/ghr4Wv9YW+VGtW7mrmkY5nftw2VMei9iJj
X-Received: by 2002:aca:5705:: with SMTP id l5-v6mr7221693oib.12.1538723832529;
        Fri, 05 Oct 2018 00:17:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538723832; cv=none;
        d=google.com; s=arc-20160816;
        b=Ah87ZYhJVn8mr0MxZSjnPnJrVR8hm6tXI9p7VFg2vBJHmnYtpTtW0b8ENK++NW4NH1
         80ejjGADjIVO/oambcawEEb9LbU0q0jSYCyS0Gu6bpPmZiViPrcHew72FcHMwutMUugd
         SO8rKO6aldAtAroUo3xgjqwJpaF3PvIIEOxRNWRAShnQqrEbIpWfSb21Fndbazk0/7tI
         GCg5aJDU20QAU2dFXUyB+xnzUG1LikiMpX/XzRo7TLT8aYjWZ0a+FS66AQ7Q+4RRdXhN
         JqnuBoZIz3UipAIzl6zYfdr+5dH76xPrAK/9RT/V8QAb41tHwGqPxBXWuybf7IO/KvYd
         mWCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=+Y2GcyJGkK/sj94ic7zFY7+nQHRl9hx1xNjqJord6AM=;
        b=0ygMnTswFIyarALmAb25SHoAjp/PcsiwEhQfs1UcoDcIizLUloXNgbM5z64PIG1YiE
         7AVlj1q8tqajQgOfuxKHvaIuuG6S6w6KxeZt987FJRlOTIiE4KCBcfwTgJkmTkZYJhoP
         Xw3GnbXYg5ZDfXBAjK//ohKzWuu31eXU1QJmeEMR11oe7lpoph/8jZYdJOwm1+fmSmrw
         Kwmo5Y4tS1E6S5Sli8KCebdvFNH6SwxQyrYA6KtMPfpNjrZ8eyfcUjfkwhaA2SlI9Wya
         48MCz8unNsUFJxXx7uWgnOZ80hAb1Ewo4LDmF2XswWUmJddkyBFqFn2roevkRgXYpsVd
         RHMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mZebL726;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id a84-v6si360439oii.1.2018.10.05.00.17.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Oct 2018 00:17:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mZebL726;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id az3-v6so6403882plb.4
        for <outreachy-kernel@googlegroups.com>; Fri, 05 Oct 2018 00:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+Y2GcyJGkK/sj94ic7zFY7+nQHRl9hx1xNjqJord6AM=;
        b=mZebL726F1bSfphlCl8uWRKG6cwmSsLdo9/+ucyWq/HCLsNw5A0umezWlp/AEc4J6O
         HpaMRIJxeWYkDYyyamQgYRVRjJNgcuTvUXttSrO7Ek1Vfy3kEDrW9G2J308F/bZSSt9Y
         ykzMX9pecZTHLlJhjoA2JE2tnTeAkafVLdZFdPBbl/gqFwTSqSJMdK6fi/gvBEesFIBo
         GaMHUh1eW7ctnPEXYLmsyfyroDncu1Z1xxHd8aDZJMmGXZ/Q46M1WUWGglal9hUPgm5V
         g3R4dr2mTic0Zv+mLMS1ZBSJ2DgPHSPfA5ckC6OsYP3Lm6+z+d+/ALboe9GOFEhILxcj
         /xNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+Y2GcyJGkK/sj94ic7zFY7+nQHRl9hx1xNjqJord6AM=;
        b=lePkmw/GN7YSRmA08h9R5TkmRvnppqSsYu1qX41VKuGVkqcIBt+2qwB2fy2QjbDtvF
         eJ0xgIbis75F60517R1peiir6OzXdoN4T1AvIM8SjepNPsQ7ktI8e7JsmWprZ04pmHzM
         1l0b7vse1KNopeIdL61Km4l2AIZxyEz63KV0OxrcGwyisCj1q9LeWi8LFyxLv/lswaZk
         J8jwKfkVly3/WM9/oYWPc1suGoONXQeYsqy6ClRoHZIR99YJfVbTfZki3vS+9VO+tAk0
         vaVGYXUvdpjlQrA7Ds3YgN9oiPe53eJHRWelNth9zlib3/xVzVCkf6UXLCI04ybgRkYD
         ZNFw==
X-Gm-Message-State: ABuFfohjLWu2v/k8B2oGC8uiSP2O7MnhTJno5zhf80kBMs0ST60gxHhJ
	gTH2qxXsiZxlveHCBs7uq+U=
X-Received: by 2002:a17:902:8690:: with SMTP id g16-v6mr9870002plo.302.1538723831731;
        Fri, 05 Oct 2018 00:17:11 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([59.94.221.57])
        by smtp.gmail.com with ESMTPSA id n63-v6sm1000813pfn.9.2018.10.05.00.17.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 05 Oct 2018 00:17:11 -0700 (PDT)
Date: Fri, 5 Oct 2018 12:47:05 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mamtashukla555@gmail.com, gregkh@linuxfoundation.org
Subject: [PATCH v2 0/5] staging: mt7621-pci: cleanup
Message-ID: <cover.1538722582.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix issues found with checkpatch.pl for mt7621-pci staging driver.

Mamta Shukla (5):
  staging: mt7621-pci: Do not initialise statics to 0
  staging: mt7621-pci: Add spaces around '&'
  staging: mt7621-pci: Add spaces around '|'
  staging: mt7621-pci: Add spaces around '<<'
  staging: mt7621-pci: Prefer using the BIT macro

 drivers/staging/mt7621-pci/pci-mt7621.c | 50 ++++++++++++++++-----------------
 1 file changed, 25 insertions(+), 25 deletions(-)

-- 
1.9.1


