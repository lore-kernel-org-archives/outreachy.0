X-GM-THRID: 6622006698553901056
X-Received: by 2002:adf:f907:: with SMTP id b7-v6mr2144224wrr.21.1541806081301;
        Fri, 09 Nov 2018 15:28:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:1a87:: with SMTP id a129-v6ls620430wma.8.gmail; Fri, 09
 Nov 2018 15:28:00 -0800 (PST)
X-Google-Smtp-Source: AJdET5fLCqTnC20mp086Ff1RMXN1V+SlH19dhqU9Ljh+fGQktbGoVYKb8oT+7r7tUNQ2aJFxoWVh
X-Received: by 2002:a1c:c018:: with SMTP id q24-v6mr796689wmf.6.1541806080419;
        Fri, 09 Nov 2018 15:28:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541806080; cv=none;
        d=google.com; s=arc-20160816;
        b=m2b7jWD02N8wGfUIkMbuWuDvRoGQFknj5mbJ/OZgAqQgrNgi4mJhghDWOAkJBEKHjF
         FVrssahiiST/Tdm1L+nA0/CCwgB1yAio3W5pHu9R+RxfYbKkbjaVVzY3WTAINUyxTe76
         ArIvE/xxAzZfd/Qaz/oSKJWChVFsretlN18FEB0O01xhF1n4/ivXKzJ+StQh6jkOiuP5
         44dbyXP4tBdJ+5QDjpB5IkQZ6ss5RPBc7r4HQoMa3/rtGJsr6CopAy+y+XSWzhJR88aK
         l0qxxFi727V9bGG5fG+TvssQdk1jG+KqOJUL5b5UMk6YLV2ikn3SmZ39R5DJwZgseaRx
         yAdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:subject:to:from:date;
        bh=u7eoKyqdZxiY73iMLbj6Krvo5m4zPjDyIxuuxerv//0=;
        b=zGpPzK9xDaL/KClcqwmLzL/oKt3QDQAYdHf6PyvYmAnI7EZleDdOQN+zBiWA6SncqX
         zrML6jI0RRzk7kr9gTeNP98gyBUsvOKFDzR/nlWXg/LDLZHLS8oygoo0vb8We8p2h0BD
         Nv+mheFeYZHkwRPnhfqaZekpcjFw2Ys9uRbXzTi5Ew8j4y1hARieY7Eims1TBKtOOf+2
         b3pXyMumCH96x9YReUCdmSaB/pj8fdxA2wsJp/RjZ4MvtxhjbtdabhzVSoSdmMRjh4Dy
         KcPwlBZpHozH71MrZHHuZIl6SigqhzjxUSx+7tYDCsVePy68FE4D3yyh30T9KwwCnlnD
         uImg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h137-v6si133098wmd.1.2018.11.09.15.28.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Nov 2018 15:28:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,485,1534802400"; 
   d="scan'208";a="355006499"
Received: from unknown (HELO hadrien) ([104.129.159.57])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Nov 2018 00:27:59 +0100
Date: Sat, 10 Nov 2018 00:27:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: outreachy-kernel@googlegroups.com
Subject: HELP WANTED: Fix -Wmissing-prototypes warnings (fwd)
Message-ID: <alpine.DEB.2.21.1811100026460.2679@hadrien>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

For those who want to keep contributing...

julia

---------- Forwarded message ----------
Date: Fri, 9 Nov 2018 18:44:10 +0100
From: Borislav Petkov <bp@alien8.de>
To: kernel-janitors@vger.kernel.org, driverdev-devel@linuxdriverproject.org
Cc: wang.yi59@zte.com.cn, Greg KH <gregkh@linuxfoundation.org>
Subject: HELP WANTED: Fix -Wmissing-prototypes warnings

Hi all,

gcc has a warning option

  -Wmissing-prototypes

which fires when a global function is missing a prototype declaration.
This warning is important as it catches cases when that global
function's prototype has been changed but its callers haven't been
updated. And they should be.

Currently, if enabled, this warning triggers ~1400 times for an
allmodconfig build and we would like to have 0 warnings and then add
that option to the main Makefile.

So helping out here would be lovely!

And it is very easy to do: you simply build the kernel with W=1:

	make -j<num_cpus+1> W=1 2>w.log

choose one -Wmissing-prototypes warning in the w.log build log and fix
it by including the header which has the function prototype. Or you
declare the function static. If that function prototype is missing, it
needs to be added, of course.

For every function, one should ask oneself, is it better to make the
function static and save ourselves the prototype and include file
dependency - that would be the preferred solution - or if not possible,
should one make the prototype visible by including the proper header so
that gcc sees the prototype.

This should be a good exercise for newbies who'd like to get involved
into kernel development.

Feel free to ask if there are any questions.

Thanks!

-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.

