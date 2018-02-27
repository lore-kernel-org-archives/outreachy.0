X-GM-THRID: 6527220059011547136
X-Received: by 10.99.164.66 with SMTP id c2mr1921100pgp.69.1519739255882;
        Tue, 27 Feb 2018 05:47:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.104.132 with SMTP id d126ls283332pgc.24.gmail; Tue, 27 Feb
 2018 05:47:34 -0800 (PST)
X-Google-Smtp-Source: AH8x227ZiX0F+EipnXKkCUI1VktyYeHOXPADyZ7Prar3JSSYyP62dEQsd4jTwZ5Fq5GhcZOGfuoA
X-Received: by 10.99.151.1 with SMTP id n1mr2933956pge.170.1519739254614;
        Tue, 27 Feb 2018 05:47:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519739254; cv=none;
        d=google.com; s=arc-20160816;
        b=JhJ+Gd2Z0dhlTKIMXAYBYvDQAieL5ZVSF3RnkwMLme3Uhx1tt6h5PqmWIl6NEaVv1v
         OVbBRWR8Tn3OltUUVYRpUUAQZevPIalpvZfsR1ib7mt246rD8yZ/uRMwOub6aS7s27eK
         rsockOnJMMffJcryxQYic1VsNkrDXPzu7T3HeRuMNMfq+hWhILtinXwy4uUSwWx1fjeP
         nih6qjV/Y64fS9yzYjVNWC9NqO68RMHeCYtpbY1ikAO0rmzBe+vOI1oNuOeqI3NegiPa
         JCCrFsyPZtJcfk4PlKr6lnzxbKjk4la4Asxuc+O6S5XtRU+5usDm2Dj3wx+moE4oJbF/
         Lh/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature:arc-authentication-results;
        bh=+Lkes5+ZnmtKThnpXRsJOKVO5IjkJHrTQWBce6rCaHY=;
        b=isOCMW6iwP1Yt1/NYta6B4beWujTztOQQfzdSR0G0XZ8YUIeUAs4uxk+3Uywc9LW27
         /fmJcbP74XXQFRbQaEchP6XtNSmAIarys+oaXVGoda+1GqUdnJNSPNEu19oDLRrXyd13
         H6veHX73ah+4P68klGsIpQ8C1WOSID83grH8yWpeeP2HvrwAHoSjTzDL75Hd+L3q0Mpv
         tfXWvGFVgFhzostP/eqQ6voof81ccmCvGVOOfc3MsjlAw46mTROpCpawpoV3O0XGe//i
         LUQ8OblIOBsuPPb1GYdwnW+uv4lrvV+DUxRrhRB3z8xeM8Xn/j1+4R8FaNsColu59xcr
         pTWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=BfMpsRmE;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id v11si564143pgs.3.2018.02.27.05.47.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 05:47:34 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=BfMpsRmE;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x236.google.com with SMTP id z14so7951194pfe.10
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Feb 2018 05:47:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=+Lkes5+ZnmtKThnpXRsJOKVO5IjkJHrTQWBce6rCaHY=;
        b=BfMpsRmEckvQweUSM1U+PXGZ+mO+JTDxPjtVUYX5zbzt5y7EJ6KJ5cFn8UjV+eHC9b
         cqNQzHsjp8XfeSYqKXfvHzlcSk86h6YqDFSypxM3ZUHNd0BDLuqiNUZO3XOP0TtXWffp
         I6fG2BmcTzSG9Ii+P9zwE7XbAl4aCmN7RG0Wc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=+Lkes5+ZnmtKThnpXRsJOKVO5IjkJHrTQWBce6rCaHY=;
        b=VCEAehjH9o+6Hd6fqkyUCEdgUfAEKIptC8X5zMrYN+K/pTpeONGksLPekd0PI8mjld
         RVs0QnVRFu6uXwQOG64i1PQxljmcTjvHoCDRQ/LeuqVNl99HC0ZzZlbvIbqdkr0ldsPk
         PKyXXkWtijmNnEuvg8WWJfrNyk00sMp8oXOScqQkAe21mc1xz+i4XTRBVJmKuP5sojid
         RyDGHgRw5ANLNF8Wm0TgiBE591l1+ZkRGB6RMsE3qSw84aJ4P/2zJK/ZlbNjzyitvb69
         BbheSRGeBn5LUOSVz5bY5z+rS7CJTG1Qqskt2DxX1rG8wH4l29sPqHriUhTz8xYxKl2Q
         lygQ==
X-Gm-Message-State: APf1xPAsmOSOXAo7sy3JsvYE/0PZAtNU0E6j/j4TkreuSQPwjFS7VNLy
	423FCalo9yRM0U/juknytduIxSzx
X-Received: by 10.101.100.87 with SMTP id s23mr11483227pgv.413.1519739253965;
        Tue, 27 Feb 2018 05:47:33 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([210.212.93.46])
        by smtp.gmail.com with ESMTPSA id s15sm23696823pfj.122.2018.02.27.05.47.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Feb 2018 05:47:33 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com
Subject: Difficulty with git email
Date: Tue, 27 Feb 2018 19:17:24 +0530
Message-Id: <1519739244-3684-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <CAK-LDb+Wr14J8yE36Uzc-cSecuof4dh+15z8UuZp=OBF-=87ug@mail.gmail.com>
References: <CAK-LDb+Wr14J8yE36Uzc-cSecuof4dh+15z8UuZp=OBF-=87ug@mail.gmail.com>

Hi,
I am still having trouble with sending patches through git send-email (which is what I'm using instead of mutt). As you can see, I appear to have figured it out with regards to regular text replies to messages, but I still don't understand how to do it in a patch. How can I separate the message from the commit title in a patch submission? 
Thanking you,
Nishka Dasgupta

