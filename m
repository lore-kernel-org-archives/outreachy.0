X-GM-THRID: 6803014756528553984
X-Received: by 2002:a17:906:ed1:: with SMTP id u17mr3495297eji.286.1583950304765;
        Wed, 11 Mar 2020 11:11:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:8c1:: with SMTP id o1ls1824699eje.4.gmail; Wed, 11
 Mar 2020 11:11:43 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuBozGbrD9Kev2h8SurdISobKG+jdGXFdGOt7aM+cyWLvMFa56GMwxB2X/wB4W2+DiPBiW6
X-Received: by 2002:a17:906:bfcb:: with SMTP id us11mr3560427ejb.185.1583950303447;
        Wed, 11 Mar 2020 11:11:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583950303; cv=none;
        d=google.com; s=arc-20160816;
        b=j+cLAMcnzCdPePfMXEeGtoolhcSVsBr8HD1OF0W8JfmPKQQob1rg2M2cVB+LB8DyBG
         Oma5BOnYBE+In9BIu34L8+5sLEgUf5yDhuW9hJkGn0cua+h5j+Ah5vqLihtOa5OdjQX+
         W8uu2dt4yEkMDc72hLDesmQWGldLTOaGIz/7VbBmfATxMGMPeWItjFXmCxXKTG1EgIKp
         SFsOrXVzV+5xodrh2Q6kw8RsATVmO+BBMmg+7ed1taCHTZCL2iD1QrdxEZ8Q70yy3bwW
         +PrQ90qIXHDkGECGJipSXmxvUry4ijE93ukIEkqoWVBP1LAh/K5ggbrdhyn9dUZ1hRTr
         wckw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=8+SpACLEPmxQ6D2dJikX1NZ03ze624JlDxAwo31T44M=;
        b=K8y0S3xjhU5tWRKlal5uqqXaMXACHBxUiRX13yWXtBYDhuPtMrRRTgZEvqvnWy0hXm
         k+Fj7J2OSj62R+zqlHtbqC87WsTrWi3+zzBrsyq6jy4U3QV92HirZnNWZ7dml4WYeb6I
         s+v/D4r6+lhB66pE3HGIYM9vzYgaXlZ6I274qfvc5hrSvIeOEzOUGr72GoIcswj81yI/
         NFUUjS7N4Xy6zLZHL489Ed0JsZxZw3HrUlKa0WGXts2cTMKVLYO4a7jcVs/hEqvb4ChG
         eakqKI9JHbMufjOKRI2RjxaVWnemQKE7Is+gFlhv/wm0RK6Kbzq8/wPn/kSRxc7blQ2Y
         ro1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=I7PkyqCD;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id d7si137945edo.5.2020.03.11.11.11.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 11:11:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::544 as permitted sender) client-ip=2a00:1450:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=I7PkyqCD;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-ed1-x544.google.com with SMTP id h5so4036243edn.5
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Mar 2020 11:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=8+SpACLEPmxQ6D2dJikX1NZ03ze624JlDxAwo31T44M=;
        b=I7PkyqCDobC9cG+s5KDN+JCxzLiw6WhDZXLoJqRZDZvVEI55KFxZOnkvE0+o+VeDIK
         gzVwE8TmuQksvFs8g7oeJTKlJMuLFbFFWqvdsopWxFiYfZaeKgySAesEa3YGrL9zcLy9
         Kb8dsfgcrsBSYwAkWKZseLMMXv0GE4atlJtic=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=8+SpACLEPmxQ6D2dJikX1NZ03ze624JlDxAwo31T44M=;
        b=DEkyWXgTuD6CE8a1vRJ/ktPzu63qbWy96GysvUATiXmvNM33rp65ISvJlpQt7qZ950
         1H1VRrR4RDXBsR8OmlQFsKc4u9HYgYVZMB6AY7nLWCo6cI2uTikHCcI6g5w6JAV/vERO
         ufqueviRCzqswNYIJGnhllZ3ifONneKqfaVT7OswwUa6mnCI5Stxza2r6lbCBUYsWTmR
         zLg+CO+DJOhhjwi/xyqiDe01I0VyTm3/eGELEoksx8uIQ6juY7oVktwRQExJPNNBq8Ww
         xB2w5uY8opAwDQH+2VTLErZCp2FUoTD8aSj5zyES3mX1iAplYWRhaFLbirwwD+u/nraz
         ma+w==
X-Gm-Message-State: ANhLgQ0J7GeyM8c1zVHMfpXxZHFV3SkiIhm1/aN3ZgicGiFUFmt1BAYD
	izNrY0vw2XtpBu+KgBl0dB+sdtp8Vko=
X-Received: by 2002:aa7:da82:: with SMTP id q2mr4247817eds.245.1583950302870;
        Wed, 11 Mar 2020 11:11:42 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id m21sm1612170edb.90.2020.03.11.11.11.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 11 Mar 2020 11:11:42 -0700 (PDT)
Date: Wed, 11 Mar 2020 19:11:34 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Subject: Trying to use Coccinelle
Message-ID: <20200311181134.GA17847@supernova>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Hello, I compiled Coccinelle successfully but maybe I am not getting it.
In order to try it in drivers/staging I ran e.g.:

make coccicheck MODE=patch M=drivers/staging/android/

and then got:

coccicheck failed
make: *** [coccicheck] Error 255
Makefile:1740: recipe for target 'coccicheck' failed.

Also tried some modifications of the command, read this documentation:
https://www.kernel.org/doc/html/latest/dev-tools/coccinelle.html and searched
how to use it, but nothing did help.

Only when I ran make coccicheck MODE=patch over entire sources it
produces some good results, but eventually I got

coccicheck failed
Makefile:1740: recipe for target 'coccicheck' failed
make: *** [coccicheck] Error 255

Am I missing something?
Sorry if this question is too obvious.

Lourdes

