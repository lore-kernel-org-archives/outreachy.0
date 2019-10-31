X-GM-THRID: 6754101895701200896
X-Received: by 2002:a6b:9089:: with SMTP id s131mr7703674iod.107.1572561891380;
        Thu, 31 Oct 2019 15:44:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:ad01:: with SMTP id w1ls889660ilh.9.gmail; Thu, 31 Oct
 2019 15:44:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy6GeJYU/mpxQZs8wqmb10Ph6QvS4qXiUU7wt9/i174EQJ+Eh+Cpn0l6sag1x3ciVC5BXse
X-Received: by 2002:a92:8703:: with SMTP id m3mr9349001ild.233.1572561890418;
        Thu, 31 Oct 2019 15:44:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572561890; cv=none;
        d=google.com; s=arc-20160816;
        b=G4dBTd5NXzAJwneTVedfNfezskSXygmEXeq2MC4gPAc0UsKIkOiZj8QZnKoCIVSlZh
         cXSJurQKTXa9eK0gXjDwN9lY9tQlmMwbWKUZAsjQF9bsQ8tQ8yxL2/4zDpJIiCgjqqqm
         wE5STLyJ7/x+vLkmQUk1YEJXcctvNktuFUCEFwQ/pGwoMGqcwxtcb20+QoO6nCbnWJnA
         M7oBbw0ild+sm2h6CNLkXdou3zlZ+p0IVTqsQXWKFSte1/WiOUjaR93rk++V3HOVa7mZ
         89fqIr5xReVfRjy6FLOiazsbwmb2QrF+EKdz8z0aHcadltRclIWTZFHxuCy5dX/1pQby
         A/rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Nl48eDAI+bHbZqunG9iSeOrg5XWwtibhyiMtonugpXE=;
        b=GitPBQE95aSoHB0l26wu3maqQhwH2M5wjWcEF+7TaQ11u3zGRgtzIsWna9LRHvPvJQ
         +pC/i1zSAZLhWBF6t+zXgY8RKgE+5QtI3awFSIK0FmE9th+Wkj/VW/aQD22ul8z+bjmJ
         SeNUdb/mQ3WdY7jwi6U3zhdTbEnJBnbC/NiENA2NLNojnvPMS6JZ9FasT8iVKi83wOgq
         bcZOKfyRSemtuLmZQIwcNvP+sVgSgk/Q+R3LycQvq1C3gkCgzE8WmvHsMez/sFCYk84P
         2+cj0Y3+6gEQE+VKs38WwREvRwmE0zJvwECG6ig0dqwpjrYE5mUETdDlFZ75smKzGqVI
         qAiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=T8SRkZ0Q;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com. [2607:f8b0:4864:20::942])
        by gmr-mx.google.com with ESMTPS id n6si261644iod.3.2019.10.31.15.44.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 15:44:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::942 as permitted sender) client-ip=2607:f8b0:4864:20::942;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=T8SRkZ0Q;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-ua1-x942.google.com with SMTP id i31so936263uae.13
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 15:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Nl48eDAI+bHbZqunG9iSeOrg5XWwtibhyiMtonugpXE=;
        b=T8SRkZ0QAWINt7WySHmfLfWWBeShTECMItVllq4YM2V+vk+jHS4srzCKVvz+9CZaSG
         2t2gha98SrAk1YMuzVIVeuakXPpDLw59I88rnzdxblMsghTRboIy5Ux2slDNU9RGo2ga
         YDoiVrDXZduAcxaZAl6Y1WJRgHj1ap0fIhSKIMUQMmHT5IDK+OpqiA/wndsykJXe3T2k
         37sOrUW5/NCv3fLs1/FIh9z1AVjYrY3yO8JoCkb/UGqw5BqUaNzvTgDniPWwAHCrl7/p
         7qo694hNabmCWuPAxVul7ef+Yo6V/G0pTh7eduLgDb0VSCjSDz5H9ouSGnC+tn/u4Wbq
         YJPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Nl48eDAI+bHbZqunG9iSeOrg5XWwtibhyiMtonugpXE=;
        b=DImO5AKhTpZJ5LJPDEGZm52qwtXX/4Hc0kkk8K8kZDffRr2NvdvjpQgYSs6X8zy7HU
         XeQI0AhIkU8oPRfFyDNa8XL6zNfAkEovSMUBLzhPHOlVCJe8bwJZmI+6BFRp3DpHSTK5
         O2RjueiXLKdhFfgNLaJV05K6kx5olk9ZouKkQ1iLUL9CRq3LOVQRjI+4+CBjE8Pib2cz
         C1mDfm3p1AF4OAZe9CV8noC8tBbftE8yeZeG7loSX8FKDPPDNC8OaHKJQOiQqh5toMFD
         8PywyieqD/4q/Q7LLbl69Z9PTz3CmMU8jbeklET0AX6Hkpzc30O44evm8vEAA0l6O80x
         cPCA==
X-Gm-Message-State: APjAAAXkbNdfZ5LYUWa30a0gUqBMMOo1SodnYWBNH/HWkMEqBcMNoQnP
	iSkahtqjRxabTx4AW0YCSY2/Gg==
X-Received: by 2002:ab0:d8c:: with SMTP id i12mr4251801uak.57.1572561889406;
        Thu, 31 Oct 2019 15:44:49 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([167.160.113.52])
        by smtp.gmail.com with ESMTPSA id x186sm86086vkf.4.2019.10.31.15.44.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 15:44:48 -0700 (PDT)
Date: Thu, 31 Oct 2019 22:44:44 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>
Subject: [PATCH 0/3] staging: rtl8712: Spacing and alignment cleanup
Message-ID: <cover.1572561194.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20171215

This patchset fixes minor issues with spacing and alignment.
Three types of checkpatch.pl messages are addressed:
  - UNNECESSARY_PARENTHESES
  - LINE_SPACING
  - PARENTHESIS_ALIGNMENT

Frank A. Cancio Bello (3):
  staging: rtl8712: Fix parentheses alignment
  staging: rtl8712: Fix spacing issues
  staging: rtl8712: Remove unnecessary parentheses

 drivers/staging/rtl8712/os_intfs.c      |  2 +-
 drivers/staging/rtl8712/osdep_service.h |  2 +-
 drivers/staging/rtl8712/rtl8712_recv.c  | 16 ++++++++--------
 drivers/staging/rtl8712/rtl8712_xmit.c  | 21 +++++++++++----------
 drivers/staging/rtl8712/rtl871x_cmd.h   |  9 +++++++++
 drivers/staging/rtl8712/rtl871x_event.h |  1 +
 6 files changed, 31 insertions(+), 20 deletions(-)

-- 
2.17.1


