X-GM-THRID: 6811040563999014912
X-Received: by 2002:a63:705e:: with SMTP id a30mr21298965pgn.128.1586169039643;
        Mon, 06 Apr 2020 03:30:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:834c:: with SMTP id z12ls11012653pln.5.gmail; Mon,
 06 Apr 2020 03:30:38 -0700 (PDT)
X-Google-Smtp-Source: APiQypLcCuBwl4LFbQ83bjMoFJUGDDRTWBZkmHPmq4ksKI/Ef2hVgb/OWNEsWtPjyhz0elH7Av84
X-Received: by 2002:a17:902:6b07:: with SMTP id o7mr19107410plk.141.1586169038244;
        Mon, 06 Apr 2020 03:30:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586169038; cv=none;
        d=google.com; s=arc-20160816;
        b=rZQx1clFM1stXxRsmRvOS6yUweEdUAJidoxc0QudEd3zRPajXIBdy70hv3S8TplO0/
         5VCy/+5pAeIV4TUf23vjBT0dWeli0qFYoghN2556ZZvLzuL015dKGdwDXzNXdDB/ZGWb
         j2jNOFVtJoiGdvbGOD4tp4NafD2P6xYyVl8RWkb7N5FK3gxYrUKcSXTK9TBxbTKqpReZ
         WEOYOwbOuN4o6XHpr7RoVUgqiED34wifArJFBzexpCOckd2M1ZlwdhjpfRD91+wNS+B+
         +gncHS+na5HnXb8P1rDUWdoYpo2+VjKS5YfUMLI0nVt/L3AMjzr0CUsQ2+Kh+KUpU8O2
         2crw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=VUuU2DyMbreadYFpvl0dfFPlp5yMOZt9qmE7eH4vzhM=;
        b=c5ML+bZgqb66A3alwyfOVJMgfg4znhgrAF29x6s0y9SRHXglQJ0p/gUYq3JJX/kr2+
         IzsQDVB58a8o7FXxBuMgBHdDeq+0ZYaK+988IXCCB5H492dWuVbx9vWrgkZuUzEah8o8
         3J+OTCx2zdGS8B17vQsdAlOfqrJlT1d9olZ37mzHpgqquO1mR2MqWfFiJWWgJIfiZeHw
         qnaXMF+owqO20QDxKP7SYow5kpzGrr/1PiZDO6yg4lLU8EBXtnOfVSFENfOtogRzUTjP
         dsydYGdDPbeHSsSGyqRH0IwN4LqGs2GGXlGmvpUeJGKL/r1+67yy3dxxsDpQdu4XM/hO
         ETEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=XeiDB2ft;
       spf=neutral (google.com: 2607:f8b0:4864:20::42d is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=QUARANTINE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id ne6si1568692pjb.1.2020.04.06.03.30.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 03:30:37 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::42d is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=XeiDB2ft;
       spf=neutral (google.com: 2607:f8b0:4864:20::42d is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=QUARANTINE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pf1-x42d.google.com with SMTP id n10so7328300pff.3
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Apr 2020 03:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VUuU2DyMbreadYFpvl0dfFPlp5yMOZt9qmE7eH4vzhM=;
        b=XeiDB2ft5J/a6c5v71MCQjGY5TVlswZPSRcpAL6wVw+59/sWGJ8tPSXDdXmYJVFxAQ
         yUlnRyk2gjNO6+LdP7i2iFZHYtAK0XZNLYFn2b1cpI1WJXWSZN4UVEnNvrplcUnA5DXp
         FWi9GNOeAfPP8GRY2Tcutv0OftgaJ2SAWuWYWghuo8tmg6dtPAmFGjgrKJAtpvI88K6W
         qgWYngRG6bb0DQxSH4fe0IoU0k6SnfNL3nxcLfBjEvjCYzyfhEBRIi7JVU2cwCUuKpOo
         CeqFiO0iMQAu91kNRUPpEX4f0y6rxqxDJYxBGBe2D7kKx1OARonpLeqmFzjHSPNYUQCX
         JGUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VUuU2DyMbreadYFpvl0dfFPlp5yMOZt9qmE7eH4vzhM=;
        b=GqMUHuF0CfcfNVaxmsGb5/BfiJiOG5nlU4QttFZGkBNydPs/EYWB/DRrZSC5J4pKxN
         kVun8PP8sirmjMEYkXOZY1cVmi3wbtftvIz0KiU2vU3ZH5N084EqneTRKb1pA2tBjbHi
         CW73bInfnypiOYlIN5MLrl2O6+lwSaUvAVd3YBbNxj8B5esgWAMjcCDuCy9vsarQ1rMt
         TowslQkAkbVqjbK+GabwGV5yYkYFfPoPouiOSWycNkI/B/kbb4zgmwUIMYLlJ+oeT68X
         FS3kXsoQXBSabA47XeZwg3asINzdwk4oHXJnHgyAyqxEaOSBkTby1mzpkRD4VNZgtWsl
         jC+g==
X-Gm-Message-State: AGi0PuZCcmAGGXwLyvwK6iD3EpVrD9WCX7jqYMp4C4KOkjb3ZFM4F9TQ
	9O0iAISxuXcp55bKHmufAMuq1ziPXa5Cvw==
X-Received: by 2002:a62:501:: with SMTP id 1mr21022280pff.309.1586169036622;
        Mon, 06 Apr 2020 03:30:36 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.113.213.154])
        by smtp.gmail.com with ESMTPSA id d71sm11398029pfd.46.2020.04.06.03.30.34
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 06 Apr 2020 03:30:36 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Mon, 6 Apr 2020 16:00:30 +0530
To: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Outreachy reminder - final application
 deadline
