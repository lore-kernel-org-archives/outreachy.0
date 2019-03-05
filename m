X-GM-THRID: 6665038779534802944
X-Received: by 2002:a1c:2545:: with SMTP id l66mr463994wml.14.1551825269948;
        Tue, 05 Mar 2019 14:34:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:e142:: with SMTP id y63ls515382wmg.7.canary-gmail; Tue,
 05 Mar 2019 14:34:29 -0800 (PST)
X-Google-Smtp-Source: APXvYqxnnD/3JikVGXKQuld9RH07EfvlEy0EY9KwO8WN7fT4A1RTSa5V7dJ8ADhlVU007W6drEfM
X-Received: by 2002:a05:600c:2110:: with SMTP id u16mr498786wml.11.1551825269180;
        Tue, 05 Mar 2019 14:34:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551825269; cv=none;
        d=google.com; s=arc-20160816;
        b=P1n1+sx2BYdNKHL2IjJuDxIyZwcCcfPyv7V46OkD9BHofdpyKsIN1R/ILaMvvyfBUa
         VKXrrRLEO3Y7pKW2XbIEP0M5PoHLU20nJdKpsy/09d1vo1Q1ZhKRHEtFwZyO4EBMNhnr
         cjavBxP5oMFGWVYiJ2KH+qLAJkKXixET4/laKoo8jaoOkVfXZNVeQ7XapQtqfe8lfWL+
         sZRkv+R4IvgHzPEtXTIMkhJoeMlqbogVUGqFbjLGj5tKEdZBFYxmRXZeWWHY1k2HI6Jh
         VweAi/MN/ZaK8E/2kJN9oVQzDDSgEa+CoRugUTBy2SaMGdLPzUhzFoRB5ZLqC4zyoRdQ
         UUBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=mUle1RjB2m7beca0IAn+ArDCfk0Bg3zptnHW7sw6bE4=;
        b=PX7M/LEndADBkG5VeKYNysAspjC4J/uauFBnfWRmzYZLKOlAxkK43hOIKZ+NZ1bt6j
         PvSshiDqmeR+P5tZJv6oZHMXDVOG8OivDZw5Q4UyxyGrlHBZiIMaZtCpIekHUf5mfKpR
         tLPqU+bidqEPdpfdOfaSi+d8sFSAxni7o8jq/lGrnLZGiheJbLet3tcx4HG7YjHE5DHv
         /fS8Zkykib17X7TCX85aKW9R9e9rowQoOsqnvxPKzDVHbUxgaBqWjpC3ED/MfQJkt0wE
         f2Yozmx/bTxiacAPusNgXDDqYyuTVim7xAuywmGskT8rm1g4yGrkCG3YWd8DIi8uMSIc
         mfTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EY2Q4AEr;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com. [2a00:1450:4864:20::333])
        by gmr-mx.google.com with ESMTPS id b130si2357wmc.0.2019.03.05.14.34.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 14:34:29 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) client-ip=2a00:1450:4864:20::333;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EY2Q4AEr;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::333 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x333.google.com with SMTP id x10so4050032wmg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 14:34:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=mUle1RjB2m7beca0IAn+ArDCfk0Bg3zptnHW7sw6bE4=;
        b=EY2Q4AEruucnpK9H2BiL/vnOnQkxflOVlSuIc8o9PyIABueVOXdXxoSwNynAOYUhzi
         +wU1vV0NlztStwA84ddc9yz3/cD2Y3wD4v7Mc/enOb1gE41BAFgAwqvuiHkwm9uYUjHl
         Jo849zenn1EgJo3wWMU492KEIOfVcpOdIECDGTr7yFLB4cUkGa+Gmk+J7Oe2v+JVid6T
         4emFt8O8/CHz5OETvrkoBdlOd6YPtJANrXgSIHU6rfdzgSMhDfPVvutbEClohse1MW/i
         XXLxjCh+B9xlvG/TobOlX7UhwMVFUCdfn4PusIVN1iAOnPFGHSZ6lTfNJPlooRc9R1D6
         rjIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=mUle1RjB2m7beca0IAn+ArDCfk0Bg3zptnHW7sw6bE4=;
        b=k9+AhBsOoN06UpxUzP9Vr2uZe88kavFDMSZYQge9v0nzwMUm4C1f93bykcWlghkHkz
         69rW/aFL8qebGFSvrPTLrut7Mg8VImWJiuoJUxNjVXcCb6I+xcmzvOSh3u6gT1LXUQpf
         9Lk75Ac/cZBcwmwLny/l2Cm1XZ/KL0/8uFyMmJBKusFLaTQJZKkI8t7J4fR5PVPKuEr3
         lZxr777Wffx3Q+Sjku6kb+HOo87D8Gb6FNU7ROnUEUlry/qA/Yi3yuX4CFwnLt3p1Row
         WZoWbcZxT5jHcXlS+jNkvD8e6ft6aPQsA2GRejSHLW6T3RbtLlMaIoYQXffHDsGgKaXZ
         vVbQ==
X-Gm-Message-State: APjAAAXRiRNxgbWUazdzDD89vQ6F6uKP2YBhmc6c7TBxHwssWcZUKJLl
	eKkkQh6xGFl8pFfZuRUk2ePJ5Ubu
X-Received: by 2002:a1c:1f51:: with SMTP id f78mr427926wmf.28.1551825268830;
        Tue, 05 Mar 2019 14:34:28 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id q135sm16765wme.43.2019.03.05.14.34.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 14:34:28 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH v4 0/2] staging: vc04_services: Fix two warnings
Date: Wed,  6 Mar 2019 00:34:25 +0200
Message-Id: <1551825265-27672-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4

Fix the following warnings by checkpatch:
-Logical continuations should be on the previous line
-Avoid multiple line dereference


Daniela Mormocea (2):
  Fix multiple line dereference
  Fix logical continuations warnings

 .../vc04_services/bcm2835-camera/bcm2835-camera.c  | 51 ++++++++--------------
 1 file changed, 19 insertions(+), 32 deletions(-)

-- 
2.7.4


