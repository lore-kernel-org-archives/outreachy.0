X-GM-THRID: 6471131811730685952
X-Received: by 10.223.154.113 with SMTP id z104mr808184wrb.16.1506677784586;
        Fri, 29 Sep 2017 02:36:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.161.4 with SMTP id k4ls588470wme.7.gmail; Fri, 29 Sep 2017
 02:36:23 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDu4EOd+Y9Gr/C/FLiz7dkHc+xsZSYkldiSsfNNEYJ581esvs/pBqBaNlaZh+wCuEMpT8hD
X-Received: by 10.223.151.213 with SMTP id t21mr154728wrb.12.1506677783608;
        Fri, 29 Sep 2017 02:36:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506677783; cv=none;
        d=google.com; s=arc-20160816;
        b=T7sDYEFiMWzC2N/BsW5tGeJJ2Jq96WzaARt/B32Wyr3f7MgX1yVySNgnwch2skRc0q
         TtSPNU2nx0s7V0yYTr8OGY0Dcw5CGZkTIgoSzZn42yem/DTbfXzhn53jHb4SRDlzP1ZF
         myNIiYzcrV8DMFe+9+QVu/PM6CDqHclzvPSIPgmzAMudMRL3Nk3++Vs7YXJDhVZ7y8Xe
         /Ie8txCNVvz/An9WMgSuiCJvIP/chYgv994xgWwXUpnP5HqbAPXeidk4uIrMTheEVVUr
         BSCxjmaOgoMJLEnPvmNELazcvOuFq+xP7vhRi6Xkjop/zFiU0jcJAGyveOM0QJOTQ/u5
         taIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:from:date
         :arc-authentication-results;
        bh=QX/Tv4Ldff4xm62WEbaetJotaTBGc1Ax/01RYYCG1jc=;
        b=SqAUyuYTP3i8ctsFWRDObIx4YR9O0Ce0jXT11B5anQYVgOoFGjIc5AqZTYXoEaBFRX
         wSMDhsTPfpcdTRiFI4JFj72YpecLHswTb6tG+XPPH5oa1XvVc/3gy7OBIvMl/rJg7WZj
         OxfTD78PqRMEhyQ5qazrjLdrmlMuRV+WpenIqn1xQh0DdLgsg1m54y0OunFldUez4qho
         EDTY1xtiidQACGqc0e9lCoIdX5ekz0gyqf7ouVP/0Uudf9JHDO51Q84PnNeb8pwsBfki
         VWdTAy4kHh2UiGJro7xlhlejKZC2oYp7RtWtDpRXEqS4TGTuqY/2fWzebe9J4ac5TbsA
         ECYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d82si460535wmd.1.2017.09.29.02.36.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 02:36:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,452,1500933600"; 
   d="scan'208";a="239128817"
Received: from unknown (HELO hadrien.local) ([195.81.232.10])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Sep 2017 11:36:23 +0200
Date: Fri, 29 Sep 2017 11:36:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: application period
Message-ID: <alpine.DEB.2.20.1709291134550.3187@hadrien>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello,

At this point, we are around half way through the application period.  If
you are interested in applying, could you send me an email with your first
and second project choices?

thanks,
julia

