X-GM-THRID: 6470558615893704704
X-Received: by 10.28.1.146 with SMTP id 140mr404197wmb.2.1506544327107;
        Wed, 27 Sep 2017 13:32:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.160.247 with SMTP id n52ls691991wrn.6.gmail; Wed, 27 Sep
 2017 13:32:06 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBDaesDj1+52LVaZXnMKyr9ksxIrd0O/CCKsvUJALL5wPec5mGtBM5veYiwNxj4FtDC0XQk
X-Received: by 10.28.215.195 with SMTP id o186mr410838wmg.9.1506544326043;
        Wed, 27 Sep 2017 13:32:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506544326; cv=none;
        d=google.com; s=arc-20160816;
        b=YZIpI4j1iCA+ZidsEUFcFa8Rji4gzJQh55abc4n6Dlg3vInItQomZI7L7APnTewS73
         +gVxP1O0wBmkTjewZZ1faMuuYf5rAkYgRbi7/fkHwwA/ecrEViPnM8usj4WdUHpCQvMX
         74hc14m+0dJHVe0uHrT20JT6uc92L6dnoC/7M8ZVQHT4uD+xIs/vh/2tsYgsbCWzNc8B
         nSfmS1YkZfweJwamJgH3w4JCYB7mrOV++8CKMhdvmgy+AkCkOoUmDxiYVMK9vgAmehqg
         FtQ9A69OI89ebfuOYtMKdX5pWiZYKQpbeGsS+ErTJNutqL9otSzYbd3r+mf9hmrDiAyv
         Iz6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:from:date
         :arc-authentication-results;
        bh=Z+Ljs6ce+TqJo9wIgiVWSJgQ5oDGqgajrL+slGYzvYE=;
        b=So8oM5YRP4QsXqlyH7a22fPLbJqIO0/WPQimW9vd2trobDTzhlBxbvP+o0+vP8RGEn
         jV9QmgtxEGriJJAGFcTOncDlqfW9LdtY2gTMNC1wlo3TIegJZGWKKcAKMU3MRs95P5BE
         rsIa8I/UnH0191SZsI1FSVYfQr1eww43qgKGsmf5Ag8ea5wtk7ZrcR2OPKAKGhDu7ECb
         yG5u/hEBRqAIYSjf5A5eBgQy/moXaujkJKrPKfV6Arnnz2pbvJKkNdvGc0CMCZpNPF2I
         SxXKbg1YEV3vlTnWNjxLUxJjQXbXgLU1uNOyO1ENlGXnstcZyilPErwZZQdBuvCPwuRl
         V/kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id j4si29380wmi.2.2017.09.27.13.32.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Sep 2017 13:32:05 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,446,1500933600"; 
   d="scan'208";a="293020540"
Received: from unknown (HELO hadrien.local) ([93.83.33.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Sep 2017 22:32:05 +0200
Date: Wed, 27 Sep 2017 22:31:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: web site
Message-ID: <alpine.DEB.2.20.1709272231310.3493@hadrien>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The web site shoould be working again.

julia

