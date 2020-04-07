X-GM-THRID: 6813022730075504640
X-Received: by 2002:a17:906:848d:: with SMTP id m13mr3151532ejx.348.1586280467173;
        Tue, 07 Apr 2020 10:27:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:bb02:: with SMTP id y2ls3156235ede.1.gmail; Tue, 07 Apr
 2020 10:27:45 -0700 (PDT)
X-Google-Smtp-Source: APiQypLlRp7A4WzuD/fGv80qUt9BEwFKgBHI2uXSgb0Hijg73T8XvyoDAK2Y68rX/14UpfZ+D/gI
X-Received: by 2002:a05:6402:17d9:: with SMTP id s25mr1821032edy.123.1586280465939;
        Tue, 07 Apr 2020 10:27:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586280465; cv=none;
        d=google.com; s=arc-20160816;
        b=WAowpxJyQIZBgTIz2LEXX+9rENi0YMF1Ra0qkAR5/iZ5DIOd5lcEquFPhtn6deD/2H
         Xm+5i4HLpJB7dmZatdg+GwBkCR2Jok65nYH8tIBKxtqnxDpIiV217aoj15tMoN6b9qNX
         Vv9bU0BKlIl1NC6LUHn2EY78v6+bEiNYEYXjtd+C3L88M06Jy0tHYsk0knAkFru2h7W2
         PCPTB47uNriaRi94jPGlN82Fda8OCPxl7ddHAQ86VyECdVBwALsMKWaUAFH7xye60+hh
         yHGjEmFvOG4POoweYhhm/9Gz+Q6bzpT0D4eZ9+lNZBwiyzbwj/vZU8Hj+CJqWcUdmIVU
         YcJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=WKCNG5J5hoW87AgkvRVatJPQPpS0abOLDq4Ce9IbMoM=;
        b=DzznajBKf7r7ekdMxGIvo5BNd9c+e7/MgMbHHAJBQDpUYXaenp2ZadAgj5BWZjX41z
         LaevCKTrs95B0XYViIjTmKoefgPg4uLP2rBHBS7uv+QfHxxW1W/YpDc2LqIDjTsnN9nU
         ErlvLDxLCqcXB+G1KKUiFAoVGhfeAsqG4uM24eldNxmVFc/65zQq0OXUTyEbvTSK81Ya
         B3VPkcx+Z5/uZqOHTnRFvZ+EpALIXAofAjy1CmpuBMFLhXcriMxEPdbE3GObUR8E5KQ5
         anSYbuOLtCCB393q70LuukR4ojRSQaoaOTAUVWnSMdwhaEXtARLo7JKsF+1XQVx15q1V
         q+ZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id f2si169856edm.1.2020.04.07.10.27.45
        for <outreachy-kernel@googlegroups.com>;
        Tue, 07 Apr 2020 10:27:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 26559 invoked from network); 7 Apr 2020 17:27:44 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.209.216.117)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 7 Apr 2020 17:27:44 -0000
Date: Tue, 7 Apr 2020 22:57:37 +0530
From: R Veera Kumar <vkor@vkten.in>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Stefano Brivio <sbrivio@redhat.com>,
	Julia Lawall <julia.lawall@inria.fr>
Subject: Query about Outreachy Kernel Mailing List
Message-ID: <20200407172735.GA13609@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi,

Vaishali informed that after today this list won't be moderated. She
told to send contributions directly to maintainers(upstream).

So does it means Julia and Stefano won't review and comment on the
posts done here.

Shall I not post anything here anymore?

Please clarify!

Thanks,

R Veera Kumar