Message-ID: <20200406103030.GA6571@kaaira-HP-Pavilion-Notebook>
References: <CAK-LDb+6_rhwHUWRKL5FkiHZqRRz7vhMRJVsiP=r+sL5i1OG_g@mail.gmail.com>
 <CAK-LDbKyOLzU6YDbT0TcxxOsdKEQHVwm1NzTiirnrEF6zHaEqA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK-LDbKyOLzU6YDbT0TcxxOsdKEQHVwm1NzTiirnrEF6zHaEqA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Apr 03, 2020 at 06:17:52AM +0530, Vaishali Thakkar wrote:
> On Thu, Apr 2, 2020 at 2:45 PM Vaishali Thakkar
> <vthakkar@vaishalithakkar.in> wrote:
> >
> > Greeting Outreachy applicants,
> >
> > Thank you for all your contributions in the Linux Kernel. This is a
> > reminder for you all that Outreachy's final application deadline is
> > approaching on April 7, 2020 - 4pm UTC.
> >
> > Now is the time to record all your contributions and apply for the
> > projects you're interested in. We would advise you to at least apply
> > for 2 projects of your choice. And please do not wait to apply on the
> > day of a deadline. You can always add more contributions until the
> > deadline. Don't forget to add links to your patches while recording
> > contributions on the website.
> 
> Also, I forgot to add it here but as it says in the welcome message
> please do not forget to add your project preferences in the
> 'community-specific questions' section of the application, if you have
> applied for more than one project.
> 
> Thanks!
> 
> > If you have any query, feel free to contact me and project mentors. We
> > wish you all the best for your applications.


Hii!

I wanted to confirm if all the 5 projects of Linux will finally be a part of
outreachy, or is it just a maximum number?

Thankyou so much!


> >
> > Have a nice day!
> >
> >
> > Helen Koike and Vaishali Thakkar
> > Outreachy Linux Kernel Co-coordinator
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAK-LDbKyOLzU6YDbT0TcxxOsdKEQHVwm1NzTiirnrEF6zHaEqA%40mail.gmail.com.

