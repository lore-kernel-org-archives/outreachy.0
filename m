X-GM-THRID: 6528077387977981952
X-Received: by 10.200.27.237 with SMTP id m42mr7094729qtk.14.1520101686046;
        Sat, 03 Mar 2018 10:28:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.6.133 with SMTP id 127ls7571575qkg.2.gmail; Sat, 03 Mar
 2018 10:28:04 -0800 (PST)
X-Google-Smtp-Source: AG47ELufsDnpI2l2YmKh1wUVpRT/Q9ZksgkzUFeIS7EOzeA+TGpWHBhgT+fSf/S2s4pDDD0yOdiL
X-Received: by 10.55.151.68 with SMTP id z65mr6912390qkd.30.1520101684568;
        Sat, 03 Mar 2018 10:28:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520101684; cv=none;
        d=google.com; s=arc-20160816;
        b=OcfdRNYuehBbgkZ4yOaCfojP8eCib7O0rrcTAhJ6JHq+kvaL3v21O3EjzCYbUS9Tc4
         +BAu7dh4qzPIRQ746zLIH0OcbZB2DloAiOsxDs8XUvY/IK4zJ/a9HwCPjp0VR7j+azPE
         +wMy94aOfwIskxnAD9nbbJpZuhELZDlQwB0KHdg7uPPymR3irXpcqL8XzeXm+YVKh37E
         XjNFZYT2uAmwfGM4FUTLQ9MzQAPKzUWy3mFQDfN/df54CYdlm/Fnw6a5fqd8GtKeshla
         3J9NP3x+4vDsoIwqeTNqWBI8+8tfJXW5ILKbcqZbwArmcXmA1c1dG1+baGnHWCuA6tUk
         zdTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:to:from
         :dkim-signature:arc-authentication-results;
        bh=LqExZ57K9C85lRq19tNy8PuotQT/MkvTfVI+7o5UdNk=;
        b=lp26a3eXxqgiyHmLR0bjA4IPSaz/88u7HvZbjCXuZEyrsGsqlEoiMnCMKohjYq9Bhi
         o7Q+M88Lrzj5twNyThI63gvE7KQ/V+W/fabdAYJ1evdcJoK3kmFLqFFLK6D0pRvggX8h
         cJd6v75vP35Zl9gNWXLeW3IPAkscTY4/UJ/g0QDFAvWqF38Z37DsNHcFLvIAwTD0T1rM
         tyZKyivyYdjz6VdJndLio+Li2Wda96IjAeSTmAN0XgBQeK6WbyAU0gXVqeTWoB7/9MEa
         Rdd4sRN2Ca5xBMQ7bdMK1QpbT+KKMp+3kBZmcNMzgG1Xtgbsh3QX2hL8h1BNz3+JMb2n
         zKrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=VIyAFbyZ;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::22f as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pg0-x22f.google.com (mail-pg0-x22f.google.com. [2607:f8b0:400e:c05::22f])
        by gmr-mx.google.com with ESMTPS id 44si749395qtu.1.2018.03.03.10.28.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 10:28:04 -0800 (PST)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::22f as permitted sender) client-ip=2607:f8b0:400e:c05::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=VIyAFbyZ;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::22f as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pg0-x22f.google.com with SMTP id l131so5138845pga.2
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Mar 2018 10:28:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=LqExZ57K9C85lRq19tNy8PuotQT/MkvTfVI+7o5UdNk=;
        b=VIyAFbyZIzn/fujjAQbS8IbhbfaRhOf+AvQzVtRXa5wjmWHw0p4tBClOG783M7JQho
         qUFNuNwISP1RXE8WBks6uTlPtv/9DlwR/1BJBH9NQg8OB38gK9giahddkI1KywOQEr5L
         fKZnwb2Ml2MjIrIA/zv50nG13SEXC8Aw6xP8w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=LqExZ57K9C85lRq19tNy8PuotQT/MkvTfVI+7o5UdNk=;
        b=Zt0CJff0GyH704onFBoEjanmLejZwXhSfMr84CC9AX4dIAvskgtn8gpj1K2dCSSHHb
         I/M9jPtlrOrMX1okweLt2mEGOg4tNuYdrwQg6H4EsI7khldIVNhAJBSnLI8B6QIHr/L4
         ircI9POGpPl0/USGmMMITus+6eZYIYJIVRRsv+ZcC16YXcCcuPLm9nhQGI8xqiQf0fsO
         F6sYXQnLCn7mrVvrHU1WS0wSJh4zvikRqcj7rWavQEFbwgjL4GxLixfpOJS+Nt3tNTHm
         PLjv8jKMVSw+WgFGr5mWu1Se5H0ZvwP3g17iQZaQkTbAqP/jfNGLx0Fhzh+BbuJYHA29
         EBlw==
X-Gm-Message-State: APf1xPAMNFKQjZ8HwY1HQp09lOcwtTKqQH6cMIMJ7QZisdEC1PXVEeOA
	ABVRkfEy9ODWsREtP/WlqF+1HQ==
X-Received: by 10.98.185.11 with SMTP id z11mr9730994pfe.153.1520101683554;
        Sat, 03 Mar 2018 10:28:03 -0800 (PST)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from ashoka-ThinkCentre-E73z.internal.ashoka.edu.in ([210.212.93.46])
        by smtp.gmail.com with ESMTPSA id t63sm20119354pfj.44.2018.03.03.10.28.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Mar 2018 10:28:02 -0800 (PST)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: julia.lawall@lip6.fr,
	outreachy-kernel@googlegroups.com
Subject: Re:
Date: Sat,  3 Mar 2018 23:57:50 +0530
Message-Id: <1520101670-5268-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <alpine.DEB.2.20.1803021901370.17455@hadrien>
References: <alpine.DEB.2.20.1803021901370.17455@hadrien>

This is with reference to your link with instructions on how to load my inbox in mutt. The instructions worked and I should be able to access all future correspondence in mutt. (The most recent emails, however, failed to load in mutt, which is why I am still not replying inline.)

Thank you for your help!

Regards, 
Nishka Dasgupta

