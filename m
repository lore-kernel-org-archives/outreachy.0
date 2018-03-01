X-GM-THRID: 6528054471582285824
X-Received: by 10.159.48.1 with SMTP id h1mr1533678uab.46.1519939252501;
        Thu, 01 Mar 2018 13:20:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.120.135 with SMTP id t129ls4002506vkc.15.gmail; Thu, 01 Mar
 2018 13:20:51 -0800 (PST)
X-Google-Smtp-Source: AG47ELvfhxNafvwmnthiQBF8SyU+HCFRko6QspRVPFYi/lb8cL9QuZNzTK3TDNcZpfvkNn9Qspbg
X-Received: by 10.31.3.15 with SMTP id 15mr1463412vkd.20.1519939251094;
        Thu, 01 Mar 2018 13:20:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519939251; cv=none;
        d=google.com; s=arc-20160816;
        b=zJ9JyyjgzYLH/CF5tcC3e8yHuw+2CfmyFQxW0fFpkcPqnGQ7NfdqvXZXEPr7U6Q3hq
         MSwYrKC8uGPzUSU06lwb5IlHsfJg5NxLrnj8nWhkwiVQn6FGFFb3ovM/6IL+ARzT/Vmx
         aqI//XRibJOZbItyoZi/IVQyFYGf2hIJ0cTEhNjAZfyUOB5Z5xJbLT8mayBGw7hzCmjp
         JaIArJEKQDu7sKdNuHOeW4h/exphx0tCeAKUULAR9l40hLGD8M2RCxJytLF+Zq60jcRX
         dKK0JvlQmJD1lzf8OuslEG3jMqTn84aB4/drTAxOdfI3p4JHBCnPAiLVhFQFAVLyHSv8
         Vv6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature:arc-authentication-results;
        bh=BJ49e0C6HHLzk6aYhewrTSju38hh+gJYN82JoTueri4=;
        b=0S2e3oJgSx1dLzuE0GhTSoGQdIZfmWiSDa3+nkVsB0PLowEWfuOvBPw91mp2Uqu4Vl
         tZwPs6q4mGAF02VI71htu3jZZ/5sa5SboZq1WGMoHykcxgxQT6eQR0DUhKjVPRsatxP5
         K+RHmaQrtrF9s3hMHpDJf/xq/qn3HhTbVZdF7ccq7m/4n1VeDoAQukkhjbwtkP+9PFPd
         vFPD9quZx9rtU5NJ5Lz6b3C7+knP0Lp4MMhlUVrqkAvowJUOuF3ZuaIQdKeEO30Rslsu
         NTHmDDca4ummyOluM25ccq//YAeDfI8Z5Lf9DjGYu4kH3tXrt2KgnoNPs9gnE4byPRIj
         bSaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=ejNJyaE3;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pf0-x22e.google.com (mail-pf0-x22e.google.com. [2607:f8b0:400e:c00::22e])
        by gmr-mx.google.com with ESMTPS id b32si346748uad.4.2018.03.01.13.20.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Mar 2018 13:20:51 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::22e as permitted sender) client-ip=2607:f8b0:400e:c00::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=ejNJyaE3;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pf0-x22e.google.com with SMTP id j2so874661pff.10
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Mar 2018 13:20:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=BJ49e0C6HHLzk6aYhewrTSju38hh+gJYN82JoTueri4=;
        b=ejNJyaE3YVrGTOEABayfNqmKIoAqFF0DOhq9RAONpclcb6FLLpbbR5p32Ejsq9O927
         tmf8vxLgpk6oRkWyKA34a/Bru5+D/vxb7QGd99JBRmQ2U6ct49oAtsDz6ClKT/bolXqJ
         gH/3HjK3xbftp0VbL69ud/prpqb1tPWfIjKRM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=BJ49e0C6HHLzk6aYhewrTSju38hh+gJYN82JoTueri4=;
        b=gvnLN7gjKJ4YMEmu7wk4lVnWqEcXvwka+9ULFhDaorOICTsN9Gnl01ihnEHedpcQin
         r/abFcwUgPpwZxSFGndtGKIFkS3h20cq4qO1DMNi+aguamCCw8DyeQR9Rw1cEOtwX1h+
         fCALLDJXqM+0IoGKC4daM+/AFzk/yDMQMU4XGN42Xw7gWE7ooOXEbFNubhytF+/bvbu/
         tIqEDXt5F0XxgiWLd8qmGfZvFAjIdGpQc54i/FfeFVqBUa4f4aoqUmWQT5G1JghklMDD
         PNM+5tzJnXtzCgg6HiR4I+wn+flWqszU4FBMK5yJrZioMmivRXhZqBu458Ax3h3CXFM2
         p8Gg==
X-Gm-Message-State: APf1xPCBoK0R6mBeY+McmoOVlnC9TkzNkcmSq4bcMQnQf/9kFU6z7Uy/
	8nHJQagj6ce1rVsgFf1Y39/0GS4P
X-Received: by 10.98.79.90 with SMTP id d87mr3299527pfb.41.1519939250078;
        Thu, 01 Mar 2018 13:20:50 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([210.212.93.46])
        by smtp.gmail.com with ESMTPSA id t11sm10220709pfe.17.2018.03.01.13.20.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Mar 2018 13:20:49 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: outreachy-kernel@googlegroups.com,
	julia.lawall@lip6.fr
Subject: Re:
Date: Fri,  2 Mar 2018 02:50:42 +0530
Message-Id: <1519939242-28507-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <alpine.DEB.2.20.1803012103480.3474@hadrien>
References: <alpine.DEB.2.20.1803012103480.3474@hadrien>

This is with response to your message that you don't see any spaces in
the staging tree.

Yes, the commit "remove spaces after typecast to int" was an unnecessary
commit since I added the spaces in the first place. This patch was
submitted before I read your email regarding not submitting patches to
fix the incorrect changes I have proposed. Sorry about that. Will focus
on new patches from next time.

Thank you for your time, and apologies  for the confusion.

Regards, 
Nishka Dasgupta

