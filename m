X-GM-THRID: 6251650339458514944
X-Received: by 10.112.199.136 with SMTP id jk8mr2163774lbc.11.1455575772900;
        Mon, 15 Feb 2016 14:36:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.19.161 with SMTP id 33ls90003lft.82.gmail; Mon, 15 Feb 2016
 14:36:12 -0800 (PST)
X-Received: by 10.112.160.168 with SMTP id xl8mr2118974lbb.17.1455575772322;
        Mon, 15 Feb 2016 14:36:12 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id e130si669556wme.2.2016.02.15.14.36.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2016 14:36:12 -0800 (PST)
Received-SPF: pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of nevola@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=nevola@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id g62so17922898wme.2
        for <outreachy-kernel@googlegroups.com>; Mon, 15 Feb 2016 14:36:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=lYTfWCIr6NgeGFLmp790qupcdIFUtMF8KO4ZfP9V2bQ=;
        b=NgypSqGAYUFra/0lka/gmfmHmzXYLCWcjz2p4yc1GkCajIIAIjQKUMc5FTkE3Cizqc
         Jg1FyuZtzQ9Em9fyxe0vS2lK8/blM9Emofsvblc/YhmCTDkwUpo3R7d7vvEBoe2v+C6x
         pJm4kkkz7zNNKM3DPaFv+v6qMbaNkJtO9hy7eOUhXhYkpUGCeSW57OD6cohr8Oc/KVbV
         7ClKvZmaLm+hEGdUhSt9nBcZ0HJ0ra9FUnbcE8N6oV1f+m2XcDf8+pab+agvNt+vViU4
         n/5A2RVxM40wT8OauTSK8uD3Okz1yv0mh5yMNnyan+bmtponRmNH/uH7MHtU1LvuOGE+
         4Sfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=lYTfWCIr6NgeGFLmp790qupcdIFUtMF8KO4ZfP9V2bQ=;
        b=H/zxZBoxQvGu8bM2qHq5DG90zJ5Cz0tyKXy5wNXyfmCN8GBs+UzUTOfr+eYiJEcjUX
         a8QIAhdGazDzDSwdw50MZc/JnrcpL4CzVF6Th+REhALKW8iCWSH6UqnyZz/5MZZ8ujt6
         3YDcZLtltXdmXOrZl3YG+HN6oYVTqFRYEOt8Q2OOmXVNpwoe0RUfQxR5cDoP659eNpsY
         hy0rxiTVXDd6mzWRXouPCj+oLcGul5chNqQndsRh3EGAUoZKFrMv1Ux6KCNlMngriAZ5
         BvlOzcBq3UP0cFky1EFgiHYbnH7hwQA6eUkGD8s43jr67/GxoqI5oc9e+nIWkk3RGNLa
         ah5g==
X-Gm-Message-State: AG10YOT09ZpWeQCukhJW2kkvgMOqOUZW5s36LrVpafqFrCROVGpeIVLR7Mpubw0+DYmQCg==
X-Received: by 10.194.184.112 with SMTP id et16mr18655571wjc.75.1455575772210;
        Mon, 15 Feb 2016 14:36:12 -0800 (PST)
Return-Path: <nevola@gmail.com>
Received: from sonyv (151.Red-79-150-198.dynamicIP.rima-tde.net. [79.150.198.151])
        by smtp.gmail.com with ESMTPSA id v22sm17645257wmv.12.2016.02.15.14.36.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 15 Feb 2016 14:36:11 -0800 (PST)
Date: Mon, 15 Feb 2016 23:36:09 +0100
From: Laura Garcia Liebana <nevola@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/7] staging: netlogic: Fix several checkpatch issues
Message-ID: <cover.1455575263.git.nevola@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patchset updates the netlogic driver in order to clean up completely the
driver source code.

Laura Garcia Liebana (7):
  staging: netlogic: Fix several parenthesis alignments
  staging: netlogic: Remove blank spaces after a cast
  staging: netlogic: Fix multiple assignments
  staging: netlogic: Fix CamelCase for constants
  staging: netlogic: Fix comparison to NULL
  staging: netlogic: Insert spaces around operator
  staging: netlogic: Fix indent for conditional statement

 drivers/staging/netlogic/platform_net.c |   6 +-
 drivers/staging/netlogic/xlr_net.c      | 176 +++---
 drivers/staging/netlogic/xlr_net.h      | 978 ++++++++++++++++----------------
 3 files changed, 582 insertions(+), 578 deletions(-)

-- 
2.7.0


