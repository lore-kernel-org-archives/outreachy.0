X-GM-THRID: 6399695110711279616
X-Received: by 10.99.123.24 with SMTP id w24mr590838pgc.146.1490045131733;
        Mon, 20 Mar 2017 14:25:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.173 with SMTP id r42ls15355700otb.26.gmail; Mon, 20 Mar
 2017 14:25:31 -0700 (PDT)
X-Received: by 10.157.7.78 with SMTP id 72mr14077720ote.55.1490045131395;
        Mon, 20 Mar 2017 14:25:31 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x229.google.com (mail-yw0-x229.google.com. [2607:f8b0:4002:c05::229])
        by gmr-mx.google.com with ESMTPS id r198si2525083ywe.4.2017.03.20.14.25.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 14:25:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::229 as permitted sender) client-ip=2607:f8b0:4002:c05::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::229 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x229.google.com with SMTP id v198so98575186ywc.2
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 14:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=yuPH75tcYjZJjX4C3EjfjcO50ifjlKJMXq1XBEaQaGo=;
        b=RSVCFZ0jsNXUmZ3XIp4JV8XxRO7gFIq/MYcCe3GJSDc+RzoaQQiinvRqi23UPQZgGJ
         rlmAgWmNe8YM1gzhGKaKKk85jBEefvOw8o+TsRmQ5HG86UHsQb034uwlYZsB1t+PGK5H
         91V3h7sCGV3itywVxk0fg7HytUL7pUXOeBfopxqIkm0bOTCG7HVlsyU2B3nK5PU5+RJW
         B0lI4TJaUkJCzti7oZn4e2beRsXHpOm48qgfCD/9POIDxuDoW4qx7E5UmgindI6PO+fN
         XIaVaC0WJ0C2zQljo+nj3Wf11721Q+drJFrbXkkaz+U+E4JBRlVm1rGUMgTGI3uTT7si
         FyqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=yuPH75tcYjZJjX4C3EjfjcO50ifjlKJMXq1XBEaQaGo=;
        b=gr5wTLIBBDEnon0kpOJhOa00YuRSQ+3WUxOGlljnWMoH0IKu2L7XJvbT87q8RVyBFQ
         8WBbmjARZEvrqbvmbKrORAegtT1Tz1pcQk9h+Q8MIr/79HtUnYDtFB8Eg5VR3/wrc2hb
         GhMx2oFYjX7vdz11Q4tm3PGqHP2qWf7d50sGc70x9eOuyf+qF5sa4NbBVo++ak47rHJ1
         j6tpvSAkDtYf7LB8sD+FCV0y1taTu4NmwHfk6jyJawpQyb9Su/kmy6joXT2+knKH11pX
         6+KlFpcQxqOg1jaPjO31Q4iJZhej6+EoW5hbVZtGUehn58gIiPNmRPZ002zYyuiJa1IT
         ktTw==
X-Gm-Message-State: AFeK/H2gEEC4Hubd0iS0Ry5+P0t1FihKsZicpvUNUyWe5kFWhbCokwNquFEo34VFGd8zXpIEVYy3FjoK/org9w==
X-Received: by 10.13.234.215 with SMTP id t206mr16063900ywe.150.1490045130928;
 Mon, 20 Mar 2017 14:25:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.173.10 with HTTP; Mon, 20 Mar 2017 14:24:50 -0700 (PDT)
From: sayli karnik <karniksayli1995@gmail.com>
Date: Tue, 21 Mar 2017 02:54:50 +0530
Message-ID: <CAKG5xWj2WBS4MiOdgcdatnHMkgdsBATKtgr_h5=sQPgrnOyBvA@mail.gmail.com>
Subject: nftables task question
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hello,

The project description for nftables lists translations to nft as a
possible small task. I couldn't find the files to work on. Which tree
accepts patches for these translations?

thanks,
sayli

