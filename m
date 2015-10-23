X-GM-THRID: 6208527977579282432
X-Received: by 10.194.248.131 with SMTP id ym3mr4608795wjc.7.1445587617174;
        Fri, 23 Oct 2015 01:06:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.16.222 with SMTP id 91ls416122lfq.12.gmail; Fri, 23 Oct
 2015 01:06:56 -0700 (PDT)
X-Received: by 10.112.145.201 with SMTP id sw9mr3234028lbb.13.1445587616527;
        Fri, 23 Oct 2015 01:06:56 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id w4si219083wiz.0.2015.10.23.01.06.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Oct 2015 01:06:56 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue002) with ESMTPSA (Nemesis) id 0LyNJG-1adMXg0AJq-015u41; Fri, 23 Oct
 2015 10:06:54 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>, outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Y2038] [PATCH] misc: ibmasm: Replace timeval with timespec64
Date: Fri, 23 Oct 2015 10:06:53 +0200
Message-ID: <4548019.sSo3BcqfAg@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CA+5yK5GdMua2-ppTd6y4X=dMYgH8xqjp6nA3nFjCVt=Xkivm5A@mail.gmail.com>
References: <20151022173920.GA32329@amitoj-Inspiron-3542> <CA+5yK5HER69sFe9PuCisL-GNdOcKk686WDy956U8hzasO=1ZqQ@mail.gmail.com> <CA+5yK5GdMua2-ppTd6y4X=dMYgH8xqjp6nA3nFjCVt=Xkivm5A@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:ekb5QVD8VH9H0InXHmAnrnVVqzOIcBTLByc8FxxCg9XUIZjE445
 cvpe48r3M14oT+umhR6Tj09yS+5hiBI9FuaIplv+FHiLZjrX/Cl1Kp8Yhwv32yq1Ut8ZCWG
 VgIFLxchGurpF/Z8QGlS4puI7XiZ3YF3ikqHs+YiPz9l+d5Q3wpWKO4FoZhoH+XovokkEaU
 ZJSElbekAXJNtDyV0uHpA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:VrOKWYBK7Fw=:Kfsixu8h5rKUkgHnxiHyO2
 /uFWKZdm9pZUnivyscPmkDj9d7yMZ1WkqZOGjVnY7o0r0toyZ4EmzYH8qG0PATeHCcJXEZYgc
 /0lYl5YgrhxZnaw73QQd/ut0wa3K9VnE6qVd9B5Zn2hepBcwHVZIGmGIgDOYAYtDi1flDoFvI
 jvyVl5OucUokBbMwGue4C3pxBsBEqDj6Z0cSPN2xLwx1BeZDo0hIIDsriSCu7kbQ3D47clSCV
 ZeXfBxtzKTt40y6/nHlMrJ1F6TOHcCNStwZvZErZJHkmcUjq6fLQsaDnoM8xHRSo+AhTTX8Gl
 XiXYnW9dw0PjjTmeV+2mvFxXBmYBK2M7/mZ0RLQsiV8Jg4E1P/wjdq+tH744l3jwVTD2Lzr1h
 y2LcVBH6ABt7FkTmuOMc5gGH66QT/w+zUmVi82jEwqm+6vgfFtTlzW9T6RYP/TPJXMtVSpF4l
 nGsax3GCYTCqdMnN+6Ft8flYK7XMs29XPXjAmFkcoCck9ihaJZa0F4Hmzt1upE8RJWbDQzcEd
 FAZNxysP++5Hoq0ZGVuCgk95ZCzcFVi5ykSj270DuQE4NaslyL2nSTAC+EJlrZks6TJQxZWUF
 1v0sN73V5QdPxQkXmbiA48s3UT1u69hRQVVARpb54Go6whxUepsorsOIZAvbf9CNNLbxJbtsH
 Giul7ZQ1yDJgQN8Fu/lfw8Kv0uAMq3Qy5n2FhlTwrRec7Wpc9yht/wS3UeNphPD1msrbG4eXq
 x0QwNhxV3v/srPEe

On Friday 23 October 2015 08:55:22 Amitoj Kaur Chawla wrote:
> >
> > Just to clarify, I should change this to
> >    sprintf(buf, "%llu.%8.8lu", now.tv_sec, now.tv_nsec / NSEC_PER_USEC);
> >
> 
> Sorry, it should be changed to
>     sprintf(buf, "%llu.%.08lu", (long long)now.tv_sec, now.tv_nsec /
> NSEC_PER_USEC);
> 

Yes, the last version of that looks correct to me.

	Arnd

