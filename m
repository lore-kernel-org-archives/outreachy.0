X-GM-THRID: 6664854131840122880
X-Received: by 2002:ac2:548b:: with SMTP id t11mr56797lfk.9.1551783255946;
        Tue, 05 Mar 2019 02:54:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:92cf:: with SMTP id k15ls2349866ljh.6.gmail; Tue, 05 Mar
 2019 02:54:15 -0800 (PST)
X-Google-Smtp-Source: APXvYqwFJRDrDjSch8J71/kfarww9P6Yv4TIRusI8VFdCp6IGsGysIHtwFruSVb19IzeIjli67pV
X-Received: by 2002:a2e:253:: with SMTP id 80mr1304462ljc.27.1551783254891;
        Tue, 05 Mar 2019 02:54:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551783254; cv=none;
        d=google.com; s=arc-20160816;
        b=qmS4TYGXgSGoiYcVVCL83EguudukjRt2SF+EoeoYcX6QCjBrfLPhvANEWM7sp5QgkY
         m71Cmpms0zqv9gxku7QTplEEtAT7z5UVDRZqNVSYFl60NqVoj5upDXJCzBgUY+jukNjW
         1suHfzk1AOY8CCbEuDbV/G7qiwjfjtDNv2GgxLEcIt0oypTgwQTpLfMOxyBsKKluauB2
         pyLxZFACEg9deYnJFR78RMXZktPmGnTkUXZtrYfbSZwOJ9p/tSxH/+cmYk9KXmPD0ZMH
         nuVf3QhajFWWSpStVRXPVCSuH/Lt3MgD891bEoiTEcSSS4e1xHE92jtjjnCB4SGwmqgO
         do1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=z5BXPVR2AIVPCF/aH7bGRvkS8tvpnGlFFuxvuWuTvTc=;
        b=tDd82CQddi43vf6qAJ81dnRXx1hRG7s4K0FcvlLr8xawQs2aPZxFkdt6QG/WUitq/L
         NO9v5IKI+zuLTV9EqfmzXaiIu/IsmWZK8+Syk+nOrslMph1TpzQbR3jFi8mNuf4w50tu
         Txnjd3CS9j7mhpHPGtiidIFT18w8ZuqFzCQHKKdagDsZZnE/35dfCw5gaDBEVmcNLWAQ
         qJRGyCCAIxgGy+zWeArQVXboPcUKVie6TBwUVVIhmnBtJ1e5CQF8ZsrO3mbPBtQobLd1
         PH3/DGQcU29zcIn01Vz3aB6VHxJdcQOf9Fr0BSImoac+nFs+A1oAtPrDMTjnK13GLZ5r
         F+tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f20si27685lfc.5.2019.03.05.02.54.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 02:54:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,443,1544482800"; 
   d="scan'208";a="298152781"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2019 11:54:08 +0100
Date: Tue, 5 Mar 2019 11:54:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dana Mormocea <daniela.mormocea@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: ralink-gdma: Fix various
 warnings in ralink-gdma
In-Reply-To: <a559ec1d-21a3-473d-9d32-1b77d820605b@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1903051150290.3701@hadrien>
References: <20190305103753.GA15177@pthm> <alpine.DEB.2.20.1903051141410.3701@hadrien> <a559ec1d-21a3-473d-9d32-1b77d820605b@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

> Ok, I will revert these and mail them back
> I'm wondering if I should delete the '\' at the end of strings
> (and by doing this to get a "quoted string split across lines" warning)
> or should I leave them as they were? (with the '\' symbol at the
> end of the line?

Actually, you should concatenate such string so that they are all on one
line.  That way if someone sees the message on their screen, they will be
able to find it in the code using grep.  It's ok if the string goes over 80
characters.

Just as you shouldn't top post, you should also not necessarily reply at
the very bottom.  Put your response just below the relevant text in the
original message.  If there is a lot of irrelevant information in the
message, you can delete it.  You may want to indicate that a lot of lines
have been deleted, or may not, if the lines seem completely irrelevant.

julia

