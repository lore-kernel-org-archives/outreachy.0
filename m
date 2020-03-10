X-GM-THRID: 6802697836699844608
X-Received: by 2002:a7b:c305:: with SMTP id k5mr4204064wmj.189.1583876886966;
        Tue, 10 Mar 2020 14:48:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls1301707wme.3.gmail; Tue, 10
 Mar 2020 14:48:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsSBinlAhFeE29IG4KWhqQucEB+QW51+zkUSGYhrbmu31lw0+YaW8516u4gfIMoCz4orjKx
X-Received: by 2002:a1c:b183:: with SMTP id a125mr4157274wmf.46.1583876885556;
        Tue, 10 Mar 2020 14:48:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583876885; cv=none;
        d=google.com; s=arc-20160816;
        b=O6Ftqvgv2IkVSGZ15oexHOHBHiG1WPLy7U1O6Q9my4pizwBVh/VuA1CiaSS/xiIlYw
         umlJDWiif3J9AMcaLFpRvVE4R77a/Qvnh/MKYHv7liZbH7dm1AtM0wH3XrPte+dyC4En
         zRqYRbqNyuCMR8Xb8k9HFU7O9lT3DtBIFFVmmd3fkazKxM9MTkOqf4xAmwS9M//eB2WM
         ERnMSuSqjtLog7yaIqk2gBMWvd6RYZ5vqQkBN1XLUBSuZ/4Trg+RjYHBbF8XqIUzCGBt
         HPYBzkqt4Nipd95mYyShpxvj7p2vXApA3V+Vl8g8ELCNHk0uhbbXUWEs0yvPUpLuuk2T
         5GeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=gWgb6xPHtt9w6JJD4qLylroe4vPVO1tWAxdc0LK41jU=;
        b=ewMqdfCd4m2dYtvv2hHKwCM+K5jzdbn/YxrflvE+7uFCGzOv+CSZgGnV1URR52ygVy
         XjmagCQ6VwMCM8GKncOM+IdnxZPQf+HoOpU9ke5lcYmvmxepGZt3JKtp7wwfPjUT2W5W
         NzMUfrJkVGTGcac/5qOsTyrb/is/dM3NwWq90+5D997+3P07Fsd5YaYXRBiNBFfDexnb
         7hITBiW9rSfgtl+WZvuykKflEZp7JyEcilMtXR6lKvdeCEpBfbhhsGtNRAJYtjGOmPw3
         0HVZPJsHQ6sQT4Jhgyio8s1OX0qP6xdbdq+1G64q01iRMnzH/76bntFG2WrCQXqdfO/X
         jMiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id q202si498wme.2.2020.03.10.14.48.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 14:48:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,538,1574118000"; 
   d="scan'208";a="341934746"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2020 22:48:05 +0100
Date: Tue, 10 Mar 2020 22:48:04 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [OUTREACHY] Help regarding patch sets
In-Reply-To: <20200310214145.GA14139@kaaira-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.21.2003102246340.2313@hadrien>
References: <20200310214145.GA14139@kaaira-HP-Pavilion-Notebook>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 11 Mar 2020, Kaaira Gupta wrote:

> Sir/Ma'am,
>
> I was guided to submit a patchset with patches in a
> single driver, but I am unable to find 5-6 different clean-ups in a
> single driver. I am using sparse, TODOs, coccinelle, and checkpatch.pl
> to find cleanups for the same. Can I submit a patchset with changes in
> multiple drivers as for moving onto small tasks I have to finish at
> least 2 patchsets?

A patchset doesn't have to be 5-6 different cleanups in a single driver.
It just has to be > 1 cleanup in a single driver.  There should be
sufficient opportunities.

julia

