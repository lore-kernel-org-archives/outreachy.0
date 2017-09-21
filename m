X-GM-THRID: 6468262802802868224
X-Received: by 10.28.212.73 with SMTP id l70mr160982wmg.14.1506009791955;
        Thu, 21 Sep 2017 09:03:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.141.225 with SMTP id o88ls834655wrb.3.gmail; Thu, 21 Sep
 2017 09:03:11 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBP3yKDyKa9OWxCBNeq4EYmArLBgzXEbLXPAj/VnRFAdMWHy4w9QQWbrUjvuF2kGOSbT6Cs
X-Received: by 10.28.140.199 with SMTP id o190mr159267wmd.6.1506009790930;
        Thu, 21 Sep 2017 09:03:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506009790; cv=none;
        d=google.com; s=arc-20160816;
        b=N9IooXVelk/kYNW3Wd3mWTVWB0alBy2o+vnCBDFKvgzzbKx46YrTHxpnET9dm8p8CK
         QGDjtqVplufJQNFRtznvk3zNzGraP6LUOX+uRVebA+Tmlb5QLGX/uo55sb3Xr5rH43cE
         SFkhhvxtX+osGDmTvUrp0kAE1Baa/o+lASZuq+WcHsI9uacgp63nvCsj5wm4v6IXFxOe
         yVzBIFViyCcSqnchwCXKKfoaxDfCHq5QrPQNbEJsvMnsIhMPwBn2pO2HtBlO6g5LRGv6
         cFIJDX4KpfieZUnQvXKGW1rbaDMz44SetJFbesd2VLLU/p0w9uO/ZuoKxVvid2p0/esK
         nQgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:from:date
         :arc-authentication-results;
        bh=Ed/V+32mS6VbFjw4xVZucqHh4PlCmm2B4SCRm/Mgu/Y=;
        b=QKCCKoipa4f3MxzBr/kEktzpwOcDAF9dPSqfFHABM5yh1mIGn6SoFyx7lYoXTiAC3n
         rqFZcwW9B2sMY+/dzRIMTq2nlR54/CkTv6qHzQM+yg2uwu4rzvuXnD5zyZ5PvboZJaiX
         PR4UflpJ4crSjJU44aRn4rt2lkt+UvDj4P2vBE738g+g0PoggPx1MT3u9t7vKJEQxVqP
         N1P2FttRYXNmNVhlwX+z6gDw9bjswUlhhXwpKE+x/igQ3EHRfHlpmpQPw58L1dMrM4a6
         8m75yDh3a+xKkSq0fEbAR/WJuGntKheud1Q6DNMrYZ5+7YjaRd4sTpsqAUMDlH9DK6Si
         hXyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 191si148050wmn.2.2017.09.21.09.03.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Sep 2017 09:03:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,425,1500933600"; 
   d="scan'208";a="238305730"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Sep 2017 18:03:07 +0200
Date: Thu, 21 Sep 2017 18:02:31 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: outreachy status
Message-ID: <alpine.DEB.2.20.1709211759210.3160@hadrien>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello,

I have sent messages to those who have patches that Greg has accepted into
the staging tree in this round about how many patches they have accepted.
If you didn't receive such a message and think you should have, please let
me know.

Everyone who has been sending patches in this round seems to have mastered
the basic notions of patch submission at this point, so keep up the good
work.

julia

