X-GM-THRID: 6802121494929342464
X-Received: by 2002:a05:620a:1362:: with SMTP id d2mr14357559qkl.120.1583742325011;
        Mon, 09 Mar 2020 01:25:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6542:: with SMTP id z63ls1265531qkb.3.gmail; Mon, 09 Mar
 2020 01:25:23 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt/1AlJ8F1NqrXqPorCcnOTcA5gGmX5htzyniZ8Kvt4d/SpAI3LalQMCkABCQhjEDj00B/m
X-Received: by 2002:a37:5d86:: with SMTP id r128mr8889757qkb.177.1583742323843;
        Mon, 09 Mar 2020 01:25:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583742323; cv=none;
        d=google.com; s=arc-20160816;
        b=ilf7YBJmERc57NABWX7CXAR+Jxsjn1eDDnikF0WH8lZ7iPlX8P2WzeJL1JgQMRLMT9
         i84slMVIPzjobuTB6NODDEdBKMAXApCGjncA9qqpDqmULPFUcFFKnwBdeXFqc3cC2iDq
         F48PKYyRDlA/I4VtavMiv0ANNLryeDCxD7NTNBfq7/CiEC2L92Mr4urL4799z+92z44W
         boPbgoKMFLkfmsTxvOtTX+Ou+88SloT543gWEAmaPWS4cclrBrhCTXFtul2uNXETMtHv
         5hXWnMYlfo60Gp3cyHJByv1nHNwK/WQIea3YZhM9P1GiIsyRmnep7O8mAGa7JPFhHPgx
         qyoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=kufLnaX5Sr/Okc7wxmV2dAp5Tq330VfQfBrsobfMChQ=;
        b=wlF9YRXfW0vUjh5ZMpYKijI6BZfVLkyHoSfPdTtfeun7aJ5iy25mfYWxC5j4Kd65IO
         pBWUyTVpiXZHHkBGqysG0CWpzirXKTS3clrH6ozTxWsfjSKBXNlhzXSYiH6EcfqhFk76
         QEGNDmz52/by7rON/ZbXTOz0B1sz0uj2/+pMQYRnlx7SgC0rtywgMxZ597F3y3s0MRR+
         wacsLrySBJCz46CrIM6Q2SqFHU1jG/vGdHWzTXQchs9tuVwuhAhhskJWtamz/HFj1rt0
         7MgwPeIRkshGv46W/zN7hFiBMjKR3z8IUHZ+2vIQRJAvyOwuTWWJ9EUuA78GcwMqEYwj
         2hXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XUXKlHUw;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com. [2607:f8b0:4864:20::1034])
        by gmr-mx.google.com with ESMTPS id c2si56889qtn.0.2020.03.09.01.25.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 01:25:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1034 as permitted sender) client-ip=2607:f8b0:4864:20::1034;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XUXKlHUw;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1034.google.com with SMTP id mq3so460040pjb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 01:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=kufLnaX5Sr/Okc7wxmV2dAp5Tq330VfQfBrsobfMChQ=;
        b=XUXKlHUw7voGVSvX1byCt9TVUVD8r9WubDk4VLSltiWvNmnan3MMWBaIxgDR+1DRk3
         oTQl8MdKQUReMEzofw5hbb9wMH6uF4ZIs0Os7iyEiRjE+bYYV1sc4OgZ8oUQcdBCt+C6
         gjCbthaKs6BjT6chHEm3v1zacrg1j/LLwgJX4SmuCMWoFCyypjnys8iLTt6EH7grW8Ng
         wpFho/LGuECrcl1bP47mdETYtXHNsk/UFIvUiHMlknPaRBaGdcE5eJs892tmHnr9GJAt
         0CIFGAO7bDNEOE9QufxcBOXTvXKT06q6EntY2Ng0FGublZ8nmZuG6dcGSAFrohBFDo2X
         nupg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=kufLnaX5Sr/Okc7wxmV2dAp5Tq330VfQfBrsobfMChQ=;
        b=H/Jy5fTQl9EFxVYJ89NcSwv63PbFUIiu92j7pSo8509GNNq9zKwWGqP0jqsMeqA3yd
         donAfQ8e2uqQZUysiSM/4fQwFAaDFcEKqY5g4Uoxs+3RrCN+oiek8KinMraBaQXuVlgb
         PoA7wppQctIpQ+biAifNx/0h7VMz+jXL3L+uLR/+SAZfns0UJrgqZlIWLwGV79/bMUC7
         Wg/u05W3zxHhgzW7z3hCBJeZ29yGo5wgn2cd9U/L1Ewuwjmbwh30Plmvbb4unxXw544L
         CW+RifkS6dS6aUUgw1VdHKXnFK7JGZECrwzBU4WVhV/4WJvxpnZaKF/tBrjgnaN/SVWX
         umuQ==
X-Gm-Message-State: ANhLgQ2DFVmSEc8xqUXekiN7W3xGUHst8lNEUFs3CyY8gpbUW1Wt+FEV
	9C4Qu9VpiT6B5IfRWDmrlPR7BS7HXXQ=
X-Received: by 2002:a17:902:ba8a:: with SMTP id k10mr14929208pls.333.1583742322842;
        Mon, 09 Mar 2020 01:25:22 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.226.246])
        by smtp.gmail.com with ESMTPSA id u11sm17825853pjn.2.2020.03.09.01.25.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Mar 2020 01:25:22 -0700 (PDT)
Date: Mon, 9 Mar 2020 13:55:19 +0530
From: DEEPAK VARMA <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: Hello - Introducing myself
Message-ID: <20200309082518.GA3888@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Hello All,
My name is Deepak and very happt to be shortlisted as an applicant. This would be the first time I will be getting to work with such a big team.
I have started following the Kernel tutorial guidelines and setting up tools. I look forward to learning from you all and being able to contribute with my patches soon.

Thank you,
Deepak..

