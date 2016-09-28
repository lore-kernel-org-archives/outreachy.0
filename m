X-GM-THRID: 6335101576926986240
X-Received: by 10.13.193.132 with SMTP id c126mr2374975ywd.145.1475086799502;
        Wed, 28 Sep 2016 11:19:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.75 with SMTP id t11ls1517908ott.34.gmail; Wed, 28 Sep
 2016 11:19:59 -0700 (PDT)
X-Received: by 10.31.137.140 with SMTP id l134mr6988617vkd.4.1475086799103;
        Wed, 28 Sep 2016 11:19:59 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id e66si2400983pfk.2.2016.09.28.11.19.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 11:19:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gnudevliz@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gnudevliz@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 21so2456487pfy.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 11:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=w1JPfjR+1tjsiOCECOn6nAENocJBcWzpqi5p4vC/rQ4=;
        b=z2aBBgSY6NAAuH8IiQjaYGVx+LFF5CTB8PU0+xzUhRlTREH0YiuCzM/3mIO2m13adV
         aYRyzlibEzqMLyctATX4jOXcNXCcri7XZ//N5CWc8EsZM3z7xoJFwl9gU8y0sTybXjJy
         2aoNlSZi5FkzyHQg1s42QReGHtetXIecC4TuEOt8WUEKLCDo3WUJadvJQjNG8wBn9NTk
         EJGStjOdaZN7lPb6VS3uhlvtjyoMWzjlQ9745QbSlcK35zM2m+oQNs8N2JnLPNILOaS2
         Wx/aXa0zFACX0AY0XxhQ6tggwiwWnWWivav80ZJ8aAZP5oro/XtDGYzxTZc/Rrjakl0W
         +kDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=w1JPfjR+1tjsiOCECOn6nAENocJBcWzpqi5p4vC/rQ4=;
        b=KF2gF+IJU0fH6qRHicLp/Xn8j0pgsMxy0GvMUcvoc0EdbFQExBRHBdsrcojzLdqp97
         tLsV4ZMzAgJYC1yiOSAHg3s60THvzk72w6YgbDBBdwyeosO8gK+xtdBeE2SDIC6k4Kc3
         YIsbK2s6gz0l+6NzDIKRGd18IHlH5aOYEZfZOIupfmoittY+1RwiH7HrG+51NHkgoHko
         L3aihfMQ9LwBo2xA5G2I0VZpBFrOqYL90F91Oq3RJTKfh0wu1CLosJNrS+WCrjTjNAV3
         duKvzvzzYFAWNRhLZ5FKkR61/Qty18u8Ei3yJLZfzi+2RxZMDbUrqrRvlrUvwfi7/YDW
         jowg==
X-Gm-Message-State: AE9vXwOnRdfHqsfQlmCBdpW/W2hrE5DZVpv9JbVoqzE3ASfzQSPkNfnQjF+0wS6+v+bljg==
X-Received: by 10.98.141.20 with SMTP id z20mr60288744pfd.165.1475086798900;
        Wed, 28 Sep 2016 11:19:58 -0700 (PDT)
Return-Path: <gnudevliz@gmail.com>
Received: from localhost ([2601:644:300:fd6b:4e0f:6eff:fe69:e9ea])
        by smtp.gmail.com with ESMTPSA id 19sm14198940pfk.58.2016.09.28.11.19.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 11:19:58 -0700 (PDT)
Date: Wed, 28 Sep 2016 11:19:56 -0700
From: Elizabeth Ferdman <gnudevliz@gmail.com>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: line wrap and rebase question
Message-ID: <20160928181956.GA2193@localhost>
References: <44f080fb-8ee2-4de0-8480-7b21534757ab@googlegroups.com>
 <20160927203553.GA20780@d830.WORKGROUP>
 <20160927220413.GA23877@localhost>
 <20160927222001.GA21768@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160927222001.GA21768@d830.WORKGROUP>
User-Agent: Mutt/1.5.23 (2014-03-12)

Hey Alison,

Good morning! I received some not so good feedback from Greg that I want
to fix and I have a bunch of questions. The plus side is that maybe
some of the answers could go into the tutorial.

First he said "please wrap your changelog comments at 72 columns."

Is this something I add to my .vimrc? I've been using "git commit -m".
is that causing the issue? I thought git commit messages were supposed
to be less than 50 chars anyway. I'm confused. 

The other issue was that my commit didn't apply to his tree. He says
please rebase and resend. I think I need to do:

$ git fetch origin
$ git rebase origin/staging-testing
Then reformat the patch?
$ git format-patch -o ~/mypatches/ HEAD^
$ mutt -H <file>

So I don't need to uncommit/recommit?

Thanks,
Liz

