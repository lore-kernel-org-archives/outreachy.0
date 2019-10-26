X-GM-THRID: 6751912583325810688
X-Received: by 2002:a92:6a04:: with SMTP id f4mr7860725ilc.9.1572052152022;
        Fri, 25 Oct 2019 18:09:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:385a:: with SMTP id f87ls2040888ila.14.gmail; Fri, 25
 Oct 2019 18:09:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzaCn9Bdg/GPPjkwrWNU0E5hHjQkL3mYP7YJsKIPfHNBweirLGKCR+TijIcOIQe3kCIbABV
X-Received: by 2002:a92:9f5d:: with SMTP id u90mr8025614ili.13.1572052150764;
        Fri, 25 Oct 2019 18:09:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572052150; cv=none;
        d=google.com; s=arc-20160816;
        b=VrQIcPpZp4xHxVgS8pBUUUt87Mb6jiCGWKazqPcUa1djv9apM0kYTROtHdjU8u2vPE
         aBPd15/7a7SrmiWJAUsDwiDGUGivy94tt2cAdQK0jlWgUWGha8xmFaWoL2ptzwCJAnLe
         lZBXpDlSSVqDHWkJ9psr/URREmxob8Tu2iw5UPdYA5Lc7DmJwIFZKAOoyx36DTbpe2eC
         i/lFFjt/cJXSJ+nOFVP3dUYqLJQ+Gm7aO24zgXeq3vgofqI0c1hCCuF9LquiPqZPX/o8
         V3XPqQB/h81ntU99Z1ZPYpUraH3uEEqo/s7PK1dMUIyz4NYymvRlRyM/SpTrK0xGnkoa
         L1GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=SVVhqSZ+WUIIVID3TK3wMJn2IF/IhlQmlPLvMcYQ4Ik=;
        b=sSCPrlv86BRNpvoYFlglSNL6T2e8t4rNtoN3+s/1JkUmMnFficdBIjZwa4evKSSn0p
         hRa9vlpghsVs7ZJqZdrZttgxoxqn34fedBiAnQjjXxeY99gajt5D9bW3/rIiWSppoHr9
         BIADmfWNiEv9q8Cc3U++BmNxtvN0LMBNDHQwNgUUaOuvs9MEODWvbwNeegugoq5A9JQg
         A+BHBEYaofZcEUSA0fHF7f5xuzaKonq1siA19BEDSO5efLYjA/ECldlh9STzC/xtk28F
         zM1y51vXX/MQ3WaEecQcGCVoS+NaWReoI1u/wACzIeMrrMx5Z3g/7xI5TcoNApOqu5CU
         8eEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o11PcGm+;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id y205si299307iof.2.2019.10.25.18.09.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 18:09:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o11PcGm+;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x743.google.com with SMTP id e66so3463273qkf.13
        for <outreachy-kernel@googlegroups.com>; Fri, 25 Oct 2019 18:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SVVhqSZ+WUIIVID3TK3wMJn2IF/IhlQmlPLvMcYQ4Ik=;
        b=o11PcGm++xdhOJeo2IK9sFzGF7n9ywWXbuKSI39nD9RPFjlq90E240GgzjJSkrGYpE
         9Ka4GK/WywwswEA0J3auRvZglTDfv53rMPpys8LmvEZ3t0yTRQsICftSkxYyVfs5TNiV
         gFX3Yo6pxm5r/h5KP72nMj0YfchbtsBWKgHq+57nkjbzkMw+ZGl/nHNsPlg13CFlphB0
         tusRYdAH0HxptzGIOf7ANNPJJtfQ+BgZ47ca5QL0Jk8vj5SxbQ8lpnYTgTeeJNMsHcY8
         rp8BAafrE8txpVvWFxXbyVFBU0O4Q8ikOECBb4XbO3952tkfv/mHiqeyTUJzVIkQC1Tz
         EOKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SVVhqSZ+WUIIVID3TK3wMJn2IF/IhlQmlPLvMcYQ4Ik=;
        b=Nfop2HOtGQmBhig5oz++AaGaBPzp8F605kSziNlUGEgDhCZj6hO+ARO1j1X+CGATZ0
         0Ty4t/jdQgDw+Glgju7U/OCRAXsY2cRn99jRU2kqZ3FnTaeVouUjGJBXuRW9l3O+Pn/V
         MsPS4cASQUfCSJKZsBj/TSp+dBA9zC55ghqGwIa6CZ9jQOQB9w7qHks6V5s81gCc8D+y
         +dBcVLIPImOYd7HE3lDjslbW6raYAaTxr/o6UiGSM81H7f+XgPLxHMQQ8GAjwhYTm83Q
         UgHRPbcPfL9G+A7r7/USouB7TO5de7v4yuKgwXcAATuGY2tuKnhJ8rQEK3PXh7JB7MTv
         7iiQ==
X-Gm-Message-State: APjAAAUcsRMWKsrImrcvtVvTAs22o+k85n7S6Sff9HK+tMZsOCeoCkTp
	ajq2lJW3oYo+/3UEY9iTXP8RMVtBECZ8Cw==
X-Received: by 2002:ae9:e8c3:: with SMTP id a186mr5484714qkg.97.1572052150047;
        Fri, 25 Oct 2019 18:09:10 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id y10sm2555234qkb.55.2019.10.25.18.09.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 18:09:09 -0700 (PDT)
Date: Fri, 25 Oct 2019 22:09:05 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [RESEND PATCH 0/2] Cleanup in rtl8712
Message-ID: <cover.1572051351.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Cleanup in rtl8712

Cristiane Naves (2):
  staging: rtl8712: Fix Alignment of open parenthesis
  staging: rtl8712: Remove lines before a close brace

 drivers/staging/rtl8712/rtl8712_recv.c | 32 +++++++++++++++-----------------
 1 file changed, 15 insertions(+), 17 deletions(-)

-- 
2.7.4


