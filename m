X-GM-THRID: 6250332404581400576
X-Received: by 10.66.145.232 with SMTP id sx8mr819269pab.13.1455277297775;
        Fri, 12 Feb 2016 03:41:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.247 with SMTP id e110ls1402850qga.44.gmail; Fri, 12 Feb
 2016 03:41:37 -0800 (PST)
X-Received: by 10.129.125.215 with SMTP id y206mr863505ywc.54.1455277296996;
        Fri, 12 Feb 2016 03:41:36 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x235.google.com (mail-qg0-x235.google.com. [2607:f8b0:400d:c04::235])
        by gmr-mx.google.com with ESMTPS id i133si1053826ywe.7.2016.02.12.03.41.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 03:41:36 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::235 as permitted sender) client-ip=2607:f8b0:400d:c04::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x235.google.com with SMTP id b67so59921790qgb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 03:41:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=heGVH+LQrX+hWS0+yTll15qUzQeBExXZQAtRzgk1+HA=;
        b=UZsvCEhskjbbibNwEBZqP9Hy8AsXk+ptNcQkd/3jF0ornI1X1Hi16YAAuU1yNS5+Y0
         PCGaVi9V6+0fP0Sdmp9/Y18zUJvUPIxOsplA7TVa4dN6wL91vvLEahZWKBMpzSqwpxeV
         usnYrLAfQrRX+ZSbqUr3VORpsIDlfzhPhpUVW4UB+2XJA5FWeehP1336S9NWBbgrORuh
         YHv2O50VPuGa1ztIKqF0V3kBDAUKYawRDjnhS8BsjeSH9K8lsQoypnSp9Z9g0T6h8FUt
         6JOlnhhUneI5GsBZP6n6/kV9NQIvKtbPpfIuTMyBhUTnjg5AMBl2ujTVkfRzw4A0dh9y
         N4/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=heGVH+LQrX+hWS0+yTll15qUzQeBExXZQAtRzgk1+HA=;
        b=bCyQKYieIOvWV6xTRDux0MN7rQ6KjmQQ2eWJqzNRytqGLagfGHCKKT15meS1Q+Rilq
         D/e777gjyiPw1koO6iaALmpVy1zhvz7rAEWIyI7S++jtZcB5QqRJV+uI/rDlr2//W5/a
         m7m0xhTps961lJR1rUU1nkykvzAJ9ZHHcXB6AEfkhqtpIC4+7HCzaK99CPGP326B3f8O
         o1CqYCV2oLr8yTGC+ujvnPNUGmJCcTCU6T1UDUT0497ijYoqv1mE06Rz/TpsaMvCaQQC
         1eTgdArybt6W41prcorKi30vObFBBPUSzz4m5moREOQzA2FAzKFeyPOPgWU+91gJSBUi
         rprw==
X-Gm-Message-State: AG10YOTv5NEKOqZhzNAoxHsFkGfB4i7ls7j1fVTPQmT5yI5gUzlA6+qGAKtUfF2lZ2LTJ8IJ4mZxXS8wHLTXqw==
MIME-Version: 1.0
X-Received: by 10.140.23.81 with SMTP id 75mr1137999qgo.35.1455277296826; Fri,
 12 Feb 2016 03:41:36 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Fri, 12 Feb 2016 03:41:36 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602121157010.2055@localhost6.localdomain6>
References: <20160212092152.GA26927@amitoj-Inspiron-3542>
	<alpine.DEB.2.02.1602121157010.2055@localhost6.localdomain6>
Date: Fri, 12 Feb 2016 17:11:36 +0530
Message-ID: <CA+5yK5FzUYAUG1LxheS_E+eGrXmy9n4R-L-sCEeX4x7-hOr6Eg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: ieee80211: Replace
 MSEC macro with msecs_to_jiffies
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 12, 2016 at 4:27 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
> Can you get rid of all the uses and remove the definition?
>
> julia
>

Sure,

I wasn't completely sure that the change is a desired one, so sent
only the one patch.

What I'll do is send a patchset to completely remove the instances and
the definition from the driver including this one again.

Amitoj

