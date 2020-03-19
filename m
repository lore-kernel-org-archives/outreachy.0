X-GM-THRID: 6805826308521590784
X-Received: by 2002:a7b:c770:: with SMTP id x16mr2059273wmk.159.1584604920294;
        Thu, 19 Mar 2020 01:02:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f3ca:: with SMTP id g10ls548049wrp.11.gmail; Thu, 19 Mar
 2020 01:01:59 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuCOfBg5AlzbpM1uCjNIuu1XYZ2q0ZnTfIj2ie9TOKE8Zdpx7emL4jVqgofrIFF6CoxV2gD
X-Received: by 2002:a5d:4cc2:: with SMTP id c2mr2578576wrt.398.1584604919084;
        Thu, 19 Mar 2020 01:01:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584604919; cv=none;
        d=google.com; s=arc-20160816;
        b=RoBGtaSnTFW47Y0IWyYxMWmFSrSL+gVis4tRHjlCBDUc8ISEFAkFeV8aygZ9KwmzAA
         1759gclg2wE0ZZe8lfWnNSrPCSF6kMFTch47LNVtNdeoZNVJV/K1UmQ1pl0TwHtsHJs+
         O6BY5rj4RVxTnF7n5P0TmRj02X1bes7yHNBItWUOxSdBNdc37za41WXJajnlBNApj689
         0jvUG2eT9slDBhciIl8dANL6S/Aorw+luPD0WLNm9n95RPYA7IIqnmykOy08vUv0hAwz
         vnAlFHyLjIGcul//3LVPQNrKp2ObwhHG+yvuVDSV4A3LIm72PVvkz/PqspKXllTG0niq
         E6Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=XDyH6H10L71yaWtVOJGzILcKYb9bBeBc+rUXiz9B7P0=;
        b=nWZBiEfJgEafXVCz+q+uRoIPAEH6UUIGV9ueZjqid9J1/jIusb64gH3wSB4mFi5/g3
         raYfjojx1rgTN3c6vY3Rs4yJocMhpz2xPe1meecMDfrB+zTt+zR00CbXJSDlEmJYg5zv
         HqPOMWeuyKE75+apmrJTSbxNaUdQ0nHeYDmBQiPf97mgFTQVD+w+siFbMaNekxUWCaZx
         MwPRQa7okDvmLnVbpUgFweOeT9k0jPfP62CHlC5NfHWT7kZevcDDchzYkqFW5lvazfhq
         NYeDXgrN2QIhaDYsS746Lg3A3bzgK54lZzseuLXgdE+QmLc5DUv5lDrG4T5XxWF1xj++
         i8mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id d16si55447wrv.4.2020.03.19.01.01.58
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 01:01:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 25896 invoked from network); 19 Mar 2020 08:01:57 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 08:01:57 -0000
Date: Thu, 19 Mar 2020 13:31:52 +0530
From: R Veera Kumar <vkor@vkten.in>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: I need feedback on my posted patches
Message-ID: <20200319080144.GA1723@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi,

I posted patches on Saturday. But I did not got a msg from Greg
about they being accepted. Yesterday Greg posted that he has
seen all outreachy patches upto now. And if we do not get reply's
for the patches we should resend. So I resent it yesterday.

Please I need a feedback about my patches. I do not know what to
do otherwise. Also the Outreachy contribution time is only 1 month.
And we have to do this 10 patches and 2 patchsets before project
specific task. I need time for that also. Please consider.

Regards,
Veera

