X-GM-THRID: 6754458440514404352
X-Received: by 2002:a92:6501:: with SMTP id z1mr5830030ilb.125.1572644906627;
        Fri, 01 Nov 2019 14:48:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:a598:: with SMTP id b24ls618523jam.4.gmail; Fri, 01 Nov
 2019 14:48:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqylU+zMAsR1WrpfYRH9eVTTNhB9uA3xmpcHaGIwjvw4T4omAxxPBrNYUS3NHhPZC6YxrNw7
X-Received: by 2002:a02:77c4:: with SMTP id g187mr6946051jac.83.1572644905302;
        Fri, 01 Nov 2019 14:48:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572644905; cv=none;
        d=google.com; s=arc-20160816;
        b=sq/3qgU8t7fHRDFbXAINAqHdgYoBGoxN5ZBI5ND6hezTallK2Wqdh6vJV8RCk8lprg
         OMtP/Df5LYn32SHJU1B5d20XSsz+t9yXy/3oP1Sf6i9tmhitB+o3JLJPMZOxGuCgKZJP
         oj1sFGn3TrZUPh4juWt+236GBRSpBjEcZXRcXjz9x4p0JBk8g8Fm3q9izqxlBkSEJKaA
         sO4Goee5jd4XC5/BbXtKIUdvf8vrhrKomuqJKie7fudpcg1GDGru0YZTR0Vl3vaYwihO
         VztZ6VYNWn0uVoyp2JAHYCaRdY6djhmVjJpEOaomI4RC0pHSfhV9xspJxICEQJ2a0r2T
         Uifw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:mail-followup-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=V3LYyM2weA98WtI7yN19EnEN7TSQdcsHA2cMTiyjXs4=;
        b=KkJSOliVv7CKomyB388NrlXet5oi9QT7adfgHuULgt2maSqtkQou6vrLSBdsUufGGb
         oSlnmHNJF0DahbX0iSsBJWWegPSpkI0hBrXsxrH9YxoFKKsXDIcv2S7brLep9roz7d2i
         rprV3bLm1y56P49pHgfExhMNuU+PkIj9JDf2O+BMXDa5Gr4DfrJKdh0SYC42i0q4HsqP
         Yc8WfWcjh9soUPKELc9ufn+bMFDap4MSFEUIjIFc+U3tozHMOrZP5X1z5qpZ/WnpBXJs
         JRt3JRdCpQDE3HMfrlENHR05wrXKvneqiPHdG6pkkoMYMwlZaZhyjfLk6yxp9VCJDiKf
         PVxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AznhRH6L;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id z130si407015iof.5.2019.11.01.14.48.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 14:48:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AznhRH6L;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id f19so7248153pgn.13
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 14:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
         :content-disposition;
        bh=V3LYyM2weA98WtI7yN19EnEN7TSQdcsHA2cMTiyjXs4=;
        b=AznhRH6L0D8j3FX8bBveCccqkR2H8T+utbSRh2pzFM32tRn3Duh/eirqak7RabnIYE
         rvRQ8fABPfivAWPlM8XebUcvEfgAWlFW8PUYutj0SwBxjq234yMvBIM7JEQ98T3/Qv1S
         8vIlC1x6C3oYNg1L72Xfc8dvBiyU8vB44dfmSZa2+SN9TugYHaZZAswn1nGYb0sVoCGR
         yXMoANZYAawt11gJzyavuxFyArxyEsUKccL1JbIrUR5uy+WHIP4pXSVQYEyjIsnze0eU
         EEXb8U1JCFxDwDyRwSBrkQx9SfV4ud2O/+/4jGSEnF+znDIzitLaCv7X/6XK04Z+pId3
         QimA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:mime-version:content-disposition;
        bh=V3LYyM2weA98WtI7yN19EnEN7TSQdcsHA2cMTiyjXs4=;
        b=be7nMQHP37dX60bJSllJJyx2l30m05EaILru9dKeQ72HgD7wQKrk0RilyMtpub1G0H
         OMMcZItXYhLxQsxUB1pjt0uPZOA7Yhs9e2NeyIX/BJLZwKVrIN83aqt9BmhoxebdcMp7
         98/ZITQzZOvKlP6v7VBzav0k86zgBYk60n+zd0sWEXsTMBPxRaS2jTlQ1hVoDoqrfPxd
         DvRnha3S8SIkl0l7n3pJr1rfIhC3KFsW2NnvwdQwG/59e3z8jN0fyrMG1Y1yrVYLLmpY
         0a89MaATRofw1GphitgPY7O8xJFkR8z0Qa0Bin2Sqs3Pv9vQ36a+GNgaWf7bhqX1yViv
         iiVw==
X-Gm-Message-State: APjAAAUHAcf3sHxJJwWgh9WchMeV6unS8mQzbzPmLXWekqEbq5sK+P+w
	vGETdy6kuUFKCjBchytaLhcm6EgL5PI=
X-Received: by 2002:aa7:9316:: with SMTP id 22mr16252573pfj.2.1572644904836;
        Fri, 01 Nov 2019 14:48:24 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([104.216.216.194])
        by smtp.gmail.com with ESMTPSA id fh5sm9316441pjb.2.2019.11.01.14.48.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 14:48:24 -0700 (PDT)
Date: Fri, 1 Nov 2019 16:48:21 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 0/3] Cleanup tasks in rtw_xmit.c
Message-ID: <cover.1572644627.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This patchset performs cleanup tasks to fix warnings displayed by
checkpatch.

Javier F. Arias (3):
  staging: rtl8723bs: Fix multiple assignment warning
  staging: rtl8723bs: Remove unnecessary parentheses
  staging: rtl8723bs: Fix lines over 80 characters

 drivers/staging/rtl8723bs/core/rtw_xmit.c | 93 +++++++++++++----------
 1 file changed, 54 insertions(+), 39 deletions(-)

-- 
2.20.1


