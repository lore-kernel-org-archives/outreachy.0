X-GM-THRID: 6254203377087938560
X-Received: by 10.129.88.135 with SMTP id m129mr9536284ywb.47.1456681886326;
        Sun, 28 Feb 2016 09:51:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.139 with SMTP id m11ls2280516qge.62.gmail; Sun, 28 Feb
 2016 09:51:25 -0800 (PST)
X-Received: by 10.140.167.7 with SMTP id n7mr9869066qhn.19.1456681885729;
        Sun, 28 Feb 2016 09:51:25 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id yd9si3112040pab.1.2016.02.28.09.51.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 09:51:25 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id bj10so8896657pad.2
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 09:51:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=cMY0d1i+u8OLpp6qA5MM+PFEh16xRd7uZubXPOgp6ks=;
        b=jpZNuLX0R+EUCkmW5p3mUsO5l+5IWpoTLXuW6aNzvvNghd5yymY3lVSDG3e/UQPZgB
         hqcuBpcfd+xm1a5FHd12Fszm7CdIB3sw31MCe1n9zllFpg1I/F5YOPNQfUjJOC+etFGc
         mqh/JG8kW9aaxhRPmHwWyu/bPsvrvAICdL0NzINAtahiMac6L5FvxEppkm0gw8V1vyz/
         AVrbXUzNbltYuTsKIkHQF6yFVoOa+pIUHYcCymq1Oy15d4cE4/mxC+ohEbV5z9Nk2Oj9
         hrgrKBVu8kb1ybn/XvhAUhHacjKQIAGkXJd7KTmMMvj9BCMqc/2gODxpePxZ3ss5/trE
         LvaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=cMY0d1i+u8OLpp6qA5MM+PFEh16xRd7uZubXPOgp6ks=;
        b=gUbtrn5ctIY8dLKje82Bjd31kzTBTWOo1+IV5pfl/e3TUoMlfM1znLtEmybz7SgQyw
         gNsBhq0/MpaG+aUzrC67vGYe+0cdbmZK+PGZXH/no/F/xumVtBUQYErvwsUMvYaZ5cVp
         snqsaY+nOG1xiCu0N7D/pzau9hVPhMUG7868QBncH+OCSzJIKgRRNlxa6LbeKnYHUCoD
         fuq5y9ahLUqygdaaDGL/xkVu/8gIGrOpNR0THDtKFvzEhB0RYgGNc+190Z0McLrxfO9g
         aeMeKHBua2E4b7hEVVZQRphkdloF1hxCcR8JK7/iUORnhRkpLlDy51ccNZrdHbUQnrna
         //wg==
X-Gm-Message-State: AD7BkJJx683lSB+KHqLkB1gQu6bwYM03uqhUOpNWQC93cIQXYzmwjtijR4j3Oo2Ls1l2cw==
X-Received: by 10.66.62.169 with SMTP id z9mr16461229par.139.1456681885276;
        Sun, 28 Feb 2016 09:51:25 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from localhost.localdomain (or-67-232-68-59.dhcp.embarqhsd.net. [67.232.68.59])
        by smtp.gmail.com with ESMTPSA id lq10sm32540895pab.36.2016.02.28.09.51.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 09:51:24 -0800 (PST)
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: reordering remove actions in iio drivers
Date: Sun, 28 Feb 2016 09:51:19 -0800
Message-Id: <1456681879-2605-1-git-send-email-amsfield22@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20160222194313.GA9769@amitoj-Inspiron-3542>
References: <20160222194313.GA9769@amitoj-Inspiron-3542>

Hi Amitoj,

I just worked on a similar patch, and yours caught my attention.
It's not clear that it is OK to reorder the .remove actions.
Although it may seem counterintuitive to do anything *after*
you've unregistered your device, it is indeed done purposely
and safely in many iio drivers.  It usually needs to stay that way.

Check out more discussions of this on linux-iio.

And, consider the source...I'm just trying to figure this stuff
out too!

alisons

