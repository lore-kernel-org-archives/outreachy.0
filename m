X-GM-THRID: 6475953327371714560
X-Received: by 10.46.18.17 with SMTP id t17mr308637lje.33.1508658155165;
        Sun, 22 Oct 2017 00:42:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.148 with SMTP id u142ls1798087lja.16.gmail; Sun, 22 Oct
 2017 00:42:33 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+S2vNql/Pj8fwXNqtKlKvNSoHWK8WwMMed2ni9l86kH2JT4kED2rXUbSoIFqLzortgrL8fR
X-Received: by 10.46.2.4 with SMTP id 4mr304987ljc.20.1508658153750;
        Sun, 22 Oct 2017 00:42:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508658153; cv=none;
        d=google.com; s=arc-20160816;
        b=KOVBN3UJW1RhCNr6xGuClD2sBj4fi0Rbnn+WYvTtDU+/B5scm7SN5lhnxDIYns2jnu
         kBTwFTEfWa/Law59q2rVRCGr/tPR4eZDW1V124rxljwdUMnnuohbHGKVz6+AavxAy4Mf
         DNEjwCnT6BYWpgkDW89zaCwqrQfNgxCtVkOLG8tyeldTDsimAPFZjgpaazyQpmWJCtv8
         g+Ao6ajCaUMNMV3xXbqPXoB3xuNWxcdubH1I6Mr5aTo050ZN07ISJggaSYAA/YuFoWXO
         7wKXmck1d99O6zR5ini94tv4dFTI3/kIRPuA7xSqXljxAVWZj0haifB8/DAlA3NwmXgl
         LU+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:from:date
         :arc-authentication-results;
        bh=umZw8sWElQl2nymubRoSxmz9pJqXydCvoUrtPg02BCg=;
        b=xznkeY77mOfD5OZen7M8PWrbuHAT/gpuCrHtScox6/nA37I76z/azeO6Kp5MibrMPw
         srNnFdaPr5SaFNW1OUKGjNIct5br4j70J1IC0oDit9AV7x3vL4yqlDhcikAZt1Hsewln
         IGL9/cFQqy6lhqZn+hexUbEGYsjpokqx9z+wrAR8jOBMzySxdf4UnQuQdyGovE/jaG8m
         2miVTi6ITDhxTDFqYquc6v6umvAbQBcIGlLH2TtXubt1lO76ddcYJBDJAKnKZWBAPYE1
         eoHVkAyOnJv9/QvWnSFjq+BWpHPlWV4Kqb95cNwDZ/vMbuwh5xzr4Rlh/Tn8+z20cnYB
         i+kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r17si253759ljb.2.2017.10.22.00.42.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Oct 2017 00:42:33 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.43,416,1503352800"; 
   d="scan'208";a="241912432"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO hadrien-2.local) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Oct 2017 09:42:32 +0200
Date: Sun, 22 Oct 2017 09:42:31 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: applications
Message-ID: <alpine.DEB.2.20.1710220938250.2862@hadrien>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Applications are due tomorrow at 07:00 pm UTC.  If you aren't sure what
time that is, just start your application now :)  In particular, please
fill in all information related to your eligibility status as soon as
possible.  No more new patches will be accepted via the outreachy mailing
list after that time.  You can update your application after the deadline,
but don't delay, because we will be making decisions very shortly.

thanks,
julia

