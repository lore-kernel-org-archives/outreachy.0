X-GM-THRID: 6616381756005154816
X-Received: by 2002:a24:da85:: with SMTP id z127-v6mr3622873itg.40.1540580634392;
        Fri, 26 Oct 2018 12:03:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:6605:: with SMTP id k5-v6ls930848jac.0.gmail; Fri, 26
 Oct 2018 12:03:53 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dAALYfiK9N6CKdSAz+hPr6tpJUkEQ57tisMRXnHpoCnIDkjG65lo1K4p4+pAws7wCL0aJl
X-Received: by 2002:a02:7821:: with SMTP id p33-v6mr3941628jac.24.1540580633577;
        Fri, 26 Oct 2018 12:03:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540580633; cv=none;
        d=google.com; s=arc-20160816;
        b=gdbI2ewb0+6npYrNm40eyCwDbpDib9ZgL5/WOq9XjAaC1zpAgjkto1ua9GBVETEF1c
         7p1kJUovPnQRsXbw+YWGngciCkRmljkps/4B+ZsvsZ1b+JJlN3bMvNlT0hneKHK4WhM/
         TUHTA81VrzGDOs4Yg776fRl6Nx5pADT1skg5Jqe0SEiV4Y/DbJgMws2Q7AHdQNXBU4BV
         6d/zkWlmxIySpYNpjbdXe+OsKHK8kAnIewImRutFRS/DMxFjjrC9jPDdKQt5AnU2n5k2
         qMB5mMN+G4ZRZAU9DvQT8RZu8gjFWnFww8yM0jtoyxl9mHBPahm+Yk3xTPX/4JMykCBW
         qRkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=lbOtJ+IXTmF0J4dzVxEShHiifrkDS0lzDb1R83v1wrE=;
        b=fsQ2wLSMsUxzszTWxoyKj0Bl6vOu74mfW9TTvawDdU8++x5WbesnpuEff0m1ldfa9c
         JPy//1aTF5RlAapeLI2DKA4rZ26BYToYxUzCGb31ODfKbcr8mmfENc/lZze1WFvOQzpY
         Q5HwRyn3JJjaJZ+XkKgfcagAi3Lf4ghWIpwLiriIsks9p4v4CxbZqGm9K/JqTcruSQNB
         upP9pv3JpyT2FsFfJSCj1+SfydaBUt3ET43hMZB9B5kQaN+/jyTvRgJH6mmZAYzW+9Fy
         MYNJnAvZocF81OSSrJdsUkamIdsVE/wWLiIOF9k3xAds7bJr90ZvVss0SADeCBRJOjcb
         g/SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HW5wfNi3;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::834 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shayenneluzmoura@gmail.com>
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com. [2607:f8b0:4864:20::834])
        by gmr-mx.google.com with ESMTPS id 131-v6si205371ita.2.2018.10.26.12.03.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Oct 2018 12:03:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::834 as permitted sender) client-ip=2607:f8b0:4864:20::834;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HW5wfNi3;
       spf=pass (google.com: domain of shayenneluzmoura@gmail.com designates 2607:f8b0:4864:20::834 as permitted sender) smtp.mailfrom=shayenneluzmoura@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x834.google.com with SMTP id r22-v6so2447155qtm.5
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Oct 2018 12:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=lbOtJ+IXTmF0J4dzVxEShHiifrkDS0lzDb1R83v1wrE=;
        b=HW5wfNi31M6tS0Cpdyd9A3yrqmghKzZHmymENyM6pWIbGiyVUNDtWlJ9g1/tP6+KF+
         4RQopEqZaz1KamdvkcxbcWo9HAK4fd9NXRd+pN+ZYrNK2p1EijPQ48YBC6t3X0lLSDrM
         Q1xFqzuXAl1kz/BoncfwGpsoH2mSFwMHXO/NKfwk/DXok73d6p7lbImeQtHGO+E8rfg/
         9OegMV/IrhQcUFHGCAiJVl1iotLGTQ5IUiV0VSDhec8+5+rKqetZF5W4+plhhssXijkv
         UV5Y+HOIBeR3rPuOos+KqWf8CkyHop9GdjxMbeM0p1aVsNinU1u/F3N9H9GPpOe4i7fr
         hsLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=lbOtJ+IXTmF0J4dzVxEShHiifrkDS0lzDb1R83v1wrE=;
        b=Bo5Q/9nLpMNfnus++YsliC4GpE7mKl3A0AwicQZ4qHv4ja2Gi5BIo4kQFfN/FRSaUC
         5TE4rxHNDZJyI0EdXGLHeYTmefQg9gR9OVIC43eC5yxtSvfYz0V33gKYJU5DoXz8KZa4
         2IbCnMj0QpiExZniccVRLQ8yfK432ZpYAXyw0RgFAWIVoI8nye5MsiW8qcAK+eWkNhc0
         Xdgi3RW6qWXgr99ktLajgGDf44EzcAP89ZM4OFtNNkDS2KgakyR517lwNrO7h647ZMCV
         KfiwsXED+vrOhFT936Wo03kRS+OS8BMf0E92HNOLEseEnyjuYikR6fQ5oALsy80W38Hq
         QrlQ==
X-Gm-Message-State: AGRZ1gKSAsFYfBqduwruZkWHcl5QI5pxlDbgpBc+TPLx7hWfRcqmffQw
	LLrhzcuvjPDque99uWie1Dk2DWiadw8=
X-Received: by 2002:a0c:98a6:: with SMTP id f35mr4291203qvd.224.1540580633136;
        Fri, 26 Oct 2018 12:03:53 -0700 (PDT)
Return-Path: <shayenneluzmoura@gmail.com>
Received: from smtp.gmail.com ([143.107.45.1])
        by smtp.gmail.com with ESMTPSA id u13-v6sm10677197qtu.90.2018.10.26.12.03.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 26 Oct 2018 12:03:52 -0700 (PDT)
Date: Fri, 26 Oct 2018 16:03:48 -0300
From: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Hans de Goede <hdegoede@redhat.com>,
	Michael Thayer <michael.thayer@oracle.com>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [RESEND PATCH 0/2] staging: vboxvideo: Remove chekpatch issues
Message-ID: <cover.1540580493.git.shayenneluzmoura@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20171215

This series cleans the following checkpatch.pl issues:

CHECK: Prefer kernel type 'u32' over 'uint32_t'
CHECK: Avoid using bool structure members because of possible alignment issues

Shayenne da Luz Moura (2):
  staging: vboxvideo: Change uint32_t to u32
  staging: vboxvideo: Use unsigned int instead bool

 drivers/staging/vboxvideo/vbox_drv.h        | 14 +++++++-------
 drivers/staging/vboxvideo/vbox_mode.c       |  2 +-
 drivers/staging/vboxvideo/vboxvideo_guest.h |  2 +-
 3 files changed, 9 insertions(+), 9 deletions(-)

-- 
2.19.1


