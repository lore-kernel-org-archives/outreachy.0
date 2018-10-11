X-GM-THRID: 6611156296380973056
X-Received: by 2002:a02:57c4:: with SMTP id b65-v6mr2215254jad.15.1539279775123;
        Thu, 11 Oct 2018 10:42:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:76d4:: with SMTP id z203-v6ls3894789jab.5.gmail; Thu, 11
 Oct 2018 10:42:54 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62YPr7993yFBX8Qvi2amwQ2bvySVW1AdYdtaFpEUb+uPTqGb/LsdZ6aDsGp03S44WYd2CdB
X-Received: by 2002:a02:6f57:: with SMTP id b23-v6mr2243931jae.4.1539279774211;
        Thu, 11 Oct 2018 10:42:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539279774; cv=none;
        d=google.com; s=arc-20160816;
        b=hjYZJPLOItBATqxlMI5rwIKc/k9egdlolCDwhkHgbCIaYxQQAWFfXGLfl0VCfBWIW6
         jOUboCco4bbSxLfgPYJGj9IZjs46/HPLRKbFhAc0IN111aS2VRLVe4nOKM9Hle/jMa4/
         G23W8TitWWFV62J9ArOZ9j7AcEahAYAkvZ24rjsVXvkMXZKc8nosRj4/6tWyMawUyshh
         /eqSxjoLf0uHXcbe+S8plooYgyasIA+jzGsLyUB983ZrhtHQs/V4a0e6VB4dY7O0saY6
         DfNZ+dW2M/TMWYNMbzzOw2kguEoaCI032YM2TsTzuMFd/9DP8gYl+AFsAv3Cb5X7BpAo
         HKXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=6GwRBnz171ECdbur047FLC6QCV+dNldF/WNaJqxNvGU=;
        b=MOImxWyzT5G6ckoE2YpkxvVX3A+bpFHRJI3qqnmaPY/NtUxXavTFtC/44nvAesDjgc
         T/TfCYWDMeUqaDbhMBYm6pxIUYIMtupoeGzbuBt8vDSHM78rhqhTKVayTBRN6tqexPpi
         2wgBxJVEBUY2VX/MS+sKsuEfT/5sitU0wR78uyj/zQ7USazLw+LmQvZ/ecvk0RgWf9MM
         D4ZADfMjO76kJsItjnlRlKp1N0obyxzdlm2mYgDZvOOf7GyHfzTp/8pF4oVZuSYHnGQ6
         rMWSLBJbK8Ucbn6q5mXaI9KWjeelFiQts/5T8fItnrBbuZg+PBRsRKzWzbsg3bdN+/cz
         sWNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dspvcMku;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id b133-v6si1073071itc.3.2018.10.11.10.42.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Oct 2018 10:42:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dspvcMku;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id p25-v6so4564091pli.11
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Oct 2018 10:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=6GwRBnz171ECdbur047FLC6QCV+dNldF/WNaJqxNvGU=;
        b=dspvcMkuvpsT6LZDd18pciiaDq6mFO8DYHWjtqEPvQx7CRyUl9DaqkYt9hqQnRPn1D
         liFcRldjXxOAszGauZ1zqoHJqhsoZb/6LE9ELbCfCnfceMWxxKzldZ8OrjMfK1BnnfEC
         g2hkO07hOid7KbK6CeM1EZnWpRgIA4JlR1JZ9VWR/tWFRjr3gDNsdhHiHIF2f4W9oaL6
         T3rrlANSgWrbnS9Qbk7Neus7oBduRWfIenN1uMLWa6AqDy+EIKa9EgpqWtZiAMq3JQaZ
         +4kM9NEVEboZ4r7ID0+BOKP6RZsGfU64jC+HGTHTaFAOgacSft9H1ClHeKO4uBzYQvYL
         4EPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=6GwRBnz171ECdbur047FLC6QCV+dNldF/WNaJqxNvGU=;
        b=WEZ6Daf4tB9/vmQR6j8ohrzrzZSMiwm//visNnSxfUuBeDGMN997cSApPEqiWK4Cww
         3VK27DNeVmDa1naT6gz77ZSo3o5fWGNJJhen0U1UEVRbyP6e7L9y9KykDjGFlVTWYNXL
         pAzxxYTbzWARkg9JRtQGfYkgdk73uN2sGwnKlZ1VmBPxp3X7CSN1uEUl9l0Mg6Pkdcdn
         mdvHllKozm7o0DQaDJqaWWeRzcYkRLdNxdN70I734Auy04EmHFHBE1kJ4OOrx2Gc8/qo
         2L//R4jDrOUTPNxX7fxsu7YAejT1er4w5k+iO9VKpOX1jkuY5rEUgRMDr+gVmJ2d6Rh8
         TfNA==
X-Gm-Message-State: ABuFfojQa7a/YWt5O+OWHrT7Cai1rqcnRRcphGAz5kWL/zZ94eJIxuJe
	WNhYve23+OF1iFx6DY0sUWU=
X-Received: by 2002:a17:902:1026:: with SMTP id b35-v6mr2469634pla.283.1539279773504;
        Thu, 11 Oct 2018 10:42:53 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([117.199.59.255])
        by smtp.gmail.com with ESMTPSA id l16-v6sm46319784pfj.179.2018.10.11.10.42.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 11 Oct 2018 10:42:52 -0700 (PDT)
Date: Thu, 11 Oct 2018 23:12:46 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
	hadess@hadess.net, hdegoede@redhat.com
Subject: [PATCH 0/3] staging: rtl8723bs: os_dep: Fix coding style issues
Message-ID: <cover.1539278377.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch series fixes checkpatch issues such as:
-Remove true and false comparison
-Remove space after cast
-Shift * to be adjacent to pointer name to conform kernel coding style.


Mamta Shukla (3):
  staging: rtl8723bs: os_dep: Remove true and false comparison
  staging: rtl8723bs: os_dep: Remove space after cast
  staging: rtl8723bs: os_dep: Shift * to be  adjacent to pointer name

 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 30 +++++++++++++-------------
 1 file changed, 15 insertions(+), 15 deletions(-)

-- 
1.9.1


