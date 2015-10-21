X-GM-THRID: 6208217817238470656
X-Received: by 10.194.192.71 with SMTP id he7mr2824742wjc.2.1445468194963;
        Wed, 21 Oct 2015 15:56:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.11.137 with SMTP id q9ls519220wib.50.gmail; Wed, 21 Oct
 2015 15:56:34 -0700 (PDT)
X-Received: by 10.180.99.71 with SMTP id eo7mr1913158wib.3.1445468194382;
        Wed, 21 Oct 2015 15:56:34 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id hc2si407885wib.3.2015.10.21.15.56.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 15:56:34 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([134.3.118.24]) by mrelayeu.kundenserver.de
 (mreue001) with ESMTPSA (Nemesis) id 0MUQni-1ZyUVM02QE-00QzTT; Thu, 22 Oct
 2015 00:56:34 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] firewire: Replace timeval with timespec64
Date: Thu, 22 Oct 2015 00:56:33 +0200
Message-ID: <4698741.qcoLluBC3U@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <CA+5yK5Ev7qBUW4Rk0ANo2UxbM5S_Dxfyy_ddKT8NXKyzgco22g@mail.gmail.com>
References: <20151021213544.GA2468@amitoj-Inspiron-3542> <6860460.1I4Oque96X@wuerfel> <CA+5yK5Ev7qBUW4Rk0ANo2UxbM5S_Dxfyy_ddKT8NXKyzgco22g@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:HSrbrMb3FVug0pWgP9t7XvbZtwOG6BCNOFYLxQsy+yn2kL7+wI3
 hPVseOQWrPto5OtLGeBheIksupe+VjQ1asCsNGH48K+jyYaBfpKywVaJIymJxGCfWj07mJI
 lHFU/Ujuor63ayrDlqIjCGbxe700LZva1jUqC3SObngK0Q1tiKl+aLtXDzF9N5cbPH6+BEA
 x6Q4GmB9KtB9qNH9dtudw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:8Eof2bg/9Dg=:u0ipKYGg060aBy1fXFDb16
 Y8fTkCODAbhke5MR3KdMAw3UuFQy2Np0m0VftuN07Ue+2Di0nRy41yWnY5tWBIowmahPT0Wq+
 MlN6IASeQSBWsB2hx/Ny9hAhtr+HXGpACpKkY3abgnpSPbjsEGmRNjA8ZpSlKE7i14FUo0rC6
 M5QbkHjWIwDhgGZ0yVpAbCmOBkwJ3VXik43We9wmNSgI2lcLEQmA7j8PDghaeS2jLM7jgk8Gm
 lgw86C34GvQJ4NETPZZUC1BLXXYNwCpCKW93hsQdvJhpv5Z+CKr0wSP++hQYOPJCZd4o8WJXT
 6KDvnxmNpj9OGknI/yM3R+yPlJOvIjAQgCeRlZ1yhcLAj+3cmihayoMylNqKyoQuEEMZNooyo
 U+tLopszXCuxPxH5QNRMFEoi4efx8BMhBxc2LFOzRMKjqCAWyxjnFgHoHyvDAk4IHW7RvzLVT
 dl1I567iatVoC+GA8iTNcOO5KMrjDJH7w12B5Nen93SmSjNtwP19aV/hVGdUQzhh4GH8qTnxj
 mUmaZ1CGEjKl28V78s9K8j+jLP6WjYc0Aj8w7tUGAP4Rvr66BT4M1WWlmGM4mVROCOO9JZOUw
 +E05tfpmBm8+ft/k5KG9OorNqJEMaZd+9nfCeKbrvz7ZIgIDIIPaXswxPCIV5rYrlhpkiKjNq
 iLxK7iTCuABgLOAqXN5X7qEOD5xi93i09xJdyqFHT6Od+3hnC1yMAjvBr5bT93TSlXEH9zSAa
 cAIHcUtQWQsL4hW9

On Thursday 22 October 2015 03:26:22 Amitoj Kaur Chawla wrote:
> >> -       do_gettimeofday(&tv);
> >> -       lynx->rcv_buffer[0] = (__force __le32)tv.tv_usec;
> >> +       getnstimeofday64(&ts64);
> >> +       tv_usec = ts64.tv_nsec / NSEC_PER_USEC;
> >> +       lynx->rcv_buffer[0] = (__force __le32)tv_usec;
> >
> > I have a small preference for ktime_get_real_ts64() over getnstimeofday64(),
> > though the two are functionally identical.
> >
> > When you have addressed these, please send the patch again, and
> > Cc the maintainers according to scripts/get_maintainer.pl.
> 
> Okay. I'll do all of this. One question, I've replaced timeval with
> timespec. It should be timespec64 right? I caught it after sending the
> patch.

Ah, I did not see that. Yes, that would have been the right choice.
More importantly, you should not have sent out the patch until it
was compile-tested. The tutorial should have information about how
to do that, if you can't figure it out, ask for more information on
IRC or here.

	Arnd

